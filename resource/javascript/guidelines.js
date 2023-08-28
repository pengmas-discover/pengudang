// Define elements for each tab's header and content
var visaHeader = document.getElementById("visa-header");
var differenceaHeader = document.getElementById("difference-header");
var currencyHeader = document.getElementById("currency-header");
var electricityHeader = document.getElementById("electricity-header");
var cultureHeader = document.getElementById("culture-header");
var visa = document.getElementById("visa");
var difference = document.getElementById("difference");
var currency = document.getElementById("currency");
var electricity = document.getElementById("electricity");
var culture = document.getElementById("culture");

// Function to set the active tab and update styles
function setActiveTab(tabId) {
  const contentSections = [visa, difference, currency, electricity, culture];
  contentSections.forEach((section) => {
    section.style.display = "none";
  });

  const tabHeaders = [
    visaHeader,
    differenceaHeader,
    currencyHeader,
    electricityHeader,
    cultureHeader,
  ];
  tabHeaders.forEach((header) => {
    header.classList.remove("discover-active");
  });

  const selectedSection = document.getElementById(tabId);
  selectedSection.style.display = "block";

  const selectedHeader = document.getElementById(`${tabId}-header`);
  selectedHeader.classList.add("discover-active");
}

// Event listeners for each tab's header
visaHeader.addEventListener("click", function () {
  setActiveTab("visa");
  visaHeader.style.fontWeight = "bold";
  differenceaHeader.style.fontWeight = "normal";
  currencyHeader.style.fontWeight = "normal";
  electricityHeader.style.fontWeight = "normal";
  cultureHeader.style.fontWeight = "normal";
  window.scrollTo({
    top: 300,
    behavior: "smooth",
  });
});

differenceaHeader.addEventListener("click", function () {
  setActiveTab("difference");
  visaHeader.style.fontWeight = "normal";
  differenceaHeader.style.fontWeight = "bold";
  currencyHeader.style.fontWeight = "normal";
  electricityHeader.style.fontWeight = "normal";
  cultureHeader.style.fontWeight = "normal";
  window.scrollTo({
    top: 300,
    behavior: "smooth",
  });
});

currencyHeader.addEventListener("click", function () {
  setActiveTab("currency");
  visaHeader.style.fontWeight = "normal";
  differenceaHeader.style.fontWeight = "normal";
  currencyHeader.style.fontWeight = "bold";
  electricityHeader.style.fontWeight = "normal";
  cultureHeader.style.fontWeight = "normal";
  window.scrollTo({
    top: 300,
    behavior: "smooth",
  });
});

electricityHeader.addEventListener("click", function () {
  setActiveTab("electricity");
  visaHeader.style.fontWeight = "normal";
  differenceaHeader.style.fontWeight = "normal";
  currencyHeader.style.fontWeight = "normal";
  electricityHeader.style.fontWeight = "bold";
  cultureHeader.style.fontWeight = "normal";
  window.scrollTo({
    top: 300,
    behavior: "smooth",
  });
});

cultureHeader.addEventListener("click", function () {
  setActiveTab("culture");
  visaHeader.style.fontWeight = "normal";
  differenceaHeader.style.fontWeight = "normal";
  currencyHeader.style.fontWeight = "normal";
  electricityHeader.style.fontWeight = "normal";
  cultureHeader.style.fontWeight = "bold";
  window.scrollTo({
    top: 300,
    behavior: "smooth",
  });
});

// Check for query parameter to set the active tab on page load
const urlParams = new URLSearchParams(window.location.search);
const type = urlParams.get("type");

if (type !== null && type !== "") {
  setActiveTab(type);
}
