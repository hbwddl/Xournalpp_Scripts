
-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Toggle Pen/Highlighter", ["callback"] = "togglePenHigh", ["accelerator"] = "<Control><Alt><Shift>p"});
end

toolstate = 1;

function togglePenHigh()
  if toolstate == 1 then
    app.uiAction({["action"]="ACTION_TOOL_PEN"})
    toolstate = 2
  else
    app.uiAction({["action"]="ACTION_TOOL_HILIGHTER"})
    toolstate = 1
  end
end
