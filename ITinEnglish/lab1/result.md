# Задание

1. Найдите текст на английском языке, посвященный
разработке программных продуктов.
2. Выберите фрагмент текста (не менее 15 предложений).
3. Сделайте перевод этого фрагмента, используя две разные
программы-переводчики (в качестве одной из них выберите Google Translate).
4. Выпишите незнакомые слова и определите их переводы с помощью
https://www.lingvolive.com  
5. Сопоставьте переводы с результатами, выданными программами
автоматического перевода.
6. Используйте инструмент построения облака слов (например,
https://www.wordclouds.com/) для анализа этого текста. Выделите top-5 значимых
слов текста:

# Текст

## Electron 7.0 releases in beta with Windows on Arm 64 bit, faster IPC methods, nativetheme API and more

Last week the team at Electron announced the release of Electron 7.0 in beta. It includes upgrades to Chromium 78, V8 7.8, and Node.js 12.8.1. The team has added a Window on Arm 64 release, faster IPC methods, a new nativeTheme API, and much more.

This release is published to npm under the beta tag and can be installed via npm install electron@beta, or npm i electron@7.0.0-beta.7. It is packed with upgrades, fixes, and new features.

Notable changes in Electron 7.0
There are stack upgrades in this release, Electron 7.0 will be compatible on Chromium 78, V8 7.8 and Node.js 12.8.1.
In this release they have added Windows on Arm (64 bit).
The team has added ipcRenderer.invoke() and ipcMain.handle() for asynchronous request/response-style IPC. These are strongly recommended over the remote module.
They have added nativeTheme API to read and respond to changes in the OS’s theme and color scheme.
In this release they have switched to a new TypeScript Definitions generator, which generates more precise definitions files (d.ts) from C# model classes to build strongly typed web application where the server- and client-side models are in sync. Earlier Electron used Doc Linter and Doc Parser but it had a few issues and hence shifted to TypeScript to make definition files better without losing any information on docs.
Other breaking changes
The team has removed deprecated APIs in this release:

Callback-based versions of functions that now use Promises.

Session.clearAuthCache() no longer allows filtering the cleared cache entries.
Native interfaces on macOS (menus, dialogs, etc.) now automatically match the dark mode setting on the user’s machine.
The team has updated the electron module to use @electron/get. Node 8 is the minimum supported node version in this release.
The electron.asar file no longer exists. Any packaging scripts that depend on its existence should be updated by the developers.
Additionally the team announced that Electron 4.x.y has reached end-of-support as per the project’s support policy. Developers and applications are encouraged to upgrade to a newer version of Electron.
