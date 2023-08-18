# Windows Context menu for PHP server

![TEkGunoaXa](https://github.com/3PSY0N/windows-context-menu-php-server/assets/78256817/312659fd-78a0-45aa-a84d-b0844333f7d7)

## About
The aim of this project is to be able to launch a php server under Windows from the context menu, to open the web browser on the localhost url on the port generated by the script.

## How to install?
*⚠ Require PHP installed*
- Add php directory to your user PATH [(Check Microsoft link)](https://learn.microsoft.com/en-us/previous-versions/office/developer/sharepoint-2010/ee537574(v=office.14)) if you don't know how to.
- Edit the line `"D:\\Programs\\WebServerBat\\WebServer.bat"` in register.reg <br>
 and set the path of the `WebServer.bat` file (ex: `"C:\\ContextPHPServer\\WebServer.bat"`) and save.
- Double click to `register.reg` to register the batch script in the windows registry as context menu.
- Then, nativate to a web project directory, right-click anywhere, then click on "Start PHP Webserver here".

## How to uninstall?
Simply double click on `unregister.reg` to remove context menu.
