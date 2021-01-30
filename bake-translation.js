const fs = require('fs');

const puppeteer = require('puppeteer');


async function autoScroll(page){
	await page.evaluate(async () => {
		await new Promise((resolve, reject) => {
			const scrollStep = 150;
			const scrollInterval = 50;

			let totalHeight = 0;
			const timer = setInterval(() => {
				const scrollHeight = document.body.scrollHeight;
				window.scrollBy(0, scrollStep);
				totalHeight += scrollStep;

				if (totalHeight >= scrollHeight){
					clearInterval(timer);
					resolve();
				}
			}, scrollInterval);
		});
	});
}


(async () => {
	const url = process.argv[2];
	const outputFile = process.argv[3] || 'test.html';

	const browser = await puppeteer.launch({ headless: false });
	const page = await browser.newPage();

	await page.goto(url);
	await page.setViewport({ width: 1200, height: 800 });

	await autoScroll(page);

	const html = await page.evaluate(
		() => document.querySelector('html').outerHTML
			.replace(
				'</style>',
				`</style><style>
					.goog-te-banner-frame {
						display: none;
					}
				</style>`
			)
			.replace(
				`var elem = new google.translate.TranslateElement({
      autoDisplay: false,
      floatPosition: 0,
      multilanguagePage: true,
      pageLanguage: pageLang
    });
    return elem;`,
	    		''
	   		)
	   		.replace(
	   			`var s = document.createElement('script');
      s.src = 'https://translate.google.com/translate_a/element.js?cb=' +
              encodeURIComponent(cbId) + '&client=tee&hl=' + userLang;
      document.getElementsByTagName('head')[0].appendChild(s);`,
	            ''
	   		)
	);
	fs.writeFileSync(outputFile, html);

	await browser.close();
})();
