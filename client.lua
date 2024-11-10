local devtools = false;
local size = {500, 500};
local sx,sy = guiGetScreenSize();

local browserGUI = guiCreateBrowser(sx / 2 - size[1] / 2, sy / 2 - size[2] / 2, size[1], size[2], true, true, false);
local browser = guiGetBrowser(browserGUI);

addEventHandler("onClientBrowserCreated", browser, function()
    if(devtools)then
        toggleBrowserDevTools(browser, true);
    end
    loadBrowserURL(browser, "http://mta/local/html/index.html");
end)