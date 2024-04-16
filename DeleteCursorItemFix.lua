local frame = CreateFrame("Button", "DelItem")
frame:SetScript("OnClick", function()
        DeleteCursorItem()
	ClearCursor()
end)

