local ui = {}

ui.config = function(getkey, verifykey)
    function Radius(parent, radius)
        local Corner = Instance.new("UICorner", parent)
        Corner.CornerRadius = UDim.new(0, radius)
    end

    local Scr = Instance.new("ScreenGui", game.CoreGui)
    Scr.Name = "KeySYS"
    Scr.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame", Scr)
    MainFrame.BackgroundColor3 = Color3.fromRGB(60,60,60)
    MainFrame.Size = UDim2.new(0, 500, 0, 286)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
    MainFrame.BackgroundTransparency = 0.15

    Radius(MainFrame, 20)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.TextSize = 25
    Title.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(0, 300, 0, 100)
    Title.Text = "Purge Key System"
    Title.Position = UDim2.new(0.5, -150, 0.5, -125)

    local TxtEff = Instance.new("LocalScript", Title)
    TxtEff.Name = "Text effects"

    local Credits = Instance.new("TextLabel", MainFrame)
    Credits.TextSize = 10
    Credits.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Credits.TextColor3 = Color3.fromRGB(169, 169, 169)
    Credits.BackgroundTransparency = 1
    Credits.Size = UDim2.new(0, 300, 0, 100)
    Credits.Text = "UI made by chinawillspyonusa"
    Credits.Position = UDim2.new(0.502, -320, 0.59441, -200)

    local GetBtn = Instance.new("TextButton", MainFrame)
    GetBtn.TextSize = 15
    GetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetBtn.BackgroundColor3 = Color3.fromRGB(70,70,70)
    GetBtn.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    GetBtn.Size = UDim2.new(0.125, 85, -0.0759, 55)
    GetBtn.BackgroundTransparency = 0.25
    GetBtn.Text = "Get Key"
    GetBtn.Position = UDim2.new(0.2, 200, 0.54444, 80)
    GetBtn.MouseButton1Click:Connect(getkey)

    Radius(GetBtn, 10)

    local KeyTxt = Instance.new("TextBox", MainFrame)
    KeyTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyTxt.TextWrapped = true
    KeyTxt.TextSize = 16
    KeyTxt.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    KeyTxt.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    KeyTxt.ClearTextOnFocus = false
    KeyTxt.PlaceholderText = "Enter your Key..."
    KeyTxt.Size = UDim2.new(0, 400, 0, 36)
    KeyTxt.Position = UDim2.new(0.5, -200, 0.54, 5)
    KeyTxt.BorderColor3 = Color3.fromRGB(104, 103, 105)
    KeyTxt.Text = ""
    KeyTxt.BackgroundTransparency = 0.2

    Radius(KeyTxt, 10)

    local VerifyBtn = Instance.new("TextButton", MainFrame)
    VerifyBtn.TextSize = 15
    VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    VerifyBtn.BackgroundColor3 = Color3.fromRGB(70,70,70)
    VerifyBtn.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    VerifyBtn.Size = UDim2.new(0.125, 85, -0.0759, 55)
    VerifyBtn.BackgroundTransparency = 0.25
    VerifyBtn.Text = "Verify Key"
    VerifyBtn.Position = UDim2.new(0.2, -50, 0.54444, 80)
    VerifyBtn.MouseButton1Click:Connect(verifykey)

    Radius(VerifyBtn, 10)

    local CloseBtn = Instance.new("ImageButton", MainFrame)
    CloseBtn.Image = "rbxassetid://9886659671"
    CloseBtn.Size = UDim2.new(0, 16, 0, 15)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Position = UDim2.new(0.52029, 200, 0.63735, -165)

    CloseBtn.MouseButton1Click:Connect(function()
        Scr:Destroy()
    end)


    local MinBtn = Instance.new("ImageButton", MainFrame)
    MinBtn.Image = "rbxassetid://9886659276"
    MinBtn.Size = UDim2.new(0, 16, 0, 15)
    MinBtn.BackgroundTransparency = 1
    MinBtn.Position = UDim2.new(0.536, 150, 0.63735, -165)

    MinBtn.MouseButton1Click:Connect(function()
        Scr.Enabled = false
    end)

    local Shadow = Instance.new("Frame", MainFrame)
    Shadow.ZIndex = 0
    Shadow.BorderSizePixel = 0
    Shadow.Size = UDim2.new(1, 0, 1, 0)
    Shadow.Name = "DropShadowHolder"
    Shadow.BackgroundTransparency = 1


    local ShadowHelper = Instance.new("ImageLabel", Shadow)
    ShadowHelper.ZIndex = 0
    ShadowHelper.BorderSizePixel = 0
    ShadowHelper.SliceCenter = Rect.new(49, 49, 450, 450)
    ShadowHelper.ScaleType = Enum.ScaleType.Slice
    ShadowHelper.ImageTransparency = 0.5
    ShadowHelper.ImageColor3 = Color3.fromRGB(55, 71, 158)
    ShadowHelper.AnchorPoint = Vector2.new(0.5, 0.5)
    ShadowHelper.Image = "rbxassetid://6014261993"
    ShadowHelper.Size = UDim2.new(1, 47, 1, 47)
    ShadowHelper.BackgroundTransparency = 1
    ShadowHelper.Name = "DropShadow"
    ShadowHelper.Position = UDim2.new(0.5, 0, 0.5, 0)

    local Stroke = Instance.new("UIStroke", MainFrame)
    Stroke.Transparency = 0.5
    Stroke.Color = Color3.fromRGB(28, 43, 54)


    local Desc = Instance.new("TextLabel", MainFrame)
    Desc.BorderSizePixel = 0
    Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Desc.TextSize = 14
    Desc.FontFace = Font.new("rbxassetid://11702779517", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
    Desc.BackgroundTransparency = 1
    Desc.Size = UDim2.new(0, 300, 0, 23)
    Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Desc.Text = "Enhance your experience with Purge"
    Desc.Name = "Description"
    Desc.Position = UDim2.new(0.2, 0, 0.3042, 0)

    local TapScr = Instance.new("LocalScript", Desc)

    local TapSnd = Instance.new("Sound", TapScr)
    TapSnd.Name = "Tap"
    TapSnd.SoundId = "rbxassetid://9116156872"

    local function TypeEff()
        local script = TxtEff
        
        local Label = Title
        local old = Label.Text
        Label.Text = ""
        
        for i=1, #old do
            Label.Text = Label.Text.. old:sub(i,i)
            task.wait(0.1)
        end
    end

    local function Whatever()
        local Label = Desc
        local old = Label.Text
        Label.Text = ""
        
        for i=1, #old do
            Label.Text = Label.Text.. old:sub(i,i)
            TapSnd:Play()
            task.wait(0.1)
        end
        
    end

    task.spawn(TypeEff)
    task.spawn(Whatever)
end

return ui
