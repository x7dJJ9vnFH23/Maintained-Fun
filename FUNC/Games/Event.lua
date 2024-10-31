return (function()
    local De = Window:NewTab("Event")

    De:NewButton("Test", "Player", function()
        print("Hi")
    end)

    return {
        De = De
end)() 
