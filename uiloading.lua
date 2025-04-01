local TweenService = game:GetService("TweenService")

local UI = {}
UI["1"] = Instance.new("ScreenGui")
UI["1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
UI["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Khung chính (Màu xanh dương nhạt)
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"].BorderSizePixel = 0
UI["2"].BackgroundColor3 = Color3.fromRGB(0, 140, 255) -- Màu xanh dương đẹp
UI["2"].AnchorPoint = Vector2.new(0.5, 0.5)
UI["2"].Size = UDim2.new(0, 390, 0, 211)
UI["2"].Position = UDim2.new(0.5, 0, 0.5, 0)
UI["2"].BorderColor3 = Color3.fromRGB(0, 0, 0)

-- Viền bo góc
local UICorner = Instance.new("UICorner", UI["2"])
UICorner.CornerRadius = UDim.new(0, 20)

-- Viền Stroke (Màu xanh dương đậm)
local UIStroke = Instance.new("UIStroke", UI["2"])
UIStroke.Thickness = 5
UIStroke.Color = Color3.fromRGB(0, 80, 200) -- Màu xanh dương đậm hơn

-- Tiêu đề (Màu trắng)
UI["5"] = Instance.new("TextLabel", UI["2"])
UI["5"].BorderSizePixel = 0
UI["5"].BackgroundTransparency = 1
UI["5"].Size = UDim2.new(0, 390, 0, 50)
UI["5"].Text = "Skibidi Hub"
UI["5"].Font = Enum.Font.FredokaOne
UI["5"].TextSize = 30
UI["5"].TextColor3 = Color3.fromRGB(255, 255, 255) -- Màu trắng

-- Thanh tiến trình (Màu xanh dương nhạt)
UI["7"] = Instance.new("CanvasGroup", UI["2"])
UI["7"].BackgroundTransparency = 1
UI["7"].Size = UDim2.new(0, 357, 0, 49)
UI["7"].Position = UDim2.new(0.041, 0, 0.6, 0)

UI["9"] = Instance.new("Frame", UI["7"])
UI["9"].BorderSizePixel = 0
UI["9"].BackgroundColor3 = Color3.fromRGB(120, 195, 255) -- Màu xanh dương nhạt
UI["9"].Size = UDim2.new(0, 0, 0, 49)

-- Văn bản hiển thị "Đang tải..." (Màu trắng)
UI["a"] = Instance.new("TextLabel", UI["2"])
UI["a"].BackgroundTransparency = 1
UI["a"].Size = UDim2.new(0, 200, 0, 50)
UI["a"].Position = UDim2.new(0.243, 0, 0.3, 0)
UI["a"].Text = "Đang tải..."
UI["a"].Font = Enum.Font.ComicNeue
UI["a"].TextSize = 20
UI["a"].TextColor3 = Color3.fromRGB(255, 255, 255) -- Màu trắng

-- Cập nhật văn bản "Đang tải..."
local isRunning = true
task.spawn(function()
	while isRunning do
		for i = 0, 3 do
			UI["a"].Text = "Đang tải" .. string.rep(" .", i)
			task.wait(0.5)
		end
	end
end)

-- Hiệu ứng loading (Màu xanh dương sáng)
local tween = TweenService:Create(UI["9"], TweenInfo.new(5, Enum.EasingStyle.Linear), {
	Size = UDim2.new(0, 357, 0, 49)
})

tween:Play()
tween.Completed:Wait()

-- Kết thúc
isRunning = false
print("Done")
task.wait(1)
UI["1"]:Destroy()

