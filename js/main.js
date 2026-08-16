// PearlAim site — minimal, dependency-free JS

document.addEventListener("DOMContentLoaded", () => {
  // Mobile nav toggle
  const toggle = document.querySelector(".nav-toggle");
  const links = document.querySelector(".nav-links");
  if (toggle && links) {
    toggle.addEventListener("click", () => {
      const isOpen = links.classList.toggle("open");
      toggle.setAttribute("aria-expanded", isOpen ? "true" : "false");
    });
    links.querySelectorAll("a").forEach((a) =>
      a.addEventListener("click", () => links.classList.remove("open"))
    );
  }

  // Close mobile menu on resize back to desktop
  window.addEventListener("resize", () => {
    if (window.innerWidth > 880 && links) links.classList.remove("open");
  });

  // FAQ: only one open item per group (optional, keeps UI tidy)
  document.querySelectorAll(".faq-group").forEach((group) => {
    const items = group.querySelectorAll("details.faq-item");
    items.forEach((item) => {
      item.addEventListener("toggle", () => {
        if (item.open) {
          items.forEach((other) => {
            if (other !== item) other.open = false;
          });
        }
      });
    });
  });
});
