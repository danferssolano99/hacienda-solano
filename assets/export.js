(function () {
  "use strict";

  var root = document.documentElement;
  var canvas = document.querySelector("[data-export-canvas]");
  var params = new URLSearchParams(window.location.search);

  if (!canvas) {
    throw new Error("Export contract: missing [data-export-canvas].");
  }

  var width = Number(canvas.dataset.exportWidth);
  var height = Number(canvas.dataset.exportHeight);

  if (!Number.isFinite(width) || !Number.isFinite(height) || width <= 0 || height <= 0) {
    throw new Error("Export contract: invalid canvas dimensions.");
  }

  root.style.setProperty("--export-width", width + "px");
  root.style.setProperty("--export-height", height + "px");
  root.style.setProperty("--print-width", canvas.dataset.printWidth || width + "px");
  root.style.setProperty("--print-height", canvas.dataset.printHeight || height + "px");

  if (params.get("export") === "1") {
    root.dataset.exportMode = "export";
  }

  function waitForImage(image) {
    if (!image.currentSrc && !image.getAttribute("src")) {
      return Promise.reject(new Error("Export contract: image has no src."));
    }

    if (image.complete && image.naturalWidth > 0) {
      return Promise.resolve();
    }

    return new Promise(function (resolve, reject) {
      image.addEventListener("load", resolve, { once: true });
      image.addEventListener("error", function () {
        reject(new Error("Export contract: failed image " + (image.currentSrc || image.src)));
      }, { once: true });
    });
  }

  window.__EXPORT_READY__ = Promise.all([
    document.fonts ? document.fonts.ready : Promise.resolve(),
    Promise.all(Array.from(canvas.querySelectorAll("img"), waitForImage))
  ]).then(function () {
    var rect = canvas.getBoundingClientRect();
    if (root.dataset.exportMode === "export" && (rect.width !== width || rect.height !== height)) {
      throw new Error("Export contract: canvas is " + rect.width + "x" + rect.height + ", expected " + width + "x" + height + ".");
    }
    root.dataset.exportReady = "true";
  }).catch(function (error) {
    root.dataset.exportError = error.message;
    throw error;
  });
}());
