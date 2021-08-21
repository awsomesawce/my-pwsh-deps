#!/usr/bin/env node
// Minimist example

const fs = require('fs-extra')
const path = require('path')
const argv = require('minimist')(process.argv)

let myArgs = require('minimist')(process.argv.slice(2))

/*
let args = argv._

let firstArg = args[0]

if (firstArg == "--help") {
	console.log()
}

if (args[0] == "y") {
	console.log("you picked y");
} 
if (args[0] == "n") {
	console.log("you picked n");
} else {
	console.log("else");
}
*/

function displayArgs() {
	let firstArg = argv._[0]
	if (firstArg.match("node")) {
		console.log(`firstArg matches node: ${firstArg}`)
	}
}

displayArgs()

console.log("done")