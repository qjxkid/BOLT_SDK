local templateMananger = XLGetObject("Xunlei.UIEngine.TemplateManager")local frameHostWndTemplate = templateMananger:GetTemplate("MineSweeper","HostWndTemplate")if frameHostWndTemplate then  	local frameHostWnd = frameHostWndTemplate:CreateInstance("MineSweeper.MainFrame")	if frameHostWnd then		local objectTreeTemplate = templateMananger:GetTemplate("MineSweeperTree","ObjectTreeTemplate")		if objectTreeTemplate then			local uiObjectTree = objectTreeTemplate:CreateInstance("MineSweeper.MainObjectTree")			if uiObjectTree then				frameHostWnd:BindUIObjectTree(uiObjectTree)				frameHostWnd:Create()			end		end	endend