document.getElementById("menu_open").onclick = function (e) {
    e.preventDefault();
    document.querySelector("html").classList.toggle("openNav");
    document.querySelector(".nav-toggle").classList.toggle("active");
    
  };

  const artistImages = document.querySelectorAll("#artistenIMG img");

  artistImages.forEach(img => {
      img.addEventListener("mouseover", () => {
          const artistName = img.getAttribute("alt");
          const tooltip = document.createElement("div");
          tooltip.classList.add("tooltip");
          tooltip.textContent = artistName;
          img.parentNode.style.position = "relative";
          img.parentNode.appendChild(tooltip);
      });
  
      img.addEventListener("mouseout", () => {
          const tooltip = img.parentNode.querySelector(".tooltip");
          if (tooltip) {
              tooltip.parentNode.removeChild(tooltip);
          }
      });
  });
  
  document.addEventListener("DOMContentLoaded", function() {
    const albumImages = document.querySelectorAll("#albumenIMG img");

    albumImages.forEach(img => {
        img.addEventListener("mouseover", () => {
            const altText = img.getAttribute("alt");
            const tooltip2 = document.createElement("div");
            tooltip2.classList.add("tooltip2");
            tooltip2.textContent = altText;
            img.parentNode.style.position = "relative";
            img.parentNode.appendChild(tooltip2);
        });

        img.addEventListener("mouseout", () => {
            const tooltip2 = img.parentNode.querySelector(".tooltip2");
            if (tooltip2) {
                tooltip2.parentNode.removeChild(tooltip2);
            }
        });
    });
});


  