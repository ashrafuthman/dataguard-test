
import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Who we will get to know next?", "let's find out!"],
    typeSpeed: 65,
    loop: true
  });
}

export { loadDynamicBannerText };

