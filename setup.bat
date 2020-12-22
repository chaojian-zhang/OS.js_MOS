:: Install dependencies
npm install

:: It's recommended that you update dependencies
npm update

:: Optionally install extra packages:
:: For a list of packages, see https://manual.os-js.org/resource/official/
npm install @osjs/example-application
npm install @osjs/widgets
npm install --save --production @osjs/xterm-application
npm install --save --production @osjs/ace-application
npm install @osjs/pdfreader-application
npm install @osjs/wolfenstein3d-application
npm install @osjs/tetris-application
npm install --save --production @osjs/windows8-theme
npm install @osjs/json-config-cli
npm install @osjs/proc-provider

:: Discover installed packages
npm run package:discover

:: Build client
npm run build

:: Start serving
npm run serve

:: Make Standalone Version using nexe (assume installed globally)
npm i nexe -g
nexe src/server/index.js
:: Copy and create complete distribution files; 'F' means file, 'D' means Copy as folder for xcopy
mkdir package
xcopy OSJS.exe package\OSJS.exe
F
xcopy dist package\dist /s /e
D
xcopy vfs package\vfs /s /e
D