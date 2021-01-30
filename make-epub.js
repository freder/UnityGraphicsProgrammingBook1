const fs = require('fs');
const { execSync } = require('child_process');



const lines = fs.readFileSync('./articles/catalog.yml').toString().split(/[\n\r]+/);
const files = lines
	.filter((line) => line.startsWith('  - '))
	.map((s) => s.replace('  - ', '').replace('.re', '.html'));
console.log(files);

const cmd = `pandoc -s ${files.join(' ')} -t epub -o ../UnityGraphicsProgrammingBook1.epub`;
console.log(cmd);
execSync(cmd, { cwd: './articles' });