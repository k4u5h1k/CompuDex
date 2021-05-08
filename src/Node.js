// This is an example of NodeJS

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
const fs = require('fs');

const main = async() => {
	const a = [];
	let n;
	for(let i=0;i<2;i++) {
		n = await new Promise(resolve => {
  			readline.question("Enter number : ", resolve)
		});
		a.push(Number(n));
	}

	let op ;
	op = await new Promise(resolve => {
  		readline.question("Enter operator : ", resolve)
	});

	let res;
	let valid = true;

	if(op==="+")
		res = a[0]+a[1];
	else if(op==='-')
		res = a[0]-a[1];
	else {
		valid = false;
		console.log("This operator has not been included");
	}
	
	if(valid)
	{
		try {
			fs.writeFileSync("output.txt", String(res));
			process.exit(0);
		} catch(err) {
			console.log("Error : ", err);
			process.exit(1);
		}
	}
}

main()

/* Usage
 * 1. Install NodeJS on your system
 * 2. Add node to your env PATH
 * 3. run command :   node Node.js
 */
