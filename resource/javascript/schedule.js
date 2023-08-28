// Get header elements for different tabs
var accomodationHeader = document.getElementById("accomodation-header");
var transportationHeader = document.getElementById("transportation-header");
var personHeader = document.getElementById("person-header");

// Get content elements for different tabs
var accomodation = document.getElementById("accomodation");
var transportation = document.getElementById("transportation");
var person = document.getElementById("person");

// Function to set the active tab and update styles
function setActiveTab(tabId) {
  // Hide all content sections
  const contentSections = [accomodation, transportation, person];
  contentSections.forEach((section) => {
    section.style.display = "none";
  });

  // Reset styles for all tab headers
  const tabHeaders = [accomodationHeader, transportationHeader, personHeader];
  tabHeaders.forEach((header) => {
    header.classList.remove("discover-active");
  });

  // Show the selected content section
  const selectedSection = document.getElementById(tabId);
  selectedSection.style.display = "block";

  // Highlight the selected tab header
  const selectedHeader = document.getElementById(`${tabId}-header`);
  selectedHeader.classList.add("discover-active");
}

// Add event listeners to tab headers
accomodationHeader.addEventListener("click", function () {
  setActiveTab("accomodation");
});

transportationHeader.addEventListener("click", function () {
  setActiveTab("transportation");
});

personHeader.addEventListener("click", function () {
  setActiveTab("person");
});

// Check for query parameter to set the active tab on page load
const urlParams = new URLSearchParams(window.location.search);
const type = urlParams.get("type");

if (type !== null && type !== "") {
  setActiveTab(type);
}
