// Get 'search' parameter from the URL query string
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const toseeSearch = urlParams.get("search");
const searchUrl = "http://localhost/pengudang.discover.co.id/api//get-content-all/";

// Function to fetch and display filtered search results
const searchContent = async () => {
  try {
    const response = await axios.get(searchUrl);
    const dataContents = response.data;
    const searchParam = new URL(window.location.href).searchParams
      .get("search")
      .toLowerCase();

    // Filter data based on search parameter
    const filteredData = dataContents.filter(
      (item) =>
        item.name.toLowerCase().includes(searchParam) ||
        item.promt.toLowerCase().includes(searchParam) ||
        item.narrative.toLowerCase().includes(searchParam)
    );

    // Select DOM element and populate it with filtered content
    const flexItem = document.querySelector(".flex-item");

    // Generate HTML for each filtered item
    const content = filteredData
      .slice(0, 8)
      .map(
        (dataContent) => `
      <a href="/pengudang.discover.co.id/pages/content/?pages=content&get=tosee&id=${dataContent.tosee_id}" class="item-destination">
        <img src="/pengudang.discover.co.id/images/thumbnail/${dataContent.thumbnail}" alt="" />
        <h2>${dataContent.name}</h2>
        <div class="p">
          ${dataContent.object_type}
        </div>
      </a>
    `
      )
      .join("");

    // Update the content of the flex container
    flexItem.innerHTML = content;
  } catch (error) {
    console.error("Gagal mengambil data:", error);
  }
};

// Function to fetch and display specific content
const contentPengudang = async () => {
  const desiredIds = ["1", "4", "5", "21", "22", "24", "46", "47"];
  const response = await axios.get(searchUrl);
  const data = response.data;
  const flexItem = document.querySelector(".flex-item");
  let content = "";

  // Generate HTML for each item
  const generateItemHTML = (item) => `
    <a href="/pengudang.discover.co.id/pages/content/?pages=content&get=tosee&id=${item.tosee_id}" class="item-destination">
      <img src="/pengudang.discover.co.id/images/thumbnail/${item.thumbnail}" alt="" />
      <h2>${item.name}</h2>
      <div class="p">
        ${item.object_type}
      </div>
    </a>
  `;

  // Filter and generate content for desired IDs
  const filterPengudang = () => {
    const filteredData = data.filter((item) =>
      desiredIds.includes(item.tosee_id)
    );

    filteredData.forEach((item) => {
      content += generateItemHTML(item);
    });
  };

  // Filter and generate content for other IDs
  const filterOther = (startIdx, endIdx) => {
    const filteredData = data.filter(
      (item) => !desiredIds.includes(item.tosee_id)
    );
    const slicedData = filteredData.slice(startIdx, endIdx);

    slicedData.forEach((item) => {
      content += generateItemHTML(item);
    });

    flexItem.innerHTML = content;
  };

  let firstNumber = 0;
  let secondNumber = 8;
  const maxLength = data.length;
  const tbNext = document.getElementById("next");

  // Event listener for "Next" button
  tbNext.addEventListener("click", () => {
    filterOther(firstNumber, secondNumber);

    firstNumber += 8;
    secondNumber += 8;

    // Hide the "Next" button when all items are shown
    if (secondNumber >= maxLength) {
      secondNumber = maxLength;
      tbNext.style.display = "none";
    }
  });

  // Initial content filtering for desired IDs
  filterPengudang();
  flexItem.innerHTML = content;
};

const seeSearch = document.getElementById("tosee-search");
const inputSeeSearch = document.getElementById("input-tosee-search");

inputSeeSearch.addEventListener("keydown", redirectToLink);

function redirectToLink(event) {
  if (event.key === "Enter") {
    const inputWords = inputSeeSearch.value;
    const words = inputWords.split(" ");

    words.forEach((word) => {
      searchSave(word, inputWords);
    });

    window.location.href = `/pengudang.discover.co.id/pages/tosee/?pages=tosee&search=${inputSeeSearch.value}`;
  }
}

seeSearch.addEventListener("click", () => {
  const inputWords = inputSeeSearch.value;
  const words = inputWords.split(" ");

  words.forEach((word) => {
    searchSave(word, inputWords);
  });

  window.location.href = `/pengudang.discover.co.id/pages/tosee/?pages=tosee&search=${inputSeeSearch.value}`;
});

// DOMContentLoaded event handler
document.addEventListener("DOMContentLoaded", () => {
  // Determine the type of content to display based on the 'toseeSearch' parameter
  toseeSearch !== null ? searchContent() : contentPengudang();
});
