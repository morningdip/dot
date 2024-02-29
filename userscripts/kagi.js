// ==UserScript==
// @name            Fix Chinese IME for Kagi Search on Safari
// @description     Fix the issue where Chinese IME cannot select characters and hits Enter to submit when browsing Kagi Search on Safari
// @match           https://kagi.com/*
// @version         1.0.0.0
// ==/UserScript==
  
document.addEventListener("keydown", (e) => {
    if(e.keyCode == 229) e.stopPropagation();
}, true)
