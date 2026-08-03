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

  function toCssPixels(value) {
    var match = /^\s*(\d+(?:\.\d+)?)(mm|cm|in|px|pt)\s*$/i.exec(value || "");
    if (!match) {
      return null;
    }

    var amount = Number(match[1]);
    var unit = match[2].toLowerCase();
    if (!Number.isFinite(amount)) {
      return null;
    }

    switch (unit) {
      case "mm":
        return amount * 96 / 25.4;
      case "cm":
        return amount * 96 / 2.54;
      case "in":
        return amount * 96;
      case "pt":
        return amount * 96 / 72;
      case "px":
        return amount;
      default:
        return null;
    }
  }

  if (!Number.isFinite(width) || !Number.isFinite(height) || width <= 0 || height <= 0) {
    throw new Error("Export contract: invalid canvas dimensions.");
  }

  root.style.setProperty("--export-width", width + "px");
  root.style.setProperty("--export-height", height + "px");
  root.style.setProperty("--print-width", canvas.dataset.printWidth || width + "px");
  root.style.setProperty("--print-height", canvas.dataset.printHeight || height + "px");

  var printWidthPx = toCssPixels(canvas.dataset.printWidth || "");
  var printHeightPx = toCssPixels(canvas.dataset.printHeight || "");
  if (printWidthPx && printHeightPx) {
    root.style.setProperty("--print-scale-x", String(printWidthPx / width));
    root.style.setProperty("--print-scale-y", String(printHeightPx / height));
  } else {
    root.style.setProperty("--print-scale-x", "1");
    root.style.setProperty("--print-scale-y", "1");
  }

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
