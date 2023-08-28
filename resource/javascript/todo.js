// Initialize Flickity carousels for image sliding effect
var carousels = document.querySelectorAll(".carousel");
carousels.forEach(function (carousel) {
  // Create Flickity instance for each carousel
  var flkty = new Flickity(carousel, {
    imagesLoaded: true,
    percentPosition: false,
  });

  // Handle image translation on scroll
  var imgs = carousel.querySelectorAll(".carousel-cell img");
  var docStyle = document.documentElement.style;
  var transformProp =
    typeof docStyle.transform === "string" ? "transform" : "WebkitTransform";

  flkty.on("scroll", function () {
    flkty.slides.forEach(function (slide, i) {
      var img = imgs[i];
      var x = ((slide.target + flkty.x) * -1) / 3;
      img.style[transformProp] = "translateX(" + x + "px)";
    });
  });
});

// Get category parameter from URL query string
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const categories = urlParams.get("category");

// Handle checkbox behavior and URL redirection based on category selection
// Note: Similar code structure for other checkboxes and categories
var beachVisit = document.getElementById("cb-beach-visit");
var cityExplor = document.getElementById("cb-city-exploration");
var culinary = document.getElementById("cb-culinary");
var historical = document.getElementById("cb-historical");
var kelong = document.getElementById("cb-kelong");
var leisure = document.getElementById("cb-leisure-drive");
var mangrove = document.getElementById("cb-mangrove-adventure");
var golf = document.getElementById("cb-seaside-golf");

beachVisit.addEventListener("click", () => {
  if (beachVisit.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=2";
  }
});

if (categories == 2) {
  beachVisit.checked = true;
}

cityExplor.addEventListener("click", () => {
  if (cityExplor.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=3";
  }
});

if (categories == 3) {
  cityExplor.checked = true;
}

culinary.addEventListener("click", () => {
  if (culinary.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=5";
  }
});

if (categories == 5) {
  culinary.checked = true;
}

kelong.addEventListener("click", () => {
  if (kelong.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=7";
  }
});

if (categories == 7) {
  kelong.checked = true;
}

historical.addEventListener("click", () => {
  if (historical.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=6";
  }
});

if (categories == 6) {
  historical.checked = true;
}

leisure.addEventListener("click", () => {
  if (leisure.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=4";
  }
});

if (categories == 4) {
  leisure.checked = true;
}

mangrove.addEventListener("click", () => {
  if (mangrove.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=1";
  }
});

if (categories == 1) {
  mangrove.checked = true;
}

golf.addEventListener("click", () => {
  if (golf.checked) {
    window.location.href = "/pengudang.discover.co.id/pages/todo/?category=9";
  }
});

if (categories == 9) {
  golf.checked = true;
}

// Fetch and display activity data based on category
// Note: Similar code structure for other categories
const Url = `http://localhost/pengudang.discover.co.id/api//get-activity-category/?category=${categories}`;
const otherUrl = `http://localhost/pengudang.discover.co.id/api//get-activity-category/`;

if (categories == null) {
  var titleTodo = document.getElementById("title-todo");
  var titleCategory = document.getElementById("title-category");

  titleTodo.style.display = "none";
  titleCategory.style.marginTop = "50px";

  axios
    .get(otherUrl)
    .then(function (response) {
      const destinations = response.data;

      destinations.forEach(function (destination) {
        const todoItemDiv = document.createElement("div");
        todoItemDiv.classList.add("todo-item");

        const gambarDiv = document.createElement("div");
        gambarDiv.classList.add("gambar");

        const carouselDiv = document.createElement("div");
        carouselDiv.classList.add("carousel");

        const carouselCellDiv = document.createElement("div");
        carouselCellDiv.classList.add("carousel-cell");

        const imgElement = document.createElement("img");
        imgElement.setAttribute(
          "src",
          `/pengudang.discover.co.id/images/thumbnail/${destination.thumbnail}`
        );
        imgElement.setAttribute("alt", "orange tree");

        const keteranganDiv = document.createElement("div");
        keteranganDiv.classList.add("keterangan");

        const titleParagraph = document.createElement("p");
        titleParagraph.textContent = destination.category;

        const locationHeading = document.createElement("h2");
        locationHeading.textContent = destination.name;

        const descriptionParagraph = document.createElement("p");
        descriptionParagraph.textContent = destination.caption;

        const operationDiv = document.createElement("div");
        operationDiv.classList.add("operation");

        const daysImg = document.createElement("img");
        daysImg.setAttribute(
          "src",
          "/pengudang.discover.co.id/assets/icon-days.png"
        );
        daysImg.setAttribute("alt", "");

        const daysParagraph = document.createElement("p");
        daysParagraph.textContent = destination.days;

        const hourImg = document.createElement("img");
        hourImg.setAttribute(
          "src",
          "/pengudang.discover.co.id/assets/icon-hour.png"
        );
        hourImg.setAttribute("alt", "");

        const hourParagraph = document.createElement("p");

        if (
          destination.start_time == "00:00:00" &&
          destination.end_time == "00:00:00"
        ) {
          var times = "24 Hours";
        } else {
          var times =
            destination.start_time.substring(0, 5) +
            " - " +
            destination.end_time.substring(0, 5);
        }

        if (
          destination.start_time == "00:00:01" &&
          destination.end_time == "23:59:59"
        ) {
          var times = "24 Hours";
        }

        hourParagraph.textContent = times;

        const ticketImg = document.createElement("img");
        ticketImg.setAttribute(
          "src",
          "/pengudang.discover.co.id/assets/icon-ticket.png"
        );
        ticketImg.setAttribute("alt", "");

        const ticketParagraph = document.createElement("p");
        ticketParagraph.textContent = destination.price;

        const shareImg = document.createElement("img");
        shareImg.setAttribute(
          "src",
          "/pengudang.discover.co.id/assets/icon-share.png"
        );
        shareImg.setAttribute("alt", "");

        const shareButton = document.createElement("button");
        shareButton.setAttribute("class", "share-toggle");
        shareButton.setAttribute(
          "onclick",
          `copyToClipboard("https://pengudang.discover.co.id/pages/content/?get=tosee&id=${destination.tosee_id}")`
        );
        shareButton.setAttribute("value", destination.tosee_id);
        shareButton.textContent = "Share";

        const iconDiv = document.createElement("div");
        iconDiv.classList.add("icon");
        iconDiv.style.backgroundImage = `url("/pengudang.discover.co.id/assets/icon-${destination.categories_id}.png")`;

        const seeMoreDiv = document.createElement("div");
        seeMoreDiv.classList.add("see");

        const link = document.createElement("a");
        link.href = `/pengudang.discover.co.id/pages/content/?get=tosee&id=${destination.tosee_id}`;
        link.innerText = "View More ▶";

        seeMoreDiv.appendChild(link);

        carouselCellDiv.appendChild(imgElement);
        carouselDiv.appendChild(carouselCellDiv);
        gambarDiv.appendChild(carouselDiv);

        operationDiv.appendChild(daysImg);
        operationDiv.appendChild(daysParagraph);
        operationDiv.appendChild(hourImg);
        operationDiv.appendChild(hourParagraph);
        operationDiv.appendChild(ticketImg);
        operationDiv.appendChild(ticketParagraph);
        operationDiv.appendChild(shareImg);
        operationDiv.appendChild(shareButton);

        keteranganDiv.appendChild(titleParagraph);
        keteranganDiv.appendChild(locationHeading);
        keteranganDiv.appendChild(descriptionParagraph);
        keteranganDiv.appendChild(operationDiv);
        keteranganDiv.appendChild(iconDiv);
        keteranganDiv.appendChild(seeMoreDiv);

        todoItemDiv.appendChild(gambarDiv);
        todoItemDiv.appendChild(keteranganDiv);

        // Get the main container div and append the todoItemDiv to it
        const todoContentDiv = document.querySelector(".todo-content");
        todoContentDiv.appendChild(todoItemDiv);
      });
    })
    .catch(function (error) {
      console.error("Gagal mengambil data:", error);
    });
} else {
  axios
    .get(Url)
    .then(function (response) {
      const destinations = response.data;
      destinations.forEach(function (destination) {
        var textJudul = destination.category.trim().split(" ");
        const biru = textJudul[0];

        const kata = destination.category.split(" ");
        const putih = kata[1] || "";

        const content = `
                <h1><span class="warna">${biru}</span> ${putih}</h1>
                <img src="/pengudang.discover.co.id/images/content/${destination.title_image}" alt="" />
                <div class="text-1">
                    ${destination.prompt}
                </div>
                <div class="text-2">
                    ${destination.next_prompt}
                </div>
            `;

        // Mendapatkan elemen dengan class "title-todo"
        const titleTodo = document.querySelector(".title-todo");

        // Menambahkan konten ke dalam elemen "title-todo"
        titleTodo.innerHTML = content;
      });
    })
    .catch(function (error) {
      console.error("Gagal mengambil data:", error);
    });

  if (categories != 3 && categories != 7 && categories != 4) {
    axios
      .get(Url)
      .then(function (response) {
        const destinations = response.data;

        if (destinations.length === 0) {
          // Langkah 1: Dapatkan elemen <div class="todo-content">
          const todoContentDiv = document.querySelector(".todo-content");

          // Langkah 2: Buat elemen <div> baru dengan atribut kelas "no-data" dan isi teks "- - -"
          const noDataDiv = document.createElement("div");
          noDataDiv.className = "no-data";
          noDataDiv.textContent = "- - -";

          // Langkah 3: Sisipkan elemen baru ke dalam elemen <div class="todo-content">
          todoContentDiv.appendChild(noDataDiv);
        } else {
          destinations.forEach(function (destination) {
            const todoItemDiv = document.createElement("div");
            todoItemDiv.classList.add("todo-item");

            const gambarDiv = document.createElement("div");
            gambarDiv.classList.add("gambar");

            const carouselDiv = document.createElement("div");
            carouselDiv.classList.add("carousel");

            const carouselCellDiv = document.createElement("div");
            carouselCellDiv.classList.add("carousel-cell");

            const imgElement = document.createElement("img");
            imgElement.setAttribute(
              "src",
              `/pengudang.discover.co.id/images/thumbnail/${destination.thumbnail}`
            );
            imgElement.setAttribute("alt", "orange tree");

            const keteranganDiv = document.createElement("div");
            keteranganDiv.classList.add("keterangan");

            const titleParagraph = document.createElement("p");
            titleParagraph.textContent = destination.category;

            const locationHeading = document.createElement("h2");
            locationHeading.textContent = destination.name;

            const descriptionParagraph = document.createElement("p");
            descriptionParagraph.textContent = destination.caption;

            const operationDiv = document.createElement("div");
            operationDiv.classList.add("operation");

            const daysImg = document.createElement("img");
            daysImg.setAttribute(
              "src",
              "/pengudang.discover.co.id/assets/icon-days.png"
            );
            daysImg.setAttribute("alt", "");

            const daysParagraph = document.createElement("p");
            daysParagraph.textContent = destination.days;

            const hourImg = document.createElement("img");
            hourImg.setAttribute(
              "src",
              "/pengudang.discover.co.id/assets/icon-hour.png"
            );
            hourImg.setAttribute("alt", "");

            const hourParagraph = document.createElement("p");

            if (
              destination.start_time == "00:00:00" &&
              destination.end_time == "00:00:00"
            ) {
              var times = "24 Hours";
            } else {
              var times =
                destination.start_time.substring(0, 5) +
                " - " +
                destination.end_time.substring(0, 5);
            }

            if (
              destination.start_time == "00:00:01" &&
              destination.end_time == "23:59:59"
            ) {
              var times = "24 Hours";
            }

            hourParagraph.textContent = times;

            const ticketImg = document.createElement("img");
            ticketImg.setAttribute(
              "src",
              "/pengudang.discover.co.id/assets/icon-ticket.png"
            );
            ticketImg.setAttribute("alt", "");

            const ticketParagraph = document.createElement("p");
            ticketParagraph.textContent = destination.price;

            const shareImg = document.createElement("img");
            shareImg.setAttribute(
              "src",
              "/pengudang.discover.co.id/assets/icon-share.png"
            );
            shareImg.setAttribute("alt", "");

            const shareButton = document.createElement("button");
            shareButton.setAttribute("class", "share-toggle");
            shareButton.setAttribute(
              "onclick",
              `copyToClipboard("https://pengudang.discover.co.id/pages/content/?get=tosee&id=${destination.tosee_id}")`
            );
            shareButton.setAttribute("value", destination.tosee_id);
            shareButton.textContent = "Share";

            const iconDiv = document.createElement("div");
            iconDiv.classList.add("icon");
            iconDiv.style.backgroundImage = `url("/pengudang.discover.co.id/assets/icon-${destination.categories_id}.png")`;

            const seeMoreDiv = document.createElement("div");
            seeMoreDiv.classList.add("see");

            const link = document.createElement("a");
            link.href = `/pengudang.discover.co.id/pages/content/?get=tosee&id=${destination.tosee_id}`;
            link.innerText = "View More ▶";

            seeMoreDiv.appendChild(link);

            carouselCellDiv.appendChild(imgElement);
            carouselDiv.appendChild(carouselCellDiv);
            gambarDiv.appendChild(carouselDiv);

            operationDiv.appendChild(daysImg);
            operationDiv.appendChild(daysParagraph);
            operationDiv.appendChild(hourImg);
            operationDiv.appendChild(hourParagraph);
            operationDiv.appendChild(ticketImg);
            operationDiv.appendChild(ticketParagraph);
            operationDiv.appendChild(shareImg);
            operationDiv.appendChild(shareButton);

            keteranganDiv.appendChild(titleParagraph);
            keteranganDiv.appendChild(locationHeading);
            keteranganDiv.appendChild(descriptionParagraph);
            keteranganDiv.appendChild(operationDiv);
            keteranganDiv.appendChild(iconDiv);
            keteranganDiv.appendChild(seeMoreDiv);

            todoItemDiv.appendChild(gambarDiv);
            todoItemDiv.appendChild(keteranganDiv);

            // Get the main container div and append the todoItemDiv to it
            const todoContentDiv = document.querySelector(".todo-content");
            todoContentDiv.appendChild(todoItemDiv);
          });
        }
      })
      .catch(function (error) {
        console.error("Gagal mengambil data:", error);
      });
  }
}

// Function to copy text to clipboard
function copyToClipboard(text) {
  const textarea = document.createElement("textarea");
  textarea.value = text;
  document.body.appendChild(textarea);
  textarea.select();
  document.execCommand("copy");
  document.body.removeChild(textarea);
  alert("Link copied!");
}