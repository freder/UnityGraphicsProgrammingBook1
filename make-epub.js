const fs = require('fs');
const { execSync } = require('child_process');


// parse table of contents
const lines = fs.readFileSync('./articles/catalog.yml').toString().split(/[\n\r]+/);
const files = lines
	.filter((line) => line.startsWith('  - '))
	.map((s) => s.replace('  - ', '').replace('.re', '.html'));
console.log(files);

// generate an epub file
const cmd = `pandoc -s ${files.join(' ')} -t epub -o ../UnityGraphicsProgrammingBook1.epub`;
console.log(cmd);
execSync(cmd, { cwd: './articles' });

// also create an html index page
const html = files.map((f) => `<a href="${f}">${f}</a><br>`).join('\n');
fs.writeFileSync('./articles/index.html', html);
