//var pkgjson = require('./package.json')
const powershell = require('node-powershell')
let ps = new powershell({
  executionPolicy: 'Bypass',
  noProfile: true})

ps.addCommand('echo node-powershell is cool; Get-Date')
ps.invoke().then(output => {
console.log(`output is 
  ${output}`);}).catch(err => {
console.log(err);
ps.dispose();})
