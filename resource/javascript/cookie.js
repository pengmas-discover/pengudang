// Event listener that toggles the visibility of FAQ text content when a button is clicked.
const btns = document.querySelectorAll(".btn");
let currFaq = "";

btns.forEach((btn) =>
  btn.addEventListener("click", (e) => {
    console.log(e.currentTarget.parentElement.parentElement);
    currFaq = e.currentTarget.parentElement.parentElement;
    console.log(currFaq);
    currFaq.classList.toggle("show-text");
  })
);
