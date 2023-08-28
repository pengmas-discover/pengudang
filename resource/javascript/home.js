// Initialize Leaflet map and set view
var map = L.map("map").setView([1.168432, 104.4957938], 17);

// Display Google satellite tile layer as the map background
googleSat = L.tileLayer("http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}", {
  maxZoom: 20,
  subdomains: ["mt0", "mt1", "mt2", "mt3"],
}).addTo(map);

const Url = "http://localhost/pengudang.discover.co.id/api//get-content-all/";

// Fetch data from API and add markers with popups for each destination
axios
  .get(Url)
  .then(function (response) {
    var destinations = response.data;

    destinations.forEach(function (destination) {
      var marker = L.marker([
        destination.latitude,
        destination.longitude,
      ]).addTo(map);
      marker.bindPopup(
        `<b>${destination.name}</b><br>&lt;${destination.object_type}&gt;`
      );
    });
  })
  .catch(function (error) {
    console.error("Gagal mengambil data:", error);
  });

// Display a fixed marker on the map and bind it with a popup
var marker = L.marker([1.168432, 104.4957938])
  .addTo(map)
  .bindPopup(
    "<b>Pengudang Mangrove<br></b>5F9W+7X7 Pengudang<br>Teluk Sebong-Bintan"
  )
  .openPopup();

// Handle "Start to Explore" button click to redirect user
var startToExplore = document.getElementById("start-to-explore");
startToExplore.addEventListener("click", () => {
  window.location.href = "/pages/content/?pages=content&get=tosee&id=4";
});

// Handle "Go Google Map" button click to open an external link
var goGoogleMap = document.getElementById("go-google-map");
goGoogleMap.addEventListener("click", () => {
  window.open(
    "https://www.google.com/maps/place/Pengudang+Bintan+Mangrove/@1.1681588,104.4925498,17z/data=!3m1!4b1!4m6!3m5!1s0x31d963eaa292c93b:0x34ab263ee7bf3edf!8m2!3d1.1681534!4d104.4974207!16s%2Fg%2F11hz12brxm?entry=ttu",
    "_blank"
  );
});

// --- questions
// Get elements related to the questions form
var kirimQUe = document.getElementById("kirim-que");
var nameQue = document.getElementById("name-que");
var emailQue = document.getElementById("email-que");
var subject = document.getElementById("subject-que");
var areaMap = document.getElementById("area-map");

// Function to send questions data to the API
function sendQuestions() {
  if (emailQue.checkValidity()) {
    kirimQUe.textContent = "-";

    var xhr = new XMLHttpRequest();
    var url = "http://localhost/pengudang.discover.co.id/api//post-questions/";

    var data = new FormData();
    data.append("name", nameQue.value);
    data.append("email", emailQue.value);
    data.append("subject", subject.value);
    data.append("questions", areaMap.value);

    xhr.open("POST", url, true);
    xhr.send(data);

    setTimeout(() => {
      alert("Message sent");
      kirimQUe.textContent = "Send Message";
      nameQue.value = "";
      emailQue.value = "";
      subject.value = "";
      areaMap.value = "";
    }, 3000);
  } else {
    alert("Please fill in with an email address");
  }
}

// Check if the "Send Message" button is clicked
kirimQUe.addEventListener("click", () => {
  if (nameQue.value === "") {
    alert("Please complete the form");
  } else if (emailQue.value === "") {
    alert("Please complete the form");
  } else if (subject.value === "") {
    alert("Please complete the form");
  } else if (areaMap.value === "") {
    alert("Please complete the form");
  } else {
    sendQuestions();
  }
});

// --- end questions
