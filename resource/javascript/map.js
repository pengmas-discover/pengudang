// Initialize Leaflet map and set view
var map = L.map("map").setView([1.1700257, 104.5004222], 16);

// Add Google satellite tile layer to the map
googleSat = L.tileLayer("http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}", {
  maxZoom: 20,
  subdomains: ["mt0", "mt1", "mt2", "mt3"],
}).addTo(map);

// Add OpenStreetMap tile layer to the map
openStreetMap = L.tileLayer("https://tile.openstreetmap.org/{z}/{x}/{y}.png", {
  maxZoom: 19,
  attribution: "© OpenStreetMap",
});

// Add Google street tile layer to the map
googleStreet = L.tileLayer(
  "http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}",
  {
    maxZoom: 20,
    subdomains: ["mt0", "mt1", "mt2", "mt3"],
  }
);

// Fetch data from API and add markers with popups for each destination
const Url = "http://localhost/pengudang.discover.co.id/api//get-content-all/";
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
        `<b>${destination.name}</b><br>&lt;${destination.object_type}&gt;<br><button onclick='onMarkerClick(${destination.tosee_id})'>View destination</button>`
      );
    });
  })
  .catch(function (error) {
    console.error("Gagal mengambil data:", error);
  });

// Close map functionality
var closeMap = document.getElementById("close-map");
closeMap.addEventListener("click", () => {
  hideShow();
});

// Hide or show map info based on screen width
function hideShow() {
  var mapInfo = document.getElementById("map-info");
  var width1 =
    window.innerWidth ||
    document.documentElement.clientWidth ||
    document.body.clientWidth;

  if (width1 <= 768) {
    mapInfo.style.transform = "scale(0)";
  } else {
    mapInfo.style.left = "-30vw";
  }
}

// Handle marker click event
function onMarkerClick(id) {
  var mapInfo = document.getElementById("map-info");

  var width2 =
    window.innerWidth ||
    document.documentElement.clientWidth ||
    document.body.clientWidth;

  if (width2 <= 768) {
    mapInfo.style.transform = "scale(1)";
  } else {
    mapInfo.style.left = "5vw";
  }

  var newUrl = `http://localhost/pengudang.discover.co.id/api//get-content-id/?get=content&id=${id}`;
  axios
    .get(newUrl)
    .then(function (response) {
      const data = response.data.content;
      const imgOne = document.getElementById("img-1");
      const imgTwo = document.getElementById("img-2");
      const imgThree = document.getElementById("img-3");
      const h1Map = document.getElementById("h1-map");
      const dayMap = document.getElementById("days-map");
      const hourMap = document.getElementById("hours-map");
      const isiMap = document.getElementById("isi-map");
      const viewMap = document.getElementById("view-map");

      imgOne.src = `/images/thumbnail/${data.thumbnail}`;
      imgTwo.src = `/images/tosee_images/${data.images[0].images}`;
      imgThree.src = `/images/tosee_images/${
        data.images.length > 1 ? data.images[1].images : data.images[0].images
      }`;

      if (data.start_time == "00:00:00" && data.end_time == "00:00:00") {
        var times = "24 Hours";
      } else {
        var times =
          data.start_time.substring(0, 5) +
          " - " +
          data.end_time.substring(0, 5);
      }

      if (data.start_time == "00:00:01" && data.end_time == "23:59:59") {
        var times = "24 Hours";
      }

      h1Map.textContent = `${data.name}`;
      dayMap.textContent = `${data.days}`;
      hourMap.textContent = times;
      isiMap.textContent = `${data.caption}`;
      viewMap.setAttribute(
        "href",
        `/pages/content/?get=tosee&id=${data.tosee_id}`
      );
    })
    .catch(function (error) {
      console.error("Gagal mengambil data:", error);
    });
}

// Layer selection functionality
var osm = document.getElementById("osm");
var street = document.getElementById("street");
var satelit = document.getElementById("satelit");
var terrain = document.getElementById("terrain");

osm.addEventListener("click", () => {
  openStreetMap.addTo(map);
  satelit.style.backgroundColor = "white";
  street.style.backgroundColor = "white";
  osm.style.backgroundColor = "#28bfff";
  if (googleStreet) {
    map.removeLayer(googleStreet);
  }
  if (googleSat) {
    map.removeLayer(googleSat);
  }
});

street.addEventListener("click", () => {
  googleStreet.addTo(map);
  satelit.style.backgroundColor = "white";
  street.style.backgroundColor = "#28bfff";
  osm.style.backgroundColor = "white";
  if (openStreetMap) {
    map.removeLayer(openStreetMap);
  }
  if (googleSat) {
    map.removeLayer(googleSat);
  }
});

satelit.addEventListener("click", () => {
  googleSat.addTo(map);
  satelit.style.backgroundColor = "#28bfff";
  street.style.backgroundColor = "white";
  osm.style.backgroundColor = "white";
  if (googleStreet) {
    map.removeLayer(googleStreet);
  }
  if (openStreetMap) {
    map.removeLayer(openStreetMap);
  }
});

// Flickity carousel setup
var carousel = document.querySelector(".carousel");
var flkty = new Flickity(carousel, {
  imagesLoaded: true,
  percentPosition: false,
});

var imgs = carousel.querySelectorAll(".carousel-cell img");
var docStyle = document.documentElement.style;
var transformProp =
  typeof docStyle.transform == "string" ? "transform" : "WebkitTransform";

// Update image positions in carousel during scroll
flkty.on("scroll", function () {
  flkty.slides.forEach(function (slide, i) {
    var img = imgs[i];
    var x = ((slide.target + flkty.x) * -1) / 3;
    img.style[transformProp] = "translateX(" + x + "px)";
  });
});

// Show/hide layer names on hover
var osmClick = document.getElementById("osm");
var h3osm = document.getElementById("h3-osm");

var streetClick = document.getElementById("street");
var h3street = document.getElementById("h3-street");

var satelitClick = document.getElementById("satelit");
var h3satelit = document.getElementById("h3-satelit");

osmClick.addEventListener("mouseover", () => {
  h3osm.style.transform = "scale(1)";
});

osmClick.addEventListener("mouseout", () => {
  h3osm.style.transform = "scale(0)";
});

streetClick.addEventListener("mouseover", () => {
  h3street.style.transform = "scale(1)";
});

streetClick.addEventListener("mouseout", () => {
  h3street.style.transform = "scale(0)";
});

satelitClick.addEventListener("mouseover", () => {
  h3satelit.style.transform = "scale(1)";
});

satelitClick.addEventListener("mouseout", () => {
  h3satelit.style.transform = "scale(0)";
});
