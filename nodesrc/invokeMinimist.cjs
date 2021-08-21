#!/usr/bin/env node
// Minimist example

const argv = require('minimist')(process.argv.slice(2))

if (argv[1] == "y") {
	console.log("you picked y");
} elseif (argv[1] == "n") {
	console.log("you picked n)
}

console.log("done")