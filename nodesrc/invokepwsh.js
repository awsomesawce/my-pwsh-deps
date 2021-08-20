import Shell from 'node-powershell'
import * as fs from 'fs'
import * as path from 'path'
const ps = new Shell({
  pwsh: true, // Uses pwsh.exe instead of powershell.exe
  verbose: true,
  executionPolicy: 'Bypass',
  noProfile: true,
});
//let params = {format: 'FileDate'}
let params = {path: path.resolve('../')}
//ps.addCommand('Get-Date')
ps.addCommand('Get-ChildItem')
ps.addParameter(params)

ps.invoke().then(output => {
    console.log(output)})
    .catch(err => {
        console.error(err);
        ps.dispose();
    });
