const { exec } = require('child_process');
import { ipcEndPoint, datadir, net } from '../geth_options/geth_options.js';
import { linux, windows, macOS } from '../constants/os.js';
require('dotenv').config();


/**
 * Attach a javascript console to a running node
 *
 * @param ipcEndPoint: ipc end point to connect to
 * @param datadir: directory where to save blockchain
 * @param net: mainnet, rinkeby, ropsten, etc.
 */
export default function () {
  process.stdout.write("Attaching to running Node\n");
  console.log(`IPC endpoint: ${ipcEndPoint}`);

  var command = `"geth --datadir ${datadir} --${net} attach ${ipcEndPoint}"`;

  // Linux terminal by default
  var terminal = `gnome-terminal -e `;

  if(process.env["CURRENT_OS"] === windows) {
    // Windows terminal
    terminal = `start cmd.exe @cmd /k`;
  }

  if(process.env["CURRENT_OS"] === macOS) {
    // MacOS terminal
    terminal = `osascript -e 'tell application "Terminal" to do script`;
    command = `"geth --datadir ${datadir} --${net} attach ${ipcEndPoint}"'`;
  }

  exec(terminal + command, (error) => {
      if (error) {
        console.error(`exec error: ${error}`);
        return;
      }
    });
}
