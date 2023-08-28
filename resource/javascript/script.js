// --- Header
// Handling the search functionality in the header
var search = document.getElementById("search-click");
var header = document.getElementById("header");
var searchInput = document.getElementById("search");

// Show search input on mouseover
search.addEventListener("mouseover", () => {
  searchInput.style.display = "grid";
});

//  Hide search input on mouse leave
header.addEventListener("mouseleave", () => {
  var inputSearch = document.getElementById("input-search").value;

  if (inputSearch !== "") {
    searchInput.style.display = "grid";
  } else {
    searchInput.style.display = "none";
  }
});

// Handle search button click
search.addEventListener("click", () => {
  var inputSearch = document.getElementById("input-search").value;
  if (inputSearch !== "") {
    // Save search keywords to the database
    var words = inputSearch.split(" ");
    for (var i = 0; i < words.length; i++) {
      searchSave(words[i], inputSearch);
    }

    // Redirect to search results page
    window.location.href =
      "../../pages/tosee/?pages=tosee&search=" + inputSearch;
  }
});

// Handle search from Enter key press
var inputSearch2 = document.getElementById("input-search");
inputSearch2.addEventListener("blur", () => {
  var inputSearch = document.getElementById("input-search").value;

  if (inputSearch !== "") {
    searchInput.style.display = "grid";
  } else {
    searchInput.style.display = "none";
  }
});
inputSearch2.addEventListener("keydown", redirectToLink);

// Handle redirect from Enter key press
function redirectToLink(event) {
  if (event.key === "Enter") {
    var inputSearch = document.getElementById("input-search").value;
    var words = inputSearch.split(" ");

    for (var i = 0; i < words.length; i++) {
      searchSave(words[i], inputSearch);
    }

    window.location.href =
      "../../pages/tosee/?pages=tosee&search=" + inputSearch2.value;
  }
}

// Save search keywords to the database
function searchSave(arg1, arg2) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost/pengudang.discover.co.id/api//post-search/";

  var data = new FormData();
  data.append("word", arg1);
  data.append("sentence", arg2);

  xhr.open("POST", url, true);
  xhr.send(data);
}

// Handling the dropdown header
const dropdownHover = document.getElementById("dropdown-hover");
const dropdownHeader = document.querySelector(".dropdown-header");

// Show dropdown on hover
dropdownHover.addEventListener("mouseover", () => {
  dropdownHeader.style.display = "block";
  dropdownHeader.addEventListener("mouseover", () => {
    dropdownHeader.style.display = "block";
  });

  dropdownHeader.addEventListener("mouseout", () => {
    dropdownHeader.style.display = "none";
  });
});

// Hide dropdown on mouse leave
dropdownHover.addEventListener("mouseout", () => {
  dropdownHeader.style.display = "none";
});

// Handling the menu toggle switch
const menuToggle = document.getElementById("menu-toggle");
menuToggle.addEventListener("change", () => {
  if (menuToggle.checked) {
    header.style.backgroundColor = "#a9e5ff";
  } else {
    header.style.backgroundColor = ""; // Reset the background color
  }
});

const menuUl = document.querySelector(".menu-ul");

if (menuUl) {
  menuUl.addEventListener("click", () => {
    menuToggle.checked = !menuToggle.checked;
  });
}

// Handling the auto hide of header on scroll and mouse position
const scrollThreshold = 50;

// Auto hide header on scroll
window.addEventListener("scroll", () => {
  if (window.innerWidth >= 768) {
    if (window.scrollY > scrollThreshold) {
      header.style.top = "-15vh";
    } else {
      header.style.top = "0";
    }
  }
});

// Auto hide header based on mouse position
document.addEventListener("mousemove", function (event) {
  if (window.innerWidth >= 768) {
    const cursorPosition = event.clientY;

    if (cursorPosition >= 0 && cursorPosition <= 250) {
      header.style.top = "0";
    } else {
      header.style.top = "-15vh";
    }
  }
});

// --- end header

// --- guest
// Function to save guest's name to the database
function saveGuesteApi(guestName) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost/pengudang.discover.co.id/api//post-guest/";

  var data = new FormData();
  data.append("guest_name", guestName);

  xhr.open("POST", url, true);
  xhr.send(data);
}

// Function to save a new guest
function saveGuest() {
  const apiUrl =
    "http://localhost/pengudang.discover.co.id/api//get-guest-name/";
  fetch(apiUrl)
    .then((response) => response.json())
    .then((data) => {
      let guestName = "guest_" + (parseInt(data.length) + 1);
      saveGuesteApi(guestName);
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
}

// Load guest information
function loadGuest() {
  setTimeout(() => {
    saveGuest();
  }, 3000);
}

// --- end guest

// --- guest activity
// Function to get the value of a cookie by name
function getCookieValue(arg1) {
  const cookies = document.cookie.split("; ");
  for (const cookie of cookies) {
    const [name, value] = cookie.split("=");
    if (name === arg1) {
      return decodeURIComponent(value);
    }
  }
  return null;
}

// Function to get the current timestamp
function getCurrentTimestamp() {
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, "0");
  const day = String(now.getDate()).padStart(2, "0");
  const hours = String(now.getHours()).padStart(2, "0");
  const minutes = String(now.getMinutes()).padStart(2, "0");
  const seconds = String(now.getSeconds()).padStart(2, "0");
  const timestamp = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
  return timestamp;
}
const timesSpenIn = getCurrentTimestamp();

// get paramt
const queryPages = window.location.search;
const pageParams = new URLSearchParams(queryPages);
const pagesParams = pageParams.get("pages");
let contentParams = pageParams.get("id");

if (contentParams === null) {
  contentParams = 0;
}

// Function to get the current timestamp
window.addEventListener("beforeunload", function (event) {
  var cookieName = "pengudang_cookie";
  if (checkCookie(cookieName)) {
    function getCurrentTimestamp() {
      const now = new Date();
      const year = now.getFullYear();
      const month = String(now.getMonth() + 1).padStart(2, "0");
      const day = String(now.getDate()).padStart(2, "0");
      const hours = String(now.getHours()).padStart(2, "0");
      const minutes = String(now.getMinutes()).padStart(2, "0");
      const seconds = String(now.getSeconds()).padStart(2, "0");
      const timestamp = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
      return timestamp;
    }
    const timesSpenOut = getCurrentTimestamp();
    const cookieValue = getCookieValue("pengudang_cookie");

    var xhr = new XMLHttpRequest();
    var url =
      "http://localhost/pengudang.discover.co.id/api//post-guest-activity/";

    var data = new FormData();
    data.append("cookie_name", cookieValue);
    data.append("pages", pagesParams);
    data.append("timespent_in", timesSpenIn);
    data.append("timespent_out", timesSpenOut);
    data.append("content", contentParams);

    xhr.open("POST", url, true);
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
        var response = xhr.responseText;
        console.log(response);
      }
    };
    xhr.send(data);
  }
});

// --- end guest activity

// --- cookie
// Function to check if a cookie with a given name exists
function checkCookie(cookieName) {
  var cookies = document.cookie.split(";");
  for (var i = 0; i < cookies.length; i++) {
    var cookie = cookies[i].trim();
    if (cookie.indexOf(cookieName + "=") === 0) {
      return true;
    }
  }
  return false;
}

// Function to show the cookie notice
function showCookie() {
  var cookieHeader = document.getElementById("cookies-hedaer");
  cookieHeader.style.display = "grid";
}

// Function to hide the cookie notice
function hideCookie() {
  var cookieHeader = document.getElementById("cookies-hedaer");
  cookieHeader.style.transform = "scale(0)";
}

// Function to set a cookie
function setCookie(name, value, days) {
  var expires = "";
  if (days) {
    var date = new Date();
    date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000);
    expires = "; expires=" + date.toUTCString();
  }
  document.cookie =
    name + "=" + (value || "") + expires + "; path=/; SameSite=None; Secure";
}

// Function to save cookie information to the database
function saveCookieApi(
  cookieName,
  ipAddress,
  city,
  region,
  country,
  latitude,
  longitude,
  device
) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost/pengudang.discover.co.id/api//post-cookie/";

  var data = new FormData();
  data.append("cookie_name", cookieName);
  data.append("ip_address", ipAddress);
  data.append("city", city);
  data.append("region", region);
  data.append("country", country);
  data.append("latitude", latitude);
  data.append("longitude", longitude);
  data.append("device", device);

  xhr.open("POST", url, true);
  xhr.send(data);
}

// Function to save the cookie
function saveCookie() {
  const ipinfoUrl = "https://ipinfo.io/json";
  fetch(ipinfoUrl)
    .then((response) => response.json())
    .then((data) => {
      const { ip: ipAddress, city, region, country, loc } = data;
      const [latitude, longitude] = loc.split(",");
      const isMobile = window.innerWidth <= 768;
      const device = isMobile ? "mobile" : "desktop";

      const apiUrl =
        "http://localhost/pengudang.discover.co.id/api//get-cookie-name/";
      fetch(apiUrl)
        .then((response) => response.json())
        .then((data) => {
          let cookieName = "user_" + (parseInt(data.length) + 1);
          setCookie("pengudang_cookie", cookieName, 3);
          saveCookieApi(
            cookieName,
            ipAddress,
            city,
            region,
            country,
            latitude,
            longitude,
            device
          );
        })
        .catch((error) => {
          console.error("Error fetching data:", error);
        });
    })
    .catch((error) => {
      console.error("Gagal mengambil informasi IP Address:", error);
    });
}

// Check if the cookie exists and handle accordingly
var cookieName = "pengudang_cookie";
if (checkCookie(cookieName)) {
  hideCookie();
} else {
  showCookie();
  loadGuest();
}

// Handle cookie acceptance
var accept = document.getElementById("acce");

// accept
accept.addEventListener("click", () => {
  saveCookie();
  hideCookie();
});

// --- end cookie
