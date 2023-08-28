const id = new URLSearchParams(window.location.search).get("id");
const apiUrl = `http://localhost/pengudang.discover.co.id/api//get-content-id/?get=content&id=${id}`;

const galleryImage = async () => {
    try {
        const response = await axios.get(apiUrl);
        const data = response.data.content;

        // Select the DOM element for the image carousel
        const imgCarousel = document.querySelector(".carousel");
        let fullImage = ""; // Initialize an empty string outside the loop

        // Loop through destinations to construct the HTML for each image
        data.images.forEach((image) => {
            fullImage += `
        <div class="carousel-cell">
            <img
                src="/pengudang.discover.co.id/images/tosee_images/${image.images}"
                alt=""
            />
        </div>
      `;
        });

        imgCarousel.innerHTML = fullImage; // Insert all elements into the carousel

        // Select the carousel element and initialize Flickity carousel
        const carousel = document.querySelector(".carousel");
        const flkty = new Flickity(carousel, {
            imagesLoaded: true,
            percentPosition: false,
        });

        // Select all images within the carousel
        const imgs = carousel.querySelectorAll(".carousel-cell img");
        const docStyle = document.documentElement.style;
        const transformProp =
            typeof docStyle.transform === "string"
                ? "transform"
                : "WebkitTransform";

        // Listen for scroll event on the carousel and adjust image positions
        flkty.on("scroll", () => {
            flkty.slides.forEach((slide, i) => {
                const img = imgs[i];
                const x = ((slide.target + flkty.x) * -1) / 3; // Calculate translation distance
                img.style[transformProp] = `translateX(${x}px)`; // Apply the translation
            });
        });
    } catch (error) {
        console.error("Failed to fetch data:", error);
    }
};

const contentApi = async () => {
    try {
        const response = await axios.get(apiUrl);
        const data = response.data.content;

        const titleContent = document.querySelector(".title-content");
        let fullContent = `<p>haha</p>`;
        titleContent.style.backgroundImage = `url(/pengudang.discover.co.id/images/tosee/${data.thumbnail})`;
        titleContent.innerHTML = fullContent;

        // Extract the first word as "biru" and the rest as "kata"
        const [biru, ...kata] = data.name.trim().split(" ");
        const putih = kata.join(" ");

        // ticket
        let ticket = "";

        if (
            data.object_type === "Accomodation" ||
            data.object_type === "Tourist Spot"
        ) {
            ticket = "Entrance Fee";
        } else if (data.object_type === "Restaurant") {
            ticket = "Price Range";
        } else {
            ticket = "Price";
        }

        // Determine the operating times based on start and end times
        const times =
            data.start_time === "00:00:00" && data.end_time === "00:00:00"
                ? "24 Hours"
                : `${data.start_time.substring(
                      0,
                      5
                  )} - ${data.end_time.substring(0, 5)}`;

        // HTML content for the gallery images
        const titleGallery = document.getElementById("title-gallery");
        titleGallery.innerText = `Photographs of ${data.name}`;

        const content = `
        <div class="image-one" style="background-image: url(/pengudang.discover.co.id/images/tosee/${
            data.thumbnail
        });"></div>
        <div class="image-two" style="background-image: url(/pengudang.discover.co.id/images/tosee_images/${
            data.images[0].images
        });"></div>
        <div class="image-three" style="background-image: url(/pengudang.discover.co.id/images/tosee_images/${
            data.images.length > 1
                ? data.images[1].images
                : data.images[0].images
        });">
          <div id="show-image" class="show-image">
            <img src="/pengudang.discover.co.id/assets/image.png" alt="" /> Show all photos
          </div>
        </div>
      `;

        // HTML content for destination information
        const information = `
        <h1><span class="warna">${biru}</span> ${putih}</h1>
        <div class="">
          <span class="span">${data.object_type}</span><br><br>
          <p style="text-align: justify">${data.caption}</p>
          <div class="context">${data.promt}</div>
          <div class="context">${data.narrative}</div><br>
          <h3>Information about tourist destinations</h3>
          <div class="spek">
            <img src="/pengudang.discover.co.id/assets/icon-days.png" alt="" />
            <h5>Operation Days</h5>
            <p>${data.days}</p>
          </div>
          <div class="spek">
            <img src="/pengudang.discover.co.id/assets/icon-hour.png" alt="" />
            <h5>Operation Hours</h5>
            <p>${times}</p>
          </div>
          ${
              data.object_type === "Public Facility"
                  ? ""
                  : `
              <div class="spek">
                <img src="/pengudang.discover.co.id/assets/icon-ticket.png" alt="" />
                <h5>${ticket}</h5>
                <p>${data.price}</p>
              </div>`
          }
          ${
              data.object_type === "Accomodation"
                  ? `
              <div class="spek">
                <img src="/pengudang.discover.co.id/assets/icon-ticket.png" alt="" />
                <h5>Website</h5>
                <p><a href="${data.link}">Book Now</a></p>
              </div>`
                  : ""
          }
        </div>
        <div class="peta">
          <h2>Location</h2>
          <div id="map"></div>
          <div class="alamat">
            <img src="/pengudang.discover.co.id/assets/maps.png" alt="" />
            <h4>${data.name}</h4>
            <p>${data.address}</p>
          </div>
        </div>
      `;

        // Select relevant DOM elements
        const titleTodo = document.querySelector(".gallery-image");
        const parentInformation = document.querySelector(".information");

        // Set HTML content to respective DOM elements
        titleTodo.innerHTML = content;
        parentInformation.innerHTML = information;

        // Initialize map with Leaflet library
        const map = L.map("map").setView([data.latitude, data.longitude], 14);

        // Set up Google Street Layer for the map
        const googleStreet = L.tileLayer(
            "http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}",
            {
                maxZoom: 20,
                subdomains: ["mt0", "mt1", "mt2", "mt3"],
            }
        ).addTo(map);

        // Add marker and popup to the map
        const marker = L.marker([data.latitude, data.longitude])
            .addTo(map)
            .bindPopup(`<b>${data.name}<br></b>${data.address}`)
            .openPopup();

        // Event listeners for showing and closing full images
        const closeImage = document.getElementById("close-image");
        const fullImg = document.getElementById("full-image");
        const showImage = document.getElementById("show-image");

        closeImage.addEventListener("click", () => {
            fullImg.style.zIndex = "-9999"; // Hide full image
        });

        showImage.addEventListener("click", () => {
            fullImg.style.zIndex = "9999"; // Show full image
        });

        galleryImage();
    } catch (error) {
        console.log(error);
    }
};

document.addEventListener("DOMContentLoaded", () => {
    contentApi();
});
