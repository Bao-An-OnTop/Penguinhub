
if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
spawn(function()
	for v757, v758 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v758.Name == "Death") or (v758.Name == "Spawn")) then
			v758:Destroy();
		end
	end
end);
spawn(function()
	for v759, v760 in pairs(game:GetDescendants()) do
		if (v760:IsA("ParticleEmitter") or v760:IsA("Trail")) then
			v760.Lifetime = NumberRange.new(0);
		elseif v760:IsA("Explosion") then
			v760.BlastPressure = 1;
			v760.BlastRadius = 1;
		elseif (v760:IsA("Fire") or v760:IsA("SpotLight") or v760:IsA("Smoke")) then
			v760.Enabled = false;
		end
	end
end);
local v0 = {};
local v1 = game:GetService("CoreGui");
local v2 = game:GetService("TweenService");
local v3 = get_hidden_gui or gethui ;
if (syn and (typeof(syn) == "table") and RenderWindow) then
	syn.protect_gui = gethui;
end
local function v4(v134)
	if v3 then
		v134['Parent'] = v3();
	elseif ( not is_sirhurt_closure and syn and syn.protect_gui) then
		syn.protect_gui(v134);
		v134['Parent'] = v1;
	elseif v1:FindFirstChild("RobloxGui") then
		v134['Parent'] = v1.RobloxGui;
	else
		v134['Parent'] = v1;
	end
end
local v5 = Instance.new("ScreenGui");
v4(v5);
local v6 = Instance.new("Frame");
v6.AnchorPoint = Vector2.new(0.5, 0.949999988079071);
v6.BackgroundColor3 = Color3.new(1, 1, 1);
v6.BackgroundTransparency = 1;
v6.BorderColor3 = Color3.new(0, 0, 0);
v6.BorderSizePixel = 0;
v6.Position = UDim2.new(0.5, 0, 0.954999983, 0);
v6.Size = UDim2.new(0, 100, 0, 100);
v6.Visible = true;
v6.Parent = v5;
local v16 = Instance.new("UIListLayout");
v16.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v16.SortOrder = Enum.SortOrder.LayoutOrder;
v16.VerticalAlignment = Enum.VerticalAlignment.Bottom;
v16.Parent = v6;
v0.New = function(v135, v136)
	local v137 = Instance.new("Frame");
	v137.BackgroundColor3 = Color3.new(1, 1, 1);
	v137.BorderColor3 = Color3.new(0, 0, 0);
	v137.BorderSizePixel = 0;
	v137.BackgroundTransparency = 1;
	v137.Size = UDim2.new(0, 100, 0, 0);
	v137.Visible = true;
	v137.Parent = v6;
	local v145 = Instance.new("Frame");
	v145.AnchorPoint = Vector2.new(0.5, 1);
	v145.AutomaticSize = Enum.AutomaticSize.X;
	v145.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176);
	v145.BackgroundTransparency = 0.20000000298023224;
	v145.BorderColor3 = Color3.new(0, 0, 0);
	v145.Position = UDim2.new(0.5, 0, 1, 60);
	v145.Size = UDim2.new(0, 0, 0, 30);
	v145.Visible = true;
	v145.Parent = v137;
	local v156 = Instance.new("UICorner");
	v156.CornerRadius = UDim.new(0, 6);
	v156.Parent = v145;
	local v159 = Instance.new("UIPadding");
	v159.PaddingBottom = UDim.new(0, 3);
	v159.PaddingLeft = UDim.new(0, 3);
	v159.PaddingRight = UDim.new(0, 3);
	v159.PaddingTop = UDim.new(0, 3);
	v159.Parent = v145;
	local v165 = Instance.new("UIStroke");
	v165.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v165.Color = Color3.new(0.0313726, 0.0313726, 0.0313726);
	v165.Parent = v145;
	local v170 = Instance.new("TextLabel");
	v170.Font = Enum.Font.Gotham;
	v170.Text = v135;
	v170.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314);
	v170.TextSize = 14;
	v170.AutomaticSize = Enum.AutomaticSize.X;
	v170.BackgroundColor3 = Color3.new(1, 1, 1);
	v170.BackgroundTransparency = 1;
	v170.BorderColor3 = Color3.new(0, 0, 0);
	v170.BorderSizePixel = 0;
	v170.Size = UDim2.new(0, 0, 0, 24);
	v170.Visible = true;
	v170.Parent = v145;
	local v184 = Instance.new("UIPadding");
	v184.PaddingLeft = UDim.new(0, 5);
	v184.PaddingRight = UDim.new(0, 30);
	v184.Parent = v170;
	local v188 = Instance.new("TextButton");
	v188.Font = Enum.Font.SourceSans;
	v188.Text = "";
	v188.TextColor3 = Color3.new(0, 0, 0);
	v188.TextSize = 14;
	v188.AnchorPoint = Vector2.new(1, 0.5);
	v188.BackgroundColor3 = Color3.new(0, 0, 0);
	v188.BackgroundTransparency = 1;
	v188.BorderColor3 = Color3.new(0, 0, 0);
	v188.BorderSizePixel = 0;
	v188.Position = UDim2.new(1, 0, 0.5, 0);
	v188.Size = UDim2.new(0, 24, 0, 24);
	v188.Visible = true;
	v188.Parent = v145;
	local v203 = Instance.new("UICorner");
	v203.CornerRadius = UDim.new(0, 5);
	v203.Parent = v188;
	local v206 = Instance.new("ImageButton");
	v206.Image = "rbxassetid://3926305904";
	v206.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314);
	v206.ImageRectOffset = Vector2.new(924, 724);
	v206.ImageRectSize = Vector2.new(36, 36);
	v206.AnchorPoint = Vector2.new(0.5, 0.5);
	v206.BackgroundTransparency = 1;
	v206.LayoutOrder = 3;
	v206.Position = UDim2.new(0.5, 0, 0.5, 0);
	v206.Size = UDim2.new(0, 18, 0, 18);
	v206.Visible = true;
	v206.ZIndex = 2;
	v206.Parent = v188;
	v2:Create(v145, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
		Position = UDim2.new(0.5, 0, 1, 0)
	}):Play();
	v2:Create(v137, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
		Size = UDim2.new(0, 100, 0, 35)
	}):Play();
	local function v219()
		v2:Create(v206, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		v2:Create(v188, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 1
		}):Play();
		v2:Create(v170, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
		task.wait(0.17);
		v2:Create(v145, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 1
		}):Play();
		v2:Create(v165, TweenInfo.new(0.24, Enum.EasingStyle.Quint), {
			Transparency = 1
		}):Play();
		task.wait(0.05);
		v2:Create(v137, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
			Size = UDim2.new(0, 100, 0, 0)
		}):Play();
		task.wait(0.2);
		v137:Destroy();
	end
	v188.MouseEnter:Connect(function()
		v2:Create(v188, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 0.8
		}):Play();
		v2:Create(v206, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {
			ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902)
		}):Play();
	end);
	v188.MouseLeave:Connect(function()
		v2:Create(v188, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 1
		}):Play();
		v2:Create(v206, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {
			ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		}):Play();
	end);
	v188.MouseButton1Click:Connect(function()
		v2:Create(v206, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		v2:Create(v188, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 1
		}):Play();
		v2:Create(v170, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
		task.wait(0.17);
		v2:Create(v145, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 1
		}):Play();
		v2:Create(v165, TweenInfo.new(0.24, Enum.EasingStyle.Quint), {
			Transparency = 1
		}):Play();
		task.wait(0.05);
		v2:Create(v137, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
			Size = UDim2.new(0, 100, 0, 0)
		}):Play();
		task.wait(0.2);
		v137:Destroy();
	end);
	v206.MouseButton1Click:Connect(v219);
	task.delay((tonumber(v136) and v136) or 10 , v219);
end;
repeat
	wait(1);
until game:IsLoaded()
local v25 = game:GetService("Players").LocalPlayer;
local v26 = game:GetService("HttpService");
local v27;
local v28;
local v29;
local v30 = {};
pcall(function()
	v30 = v26:JSONDecode(readfile(""));
end);
v27 = v30['pfp'] or ("https://www.roblox.com/headshot-thumbnail/image?userId="   .. game.Players.LocalPlayer.UserId   .. "&width=420&height=420&format=png") ;
v28 = v30['user'] or game.Players.LocalPlayer.Name ;
v29 = v30['tag'] or tostring(math.random(1, 10)) ;
local function v31()
	v30['pfp'] = v27;
	v30['user'] = v28;
	v30['tag'] = v29;
	writefile("", v26:JSONEncode(v30));
end
local v32 = game:GetService("UserInputService");
local v33 = game:GetService("TweenService");
local function v34(v223, v224)
	local v225 = nil;
	local v226 = nil;
	local v227 = nil;
	local v228 = nil;
	local function v229(v762)
		local v763 = v762.Position - v227 ;
		local v764 = UDim2.new(v228.X.Scale, v228.X.Offset + v763.X , v228.Y.Scale, v228.Y.Offset + v763.Y );
		local v765 = v33:Create(v224, TweenInfo.new(0.15), {
			Position = v764
		});
		v765:Play();
	end
	v223.InputBegan:Connect(function(v766)
		if ((v766.UserInputType == Enum.UserInputType.MouseButton1) or (v766.UserInputType == Enum.UserInputType.Touch)) then
			v225 = true;
			v227 = v766.Position;
			v228 = v224.Position;
			v766.Changed:Connect(function()
				if (v766.UserInputState == Enum.UserInputState.End) then
					v225 = false;
				end
			end);
		end
	end);
	v223.InputChanged:Connect(function(v767)
		if ((v767.UserInputType == Enum.UserInputType.MouseMovement) or (v767.UserInputType == Enum.UserInputType.Touch)) then
			v226 = v767;
		end
	end);
	v32.InputChanged:Connect(function(v768)
		if ((v768 == v226) and v225) then
			v229(v768);
		end
	end);
end
local v35 = {};
local v27 = "https://www.roblox.com/headshot-thumbnail/image?userId="   .. game.Players.LocalPlayer.UserId   .. "&width=420&height=420&format=png" ;
v35.Window = function(v230, v231, v232, v233)
	local v234 = {};
	local v235 = false;
	local v236 = false;
	local v237 = "";
	local v233 = v233 or Enum.KeyCode.RightControl ;
	local v238 = string.gsub(tostring(v233), "Enum.KeyCode.", "");
	local v239 = Instance.new("ScreenGui");
	v239.Name = "THUNDERZHUB";
	v239.Parent = game.CoreGui;
	v239.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v245 = Instance.new("Frame");
	v245.Name = "Main";
	v245.Parent = v239;
	v245.ClipsDescendants = true;
	v245.AnchorPoint = Vector2.new(0.5, 0.5);
	v245.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v245.Position = UDim2.new(0.5, 0, 0.5, 0);
	v245.Size = UDim2.new(0, 0, 0, 0);
	v245:TweenSize(UDim2.new(0, 540, 0, 340), "Out", "Quad", 0.4, true);
	local v253 = Instance.new("UIStroke");
	v253.Name = "BtnStroke";
	v253.Parent = v245;
	v253.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v253.Color = Color3.fromRGB(0, 191, 255);
	v253.LineJoinMode = Enum.LineJoinMode.Round;
	v253.Thickness = 1;
	v253.Transparency = 0;
	v253.Enabled = true;
	v253.Archivable = true;
	local v265 = Instance.new("UICorner");
	v265.Name = "MCNR";
	v265.Parent = v245;
	local v268 = Instance.new("Frame");
	v268.Name = "Top";
	v268.Parent = v245;
	v268.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v268.Size = UDim2.new(0, 556, 0, 30);
	v268.BackgroundTransparency = 1;
	local v274 = Instance.new("UICorner");
	v274.Name = "TCNR";
	v274.Parent = v268;
	v274.CornerRadius = UDim.new(0, 5);
	local v278 = Instance.new("TextLabel");
	v278.Name = "ServerTime";
	v278.Parent = v268;
	v278.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v278.BackgroundTransparency = 1;
	v278.Position = UDim2.new(0.68, 0, 0.074, 0);
	v278.Size = UDim2.new(0, 225, 0, 25);
	v278.Font = Enum.Font.GothamSemibold;
	v278.Text = "";
	v278.TextSize = 11;
	v278.TextColor3 = Color3.fromRGB(255, 255, 255);
	v278.TextXAlignment = Enum.TextXAlignment.Left;
	v234.Set = function(v769, v770)
		v278.Text = v770;
	end;
	local v293 = Instance.new("Frame");
	v293.Name = "User";
	v293.Parent = v268;
	v293.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v293.BackgroundTransparency = 1;
	v293.Position = UDim2.new(0, 0, 0, 25);
	v293.Size = UDim2.new(0, 125, 0, 40);
	local v300 = Instance.new("TextLabel");
	v300.Name = "UserText";
	v300.Parent = v293;
	v300.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v300.BackgroundTransparency = 1;
	v300.Position = UDim2.new(0.3, 7, 0, -18);
	v300.TextColor3 = Color3.fromRGB(255, 255, 255);
	v300.Size = UDim2.new(0, 80, 0, 25);
	v300.Font = Enum.Font.GothamSemibold;
	v300.Text = "KimP Roblox";
	v300.TextScaled = true;
	v300.TextSize = 18;
	v300.TextWrapped = true;
	v300.TextXAlignment = Enum.TextXAlignment.Left;
	local v314 = Instance.new("UITextSizeConstraint");
	v314.Parent = v300;
	v314.MaxTextSize = 17;
	local v317 = Instance.new("ImageLabel");
	v317.Name = "UserImage";
	v317.Parent = v293;
	v317.BackgroundTransparency = 0;
	v317.Position = UDim2.new(0, 10, 0, -15);
	v317.Size = UDim2.new(0, 25, 0, 25);
	v317.Image = "rbxassetid://82526416250283";
	local v324 = Instance.new("UICorner");
	v324.CornerRadius = UDim.new(0, 100);
	v324.Name = "UserImageCorner";
	v324.Parent = v317;
	local v328 = Instance.new("ImageLabel");
	v328.Name = "Logo";
	v328.Parent = v245;
	v328.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v328.BackgroundTransparency = 1;
	v328.Position = UDim2.new(0, 20, 0, 30);
	v328.Size = UDim2.new(0, 100, 0, 100);
	v328.Image = "rbxassetid://134597213310520";
	local v336 = Instance.new("Frame");
	v336.Name = "Tab";
	v336.Parent = v245;
	v336.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
	v336.Position = UDim2.new(0, 5, 0, 135);
	v336.Size = UDim2.new(0, 0, 0, 0);
	local v342 = Instance.new("UIListLayout");
	v342.Name = "TabCorner";
	v342.Parent = v336;
	v342.SortOrder = Enum.SortOrder.LayoutOrder;
	v342.Padding = UDim.new(0, 15);
	local v253 = Instance.new("UIStroke");
	local v348 = Instance.new("ScrollingFrame");
	local v349 = Instance.new("UICorner");
	v348.Name = "ScrollTab";
	v348.Parent = v336;
	v348.Active = true;
	v348.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
	v348.BackgroundTransparency = 1;
	v348.Size = UDim2.new(0, 133, 0, 203);
	v348.CanvasSize = UDim2.new(0, 0, 0, 0);
	v348.ScrollBarThickness = 0;
	local v358 = Instance.new("UIListLayout");
	v358.Name = "PLL";
	v358.Parent = v348;
	v358.SortOrder = Enum.SortOrder.LayoutOrder;
	v358.Padding = UDim.new(0, 15);
	local v363 = Instance.new("UIPadding");
	v363.Name = "PPD";
	v363.Parent = v348;
	v363.PaddingLeft = UDim.new(0, 9);
	v363.PaddingTop = UDim.new(0, 2);
	local v253 = Instance.new("UIStroke");
	local v368 = Instance.new("Frame");
	v368.Name = "Page";
	v368.Parent = v245;
	v368.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v368.Position = UDim2.new(0.255426834, 0, 0.086000003, 0);
	v368.Size = UDim2.new(0, 410, 0, 308);
	local v374 = Instance.new("UICorner");
	v374.Parent = v368;
	v374.CornerRadius = UDim.new(0, 3);
	local v377 = Instance.new("Frame");
	v377.Name = "MainPage";
	v377.Parent = v368;
	v377.ClipsDescendants = true;
	v377.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v377.BackgroundTransparency = 1;
	v377.Size = UDim2.new(0, 410, 0, 308);
	local v384 = Instance.new("Folder");
	v384.Name = "PageList";
	v384.Parent = v377;
	local v387 = Instance.new("UIPageLayout");
	v387.Parent = v384;
	v387.SortOrder = Enum.SortOrder.LayoutOrder;
	v387.EasingDirection = Enum.EasingDirection.InOut;
	v387.EasingStyle = Enum.EasingStyle.Quad;
	v387.FillDirection = Enum.FillDirection.Vertical;
	v387.Padding = UDim.new(0, 10);
	v387.TweenTime = 0.4;
	v387.GamepadInputEnabled = false;
	v387.ScrollWheelInputEnabled = false;
	v387.TouchInputEnabled = false;
	v34(v268, v245);
	v32.InputBegan:Connect(function(v772)
		if (v772.KeyCode == Enum.KeyCode.RightControl) then
			if (v235 == false) then
				v235 = true;
				v245:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true);
			else
				v235 = false;
				v245:TweenSize(UDim2.new(0, 540, 0, 340), "Out", "Quad", 0.5, true);
			end
		end
	end);
	local v401 = {};
	v401.T = function(v773, v774, v775)
		local v776 = Instance.new("UIStroke");
		local v777 = Instance.new("UICorner");
		local v778 = Instance.new("TextButton");
		local v779 = Instance.new("TextLabel");
		local v780 = Instance.new("UICorner");
		local v781 = Instance.new("TextLabel");
		v778.Parent = v348;
		v778.Name = v774   .. "Server" ;
		v778.Text = "";
		v778.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v778.BackgroundTransparency = 1;
		v778.Size = UDim2.new(0, 120, 0, 25);
		v778.Font = Enum.Font.GothamSemibold;
		v778.TextColor3 = Color3.fromRGB(255, 255, 255);
		v778.TextSize = 12;
		v778.TextTransparency = 0.5;
		v781.Parent = v778;
		v781.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
		v781.BackgroundTransparency = 1;
		v781.Position = UDim2.new(0, 25, 0, 0);
		v781.Size = UDim2.new(0, 100, 0, 25);
		v781.Font = Enum.Font.GothamSemibold;
		v781.Text = v774;
		v781.TextColor3 = Color3.fromRGB(255, 255, 255);
		v781.TextSize = 15;
		v781.TextXAlignment = Enum.TextXAlignment.Left;
		local v804 = Instance.new("ImageLabel");
		v804.Name = "LogoIDK";
		v804.Parent = v778;
		v804.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v804.BackgroundTransparency = 1;
		v804.Position = UDim2.new(0, 3, 0, 3);
		v804.Size = UDim2.new(0, 20, 0, 20);
		v804.Image = "rbxassetid://"   .. tostring(v775) ;
		v780.CornerRadius = UDim.new(0, 3);
		v780.Parent = v778;
		v776.Name = "BtnStroke";
		v776.Parent = v778;
		v776.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		v776.Color = Color3.fromRGB(0, 191, 255);
		v776.LineJoinMode = Enum.LineJoinMode.Round;
		v776.Thickness = 1;
		v776.Transparency = 0;
		v776.Enabled = true;
		v776.Archivable = true;
		local v825 = Instance.new("ScrollingFrame");
		v825.Name = v774   .. "_Page" ;
		v825.Parent = v384;
		v825.Active = true;
		v825.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v825.BackgroundTransparency = 1;
		v825.BorderSizePixel = 0;
		v825.Size = UDim2.new(0, 400, 0, 308);
		v825.CanvasSize = UDim2.new(0, 0, 0, 0);
		v825.ScrollBarThickness = 0;
		local v835 = Instance.new("UIPadding");
		local v836 = Instance.new("UIListLayout");
		v835.Parent = v825;
		v835.PaddingLeft = UDim.new(0, 10);
		v835.PaddingTop = UDim.new(0, 5);
		v836.Padding = UDim.new(0, 15);
		v836.Parent = v825;
		v836.SortOrder = Enum.SortOrder.LayoutOrder;
		v778.MouseButton1Click:Connect(function()
			for v1929, v1930 in next, v348:GetChildren() do
				if v1930:IsA("TextButton") then
					v33:Create(v1930, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end
				v33:Create(v778, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play();
			end
			for v1931, v1932 in next, v384:GetChildren() do
				v237 = string.gsub(v778.Name, "Server", "")   .. "_Page" ;
				if (v1932.Name == v237) then
					v387:JumpTo(v1932);
				end
			end
		end);
		if (v236 == false) then
			for v2069, v2070 in next, v348:GetChildren() do
				if v2070:IsA("TextButton") then
					v33:Create(v2070, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end
				v33:Create(v778, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play();
			end
			v387:JumpToIndex(1);
			v236 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v825.CanvasSize = UDim2.new(0, 0, 0, v836.AbsoluteContentSize.Y + 20 );
				v348.CanvasSize = UDim2.new(0, 0, 0, v358.AbsoluteContentSize.Y + 20 );
			end);
		end);
		v35.AddNotification = function(v1064, v1065)
			local v1066 = Instance.new("TextButton");
			local v1067 = Instance.new("Frame");
			local v1068 = Instance.new("TextButton");
			local v1069 = Instance.new("UICorner");
			local v1070 = Instance.new("TextLabel");
			local v1071 = Instance.new("TextLabel");
			local v1072 = Instance.new("TextLabel");
			local v1073 = Instance.new("UICorner");
			local v1074 = Instance.new("UIStroke");
			local v1075 = Instance.new("Frame");
			v1066.Name = "NotificationHold";
			v1066.Parent = v245;
			v1066.BackgroundColor3 = Color3.new(0, 191, 255);
			v1066.BackgroundTransparency = 1;
			v1066.BorderSizePixel = 0;
			v1066.Size = UDim2.new(0, 589, 0, 378);
			v1066.AutoButtonColor = false;
			v1066.Font = Enum.Font.SourceSans;
			v1066.Text = "";
			v1066.TextColor3 = Color3.new(125, 0, 125);
			v1066.TextSize = 13;
			v33:Create(v1066, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1
			}):Play();
			wait(0.4);
			v1067.Name = "NotificationFrame";
			v1067.Parent = v1066;
			v1067.AnchorPoint = Vector2.new(0.5, 0.5);
			v1067.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
			v1067.BorderColor3 = Color3.new(125, 0, 125);
			v1067.BorderSizePixel = 0;
			v1067.Transparency = 0;
			v1067.ClipsDescendants = true;
			v1067.Position = UDim2.new(0, 295, 0, 190);
			v1067.Size = UDim2.new(0, 0, 0, 0);
			v1067:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
			v1073.Name = "NotifCorner";
			v1073.Parent = v1067;
			v1073.CornerRadius = UDim.new(0, 5);
			v1074.Name = "NotifHolderUIStroke";
			v1074.Parent = v1067;
			v1074.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1074.Color = Color3.new(125, 0, 125);
			v1074.LineJoinMode = Enum.LineJoinMode.Round;
			v1074.Thickness = 2;
			v1074.Transparency = 0;
			v1074.Enabled = true;
			v1074.Archivable = true;
			v1068.Name = "OkayBtn";
			v1068.Parent = v1067;
			v1068.BackgroundColor3 = Color3.fromRGB(190, 190, 190);
			v1068.BorderSizePixel = 2;
			v1068.BorderColor3 = Color3.new(125, 0, 125);
			v1068.Position = UDim2.new(0, 125, 0, 190);
			v1068.Size = UDim2.new(0, 150, 0, 30);
			v1068.AutoButtonColor = true;
			v1068.Font = Enum.Font.SourceSans;
			v1068.Text = "";
			v1068.TextColor3 = Color3.new(125, 0, 125);
			v1068.TextSize = 13;
			v1069.CornerRadius = UDim.new(0, 5);
			v1069.Name = "OkayBtnCorner";
			v1069.Parent = v1068;
			v1070.Name = "OkayBtnTitle";
			v1070.Parent = v1068;
			v1070.BackgroundColor3 = Color3.new(125, 0, 125);
			v1070.BackgroundTransparency = 1;
			v1070.Size = UDim2.new(0, 150, 0, 30);
			v1070.Text = "OK";
			v1070.Font = Enum.Font.GothamSemibold;
			v1070.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1070.TextSize = 22;
			v1071.Name = "NotificationTitle";
			v1071.Parent = v1067;
			v1071.BackgroundColor3 = Color3.new(125, 0, 125);
			v1071.BackgroundTransparency = 1;
			v1071.Position = UDim2.new(0, 0, 0, 10);
			v1071.Size = UDim2.new(0, 400, 0, 25);
			v1071.ZIndex = 3;
			v1071.Font = Enum.Font.GothamSemibold;
			v1071.Text = "Notification";
			v1071.TextColor3 = Color3.fromRGB(0, 191, 255);
			v1071.TextSize = 22;
			v1075.Name = "Line";
			v1075.Parent = v1067;
			v1075.BackgroundColor3 = Color3.new(125, 0, 125);
			v1075.BorderSizePixel = 0;
			v1075.Position = UDim2.new(0, 10, 0, 40);
			v1075.Size = UDim2.new(0, 380, 0, 1);
			v1072.Name = "NotificationDesc";
			v1072.Parent = v1067;
			v1072.BackgroundColor3 = _G.SectionColor;
			v1072.BackgroundTransparency = 1;
			v1072.Position = UDim2.new(0, 10, 0, 80);
			v1072.Size = UDim2.new(0, 380, 0, 200);
			v1072.Font = Enum.Font.GothamSemibold;
			v1072.Text = v1065;
			v1072.TextScaled = false;
			v1072.TextColor3 = Color3.new(125, 0, 125);
			v1072.TextSize = 16;
			v1072.TextWrapped = true;
			v1072.TextXAlignment = Enum.TextXAlignment.Center;
			v1072.TextYAlignment = Enum.TextYAlignment.Top;
			v1068.MouseEnter:Connect(function()
				v33:Create(v1068, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				}):Play();
			end);
			v1068.MouseLeave:Connect(function()
				v33:Create(v1068, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				}):Play();
			end);
			v1068.MouseButton1Click:Connect(function()
				v1067:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
				wait(0.4);
				v33:Create(v1066, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
				wait(0.3);
				v1066:Destroy();
			end);
		end;
		local v845 = {};
		v845.Button = function(v1170, v1171, v1172)
			if (v232 == nil) then
				v232 = "15009422255";
			end
			local v1173 = Instance.new("Frame");
			local v1174 = Instance.new("UICorner");
			local v1175 = Instance.new("TextButton");
			local v1176 = Instance.new("ImageLabel");
			local v1177 = Instance.new("UICorner");
			local v1178 = Instance.new("TextLabel");
			local v1179 = Instance.new("Frame");
			local v1180 = Instance.new("UICorner");
			v1173.Name = "Button";
			v1173.Parent = v825;
			v1173.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1173.Size = UDim2.new(0, 387, 0, 31);
			v1174.CornerRadius = UDim.new(0, 5);
			v1174.Parent = v1173;
			v1175.Name = "TextBtn";
			v1175.Parent = v1173;
			v1175.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1175.Position = UDim2.new(0, 1, 0, 1);
			v1175.Size = UDim2.new(0, 385, 0, 29);
			v1175.AutoButtonColor = false;
			v1175.Font = Enum.Font.GothamSemibold;
			v1175.Text = v1171;
			v1175.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1175.TextSize = 15;
			v1176.Name = "ImageButton";
			v1176.Parent = v1173;
			v1176.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1176.BackgroundTransparency = 1;
			v1176.BorderSizePixel = 0;
			v1176.Position = UDim2.new(0, 350, 0, 6);
			v1176.Size = UDim2.new(0, 20, 0, 20);
			v1176.Image = "rbxassetid://134597213310520";
			v1176.ImageColor3 = Color3.fromRGB(255, 255, 255);
			v1177.CornerRadius = UDim.new(0, 5);
			v1177.Parent = v1175;
			v1178.Name = "Space";
			v1178.Parent = v1173;
			v1178.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1178.BackgroundTransparency = 1;
			v1178.Position = UDim2.new(0, 330, 0, 0);
			v1178.Size = UDim2.new(0, 15, 0, 30);
			v1178.Font = Enum.Font.GothamSemibold;
			v1178.Text = "|";
			v1178.TextSize = 15;
			v1178.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1178.TextXAlignment = Enum.TextXAlignment.Right;
			v1179.Name = "Black";
			v1179.Parent = v1173;
			v1179.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1179.BackgroundTransparency = 1;
			v1179.BorderSizePixel = 0;
			v1179.Position = UDim2.new(0, 1, 0, 1);
			v1179.Size = UDim2.new(0, 385, 0, 29);
			v1180.CornerRadius = UDim.new(0, 5);
			v1180.Parent = v1179;
			v1175.MouseEnter:Connect(function()
				v33:Create(v1179, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.7
				}):Play();
			end);
			v1175.MouseLeave:Connect(function()
				v33:Create(v1179, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end);
			v1175.MouseButton1Click:Connect(function()
				v1175.TextSize = 0;
				v33:Create(v1175, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play();
				v1172();
			end);
		end;
		v845.Toggle = function(v1230, v1231, v1232, v1233)
			local v1234 = false;
			if (v232 == nil) then
				v232 = "15009422255";
			end
			local v1235 = Instance.new("Frame");
			local v1236 = Instance.new("Frame");
			local v1237 = Instance.new("UIStroke");
			local v1238 = Instance.new("UIListLayout");
			local v1239 = Instance.new("UICorner");
			local v1240 = Instance.new("ImageLabel");
			local v1241 = Instance.new("TextLabel");
			local v1242 = Instance.new("TextLabel");
			local v1243 = Instance.new("ImageButton");
			v1235.Name = v1231 or "CheckFrame" ;
			v1235.Parent = v825;
			v1235.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1235.BackgroundTransparency = 1;
			v1235.BorderSizePixel = 0;
			v1235.Size = UDim2.new(0, 387, 0, 31);
			v1236.Name = "CheckFrame2";
			v1236.Parent = v1235;
			v1236.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1236.BorderSizePixel = 0;
			v1236.Position = UDim2.new(0, 3, 0, 0);
			v1236.Size = UDim2.new(0, 381, 0, 30);
			v1237.Name = "UIStroke";
			v1237.Parent = v1236;
			v1237.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1237.Color = Color3.fromRGB(0, 191, 255);
			v1237.LineJoinMode = Enum.LineJoinMode.Round;
			v1237.Thickness = 1;
			v1237.Transparency = 0;
			v1237.Enabled = true;
			v1237.Archivable = true;
			v1239.Parent = v1236;
			v1239.CornerRadius = UDim.new(0, 3);
			v1240.Name = "ImageLabel";
			v1240.Parent = v1236;
			v1240.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1240.BackgroundTransparency = 1;
			v1240.BorderSizePixel = 0;
			v1240.Position = UDim2.new(0, 5, 0, 6);
			v1240.Size = UDim2.new(0, 20, 0, 20);
			v1240.Image = "rbxassetid://134597213310520";
			v1240.ImageColor3 = Color3.fromRGB(255, 255, 255);
			v1241.Name = "Space";
			v1241.Parent = v1236;
			v1241.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1241.BackgroundTransparency = 1;
			v1241.Position = UDim2.new(0, 30, 0, 0);
			v1241.Size = UDim2.new(0, 15, 0, 30);
			v1241.Font = Enum.Font.GothamSemibold;
			v1241.Text = "|";
			v1241.TextSize = 15;
			v1241.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1241.TextXAlignment = Enum.TextXAlignment.Center;
			v1242.Name = "Title";
			v1242.Parent = v1236;
			v1242.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1242.BackgroundTransparency = 1;
			v1242.Position = UDim2.new(0, 50, 0, 0);
			v1242.Size = UDim2.new(0, 280, 0, 30);
			v1242.Font = Enum.Font.GothamSemibold;
			v1242.Text = v1231 or "checkBox Title" ;
			v1242.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1242.TextSize = 15;
			v1242.TextXAlignment = Enum.TextXAlignment.Left;
			v1243.Name = "ImageButton";
			v1243.Parent = v1236;
			v1243.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1243.BackgroundTransparency = 1;
			v1243.Position = UDim2.new(0, 352, 0, 4);
			v1243.Size = UDim2.new(0, 23, 0, 23);
			v1243.ZIndex = 2;
			v1243.Image = "rbxassetid://3926311105";
			v1243.ImageColor3 = Color3.fromRGB(255, 255, 255);
			v1243.ImageRectOffset = Vector2.new(940, 784);
			v1243.ImageRectSize = Vector2.new(48, 48);
			if (v1232 == true) then
				v1243.ImageRectOffset = Vector2.new(4, 836);
				game.TweenService:Create(v1243, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}):Play();
				v1234 = not v1234;
				pcall(v1233, v1234);
			end
			v1243.MouseButton1Click:Connect(function()
				if (v1234 == false) then
					game.TweenService:Create(v1243, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						ImageColor3 = Color3.fromRGB(255, 255, 255)
					}):Play();
					v1243.ImageRectOffset = Vector2.new(4, 836);
				else
					game.TweenService:Create(v1243, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						ImageColor3 = Color3.fromRGB(255, 255, 255)
					}):Play();
					v1243.ImageRectOffset = Vector2.new(940, 784);
				end
				v1234 = not v1234;
				pcall(v1233, v1234);
			end);
		end;
		v845.Dropdown = function(v1314, v1315, v1316, v1317)
			local v1318 = false;
			local v1319 = Instance.new("Frame");
			local v1320 = Instance.new("UICorner");
			local v1321 = Instance.new("TextLabel");
			local v1322 = Instance.new("ScrollingFrame");
			local v1323 = Instance.new("UIListLayout");
			local v1324 = Instance.new("UIPadding");
			local v1325 = Instance.new("TextButton");
			local v1326 = Instance.new("ImageLabel");
			local v1327 = Instance.new("UIStroke");
			v1319.Name = "Dropdown";
			v1319.Parent = v825;
			v1319.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1319.ClipsDescendants = true;
			v1319.Size = UDim2.new(0, 387, 0, 31);
			v1327.Name = "UIStroke";
			v1327.Parent = v1319;
			v1327.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1327.Color = Color3.fromRGB(0, 191, 255);
			v1327.LineJoinMode = Enum.LineJoinMode.Round;
			v1327.Thickness = 1;
			v1327.Transparency = 0;
			v1327.Enabled = true;
			v1327.Archivable = true;
			v1320.CornerRadius = UDim.new(0, 3);
			v1320.Parent = v1319;
			v1321.Name = "DropTitle";
			v1321.Parent = v1319;
			v1321.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1321.BackgroundTransparency = 1;
			v1321.Size = UDim2.new(0, 385, 0, 31);
			v1321.Font = Enum.Font.GothamSemibold;
			v1321.Text = v1315   .. " : " ;
			v1321.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1321.TextSize = 15;
			v1322.Name = "DropScroll";
			v1322.Parent = v1321;
			v1322.Active = true;
			v1322.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1322.BackgroundTransparency = 1;
			v1322.BorderSizePixel = 0;
			v1322.Position = UDim2.new(0, 0, 0, 31);
			v1322.Size = UDim2.new(0, 385, 0, 100);
			v1322.CanvasSize = UDim2.new(0, 0, 0, 0);
			v1322.ScrollBarThickness = 3;
			v1323.Parent = v1322;
			v1323.SortOrder = Enum.SortOrder.LayoutOrder;
			v1323.Padding = UDim.new(0, 5);
			v1324.Parent = v1322;
			v1324.PaddingLeft = UDim.new(0, 5);
			v1324.PaddingTop = UDim.new(0, 5);
			v1325.Name = "DropButton";
			v1325.Parent = v1319;
			v1325.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1325.BackgroundTransparency = 1;
			v1325.Size = UDim2.new(0, 385, 0, 31);
			v1325.Font = Enum.Font.SourceSans;
			v1325.Text = "";
			v1325.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1325.TextSize = 14;
			v1326.Name = "DropImage";
			v1326.Parent = v1319;
			v1326.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1326.BackgroundTransparency = 1;
			v1326.Position = UDim2.new(0, 350, 0, 6);
			v1326.Rotation = 180;
			v1326.Size = UDim2.new(0, 20, 0, 20);
			v1326.Image = "rbxassetid://6031090990";
			for v1936, v1937 in next, v1316 do
				local v1938 = Instance.new("TextButton");
				v1938.Name = "Item";
				v1938.Parent = v1322;
				v1938.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1938.BackgroundTransparency = 1;
				v1938.Size = UDim2.new(0, 385, 0, 26);
				v1938.Font = Enum.Font.GothamSemibold;
				v1938.Text = tostring(v1937);
				v1938.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1938.TextSize = 13;
				v1938.TextTransparency = 0.5;
				v1938.MouseEnter:Connect(function()
					v33:Create(v1938, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1938.MouseLeave:Connect(function()
					v33:Create(v1938, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1938.MouseButton1Click:Connect(function()
					v1318 = false;
					v1319:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true);
					v33:Create(v1326, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1317(v1938.Text);
					v1321.Text = v1315   .. " : "   .. v1938.Text ;
				end);
			end
			v1322.CanvasSize = UDim2.new(0, 0, 0, v1323.AbsoluteContentSize.Y + 10 );
			v1325.MouseButton1Click:Connect(function()
				if (v1318 == false) then
					v1318 = true;
					v1319:TweenSize(UDim2.new(0, 385, 0, 131), "Out", "Quad", 0.3, true);
					v33:Create(v1326, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
				else
					v1318 = false;
					v1319:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true);
					v33:Create(v1326, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
				end
			end);
			local v1391 = {};
			v1391.Add = function(v1950, v1951)
				local v1952 = Instance.new("TextButton");
				v1952.Name = "Item";
				v1952.Parent = v1322;
				v1952.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1952.BackgroundTransparency = 1;
				v1952.Size = UDim2.new(0, 385, 0, 26);
				v1952.Font = Enum.Font.GothamSemibold;
				v1952.Text = tostring(v1951);
				v1952.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1952.TextSize = 13;
				v1952.TextTransparency = 0.5;
				v1952.MouseEnter:Connect(function()
					v33:Create(v1952, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1952.MouseLeave:Connect(function()
					v33:Create(v1952, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1952.MouseButton1Click:Connect(function()
					v1318 = false;
					v1319:TweenSize(UDim2.new(0, 387, 0, 31), "Out", "Quad", 0.3, true);
					v33:Create(v1326, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1317(v1952.Text);
					v1321.Text = v1315   .. " : "   .. v1952.Text ;
				end);
			end;
			v1391.Clear = function(v1964)
				v1321.Text = tostring(v1315)   .. " : " ;
				v1318 = false;
				v1319:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true);
				v33:Create(v1326, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Rotation = 180
				}):Play();
				for v2074, v2075 in next, v1322:GetChildren() do
					if v2075:IsA("TextButton") then
						v2075:Destroy();
					end
				end
			end;
			return v1391;
		end;
		v845.AddSlider = function(v1394, v1395, v1396, v1397, v1398, v1399)
			local v1400 = {};
			local v1401 = Instance.new("Frame");
			local v1402 = Instance.new("Frame");
			local v1403 = Instance.new("UIStroke");
			local v1404 = Instance.new("UICorner");
			local v1405 = Instance.new("ImageLabel");
			local v1406 = Instance.new("TextLabel");
			local v1407 = Instance.new("TextLabel");
			local v1408 = Instance.new("Frame");
			local v1409 = Instance.new("Frame");
			local v1410 = Instance.new("Frame");
			local v1411 = Instance.new("UICorner");
			local v1412 = Instance.new("UICorner");
			local v1413 = Instance.new("Frame");
			local v1414 = Instance.new("TextBox");
			local v1415 = Instance.new("UIStroke");
			local v1416 = Instance.new("TextButton");
			local v1417 = Instance.new("UICorner");
			local v1418 = Instance.new("UICorner");
			v1401.Name = slidertitle or "SliderFrame" ;
			v1401.Parent = v825;
			v1401.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1401.BackgroundTransparency = 1;
			v1401.BorderSizePixel = 0;
			v1401.Size = UDim2.new(0, 387, 0, 60);
			v1402.Name = "SliderFrame_2";
			v1402.Parent = v1401;
			v1402.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1402.BackgroundTransparency = 0;
			v1402.BorderSizePixel = 0;
			v1402.Position = UDim2.new(0, 1, 0, 1);
			v1402.Size = UDim2.new(0, 387, 0, 60);
			v1403.Name = "UIStroke";
			v1403.Parent = v1402;
			v1403.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1403.Color = Color3.fromRGB(0, 191, 255);
			v1403.LineJoinMode = Enum.LineJoinMode.Round;
			v1403.Thickness = 1;
			v1403.Transparency = 0;
			v1403.Enabled = true;
			v1403.Archivable = true;
			v1404.Parent = v1402;
			v1404.CornerRadius = UDim.new(0, 3);
			v1405.Name = "ImageLabel";
			v1405.Parent = v1402;
			v1405.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1405.BackgroundTransparency = 1;
			v1405.BorderSizePixel = 0;
			v1405.Position = UDim2.new(0, 7.5, 0, 7.5);
			v1405.Size = UDim2.new(0, 30, 0, 30);
			v1405.Image = "rbxassetid://82526416250283";
			v1407.Parent = v1402;
			v1407.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1407.BackgroundTransparency = 1;
			v1407.Position = UDim2.new(0, 45, 0, 5);
			v1407.Size = UDim2.new(0, 280, 0, 30);
			v1407.Font = Enum.Font.GothamSemibold;
			v1407.Text = "|  "   .. v1395 ;
			v1407.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1407.TextSize = 15;
			v1407.TextXAlignment = Enum.TextXAlignment.Left;
			v1408.Name = "SliderInput";
			v1408.Parent = v1402;
			v1408.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1408.BackgroundTransparency = 0.7;
			v1408.BorderSizePixel = 0;
			v1408.Position = UDim2.new(0, 8, 0, 42);
			v1408.Size = UDim2.new(0, 365, 0, 6);
			v1412.CornerRadius = UDim.new(0, 100000);
			v1412.Parent = v1408;
			v1409.Name = "SliderButton";
			v1409.Parent = v1408;
			v1409.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1409.BackgroundTransparency = 1;
			v1409.BorderSizePixel = 0;
			v1409.Position = UDim2.new(0, 0, 0, -7);
			v1409.Size = UDim2.new(0, 346, 0, 25);
			v1410.Name = "SliderCount";
			v1410.Parent = v1409;
			v1410.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1410.BackgroundTransparency = 0.3;
			v1410.BorderSizePixel = 0;
			v1410.Position = UDim2.new(0, v1398, 0, 0);
			v1410.Size = UDim2.new(0, 18, 0, 18);
			v1416.Name = "Title_2";
			v1416.Parent = v1409;
			v1416.AnchorPoint = Vector2.new(0, 0);
			v1416.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1416.AutoButtonColor = false;
			v1416.BackgroundTransparency = 1;
			v1416.Position = UDim2.new(0, v1398, 0, 0);
			v1416.Size = UDim2.new(0, 18, 0, 18);
			v1416.Font = Enum.Font.GothamBold;
			v1416.Text = tostring((v1398 and math.floor(((v1398 / v1397) * (v1397 - v1396)) + v1396 )) or 0 );
			v1416.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1416.TextSize = 8;
			v1416.TextXAlignment = Enum.TextXAlignment.Center;
			v1417.Parent = v1416;
			v1417.CornerRadius = UDim.new(0, 100000);
			v1411.CornerRadius = UDim.new(0, 100000);
			v1411.Parent = v1410;
			v1415.Name = "SliderStroke";
			v1415.Parent = v1413;
			v1415.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1415.Color = Color3.fromRGB(0, 191, 255);
			v1415.LineJoinMode = Enum.LineJoinMode.Round;
			v1415.Thickness = 1;
			v1415.Transparency = 0.5;
			v1415.Enabled = true;
			v1415.Archivable = true;
			v1413.Name = "BoxFrame";
			v1413.Parent = v1402;
			v1413.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1413.BackgroundTransparency = 1;
			v1413.Size = UDim2.new(0, 50, 0, 15);
			v1413.Position = UDim2.new(0, 323, 0, 8);
			v1414.Name = "SliderBox";
			v1414.Parent = v1413;
			v1414.BackgroundColor3 = Color3.fromRGB(200, 0, 0);
			v1414.BackgroundTransparency = 1;
			v1414.Position = UDim2.new(0, 0, 0, 1.65);
			v1414.Size = UDim2.new(0, 50, 0, 15);
			v1414.ClearTextOnFocus = false;
			v1414.Font = Enum.Font.Code;
			v1414.Text = tostring((v1398 and math.floor(((v1398 / v1397) * (v1397 - v1396)) + v1396 )) or 0 );
			v1414.TextColor3 = Color3.fromRGB(200, 200, 200);
			v1414.TextSize = 10;
			v1414.TextTransparency = 0;
			v1414.TextXAlignment = Enum.TextXAlignment.Center;
			v1414.TextEditable = true;
			v1418.Parent = v1413;
			v1418.CornerRadius = UDim.new(0, 2);
			local v1539;
			local v1540;
			local v1541;
			local v1542 = v1409;
			local function v1542(v1966)
				local v1967 = UDim2.new(math.clamp((v1966.Position.X - v1409.AbsolutePosition.X) / v1409.AbsoluteSize.X , 0, 1), 0, 0, 0);
				v1410:TweenPosition(v1967, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true);
				v1416:TweenPosition(v1967, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true);
				local v1968 = math.floor((((v1967.X.Scale * v1397) / v1397) * (v1397 - v1396)) + v1396 );
				v1414.Text = tostring(v1968);
				v1416.Text = tostring(v1968);
				pcall(v1399, v1968, v1967);
			end
			v1409.InputBegan:Connect(function(v1971)
				if ((v1971.UserInputType == Enum.UserInputType.MouseButton1) or (v1971.UserInputType == Enum.UserInputType.Touch)) then
					v1539 = true;
					v1541 = v1971;
					v1540 = v1971.Position.X;
					slidein = v1409.AbsolutePosition.X;
					game.TweenService:Create(v1410, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 14, 0, 14)
					}):Play();
					game.TweenService:Create(v1416, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0.22, 0.8),
						TextSize = 13,
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 25, 0, 25)
					}):Play();
					game.TweenService:Create(v1414, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0
					}):Play();
					game.TweenService:Create(v1408, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.5
					}):Play();
					game.TweenService:Create(v1415, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0
					}):Play();
				end
				v1971.Changed:Connect(function(v2076)
					if (v2076.UserInputType == Enum.UserInputState.End) then
						v1539 = false;
					end
				end);
			end);
			v1409.InputEnded:Connect(function(v1972)
				if ((v1972.UserInputType == Enum.UserInputType.MouseMovement) or (v1972.UserInputType == Enum.UserInputType.Touch)) then
					v1539 = false;
					v1541 = v1972;
					game.TweenService:Create(v1410, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.3,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play();
					game.TweenService:Create(v1416, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0, 0),
						TextSize = 8,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play();
					game.TweenService:Create(v1414, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0.5
					}):Play();
					game.TweenService:Create(v1408, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.7
					}):Play();
					game.TweenService:Create(v1415, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0.5
					}):Play();
				end
			end);
			v32.InputChanged:Connect(function(v1973)
				if ((v1973 == v1541) and v1539) then
					v1542(v1973);
				end
			end);
			function set(v1974)
				if (v1974 == "Text") then
					if tonumber(v1414.Text) then
						if (tonumber(v1414.Text) <= v1397) then
							Value = v1414.Text;
							v1416.Text = v1414.Text;
							v1410:TweenPosition(UDim2.new(((tonumber(v1414.Text) or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1416:TweenPosition(UDim2.new(((tonumber(v1414.Text) or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1399(Value);
							end);
						end
						if (tonumber(v1414.Text) > v1397) then
							v1414.Text = v1397;
							v1416.Text = v1397;
							Value = v1397;
							v1410:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1416:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1399(Value);
							end);
						end
						if (tonumber(v1414.Text) >= v1396) then
							Value = v1414.Text;
							v1416.Text = v1414.Text;
							v1410:TweenPosition(UDim2.new(((tonumber(v1414.Text) or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1416:TweenPosition(UDim2.new(((tonumber(v1414.Text) or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1399(Value);
							end);
						end
						if (tonumber(v1414.Text) < v1396) then
							Value = v1396;
							v1416 = v1396;
							v1410.Position = UDim2.new(((v1396 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0);
							v1416.Position = UDim2.new(((v1396 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0);
							pcall(function()
								v1399(Value);
							end);
						end
					else
						v1414.Text = "" or Value ;
						v1416.Text = Value;
					end
				end
			end
			v1414.Focused:Connect(function()
				v1414.Changed:Connect(set);
			end);
			v1414.FocusLost:Connect(function(v1975)
				if  not v1975 then
					if (v1414.Text == "") then
						v1414.Text = v1396;
						v1416.Text = v1396;
						Value = v1396;
						v1410:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1416:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1399(Value);
						end);
					end
					if (tonumber(v1414.Text) > tonumber(v1397)) then
						Value = v1397;
						v1414.Text = v1397;
						v1416.Text = v1397;
						v1410:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1416:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1399(Value);
						end);
					else
						Value = tonumber(v1414.Text);
					end
					if (tonumber(v1414.Text) < v1396) then
						v1414.Text = v1396;
						v1416.Text = v1396;
						Value = v1396;
						v1410:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1416:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1399(Value);
						end);
					else
						Value = tonumber(v1414.Text);
					end
				end
				if (tonumber(v1414.Text) > v1397) then
					v1414.Text = v1397;
					v1416.Text = v1397;
					Value = v1397;
					v1410:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
					v1416:TweenPosition(UDim2.new(((v1397 or v1396) - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
					pcall(function()
						v1399(Value);
					end);
				else
					Value = tonumber(v1414.Text);
				end
				if (tonumber(v1414.Text) < v1396) then
					v1414.Text = v1396;
					v1416.Text = v1396;
					Value = v1396;
					v1410.Position = UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0);
					v1416.Position = UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0);
					pcall(function()
						v1399(Value);
					end);
				else
					Value = tonumber(v1414.Text);
				end
				if (v1414.Text == "") then
					v1414.Text = v1396;
					v1416.Text = v1396;
					Value = v1396;
					v1410:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.08, true);
					v1416:TweenPosition(UDim2.new((v1396 - v1396) / (v1397 - v1396) , 0, 0, 0), "InOut", "Linear", 0.12, true);
					pcall(function()
						v1399(Value);
					end);
				end
			end);
			return v1400;
		end;
		v845.Textbox = function(v1543, v1544, v1545, v1546)
			local v1547 = Instance.new("Frame");
			local v1548 = Instance.new("UICorner");
			local v1549 = Instance.new("Frame");
			local v1550 = Instance.new("UICorner");
			local v1551 = Instance.new("TextLabel");
			local v1552 = Instance.new("TextButton");
			local v1553 = Instance.new("TextBox");
			local v1554 = Instance.new("UICorner");
			v1547.Name = "Textbox";
			v1547.Parent = v825;
			v1547.BackgroundColor3 = Color3.new(0, 191, 255);
			v1547.BackgroundTransparency = 0;
			v1547.Size = UDim2.new(0, 387, 0, 31);
			v1548.CornerRadius = UDim.new(0, 5);
			v1548.Name = "TextboxCorner";
			v1548.Parent = v1547;
			v1549.Name = "Textboxx";
			v1549.Parent = v1547;
			v1549.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1549.Position = UDim2.new(0, 1, 0, 1);
			v1549.Size = UDim2.new(0, 385, 0, 29);
			v1550.CornerRadius = UDim.new(0, 5);
			v1550.Name = "TextboxxCorner";
			v1550.Parent = v1549;
			v1551.Name = "TextboxLabel";
			v1551.Parent = v1547;
			v1551.BackgroundColor3 = Color3.fromRGB(255, 128, 0);
			v1551.BackgroundTransparency = 1;
			v1551.Position = UDim2.new(0, 15, 0, 0);
			v1551.Text = v1544;
			v1551.Size = UDim2.new(0, 145, 0, 31);
			v1551.Font = Enum.Font.GothamSemibold;
			v1551.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1551.TextSize = 16;
			v1551.TextTransparency = 0;
			v1551.TextXAlignment = Enum.TextXAlignment.Left;
			v1552.Name = "txtbtn";
			v1552.Parent = v1547;
			v1552.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1552.BackgroundTransparency = 1;
			v1552.Position = UDim2.new(0, 1, 0, 1);
			v1552.Size = UDim2.new(0, 387, 0, 29);
			v1552.Font = Enum.Font.SourceSans;
			v1552.Text = "";
			v1552.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1552.TextSize = 14;
			v1553.Name = "RealTextbox";
			v1553.Parent = v1547;
			v1553.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1553.BackgroundTransparency = 0;
			v1553.Position = UDim2.new(0, 275, 0, 4);
			v1553.Size = UDim2.new(0, 100, 0, 24);
			v1553.Font = Enum.Font.GothamSemibold;
			v1553.Text = "";
			v1553.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1553.TextSize = 11;
			v1553.TextTransparency = 0;
			v1553.FocusLost:Connect(function()
				v1546(v1553.Text);
				if v1545 then
					v1553.Text = "";
				end
			end);
			v1554.CornerRadius = UDim.new(0, 5);
			v1554.Parent = v1553;
		end;
		v845.Label = function(v1609, v1610)
			local v1611 = Instance.new("TextLabel");
			local v1612 = Instance.new("UIPadding");
			local v1613 = {};
			v1611.Name = "Label";
			v1611.Parent = v825;
			v1611.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1611.BackgroundTransparency = 1;
			v1611.Size = UDim2.new(0, 410, 0, 20);
			v1611.Font = Enum.Font.GothamSemibold;
			v1611.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1611.TextSize = 16;
			v1611.Text = v1610;
			v1611.TextXAlignment = Enum.TextXAlignment.Left;
			v1612.PaddingLeft = UDim.new(0, 15);
			v1612.Parent = v1611;
			v1612.Name = "PaddingLabel";
			v1613.Set = function(v1976, v1977)
				v1611.Text = v1977;
			end;
			return v1613;
		end;
		v845.AddLabel1 = function(v1630, v1631)
			local v1632 = Instance.new("TextLabel");
			local v1633 = Instance.new("UIPadding");
			local v1634 = {};
			v1632.Name = "Label1";
			v1632.Parent = v825;
			v1632.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1632.BackgroundTransparency = 1;
			v1632.Size = UDim2.new(0, 410, 0, 20);
			v1632.Font = Enum.Font.GothamSemibold;
			v1632.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1632.TextSize = 15;
			v1632.Text = v1631;
			v1632.TextXAlignment = Enum.TextXAlignment.Left;
			v1633.PaddingLeft = UDim.new(0, 15);
			v1633.Parent = v1632;
			v1633.Name = "PaddingLabel1";
			v1634.Refresh = function(v1979, v1980)
				v1632.Text = v1980;
			end;
			return v1634;
		end;
		v845.Textbox = function(v1651, v1652, v1653, v1654)
			local v1655 = Instance.new("Frame");
			local v1656 = Instance.new("UICorner");
			local v1657 = Instance.new("Frame");
			local v1658 = Instance.new("UICorner");
			local v1659 = Instance.new("TextLabel");
			local v1660 = Instance.new("TextButton");
			local v1661 = Instance.new("TextBox");
			local v1662 = Instance.new("UICorner");
			v1655.Name = "Textbox";
			v1655.Parent = v825;
			v1655.BackgroundColor3 = Color3.new(0, 191, 255);
			v1655.BackgroundTransparency = 0;
			v1655.Size = UDim2.new(0, 387, 0, 31);
			v1656.CornerRadius = UDim.new(0, 5);
			v1656.Name = "TextboxCorner";
			v1656.Parent = v1655;
			v1657.Name = "Textboxx";
			v1657.Parent = v1655;
			v1657.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1657.Position = UDim2.new(0, 1, 0, 1);
			v1657.Size = UDim2.new(0, 385, 0, 29);
			v1658.CornerRadius = UDim.new(0, 3);
			v1658.Name = "TextboxxCorner";
			v1658.Parent = v1657;
			v1659.Name = "TextboxLabel";
			v1659.Parent = v1655;
			v1659.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1659.BackgroundTransparency = 1;
			v1659.Position = UDim2.new(0, 15, 0, 0);
			v1659.Text = v1652;
			v1659.Size = UDim2.new(0, 145, 0, 31);
			v1659.Font = Enum.Font.GothamSemibold;
			v1659.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1659.TextSize = 16;
			v1659.TextTransparency = 0;
			v1659.TextXAlignment = Enum.TextXAlignment.Left;
			v1660.Name = "txtbtn";
			v1660.Parent = v1655;
			v1660.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1660.BackgroundTransparency = 1;
			v1660.Position = UDim2.new(0, 1, 0, 1);
			v1660.Size = UDim2.new(0, 387, 0, 29);
			v1660.Font = Enum.Font.SourceSans;
			v1660.Text = "";
			v1660.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1660.TextSize = 14;
			v1661.Name = "RealTextbox";
			v1661.Parent = v1655;
			v1661.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1661.BackgroundTransparency = 0;
			v1661.Position = UDim2.new(0, 275, 0, 4);
			v1661.Size = UDim2.new(0, 100, 0, 24);
			v1661.Font = Enum.Font.GothamSemibold;
			v1661.Text = "";
			v1661.TextColor3 = Color3.fromRGB(0, 191, 255);
			v1661.TextSize = 11;
			v1661.TextTransparency = 0;
			v1661.FocusLost:Connect(function()
				v1654(v1661.Text);
				if v1653 then
					v1661.Text = "";
				end
			end);
			v1662.CornerRadius = UDim.new(0, 3);
			v1662.Parent = v1661;
		end;
		v845.AddLabel = function(v1717, v1718)
			local v1719 = Instance.new("TextLabel");
			local v1720 = Instance.new("UIPadding");
			local v1721 = {};
			v1719.Name = "Label";
			v1719.Parent = v825;
			v1719.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1719.BackgroundTransparency = 1;
			v1719.Size = UDim2.new(0, 410, 0, 20);
			v1719.Font = Enum.Font.GothamSemibold;
			v1719.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1719.TextSize = 16;
			v1719.Text = v1718;
			v1719.TextXAlignment = Enum.TextXAlignment.Left;
			v1720.PaddingLeft = UDim.new(0, 15);
			v1720.Parent = v1719;
			v1720.Name = "PaddingLabel";
			v1721.Set = function(v1982, v1983)
				v1719.Text = v1983;
			end;
			return v1721;
		end;
		v845.AddLabel1 = function(v1738, v1739)
			local v1740 = Instance.new("TextLabel");
			local v1741 = Instance.new("UIPadding");
			local v1742 = {};
			v1740.Name = "Label1";
			v1740.Parent = v825;
			v1740.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1740.BackgroundTransparency = 1;
			v1740.Size = UDim2.new(0, 410, 0, 20);
			v1740.Font = Enum.Font.GothamSemibold;
			v1740.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1740.TextSize = 15;
			v1740.Text = v1739;
			v1740.RichText = true;
			v1740.TextXAlignment = Enum.TextXAlignment.Left;
			v1741.PaddingLeft = UDim.new(0, 15);
			v1741.Parent = v1740;
			v1741.Name = "PaddingLabel1";
			v1742.Refresh = function(v1985, v1986)
				v1740.Text = v1986;
			end;
			return v1742;
		end;
		v845.Dis = function(v1760, v1761, v1762)
			local v1763 = Instance.new("TextLabel");
			local v1764 = Instance.new("UIPadding");
			local v1765 = {};
			v1763.Name = "Label1";
			v1763.Parent = v825;
			v1763.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1763.BackgroundTransparency = 1;
			v1763.Size = UDim2.new(0, 410, 0, 20);
			v1763.Font = Enum.Font.GothamSemibold;
			v1763.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1763.TextSize = 15;
			v1763.Text = v1761;
			v1763.TextXAlignment = Enum.TextXAlignment.Left;
			Labeld.Name = "Labeld";
			Labeld.Parent = v825;
			Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Labeld.BackgroundTransparency = 1;
			Labeld.Size = UDim2.new(0, 410, 0, 20);
			Labeld.Font = Enum.Font.GothamSemibold;
			Labeld.TextColor3 = Color3.fromRGB(255, 255, 255);
			Labeld.TextSize = 15;
			Labeld.Text = v1762 or "" ;
			Labeld.TextXAlignment = Enum.TextXAlignment.Left;
			v1764.PaddingLeft = UDim.new(0, 15);
			v1764.Parent = v1763;
			v1764.Name = "PaddingLabel1";
			v1765.Refresh = function(v1988, v1989)
				v1763.Text = v1989;
			end;
			return v1765;
		end;
		v845.Seperator = function(v1792, v1793)
			local v1794 = Instance.new("Frame");
			local v1795 = Instance.new("Frame");
			local v1796 = Instance.new("TextLabel");
			local v1797 = Instance.new("Frame");
			v1794.Name = "Seperator";
			v1794.Parent = v825;
			v1794.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1794.BackgroundTransparency = 1;
			v1794.Size = UDim2.new(0, 310, 0, 20);
			v1795.Name = "Sep1";
			v1795.Parent = v1794;
			v1795.BackgroundColor3 = Color3.new(0, 191, 255);
			v1795.BorderSizePixel = 0;
			v1795.Position = UDim2.new(0, 0, 0, 10);
			v1795.Size = UDim2.new(0, 80, 0, 1);
			v1796.Name = "Sep2";
			v1796.Parent = v1794;
			v1796.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1796.BackgroundTransparency = 1;
			v1796.Position = UDim2.new(0, 140, 0, 0);
			v1796.Size = UDim2.new(0, 100, 0, 20);
			v1796.Font = Enum.Font.GothamSemibold;
			v1796.Text = v1793;
			v1796.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1796.TextSize = 14;
			v1797.Name = "Sep3";
			v1797.Parent = v1794;
			v1797.BackgroundColor3 = Color3.new(0, 191, 255);
			v1797.BorderSizePixel = 0;
			v1797.Position = UDim2.new(0, 300, 0, 10);
			v1797.Size = UDim2.new(0, 80, 0, 1);
		end;
		v845.AddLine = function(v1826)
			local v1827 = Instance.new("Frame");
			local v1828 = Instance.new("Frame");
			v1827.Name = "Linee";
			v1827.Parent = v825;
			v1827.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1827.BackgroundTransparency = 1;
			v1827.Position = UDim2.new(0, 0, 0.119999997, 0);
			v1827.Size = UDim2.new(0, 310, 0, 20);
			v1828.Name = "Line";
			v1828.Parent = v1827;
			v1828.BackgroundColor3 = Color3.new(0, 191, 255);
			v1828.BorderSizePixel = 0;
			v1828.Position = UDim2.new(0, 0, 0, 10);
			v1828.Size = UDim2.new(0, 410, 0, 1);
		end;
		return v845;
	end;
	return v401;
end;
local v37 = Instance.new("ScreenGui");
local v38 = Instance.new("ImageButton");
local v39 = Instance.new("UICorner");
v37.Name = "ToggleUI";
v37.Parent = game.CoreGui;
v37.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v38.Name = "ToggleButton";
v38.Parent = v37;
v38.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v38.BorderSizePixel = 0;
v38.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
v38.Size = UDim2.new(0, 53.5, 0, 53.5);
v38.BackgroundTransparency = 1;
v38.Image = "rbxassetid://82526416250283";
v38.Draggable = true;
v38.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
end);
v39.CornerRadius = UDim.new(0, 10);
v39.Parent = v38;
if (game.PlaceId == 2753915549) then
	World1 = true;
elseif (game.PlaceId == 4442272183) then
	World2 = true;
elseif (game.PlaceId == 7449423635) then
	World3 = true;
end
function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value;
	if World1 then
		if ((MyLevel == 1) or (MyLevel <= 9)) then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059, 17, 1546);
			CFrameMon = CFrame.new(943, 45, 1562);
		elseif ((MyLevel == 10) or (MyLevel <= 14)) then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1524, 50, 37);
		elseif ((MyLevel == 15) or (MyLevel <= 29)) then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1128, 40, -451);
		elseif ((MyLevel == 30) or (MyLevel <= 39)) then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -1262, 40, 3905);
		elseif ((MyLevel == 40) or (MyLevel <= 59)) then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -976, 55, 4304);
		elseif ((MyLevel == 60) or (MyLevel <= 74)) then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(924, 7, 4482);
		elseif ((MyLevel == 75) or (MyLevel <= 89)) then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(1608, 9, 4371);
		elseif ((MyLevel == 90) or (MyLevel <= 99)) then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1362, 120, -1531);
		elseif ((MyLevel == 100) or (MyLevel <= 119)) then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1243, 140, -1437);
		elseif ((MyLevel == 120) or (MyLevel <= 149)) then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new( -5035, 29, 4326);
			CFrameMon = CFrame.new( -4881, 23, 4274);
		elseif ((MyLevel == 150) or (MyLevel <= 174)) then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -4953, 296, -2899);
		elseif ((MyLevel == 175) or (MyLevel <= 189)) then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -5260, 391, -2229);
		elseif ((MyLevel == 190) or (MyLevel <= 209)) then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5099, "-0", 474);
		elseif ((MyLevel == 210) or (MyLevel <= 249)) then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5655, 16, 866);
		elseif ((MyLevel == 250) or (MyLevel <= 274)) then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1820, 51, -2741);
		elseif ((MyLevel == 275) or (MyLevel <= 299)) then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1268, 30, -2996);
		elseif ((MyLevel == 300) or (MyLevel <= 324)) then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5335, 46, 8638);
		elseif ((MyLevel == 325) or (MyLevel <= 374)) then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5803, 86, 8829);
		elseif ((MyLevel == 375) or (MyLevel <= 399)) then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(60998, 50, 1534);
		elseif ((MyLevel == 400) or (MyLevel <= 449)) then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(61866, 55, 1655);
		elseif ((MyLevel == 450) or (MyLevel <= 474)) then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new( -4720, 846, -1951);
			CFrameMon = CFrame.new( -4720, 846, -1951);
		elseif ((MyLevel == 475) or (MyLevel <= 524)) then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new( -7861, 5545, -381);
			CFrameMon = CFrame.new( -7741, 5580, -395);
		elseif ((MyLevel == 525) or (MyLevel <= 549)) then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7727, 5650, -1410);
		elseif ((MyLevel == 550) or (MyLevel <= 624)) then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7894, 5640, -1629);
		elseif ((MyLevel == 625) or (MyLevel <= 649)) then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5391, 70, 4023);
		elseif (MyLevel >= 650) then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5985, 70, 4790);
		end
	elseif World2 then
		if ((MyLevel == 700) or (MyLevel <= 724)) then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -614, 90, 2240);
		elseif ((MyLevel == 725) or (MyLevel <= 774)) then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -867, 110, 1621);
		elseif ((MyLevel == 775) or (MyLevel <= 874)) then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(635, 73, 919);
			CFrameMon = CFrame.new(635, 73, 919);
		elseif ((MyLevel == 875) or (MyLevel <= 899)) then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -2552, 110, -3050);
		elseif ((MyLevel == 900) or (MyLevel <= 949)) then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -1695, 110, -3299);
		elseif ((MyLevel == 950) or (MyLevel <= 974)) then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -5715, 90, -917);
		elseif ((MyLevel == 975) or (MyLevel <= 999)) then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -6027, 50, -1130);
		elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(445, 440, -5175);
		elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(1224, 460, -5332);
		elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -5941, 50, -4322);
		elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -6306, 50, -5752);
		elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -5233, 60, -6227);
		elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -4955, 60, -4836);
		elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(1033, 125, 32909);
		elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(809, 80, 33090);
		elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(838, 160, 33408);
		elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(1238, 220, 33148);
		elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5836, 80, -6257);
		elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5700, 80, -6724);
		elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -2583, 80, -9821);
		elseif (MyLevel >= 1450) then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -3339, 290, -10412);
		end
	elseif World3 then
		if ((MyLevel == 1500) or (MyLevel <= 1524)) then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new( -44, 70, 5623);
		elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new(219, 105, 6018);
		elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(5992, 90, -1581);
		elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
			Mon = "Dragon Crew Archer";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(6472, 370, -151);
		elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4836, 740, 928);
		elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
			Mon = "Giant Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4784, 660, 155);
		elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3156, 120, -7837);
		elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
			Mon = "Marine Rear Admiral";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3205, 120, -6742);
		elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10550, 380, -8574);
		elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10764, 380, -8799);
		elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13335, 380, -7660);
		elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13844, 520, -7016);
		elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -12166, 380, -10375);
		elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -13098, 450, -9831);
		elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -8680, 190, 5852);
		elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -10144, 140, 5932);
		elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9275, 210, 6166);
		elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9442, 60, 6304);
		elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -1870, 100, -10225);
		elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -2005, 100, -10585);
		elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -501, 100, -10883);
		elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -690, 100, -11350);
		elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -2332, 90, -12049);
		elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -1514, 90, -12422);
		elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -1930, 90, -12963);
		elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -2123, 110, -12777);
		elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(110, 80, -12245);
		elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(579, 80, -12413);
		elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new( -68, 80, -12692);
		elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new(17, 80, -12962);
		elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -1371, 70, -14405);
		elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -836, 70, -14326);
		elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16431, 90, -223);
		elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16668, 70, -243);
		elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
			Mon = "Sun-kissed Warrior";
			LevelQuest = 1;
			NameQuest = "TikiQuest2";
			NameMon = "kissed";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16345, 80, 1004);
		elseif ((MyLevel == 2525) or (MyLevel <= 2549)) then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16634, 85, 1106);
		elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16542.4824, 146.675156, 1529.61401, -0.999948919, 1.0729811e-8, 0.0101067368, 1.0128324e-8, 1, -5.9564663e-8, -0.0101067368, -5.9459257e-8, -0.999948919);
		elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16849.9336, 147.005066, 1640.88354, 0.470148534, 0.491874039, -0.732816696, 1.72165e-8, 0.83030504, 0.55730921, 0.882587314, -0.262018114, 0.390366673);
		end
	end
end
function Hop()
	local v404 = game.PlaceId;
	local v405 = {};
	local v406 = "";
	local v407 = os.date("!*t").hour;
	local v408 = false;
	function TPReturner()
		local v857;
		if (v406 == "") then
			v857 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v404   .. "/servers/Public?sortOrder=Asc&limit=100" ));
		else
			v857 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v404   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v406 ));
		end
		local v858 = "";
		if (v857.nextPageCursor and (v857.nextPageCursor ~= "null") and (v857.nextPageCursor ~= nil)) then
			v406 = v857.nextPageCursor;
		end
		local v859 = 0;
		for v1841, v1842 in pairs(v857.data) do
			local v1843 = true;
			v858 = tostring(v1842.id);
			if (tonumber(v1842.maxPlayers) > tonumber(v1842.playing)) then
				for v2187, v2188 in pairs(v405) do
					if (v859 ~= 0) then
						if (v858 == tostring(v2188)) then
							v1843 = false;
						end
					elseif (tonumber(v407) ~= tonumber(v2188)) then
						local v2702 = pcall(function()
							v405 = {};
							table.insert(v405, v407);
						end);
					end
					v859 = v859 + 1 ;
				end
				if (v1843 == true) then
					table.insert(v405, v858);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(v404, v858, game.Players.LocalPlayer);
					end);
					wait(4);
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner();
				if (v406 ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for v860, v861 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v861.Name ~= "Sea") then
					if  not v861:FindFirstChild("NameEsp") then
						local v2499 = Instance.new("BillboardGui", v861);
						v2499.Name = "NameEsp";
						v2499.ExtentsOffset = Vector3.new(0, 1, 0);
						v2499.Size = UDim2.new(1, 200, 1, 30);
						v2499.Adornee = v861;
						v2499.AlwaysOnTop = true;
						local v2505 = Instance.new("TextLabel", v2499);
						v2505.Font = "GothamBold";
						v2505.FontSize = "Size14";
						v2505.TextWrapped = true;
						v2505.Size = UDim2.new(1, 0, 1, 0);
						v2505.TextYAlignment = "Top";
						v2505.BackgroundTransparency = 1;
						v2505.TextStrokeTransparency = 0.5;
						v2505.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v861['NameEsp'].TextLabel.Text = v861.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v861.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v861:FindFirstChild("NameEsp") then
				v861:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v409)
	return v409 == nil ;
end
local function v56(v410)
	return math.floor(tonumber(v410) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v862, v863 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v863.Character) then
				if ESPPlayer then
					if ( not isnil(v863.Character.Head) and  not v863.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2515 = Instance.new("BillboardGui", v863.Character.Head);
						v2515.Name = "NameEsp"   .. Number ;
						v2515.ExtentsOffset = Vector3.new(0, 1, 0);
						v2515.Size = UDim2.new(1, 200, 1, 30);
						v2515.Adornee = v863.Character.Head;
						v2515.AlwaysOnTop = true;
						local v2522 = Instance.new("TextLabel", v2515);
						v2522.Font = Enum.Font.GothamSemibold;
						v2522.FontSize = "Size14";
						v2522.TextWrapped = true;
						v2522.Text = v863.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v863.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2522.Size = UDim2.new(1, 0, 1, 0);
						v2522.TextYAlignment = "Top";
						v2522.BackgroundTransparency = 1;
						v2522.TextStrokeTransparency = 0.5;
						if (v863.Team == game.Players.LocalPlayer.Team) then
							v2522.TextColor3 = Color3.new(0, 134, 139);
						else
							v2522.TextColor3 = Color3.new(0, 134, 139);
						end
					else
						v863.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v863.Name   .. " | "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v863.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v56((v863.Character.Humanoid.Health * 100) / v863.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v863.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v863.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v864, v865 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v865.Name, "Chest") then
				if ChestESP then
					if string.find(v865.Name, "Chest") then
						if  not v865:FindFirstChild("NameEsp"   .. Number ) then
							local v2840 = Instance.new("BillboardGui", v865);
							v2840.Name = "NameEsp"   .. Number ;
							v2840.ExtentsOffset = Vector3.new(0, 1, 0);
							v2840.Size = UDim2.new(1, 200, 1, 30);
							v2840.Adornee = v865;
							v2840.AlwaysOnTop = true;
							local v2846 = Instance.new("TextLabel", v2840);
							v2846.Font = Enum.Font.GothamSemibold;
							v2846.FontSize = "Size14";
							v2846.TextWrapped = true;
							v2846.Size = UDim2.new(1, 0, 1, 0);
							v2846.TextYAlignment = "Top";
							v2846.BackgroundTransparency = 1;
							v2846.TextStrokeTransparency = 0.5;
							if (v865.Name == "Chest1") then
								v2846.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2846.Text = "Chest 1"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v865.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v865.Name == "Chest2") then
								v2846.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2846.Text = "Chest 2"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v865.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v865.Name == "Chest3") then
								v2846.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2846.Text = "Chest 3"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v865.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v865["NameEsp"   .. Number ].TextLabel.Text = v865.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v865.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v865:FindFirstChild("NameEsp"   .. Number ) then
					v865:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v866, v867 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v867.Name, "Fruit") then
					if  not v867.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2533 = Instance.new("BillboardGui", v867.Handle);
						v2533.Name = "NameEsp"   .. Number ;
						v2533.ExtentsOffset = Vector3.new(0, 1, 0);
						v2533.Size = UDim2.new(1, 200, 1, 30);
						v2533.Adornee = v867.Handle;
						v2533.AlwaysOnTop = true;
						local v2540 = Instance.new("TextLabel", v2533);
						v2540.Font = Enum.Font.GothamSemibold;
						v2540.FontSize = "Size14";
						v2540.TextWrapped = true;
						v2540.Size = UDim2.new(1, 0, 1, 0);
						v2540.TextYAlignment = "Top";
						v2540.BackgroundTransparency = 1;
						v2540.TextStrokeTransparency = 0.5;
						v2540.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2540.Text = v867.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v867.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v867.Handle["NameEsp"   .. Number ].TextLabel.Text = v867.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v867.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v867.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v867.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v868, v869 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v869.Name == "Flower2") or (v869.Name == "Flower1")) then
				if FlowerESP then
					if  not v869:FindFirstChild("NameEsp"   .. Number ) then
						local v2552 = Instance.new("BillboardGui", v869);
						v2552.Name = "NameEsp"   .. Number ;
						v2552.ExtentsOffset = Vector3.new(0, 1, 0);
						v2552.Size = UDim2.new(1, 200, 1, 30);
						v2552.Adornee = v869;
						v2552.AlwaysOnTop = true;
						local v2558 = Instance.new("TextLabel", v2552);
						v2558.Font = Enum.Font.GothamSemibold;
						v2558.FontSize = "Size14";
						v2558.TextWrapped = true;
						v2558.Size = UDim2.new(1, 0, 1, 0);
						v2558.TextYAlignment = "Top";
						v2558.BackgroundTransparency = 1;
						v2558.TextStrokeTransparency = 0.5;
						v2558.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v869.Name == "Flower1") then
							v2558.Text = "Blue Flower"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v869.Position).Magnitude / 3 )   .. " Distance" ;
							v2558.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v869.Name == "Flower2") then
							v2558.Text = "Red Flower"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v869.Position).Magnitude / 3 )   .. " Distance" ;
							v2558.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v869["NameEsp"   .. Number ].TextLabel.Text = v869.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v869.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v869:FindFirstChild("NameEsp"   .. Number ) then
					v869:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v870, v871 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v871:IsA("Tool") then
			if RealFruitESP then
				if  not v871.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2306 = Instance.new("BillboardGui", v871.Handle);
					v2306.Name = "NameEsp"   .. Number ;
					v2306.ExtentsOffset = Vector3.new(0, 1, 0);
					v2306.Size = UDim2.new(1, 200, 1, 30);
					v2306.Adornee = v871.Handle;
					v2306.AlwaysOnTop = true;
					local v2313 = Instance.new("TextLabel", v2306);
					v2313.Font = Enum.Font.GothamSemibold;
					v2313.FontSize = "Size14";
					v2313.TextWrapped = true;
					v2313.Size = UDim2.new(1, 0, 1, 0);
					v2313.TextYAlignment = "Top";
					v2313.BackgroundTransparency = 1;
					v2313.TextStrokeTransparency = 0.5;
					v2313.TextColor3 = Color3.fromRGB(255, 0, 0);
					v2313.Text = v871.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v871.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v871.Handle["NameEsp"   .. Number ].TextLabel.Text = v871.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v871.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v871.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v871.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v872, v873 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v873:IsA("Tool") then
			if RealFruitESP then
				if  not v873.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2325 = Instance.new("BillboardGui", v873.Handle);
					v2325.Name = "NameEsp"   .. Number ;
					v2325.ExtentsOffset = Vector3.new(0, 1, 0);
					v2325.Size = UDim2.new(1, 200, 1, 30);
					v2325.Adornee = v873.Handle;
					v2325.AlwaysOnTop = true;
					local v2332 = Instance.new("TextLabel", v2325);
					v2332.Font = Enum.Font.GothamSemibold;
					v2332.FontSize = "Size14";
					v2332.TextWrapped = true;
					v2332.Size = UDim2.new(1, 0, 1, 0);
					v2332.TextYAlignment = "Top";
					v2332.BackgroundTransparency = 1;
					v2332.TextStrokeTransparency = 0.5;
					v2332.TextColor3 = Color3.fromRGB(255, 174, 0);
					v2332.Text = v873.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v873.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v873.Handle["NameEsp"   .. Number ].TextLabel.Text = v873.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v873.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v873.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v873.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v874, v875 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v875:IsA("Tool") then
			if RealFruitESP then
				if  not v875.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2344 = Instance.new("BillboardGui", v875.Handle);
					v2344.Name = "NameEsp"   .. Number ;
					v2344.ExtentsOffset = Vector3.new(0, 1, 0);
					v2344.Size = UDim2.new(1, 200, 1, 30);
					v2344.Adornee = v875.Handle;
					v2344.AlwaysOnTop = true;
					local v2351 = Instance.new("TextLabel", v2344);
					v2351.Font = Enum.Font.GothamSemibold;
					v2351.FontSize = "Size14";
					v2351.TextWrapped = true;
					v2351.Size = UDim2.new(1, 0, 1, 0);
					v2351.TextYAlignment = "Top";
					v2351.BackgroundTransparency = 1;
					v2351.TextStrokeTransparency = 0.5;
					v2351.TextColor3 = Color3.fromRGB(251, 255, 0);
					v2351.Text = v875.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v875.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v875.Handle["NameEsp"   .. Number ].TextLabel.Text = v875.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v875.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v875.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v875.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for v876, v877 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v877.Name ~= "Sea") then
					if  not v877:FindFirstChild("NameEsp") then
						local v2569 = Instance.new("BillboardGui", v877);
						v2569.Name = "NameEsp";
						v2569.ExtentsOffset = Vector3.new(0, 1, 0);
						v2569.Size = UDim2.new(1, 200, 1, 30);
						v2569.Adornee = v877;
						v2569.AlwaysOnTop = true;
						local v2575 = Instance.new("TextLabel", v2569);
						v2575.Font = "GothamBold";
						v2575.FontSize = "Size14";
						v2575.TextWrapped = true;
						v2575.Size = UDim2.new(1, 0, 1, 0);
						v2575.TextYAlignment = "Top";
						v2575.BackgroundTransparency = 1;
						v2575.TextStrokeTransparency = 0.5;
						v2575.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v877['NameEsp'].TextLabel.Text = v877.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v877.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v877:FindFirstChild("NameEsp") then
				v877:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v411)
	return v411 == nil ;
end
local function v56(v412)
	return math.floor(tonumber(v412) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v878, v879 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v879.Character) then
				if ESPPlayer then
					if ( not isnil(v879.Character.Head) and  not v879.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2585 = Instance.new("BillboardGui", v879.Character.Head);
						v2585.Name = "NameEsp"   .. Number ;
						v2585.ExtentsOffset = Vector3.new(0, 1, 0);
						v2585.Size = UDim2.new(1, 200, 1, 30);
						v2585.Adornee = v879.Character.Head;
						v2585.AlwaysOnTop = true;
						local v2592 = Instance.new("TextLabel", v2585);
						v2592.Font = Enum.Font.GothamSemibold;
						v2592.FontSize = "Size14";
						v2592.TextWrapped = true;
						v2592.Text = v879.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v879.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2592.Size = UDim2.new(1, 0, 1, 0);
						v2592.TextYAlignment = "Top";
						v2592.BackgroundTransparency = 1;
						v2592.TextStrokeTransparency = 0.5;
						if (v879.Team == game.Players.LocalPlayer.Team) then
							v2592.TextColor3 = Color3.new(0, 134, 139);
						else
							v2592.TextColor3 = Color3.new(0, 134, 139);
						end
					else
						v879.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v879.Name   .. " | "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v879.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v56((v879.Character.Humanoid.Health * 100) / v879.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v879.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v879.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v880, v881 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v881.Name, "Chest") then
				if ChestESP then
					if string.find(v881.Name, "Chest") then
						if  not v881:FindFirstChild("NameEsp"   .. Number ) then
							local v2862 = Instance.new("BillboardGui", v881);
							v2862.Name = "NameEsp"   .. Number ;
							v2862.ExtentsOffset = Vector3.new(0, 1, 0);
							v2862.Size = UDim2.new(1, 200, 1, 30);
							v2862.Adornee = v881;
							v2862.AlwaysOnTop = true;
							local v2868 = Instance.new("TextLabel", v2862);
							v2868.Font = Enum.Font.GothamSemibold;
							v2868.FontSize = "Size14";
							v2868.TextWrapped = true;
							v2868.Size = UDim2.new(1, 0, 1, 0);
							v2868.TextYAlignment = "Top";
							v2868.BackgroundTransparency = 1;
							v2868.TextStrokeTransparency = 0.5;
							if (v881.Name == "Chest1") then
								v2868.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2868.Text = "Chest 1"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v881.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v881.Name == "Chest2") then
								v2868.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2868.Text = "Chest 2"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v881.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v881.Name == "Chest3") then
								v2868.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2868.Text = "Chest 3"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v881.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v881["NameEsp"   .. Number ].TextLabel.Text = v881.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v881.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v881:FindFirstChild("NameEsp"   .. Number ) then
					v881:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v882, v883 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v883.Name, "Fruit") then
					if  not v883.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2603 = Instance.new("BillboardGui", v883.Handle);
						v2603.Name = "NameEsp"   .. Number ;
						v2603.ExtentsOffset = Vector3.new(0, 1, 0);
						v2603.Size = UDim2.new(1, 200, 1, 30);
						v2603.Adornee = v883.Handle;
						v2603.AlwaysOnTop = true;
						local v2610 = Instance.new("TextLabel", v2603);
						v2610.Font = Enum.Font.GothamSemibold;
						v2610.FontSize = "Size14";
						v2610.TextWrapped = true;
						v2610.Size = UDim2.new(1, 0, 1, 0);
						v2610.TextYAlignment = "Top";
						v2610.BackgroundTransparency = 1;
						v2610.TextStrokeTransparency = 0.5;
						v2610.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2610.Text = v883.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v883.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v883.Handle["NameEsp"   .. Number ].TextLabel.Text = v883.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v883.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v883.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v883.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v884, v885 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v885.Name == "Flower2") or (v885.Name == "Flower1")) then
				if FlowerESP then
					if  not v885:FindFirstChild("NameEsp"   .. Number ) then
						local v2622 = Instance.new("BillboardGui", v885);
						v2622.Name = "NameEsp"   .. Number ;
						v2622.ExtentsOffset = Vector3.new(0, 1, 0);
						v2622.Size = UDim2.new(1, 200, 1, 30);
						v2622.Adornee = v885;
						v2622.AlwaysOnTop = true;
						local v2628 = Instance.new("TextLabel", v2622);
						v2628.Font = Enum.Font.GothamSemibold;
						v2628.FontSize = "Size14";
						v2628.TextWrapped = true;
						v2628.Size = UDim2.new(1, 0, 1, 0);
						v2628.TextYAlignment = "Top";
						v2628.BackgroundTransparency = 1;
						v2628.TextStrokeTransparency = 0.5;
						v2628.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v885.Name == "Flower1") then
							v2628.Text = "Blue Flower"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v885.Position).Magnitude / 3 )   .. " Distance" ;
							v2628.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v885.Name == "Flower2") then
							v2628.Text = "Red Flower"   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v885.Position).Magnitude / 3 )   .. " Distance" ;
							v2628.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v885["NameEsp"   .. Number ].TextLabel.Text = v885.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v885.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v885:FindFirstChild("NameEsp"   .. Number ) then
					v885:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v886, v887 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v887:IsA("Tool") then
			if RealFruitESP then
				if  not v887.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2363 = Instance.new("BillboardGui", v887.Handle);
					v2363.Name = "NameEsp"   .. Number ;
					v2363.ExtentsOffset = Vector3.new(0, 1, 0);
					v2363.Size = UDim2.new(1, 200, 1, 30);
					v2363.Adornee = v887.Handle;
					v2363.AlwaysOnTop = true;
					local v2370 = Instance.new("TextLabel", v2363);
					v2370.Font = Enum.Font.GothamSemibold;
					v2370.FontSize = "Size14";
					v2370.TextWrapped = true;
					v2370.Size = UDim2.new(1, 0, 1, 0);
					v2370.TextYAlignment = "Top";
					v2370.BackgroundTransparency = 1;
					v2370.TextStrokeTransparency = 0.5;
					v2370.TextColor3 = Color3.fromRGB(255, 0, 0);
					v2370.Text = v887.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v887.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v887.Handle["NameEsp"   .. Number ].TextLabel.Text = v887.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v887.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v887.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v887.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v888, v889 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v889:IsA("Tool") then
			if RealFruitESP then
				if  not v889.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2382 = Instance.new("BillboardGui", v889.Handle);
					v2382.Name = "NameEsp"   .. Number ;
					v2382.ExtentsOffset = Vector3.new(0, 1, 0);
					v2382.Size = UDim2.new(1, 200, 1, 30);
					v2382.Adornee = v889.Handle;
					v2382.AlwaysOnTop = true;
					local v2389 = Instance.new("TextLabel", v2382);
					v2389.Font = Enum.Font.GothamSemibold;
					v2389.FontSize = "Size14";
					v2389.TextWrapped = true;
					v2389.Size = UDim2.new(1, 0, 1, 0);
					v2389.TextYAlignment = "Top";
					v2389.BackgroundTransparency = 1;
					v2389.TextStrokeTransparency = 0.5;
					v2389.TextColor3 = Color3.fromRGB(255, 174, 0);
					v2389.Text = v889.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v889.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v889.Handle["NameEsp"   .. Number ].TextLabel.Text = v889.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v889.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v889.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v889.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v890, v891 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v891:IsA("Tool") then
			if RealFruitESP then
				if  not v891.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2401 = Instance.new("BillboardGui", v891.Handle);
					v2401.Name = "NameEsp"   .. Number ;
					v2401.ExtentsOffset = Vector3.new(0, 1, 0);
					v2401.Size = UDim2.new(1, 200, 1, 30);
					v2401.Adornee = v891.Handle;
					v2401.AlwaysOnTop = true;
					local v2408 = Instance.new("TextLabel", v2401);
					v2408.Font = Enum.Font.GothamSemibold;
					v2408.FontSize = "Size14";
					v2408.TextWrapped = true;
					v2408.Size = UDim2.new(1, 0, 1, 0);
					v2408.TextYAlignment = "Top";
					v2408.BackgroundTransparency = 1;
					v2408.TextStrokeTransparency = 0.5;
					v2408.TextColor3 = Color3.fromRGB(251, 255, 0);
					v2408.Text = v891.Name   .. " \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v891.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v891.Handle["NameEsp"   .. Number ].TextLabel.Text = v891.Name   .. " "   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v891.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v891.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v891.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandMirageESP()
	for v892, v893 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v893.Name == "Mirage Island") then
					if  not v893:FindFirstChild("NameEsp") then
						local v2639 = Instance.new("BillboardGui", v893);
						v2639.Name = "NameEsp";
						v2639.ExtentsOffset = Vector3.new(0, 1, 0);
						v2639.Size = UDim2.new(1, 200, 1, 30);
						v2639.Adornee = v893;
						v2639.AlwaysOnTop = true;
						local v2645 = Instance.new("TextLabel", v2639);
						v2645.Font = "Code";
						v2645.FontSize = "Size14";
						v2645.TextWrapped = true;
						v2645.Size = UDim2.new(1, 0, 1, 0);
						v2645.TextYAlignment = "Top";
						v2645.BackgroundTransparency = 1;
						v2645.TextStrokeTransparency = 0.5;
						v2645.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v893['NameEsp'].TextLabel.Text = v893.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v893.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v893:FindFirstChild("NameEsp") then
				v893:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for v894, v895 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v895.Name == "Legendary Sword Dealer") then
					if  not v895:FindFirstChild("NameEsp") then
						local v2655 = Instance.new("BillboardGui", v895);
						v2655.Name = "NameEsp";
						v2655.ExtentsOffset = Vector3.new(0, 1, 0);
						v2655.Size = UDim2.new(1, 200, 1, 30);
						v2655.Adornee = v895;
						v2655.AlwaysOnTop = true;
						local v2661 = Instance.new("TextLabel", v2655);
						v2661.Font = "Code";
						v2661.FontSize = "Size14";
						v2661.TextWrapped = true;
						v2661.Size = UDim2.new(1, 0, 1, 0);
						v2661.TextYAlignment = "Top";
						v2661.BackgroundTransparency = 1;
						v2661.TextStrokeTransparency = 0.5;
						v2661.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v895['NameEsp'].TextLabel.Text = v895.Name   .. "   \n"   .. v56((game:GetService("Players").LocalPlayer.Character.Head.Position - v895.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v895:FindFirstChild("NameEsp") then
				v895:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local v2077 = Instance.new("ParticleEmitter");
			v2077.Acceleration = Vector3.new(0, 0, 0);
			v2077.Archivable = true;
			v2077.Drag = 20;
			v2077.EmissionDirection = Enum.NormalId.Top;
			v2077.Enabled = true;
			v2077.Lifetime = NumberRange.new(0, 0);
			v2077.LightInfluence = 0;
			v2077.LockedToPart = true;
			v2077.Name = "Agility";
			v2077.Rate = 500;
			local v2089 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			v2077.Size = NumberSequence.new(v2089);
			v2077.RotSpeed = NumberRange.new(9999, 99999);
			v2077.Rotation = NumberRange.new(0, 0);
			v2077.Speed = NumberRange.new(30, 30);
			v2077.SpreadAngle = Vector2.new(0, 0, 0, 0);
			v2077.Texture = "";
			v2077.VelocityInheritance = 0;
			v2077.ZOffset = 2;
			v2077.Transparency = NumberSequence.new(0);
			v2077.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			v2077.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local v25 = game:GetService("Players").LocalPlayer;
local v57 = v25.Character.Energy.Value;
function infinitestam()
	v25.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			v25.Character.Energy.Value = v57;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				v57 = v25.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for v1993, v1994 in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v1994) == "function") and (getfenv(v1994).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for v2671, v2672 in next, getupvalues(v1994) do
						if (tostring(v2672) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v1994, v2671, 0);
							until  not nododgecool
						end
					end
				end
			end
		end
	end
end
function fly()
	local v413 = game:GetService("Players").LocalPlayer:GetMouse("");
	localplayer = game:GetService("Players").LocalPlayer;
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local v415 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	local v416 = 25;
	local v417 = {
		a = false,
		d = false,
		w = false,
		s = false
	};
	local v418;
	local v419;
	local function v420()
		local v896 = Instance.new("BodyPosition", v415);
		local v897 = Instance.new("BodyGyro", v415);
		v896.Name = "EPIXPOS";
		v896.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		v896.position = v415.Position;
		v897.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
		v897.CFrame = v415.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local v1845 = (v897.CFrame - v897.CFrame.p) + v896.position ;
			if ( not v417.w and  not v417.s and  not v417.a and  not v417.d) then
				speed = 1;
			end
			if v417.w then
				v1845 = v1845 + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v416 ;
			end
			if v417.s then
				v1845 = v1845 - (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v416 ;
			end
			if v417.d then
				v1845 = v1845 * CFrame.new(speed, 0, 0) ;
				speed = speed + v416 ;
			end
			if v417.a then
				v1845 = v1845 * CFrame.new( -speed, 0, 0) ;
				speed = speed + v416 ;
			end
			if (speed > v416) then
				speed = v416;
			end
			v896.position = v1845.p;
			if v417.w then
				v897.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(speed * 15 ), 0, 0) ;
			elseif v417.s then
				v897.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15 ), 0, 0) ;
			else
				v897.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end
		until  not Fly
		if v897 then
			v897:Destroy();
		end
		if v896 then
			v896:Destroy();
		end
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end
	v418 = v413.KeyDown:connect(function(v906)
		if ( not v415 or  not v415.Parent) then
			flying = false;
			v418:disconnect();
			v419:disconnect();
			return;
		end
		if (v906 == "w") then
			v417.w = true;
		elseif (v906 == "s") then
			v417.s = true;
		elseif (v906 == "a") then
			v417.a = true;
		elseif (v906 == "d") then
			v417.d = true;
		end
	end);
	v419 = v413.KeyUp:connect(function(v907)
		if (v907 == "w") then
			v417.w = false;
		elseif (v907 == "s") then
			v417.s = false;
		elseif (v907 == "a") then
			v417.a = false;
		elseif (v907 == "d") then
			v417.d = false;
		end
	end);
	v420();
end
function Click()
	game:GetService("VirtualUser"):CaptureController();
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
end
function AutoHaki()
	if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function EquipWeapon(v421)
	if  not Nill then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v421) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v421);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
function BTP(v422)
	pcall(function()
		if (((v422.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and  not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v422;
				wait(0.05);
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v422;
			until ((v422.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
		end
	end);
end
local v58 = false;
function WaitHRP(v423)
	if  not v423 then
		return;
	end
	return v423.Character:WaitForChild("HumanoidRootPart", 9);
end
function CheckNearestTeleporter(v424)
	local v425 = v424.Position;
	local v426 = math.huge;
	local v427 = nil;
	local v428 = game.PlaceId;
	local v429 = {};
	if (v428 == 2753915549) then
		v429 = {
			Sky3 = Vector3.new( -7894, 5547, -380),
			Sky3Exit = Vector3.new( -4607, 874, -1667),
			UnderWater = Vector3.new(61163, 11, 1819),
			UnderwaterExit = Vector3.new(4050, -1, -1814)
		};
	elseif (v428 == 4442272183) then
		v429 = {
			["Swan Mansion"] = Vector3.new( -390, 332, 673),
			["Swan Room"] = Vector3.new(2285, 15, 905),
			["Cursed Ship"] = Vector3.new(923, 126, 32852),
			["Zombie Island"] = Vector3.new( -6509, 83, -133)
		};
	elseif (v428 == 7449423635) then
		v429 = {
			["Floating Turtle"] = Vector3.new( -12462, 375, -7552),
			["Hydra Island"] = Vector3.new(5745, 610, -267),
			Mansion = Vector3.new( -12462, 375, -7552),
			Castle = Vector3.new( -5036, 315, -3179),
			["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
			["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.1476277e-8, -1.9911115e-13, -2.1476277e-8, 1, -3.0510602e-8, 1.984559e-13, 3.0510602e-8, 1),
			["Temple of Time"] = Vector3.new(28286, 14897, 103)
		};
	end
	for v908, v909 in pairs(v429) do
		local v910 = (v909 - v425).Magnitude;
		if (v910 < v426) then
			v426 = v910;
			v427 = v909;
		end
	end
	local v430 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	if (v426 <= (v425 - v430).Magnitude) then
		return v427;
	end
end
function requestEntrance(v431)
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v431);
	local v432 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	v432.CFrame = v432.CFrame + Vector3.new(0, 50, 0) ;
	task.wait(0.5);
end
local v59 = false;
function topos(v434)
	local v435 = game.Players.LocalPlayer;
	if (v435.Character and (v435.Character.Humanoid.Health > 0) and v435.Character:FindFirstChild("HumanoidRootPart")) then
		if  not v434 then
			return;
		end
		local v1848 = (v434.Position - v435.Character.HumanoidRootPart.Position).Magnitude;
		local v1849 = CheckNearestTeleporter(v434);
		if v1849 then
			requestEntrance(v1849);
		end
		if  not v435.Character:FindFirstChild("PartTele") then
			local v2105 = Instance.new("Part", v435.Character);
			v2105.Size = Vector3.new(10, 1, 10);
			v2105.Name = "PartTele";
			v2105.Anchored = true;
			v2105.Transparency = 1;
			v2105.CanCollide = false;
			v2105.CFrame = WaitHRP(v435).CFrame;
			v2105:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v58 then
					return;
				end
				task.wait();
				if (v435.Character and v435.Character:FindFirstChild("HumanoidRootPart")) then
					local v2422 = v2105.CFrame;
					WaitHRP(v435).CFrame = CFrame.new(v2422.Position.X, v434.Position.Y, v2422.Position.Z);
				end
			end);
		end
		v58 = true;
		if (v59 and (v1848 > distbyp)) then
			bypass(v434);
		end
		local v1850 = getgenv().TweenSpeed;
		if (v1848 <= 250) then
			v1850 = v1850 * 3 ;
		end
		local v1851 = CFrame.new(v434.Position.X, v434.Position.Y, v434.Position.Z);
		local v1852 = game:GetService("TweenService"):Create(v435.Character.PartTele, TweenInfo.new(v1848 / v1850 , Enum.EasingStyle.Linear), {
			CFrame = v434
		});
		v1852:Play();
		v1852.Completed:Connect(function(v1997)
			if (v1997 == Enum.PlaybackState.Completed) then
				if v435.Character:FindFirstChild("PartTele") then
					v435.Character.PartTele:Destroy();
				end
				v58 = false;
			end
		end);
	end
end
function TP1(v436)
	topos(v436);
end
function TP2(v437)
	local v438 = game.Players.LocalPlayer;
	if (v438.Character and (v438.Character.Humanoid.Health > 0) and v438.Character:FindFirstChild("HumanoidRootPart")) then
		local v1853 = (v437.Position - v438.Character.HumanoidRootPart.Position).Magnitude;
		if  not v437 then
			return;
		end
		local v1854 = CheckNearestTeleporter(v437);
		if v1854 then
			requestEntrance(v1854);
		end
		if  not v438.Character:FindFirstChild("PartTele") then
			local v2113 = Instance.new("Part", v438.Character);
			v2113.Size = Vector3.new(10, 1, 10);
			v2113.Name = "PartTele";
			v2113.Anchored = true;
			v2113.Transparency = 1;
			v2113.CanCollide = true;
			v2113.CFrame = WaitHRP(v438).CFrame;
			v2113:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v58 then
					return;
				end
				task.wait();
				if (v438.Character and v438.Character:FindFirstChild("HumanoidRootPart")) then
					WaitHRP(v438).CFrame = v2113.CFrame;
				end
			end);
		end
		v58 = true;
		local v1855 = game:GetService("TweenService"):Create(v438.Character.PartTele, TweenInfo.new(v1853 / 350 , Enum.EasingStyle.Linear), {
			CFrame = v437
		});
		v1855:Play();
		v1855.Completed:Connect(function(v1998)
			if (v1998 == Enum.PlaybackState.Completed) then
				if v438.Character:FindFirstChild("PartTele") then
					v438.Character.PartTele:Destroy();
				end
				v58 = false;
			end
		end);
	end
end
function stopTeleport()
	v58 = false;
	local v439 = game.Players.LocalPlayer;
	if v439.Character:FindFirstChild("PartTele") then
		v439.Character.PartTele:Destroy();
	end
end
spawn(function()
	while task.wait() do
		if  not v58 then
			stopTeleport();
		end
	end
end);
spawn(function()
	local v440 = game.Players.LocalPlayer;
	while task.wait() do
		pcall(function()
			if v440.Character:FindFirstChild("PartTele") then
				if ((v440.Character.HumanoidRootPart.Position - v440.Character.PartTele.Position).Magnitude >= 100) then
					stopTeleport();
				end
			end
		end);
	end
end);
local v60 = game.Players.LocalPlayer;
local function v61(v441)
	local v442 = v441:WaitForChild("Humanoid");
	v442.Died:Connect(function()
		stopTeleport();
	end);
end
v60.CharacterAdded:Connect(v61);
if v60.Character then
	v61(v60.Character);
end
function TPB(v443)
	local v444 = game:service("TweenService");
	local v445 = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v443.Position).Magnitude / 300 , Enum.EasingStyle.Linear);
	tween = v444:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v445, {
		CFrame = v443
	});
	tween:Play();
	local v446 = {};
	v446.Stop = function(v911)
		tween:Cancel();
	end;
	return v446;
end
Type = 1;
spawn(function()
	while wait() do
		if (Type == 1) then
			Pos = CFrame.new(0, PosY, -19);
		elseif (Type == 2) then
			Pos = CFrame.new(19, PosY, 0);
		elseif (Type == 3) then
			Pos = CFrame.new(0, PosY, 19);
		elseif (Type == 4) then
			Pos = CFrame.new( -19, PosY, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.2);
		Type = 2;
		wait(0.2);
		Type = 3;
		wait(0.2);
		Type = 4;
		wait(0.2);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.Clip or FarmBoss or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.gay or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or _G.FarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.FrozenDimension or _G.FKitsune) then
				if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local v2263 = Instance.new("BodyVelocity");
					v2263.Name = "BodyClip";
					v2263.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					v2263.MaxForce = Vector3.new(100000, 100000, 100000);
					v2263.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.Clip or FarmBoss or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.gay or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or _G.FarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or _G.TushitaSword or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip) then
				local v2121 = game:GetService("Players").LocalPlayer;
				local v2122 = v2121.Character and v2121.Character:FindFirstChildOfClass("Humanoid") ;
				if v2122 then
					local v2269 = v2122:GetState();
					if ((v2269 ~= Enum.HumanoidStateType.Seated) and (v2269 ~= Enum.HumanoidStateType.Running) and (v2269 ~= Enum.HumanoidStateType.Landed)) then
						v2122:ChangeState(5);
					end
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AdvanceDungeon or _G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.saw or _G.ObservationHakiV2 or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then
				for v2191, v2192 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v2192:IsA("BasePart") then
						v2192.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
function InstancePos(v448)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v448;
end
function TP3(v450)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v450;
end
spawn(function()
	while wait() do
		if (_G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.FarmBossHallow or _G.Factory or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.Level or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.d or _G.waden or _G.gay or _G.ObservationHakiV2 or _G.FarmMaterial or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.RaidPirate or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.AttackDummy or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Farmfast or _G.RaidPirate or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or (_G.KillGhostShip == true)) then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if (_G.Click or Fastattack) then
			pcall(function()
				game:GetService("VirtualUser"):CaptureController();
				game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1));
			end);
		end
	end);
end);
function StopTween(v452)
	if  not v452 then
		_G.StopTween = true;
		wait();
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
		end
		_G.StopTween = false;
		_G.Clip = false;
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for v1999, v2000 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v2000:IsA("Tool") then
					if v2000:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v2000.Name;
					end
				end
			end
		end
	end);
end);
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
PosY = 25;
Kill_At = 28;
local v62 = v35:Window("KimP Roblox", "", Enum.KeyCode.RightControl);
local v63 = v62:T("Trạng thái", "10734984606");
local v64 = v62:T("chung", "15712703260");
local v65 = v62:T("Cài Đặt ", "15712711639");
local v66 = v62:T("Vật Phẩm", "15712717270");
local v67 = v62:T("Tộc V4", "15712776421");
local v68 = v62:T("Sự Kiện", "10709783577");
local v69 = v62:T("Người Chơi", "10747373176");
local v70 = v62:T("Thị giác", "10723346959");
local v71 = v62:T("Tập Kích", "10723345749");
local v72 = v62:T("Di Chuyển", "15712738876");
local v73 = v62:T("Cửa Hàng", "10734952479");
local v74 = v62:T("Trái Ác Quỷ", "15712758182");
local v75 = v62:T("Máy Chủ", "10709782582");
v63:Seperator("Vào Discord");
v63:Label("Mọi Người Vào Giao Lưu");
v63:Button("Sao Chép Link Discord", function()
	setclipboard("https://discord.com/invite/hcJ8PHtkfy");
end);
v63:Seperator("Thời Gian");
Time = v63:Label("Thời Gian Hoạt Động");
function UpdateTime()
	local v453 = math.floor(workspace.DistributedGameTime + 0.5 );
	local v454 = math.floor(v453 / (60 ^ 2) ) % 24 ;
	local v455 = math.floor(v453 / (60 ^ 1) ) % 60 ;
	local v456 = math.floor(v453 / (60 ^ 0) ) % 60 ;
	Time:Set("[Thời Gian Máy Chủ]: Giờ: "   .. v454   .. " Phút: "   .. v455   .. " Giây: "   .. v456 );
end
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end
end);
Client = v63:Label("Client");
function UpdateClient()
	local v457 = workspace:GetRealPhysicsFPS();
	Client:Set("[FPS]: "   .. v457 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end
end);
Client1 = v63:Label("Client");
function UpdateClient1()
	local v458 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[PING]: "   .. v458 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end
end);
v63:Seperator("Người Chơi");
local v76 = v63:Label("Tộc");
spawn(function()
	while wait() do
		pcall(function()
			v76:Set("Race:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
		end);
	end
end);
local v77 = v63:Label("Beli");
spawn(function()
	while wait() do
		pcall(function()
			v77:Set("Beli:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
		end);
	end
end);
local v78 = v63:Label("Điểm Tím");
spawn(function()
	while wait() do
		pcall(function()
			v78:Set("Diểm Tím:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
		end);
	end
end);
local v79 = v63:Label("Tiền Thưởng");
spawn(function()
	while wait() do
		pcall(function()
			v79:Set("Tiền Thưởng:"   .. " "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
		end);
	end
end);
local v80 = v63:Label("Trái");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
				v80:Set("Trái:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
			else
				v80:Set("Không Có Trái");
			end
		end);
	end
end);
v64:Seperator("Vũ Khí");
local v81 = {
	"Võ",
	"Kiếm",
	"Trái",
	"Súng"
};
_G.SelectWeapon = "Võ";
v64:Dropdown("Chọn Vũ Khí", v81, function(v459)
	_G.SelectWeapon = v459;
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Võ") then
				for v2193, v2194 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2194.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2194.Name)) then
							_G.SelectWeapon = v2194.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Kiếm") then
				for v2428, v2429 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2429.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2429.Name)) then
							_G.SelectWeapon = v2429.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Súng") then
				for v2706, v2707 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2707.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2707.Name)) then
							_G.SelectWeapon = v2707.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Trái") then
				for v2903, v2904 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2904.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2904.Name)) then
							_G.SelectWeapon = v2904.Name;
						end
					end
				end
			end
		end);
	end
end);
local v82 = {
	"Bình Thường",
	"Nhanh",
	"Siêu Nhanh",
	"Cực Nhanh"
};
_G.FastAttackDelay = "Bình Thường";
v64:Dropdown("Tốc Độ Đánh", v82, function(v460)
	_G.FastAttackDelay = v460;
end);
spawn(function()
	while wait(0.1) do
		if _G.FastAttackDelay then
			pcall(function()
				if (_G.FastAttackDelay == "Bình Thường") then
					_G.FastAttackDelay = 0.13;
				elseif (_G.FastAttackDelay == "Nhanh") then
					_G.FastAttackDelay = 0.07;
				elseif (_G.FastAttackDelay == "Siêu Nhanh") then
					_G.FastAttackDelay = 0.04;
				elseif (_G.FastAttackDelay == "Cực Nhanh") then
					_G.FastAttackDelay = 0;
				end
			end);
		end
	end
end);
_G.FastAttack = true;
if _G.FastAttack then
	local _ENV = (getgenv or getrenv or getfenv)();
	local function v912(v1856, v1857)
		local v1858, v1859 = pcall(function()
			return v1856:WaitForChild(v1857);
		end);
		if ( not v1858 or  not v1859) then
			warn("noooooo: "   .. v1857 );
		end
		return v1859;
	end
	local function v913(v1860, ...)
		local v1861 = v1860;
		for v2001, v2002 in {
			...
		} do
			v1861 = v1861:FindFirstChild(v2002) or v912(v1861, v2002) ;
			if  not v1861 then
				break;
			end
		end
		return v1861;
	end
	local v914 = game:GetService("VirtualInputManager");
	local v915 = game:GetService("CollectionService");
	local v916 = game:GetService("ReplicatedStorage");
	local v917 = game:GetService("TeleportService");
	local v918 = game:GetService("RunService");
	local v919 = game:GetService("Players");
	local v920 = v919.LocalPlayer;
	if  not v920 then
		warn("Không tìm thấy người chơi cục bộ.");
		return;
	end
	local v921 = v912(v916, "Remotes");
	if  not v921 then
		return;
	end
	local v922 = v912(v921, "Validator");
	local v923 = v912(v921, "CommF_");
	local v924 = v912(v921, "CommE");
	local v925 = v912(workspace, "ChestModels");
	local v926 = v912(workspace, "_WorldOrigin");
	local v927 = v912(workspace, "Characters");
	local v928 = v912(workspace, "Enemies");
	local v929 = v912(workspace, "Map");
	local v930 = v912(v926, "EnemySpawns");
	local v931 = v912(v926, "Locations");
	local v932 = v918.RenderStepped;
	local v933 = v918.Heartbeat;
	local v934 = v918.Stepped;
	local v935 = v912(v916, "Modules");
	local v936 = v912(v935, "Net");
	local v937 = sethiddenproperty or function(...)
		return ...;
	end ;
	local v938 = setupvalue or (debug and debug.setupvalue) ;
	local v939 = getupvalue or (debug and debug.getupvalue) ;
	local v940 = {
		AutoClick = true,
		ClickDelay = 0
	};
	local v941 = {};
	v941.FastAttack = (function()
		if _ENV.rz_FastAttack then
			return _ENV.rz_FastAttack;
		end
		local v1862 = {
			Distance = 100,
			attackMobs = true,
			attackPlayers = true,
			Equipped = nil
		};
		local v1863 = v912(v936, "RE/RegisterAttack");
		local v1864 = v912(v936, "RE/RegisterHit");
		local function v1865(v2003)
			return v2003 and v2003:FindFirstChild("Humanoid") and (v2003.Humanoid.Health > 0) ;
		end
		local function v1866(v2004, v2005)
			local v2006 = nil;
			for v2123, v2124 in v2005:GetChildren() do
				local v2125 = v2124:FindFirstChild("Head");
				if (v2125 and v1865(v2124) and (v920:DistanceFromCharacter(v2125.Position) < v1862.Distance)) then
					if (v2124 ~= v920.Character) then
						table.insert(v2004, {
							v2124,
							v2125
						});
						v2006 = v2125;
					end
				end
			end
			return v2006;
		end
		v1862.Attack = function(v2007, v2008, v2009)
			if ( not v2008 or ( #v2009 == 0)) then
				return;
			end
			v1863:FireServer(v940.ClickDelay or 0 );
			v1864:FireServer(v2008, v2009);
		end;
		v1862.AttackNearest = function(v2010)
			local v2011 = {};
			local v2012 = v1866(v2011, v928);
			local v2013 = v1866(v2011, v927);
			if ( #v2011 > 0) then
				v2010:Attack(v2012 or v2013 , v2011);
			else
				task.wait(0);
			end
		end;
		v1862.BladeHits = function(v2014)
			local v2015 = v1865(v920.Character) and v920.Character:FindFirstChildOfClass("Tool") ;
			if (v2015 and (v2015.ToolTip ~= "Gun")) then
				v2014:AttackNearest();
			else
				task.wait(0);
			end
		end;
		task.spawn(function()
			while task.wait(v940.ClickDelay) do
				if v940.AutoClick then
					v1862:BladeHits();
				end
			end
		end);
		_ENV.rz_FastAttack = v1862;
		return v1862;
	end)();
end
v64:Seperator("Tự Động Cày");
v64:Toggle("Cày Cấp", _G.Farm, function(v461)
	_G.Level = v461;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.Level then
			pcall(function()
				local v2126 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2126, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 3500) then
							BTP(CFrameQuest);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 3500) then
							TP1(CFrameQuest);
						end
					else
						TP1(CFrameQuest);
					end
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2905, v2906 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2906:FindFirstChild("HumanoidRootPart") and v2906:FindFirstChild("Humanoid") and (v2906.Humanoid.Health > 0)) then
								if (v2906.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v2906.HumanoidRootPart.CFrame;
											TP1(v2906.HumanoidRootPart.CFrame * Pos );
											v2906.HumanoidRootPart.CanCollide = false;
											v2906.Humanoid.WalkSpeed = 0;
											v2906.Head.CanCollide = false;
											v2906.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											StartMagnet = true;
										until  not _G.Level or (v2906.Humanoid.Health <= 0) or  not v2906.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	v64:Toggle("Cày Cấp Nhanh ( Cấp 1-300 )", _G.FarmFast, function(v1870)
		_G.Farmfast = v1870;
		StopTween(_G.Farmfast);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						_G.Level = false;
						_G.Farmfast = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		while wait() do
			if (_G.Farmfast and World1) then
				pcall(function()
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7894.6176757813, 5547.1416015625, -380.29119873047));
						for v2708, v2709 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2709.Name == "Shanda") then
								if (v2709:FindFirstChild("Humanoid") and v2709:FindFirstChild("HumanoidRootPart") and (v2709.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2709.HumanoidRootPart.CanCollide = false;
										v2709.Humanoid.WalkSpeed = 0;
										StardMag = true;
										FastMon = v2709.HumanoidRootPart.CFrame;
										v2709.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										TP1(v2709.HumanoidRootPart.CFrame * Pos );
									until  not _G.Farmfast or  not v2709.Parent or (v2709.Humanoid.Health <= 0)
									StardMag = false;
									TP1(CFrame.new( -7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.SelectWeapon);
								end
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2) );
					end
				end);
			end
		end
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 75) then
						_G.Farmfast = false;
						_G.PlayerHunter = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 200) then
						_G.Level = true;
						_G.PlayerHunter = false;
					end
				end
			end
		end);
	end);
end
v64:Toggle("Cày Cấp Và Mua Item", false, function(v462)
	_G.Level = v462;
	_G.SelectWeapon = "Combat";
	_G.Stats_Kaitun = v462;
	_G.Superhuman = v462;
	_G.SecondSea = v462;
	_G.ThirdSea = v462;
	_G.BuyLegendarySword = v462;
	_G.StoreFruit = v462;
	_G.Random_Auto = v462;
	_G.BuyAllAib = v462;
	_G.BuyAllSword = v462;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.BuyAllSword then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
				if _G.BuyHop then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if _G.BuyAllAib then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
				if _G.HopBuy then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v64:Toggle("Đánh Quái Ở Gần", _G.FarmNearest, function(v463)
	_G.FarmNearest = v463;
	StopTween(_G.FarmNearest);
end);
spawn(function()
	while wait() do
		if _G.FarmNearest then
			for v2127, v2128 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v2128.Name and v2128:FindFirstChild("Humanoid")) then
					if (v2128.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2907 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2907));
							end
							topos(v2128.HumanoidRootPart.CFrame * Pos );
							v2128.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v2128.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							AutoFarmNearestMagnet = true;
							PosMon = v2128.HumanoidRootPart.CFrame;
						until  not _G.FarmNearest or  not v2128.Parent or (v2128.Humanoid.Health <= 0)
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
v64:Seperator("Rương");
v64:Toggle("Nhặt Rương", false, function(v464)
	_G.FarmChest = v464;
	StopTween(_G.FarmChest);
end);
spawn(function()
	while wait() do
		if _G.FarmChest then
			local v2016 = game:GetService("Players");
			local v2017 = v2016.LocalPlayer;
			local v2018 = v2017.Character or v2017.CharacterAdded:Wait() ;
			local v2019 = v2018:GetPivot().Position;
			local v2020 = game:GetService("CollectionService");
			local v2021 = v2020:GetTagged("_ChestTagged");
			local v2022, v2023 = math.huge;
			for v2129 = 1, #v2021 do
				local v2130 = v2021[v2129];
				local v2131 = (v2130:GetPivot().Position - v2019).Magnitude;
				if ( not v2130:GetAttribute("IsDisabled") and (v2131 < v2022)) then
					v2022, v2023 = v2131, v2130;
				end
			end
			if v2023 then
				local v2195 = v2023:GetPivot().Position;
				local v2196 = CFrame.new(v2195);
				topos(v2196);
			end
		end
	end
end);
v64:Toggle("Nhặt Rương Bypass (Anti Reset)", false, function(v465)
	_G.ChestBypass = v465;
end);
spawn(function()
	while wait() do
		if _G.ChestBypass then
			local v2024 = game:GetService("Players");
			local v2025 = v2024.LocalPlayer;
			local v2026 = game:GetService("CollectionService");
			local v2027 = v2025.Character or v2025.CharacterAdded:Wait() ;
			local v2028 = tick();
			while (tick() - v2028) < 4  do
				v2027 = v2025.Character or v2025.CharacterAdded:Wait() ;
				local v2132 = v2027:GetPivot().Position;
				local v2133 = v2026:GetTagged("_ChestTagged");
				local v2134, v2135 = math.huge;
				for v2197 = 1, #v2133 do
					local v2198 = v2133[v2197];
					local v2199 = (v2198:GetPivot().Position - v2132).Magnitude;
					if ( not v2198:GetAttribute("IsDisabled") and (v2199 < v2134)) then
						v2134, v2135 = v2199, v2198;
					end
				end
				if v2135 then
					local v2270 = v2135:GetPivot().Position;
					v2027:PivotTo(CFrame.new(v2270));
					task.wait(0.2);
				else
					break;
				end
			end
			if v2025.Character then
				v2025.Character:BreakJoints();
				v2025.CharacterAdded:Wait();
			end
		end
	end
end);
v64:Seperator("Elite");
local v83 = v64:Label("N/A");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				v83:Set("Trạng thái: Có");
			else
				v83:Set("Trạng thái: Không");
			end
		end);
	end
end);
v64:Toggle("Đánh Elite Hunter", _G.Elitehunter, function(v466)
	_G.Elitehunter = v466;
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	StopTween(_G.Elitehunter);
end);
spawn(function()
	while wait() do
		if (_G.Elitehunter and World3) then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
							for v2908, v2909 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2909.Name == "Diablo") or (v2909.Name == "Deandre") or (v2909.Name == "Urban")) then
									if (v2909:FindFirstChild("Humanoid") and v2909:FindFirstChild("HumanoidRootPart") and (v2909.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2909.HumanoidRootPart.CanCollide = false;
											v2909.Humanoid.WalkSpeed = 0;
											v2909.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2909.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.Elitehunter == false) or (v2909.Humanoid.Health <= 0) or  not v2909.Parent
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				elseif (_G.EliteHunterHop and (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later.")) then
					hop();
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
				end
			end);
		end
	end
end);
v64:Toggle("Đánh Elite Đổi Sever", _G.EliteHunterHop, function(v467)
	_G.EliteHunterHop = v467;
end);
v64:Seperator("Nhiệm Vụ");
local v84 = {
	"Không Nhận",
	"Nhận"
};
Mode = "Nhận";
v64:Dropdown("Nhận Nhiệm Vụ Xương Và Bánh ngọt", v84, function(v468)
	Mode = v468;
end);
local v85 = CFrame.new( -2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
spawn(function()
	while wait() do
		if ((Mode == "Nhận") and _G.DoughtBoss and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v2430, v2431 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2431.Name == "Cake Prince") or (v2431.Name == "Dough King")) then
							if (v2431:FindFirstChild("Humanoid") and v2431:FindFirstChild("HumanoidRootPart") and (v2431.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2431.HumanoidRootPart.CanCollide = false;
									v2431.Humanoid.WalkSpeed = 0;
									v2431.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2431.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2431.Parent or (v2431.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2) );
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (Mode and _G.DoughtBoss and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")) then
			pcall(function()
				local v2136 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2136, "Cookie Crafter") then
					MagnetDought = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					MagnetDought = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v85.Position).Magnitude > 3500) then
							BTP(v85);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v85.Position).Magnitude < 3500) then
							topos(v85);
						end
					else
						topos(v85);
					end
					if ((v85.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
						for v2910, v2911 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2911:FindFirstChild("HumanoidRootPart") and v2911:FindFirstChild("Humanoid") and (v2911.Humanoid.Health > 0)) then
								if ((v2911.Name == "Cookie Crafter") or (v2911.Name == "Cake Guard") or (v2911.Name == "Baking Staff") or (v2911.Name == "Head Baker")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonCake = v2911.HumanoidRootPart.CFrame;
											topos(v2911.HumanoidRootPart.CFrame * Pos );
											v2911.HumanoidRootPart.CanCollide = false;
											v2911.Humanoid.WalkSpeed = 0;
											v2911.Head.CanCollide = false;
											v2911.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											MagnetDought = true;
											PosMonDoughtOpenDoor = v2911.HumanoidRootPart.CFrame;
										until  not _G.DoughtBoss or  not v2911.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v2911.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
									else
										MagnetDought = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						MagnetDought = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
local v86 = CFrame.new( -9515.75, 174.8521728515625, 6079.40625);
spawn(function()
	while wait() do
		if ((Mode == "Nhận") and _G.Bone and World3) then
			pcall(function()
				local v2137 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2137, "Demonic Soul") then
					StartMagnetBoneMon = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnetBoneMon = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v86.Position).Magnitude > 3500) then
							BTP(v86);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v86.Position).Magnitude < 3500) then
							topos(v86);
						end
					else
						topos(v86);
					end
					if ((v86.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for v2912, v2913 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2913:FindFirstChild("HumanoidRootPart") and v2913:FindFirstChild("Humanoid") and (v2913.Humanoid.Health > 0)) then
								if ((v2913.Name == "Reborn Skeleton") or (v2913.Name == "Living Zombie") or (v2913.Name == "Demonic Soul") or (v2913.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v2913.HumanoidRootPart.CFrame;
											topos(v2913.HumanoidRootPart.CFrame * Pos );
											v2913.HumanoidRootPart.CanCollide = false;
											v2913.Humanoid.WalkSpeed = 0;
											v2913.Head.CanCollide = false;
											v2913.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
											StartMagnetBoneMon = true;
										until  not _G.Bone or (v2913.Humanoid.Health <= 0) or  not v2913.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										StartMagnetBoneMon = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						StartMagnetBoneMon = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
v64:Seperator("Xương");
BoneCheck = v64:Label("Xương Của Bạn: N/A");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Xương Của Bạn: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) );
		end);
	end
end);
v64:Toggle("Cày Xương", _G.Bone, function(v469)
	_G.Bone = v469;
	StopTween(_G.Bone);
end);
local v87 = CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if ((Mode == "Không Nhận") and _G.Bone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for v2432, v2433 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2433.Name == "Reborn Skeleton") or (v2433.Name == "Living Zombie") or (v2433.Name == "Demonic Soul") or (v2433.Name == "Posessed Mummy")) then
							if (v2433:FindFirstChild("Humanoid") and v2433:FindFirstChild("HumanoidRootPart") and (v2433.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2433.HumanoidRootPart.CanCollide = false;
									v2433.Humanoid.WalkSpeed = 0;
									v2433.Head.CanCollide = false;
									StartMagnetBoneMon = true;
									PosMonBone = v2433.HumanoidRootPart.CFrame;
									topos(v2433.HumanoidRootPart.CFrame * Pos );
								until  not _G.Bone or  not v2433.Parent or (v2433.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v87.Position).Magnitude > 3500) then
							BTP(v87);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v87.Position).Magnitude < 3500) then
							topos(v87);
						end
					else
						topos(v87);
					end
					UnEquipWeapon(_G.SelectWeapon);
					StartMagnetBoneMon = false;
					topos(CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375));
					for v2434, v2435 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v2435.Name == "Reborn Skeleton") then
							topos(v2435.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2435.Name == "Living Zombie") then
							topos(v2435.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2435.Name == "Demonic Soul") then
							topos(v2435.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2435.Name == "Posessed Mummy") then
							topos(v2435.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
v64:Toggle("Đổi Xương", _G.Random_Bone, function(v470)
	_G.Random_Bone = v470;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Random_Bone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end);
v64:Toggle("Tự động cầu nguyện", pry, function(v471)
	_G.Pray = v471;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Pray then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1);
			end
		end
	end);
end);
v64:Toggle("Tự động thử vận may", Trylux, function(v472)
	_G.Trylux = v472;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Trylux then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
			end
		end
	end);
end);
v64:Seperator("Bột");
local v88 = v64:Label("Killed");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v88:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v88:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v88:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) );
			else
				v88:Set("Boss Is Spawning");
			end
		end);
	end
end);
v64:Toggle("Đánh Tư Lệnh Bột", _G.DoughtBoss, function(v473)
	_G.DoughtBoss = v473;
	StopTween(_G.DoughtBoss);
end);
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41)) - 500 ;
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 40, 41)) - 500 ;
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				KillMob = tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 41, 41)) - 500 ;
			end
		end);
	end
end);
local v89 = CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375);
spawn(function()
	while wait() do
		if ((Mode == "Không Nhận") and _G.DoughtBoss) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for v2436, v2437 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2437.Name == "Cake Prince") then
							if (v2437:FindFirstChild("Humanoid") and v2437:FindFirstChild("HumanoidRootPart") and (v2437.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2437.HumanoidRootPart.CanCollide = false;
									v2437.Humanoid.WalkSpeed = 0;
									v2437.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2437.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2437.Parent or (v2437.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					if (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for v3024, v3025 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v3025.Name == "Cookie Crafter") or (v3025.Name == "Cake Guard") or (v3025.Name == "Baking Staff") or (v3025.Name == "Head Baker")) then
									if (v3025:FindFirstChild("Humanoid") and v3025:FindFirstChild("HumanoidRootPart") and (v3025.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v3025.HumanoidRootPart.CanCollide = false;
											v3025.Humanoid.WalkSpeed = 0;
											v3025.Head.CanCollide = false;
											v3025.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											MagnetDought = true;
											PosMonDoughtOpenDoor = v3025.HumanoidRootPart.CFrame;
											topos(v3025.HumanoidRootPart.CFrame * Pos );
										until  not _G.DoughtBoss or  not v3025.Parent or (v3025.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
									end
								end
							end
						else
							if BypassTP then
								if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v89.Position).Magnitude > 3500) then
									BTP(v89);
								elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v89.Position).Magnitude < 3500) then
									topos(v89);
								end
							else
								topos(v89);
							end
							MagnetDought = false;
							UnEquipWeapon(_G.SelectWeapon);
							topos(CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375));
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							end
						end
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
v64:Toggle("Tự Động Triệu Hồi Tư Lệnh", false, function(v474)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
v64:Toggle("Vua bột tự động", _G.doughking, function(v475)
	_G.doughking = v475;
	StopTween(_G.doughking);
end);
v64:Toggle("Vua bột tự động Đổi Sever", _G.doughkingHop, function(v476)
	_G.doughkingHop = v476;
end);
spawn(function()
	while wait() do
		if (_G.doughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v2438, v2439 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2439.Name == "Dough King") then
							if (v2439:FindFirstChild("Humanoid") and v2439:FindFirstChild("HumanoidRootPart") and (v2439.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2439.HumanoidRootPart.CanCollide = false;
									v2439.Humanoid.WalkSpeed = 0;
									v2439.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2439.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.doughking or  not v2439.Parent or (v2439.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -2662.818603515625, 1062.3480224609375, -11853.6953125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.doughkingHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v64:Seperator("Thông Thạo");
v64:Toggle("Cày Thông Thạo Trái", _G.FarmFruitMastery, function(v477)
	_G.FarmFruitMastery = v477;
	StopTween(_G.FarmFruitMastery);
	if (_G.FarmFruitMastery == false) then
		UseSkill = false;
	end
end);
spawn(function()
	while wait() do
		if _G.FarmFruitMastery then
			pcall(function()
				local v2138 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2138, NameMon) then
					Magnet = false;
					UseSkill = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryFruitMagnet = false;
					UseSkill = false;
					CheckQuest();
					repeat
						wait();
						TP1(CFrameQuest);
					until ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or  not _G.FarmFruitMastery
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
						wait(0.1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2914, v2915 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2915:FindFirstChild("HumanoidRootPart") and v2915:FindFirstChild("Humanoid") and (v2915.Humanoid.Health > 0)) then
								if (v2915.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										HealthMs = (v2915.Humanoid.MaxHealth * Kill_At) / 100 ;
										repeat
											task.wait();
											if (v2915.Humanoid.Health <= HealthMs) then
												AutoHaki();
												EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
												TP1(v2915.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) );
												v2915.HumanoidRootPart.CanCollide = false;
												PosMonMasteryFruit = v2915.HumanoidRootPart.CFrame;
												v2915.Humanoid.WalkSpeed = 0;
												v2915.Head.CanCollide = false;
												UseSkill = true;
											else
												UseSkill = false;
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												TP1(v2915.HumanoidRootPart.CFrame * Pos );
												v2915.HumanoidRootPart.CanCollide = false;
												v2915.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonMasteryFruit = v2915.HumanoidRootPart.CFrame;
												v2915.Humanoid.WalkSpeed = 0;
												v2915.Head.CanCollide = false;
											end
											StartMasteryFruitMagnet = true;
										until  not _G.FarmFruitMastery or (v2915.Humanoid.Health <= 0) or  not v2915.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										UseSkill = false;
										StartMasteryFruitMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMasteryFruitMagnet = false;
						UseSkill = false;
						local v2882 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if v2882 then
							TP1(v2882.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10) );
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if UseSkill then
			pcall(function()
				CheckQuest();
				for v2200, v2201 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value;
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
						if _G.SkillZ then
							local v2714 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2714));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2715 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2715));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2716 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2716));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
						if _G.SkillZ then
							local v2916 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2916));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v2917 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2917));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v2918 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v2918));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							wait(2);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
						if (_G.SkillZ and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1))) then
							local v3026 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3026));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v3027 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3027));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v3028 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3028));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local v3029 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3029));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
						if _G.SkillZ then
							local v3149 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3149));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
						end
						if _G.SkillX then
							local v3150 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3150));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
						end
						if _G.SkillC then
							local v3151 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3151));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
						end
						if _G.SkillV then
							local v3152 = {
								[1] = PosMonMasteryFruit.Position
							};
							game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(v3152));
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
							game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if UseSkill then
				for v2202, v2203 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					if (v2203.Name == "NotificationTemplate") then
						if string.find(v2203.Text, "Skill locked!") then
							v2203:Destroy();
						end
					end
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if UseSkill then
				local v2139 = {
					[1] = PosMonMasteryFruit.Position
				};
				game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(v2139));
			end
		end);
	end);
end);
v64:Toggle("Cày Thông Thạo Súng ", _G.FarmGunMastery, function(v478)
	_G.FarmGunMastery = v478;
	StopTween(_G.FarmGunMastery);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmGunMastery then
				local v2140 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2140, NameMon) then
					Magnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMasteryGunMagnet = false;
					CheckQuest();
					TP1(CFrameQuest);
					if ((CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						pcall(function()
							for v2970, v2971 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2971.Name == Mon) then
									repeat
										task.wait();
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											HealthMin = (v2971.Humanoid.MaxHealth * Kill_At) / 100 ;
											if (v2971.Humanoid.Health <= HealthMin) then
												EquipWeapon(SelectWeaponGun);
												TP1(v2971.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) );
												v2971.Humanoid.WalkSpeed = 0;
												v2971.HumanoidRootPart.CanCollide = false;
												v2971.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
												v2971.Head.CanCollide = false;
												local v3239 = {
													[1] = v2971.HumanoidRootPart.Position,
													[2] = v2971.HumanoidRootPart
												};
												game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(v3239));
											else
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v2971.Humanoid.WalkSpeed = 0;
												v2971.HumanoidRootPart.CanCollide = false;
												v2971.Head.CanCollide = false;
												v2971.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												TP1(v2971.HumanoidRootPart.CFrame * Pos );
											end
											StartMasteryGunMagnet = true;
											PosMonMasteryGun = v2971.HumanoidRootPart.CFrame;
										else
											StartMasteryGunMagnet = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									until (v2971.Humanoid.Health <= 0) or (_G.FarmGunMastery == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									StartMasteryGunMagnet = false;
								end
							end
						end);
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						_G.FarmGunMastery = false;
						local v2883 = game:GetService("ReplicatedStorage"):FindFirstChild(Mon);
						if v2883 then
							TP1(v2883.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10) );
						elseif (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1) then
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true;
							task.wait();
							game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false;
						end
					end
				end
			end
		end
	end);
end);
v64:Seperator("Quan sát");
v64:Toggle("Cày Điểm Haki Quan Sát", _G.Observation, function(v479)
	_G.Observation = v479;
	StopTween(_G.Observation);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observation then
				repeat
					task.wait();
					if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):SetKeyDown("0x65");
						wait(2);
						game:GetService("VirtualUser"):SetKeyUp("0x65");
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
			end
		end);
	end
end);
v64:Toggle("Cày Điểm Haki Đổi Sever", _G.Observation_Hop, function(v480)
	_G.Observation_Hop = v480;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Observation then
				if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
					wait(2);
				elseif World2 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)) + wait(1) ;
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new( -5478.39209, 15.9775667, -5246.9126));
					end
				elseif World1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end
				elseif World3 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end
				end
			end
		end
	end);
end);
v64:Seperator("Trùm");
local v90 = v64:Label("Trạng thái : Chọn Trùm");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then
				v90:Set("Trạng thái : Có");
			else
				v90:Set("Trạng thái : Không");
			end
		end);
	end
end);
if World1 then
	v64:Dropdown("Chọn Trùm", {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	}, function(v1871)
		_G.SelectBoss = v1871;
	end);
end
if World2 then
	v64:Dropdown("Chọn Trùm", {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	}, function(v1872)
		_G.SelectBoss = v1872;
	end);
end
if World3 then
	v64:Dropdown("Chọn Trùm", {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}, function(v1873)
		_G.SelectBoss = v1873;
	end);
end
v64:Toggle("Đánh Trùm Đã Chọn", _G.FarmBoss, function(v481)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.FarmBoss = v481;
	StopTween(_G.FarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v2441, v2442 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2442.Name == _G.SelectBoss) then
							if (v2442:FindFirstChild("Humanoid") and v2442:FindFirstChild("HumanoidRootPart") and (v2442.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2442.HumanoidRootPart.CanCollide = false;
									v2442.Humanoid.WalkSpeed = 0;
									v2442.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2442.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2442.Parent or (v2442.Humanoid.Health <= 0)
							end
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
					if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500) then
						topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					else
						BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and  not BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v2443, v2444 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2444.Name == _G.SelectBoss) then
							if (v2444:FindFirstChild("Humanoid") and v2444:FindFirstChild("HumanoidRootPart") and (v2444.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2444.HumanoidRootPart.CanCollide = false;
									v2444.Humanoid.WalkSpeed = 0;
									v2444.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2444.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2444.Parent or (v2444.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
				end
			end);
		end
	end
end);
v64:Toggle("Đánh Tất Cả Trùm", _G.AllBoss, function(v482)
	_G.AllBoss = v482;
	StopTween(_G.AllBoss);
end);
v64:Toggle("Đánh Tất Cả Trùm Đổi sever", _G.AllBossHop, function(v483)
	_G.AllBossHop = v483;
end);
spawn(function()
	while wait() do
		if _G.AllBoss then
			pcall(function()
				for v2204, v2205 in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v2205.Name == "rip_indra") or (v2205.Name == "Ice Admiral") or (v2205.Name == "Saber Expert") or (v2205.Name == "The Saw") or (v2205.Name == "Greybeard") or (v2205.Name == "Mob Leader") or (v2205.Name == "The Gorilla King") or (v2205.Name == "Bobby") or (v2205.Name == "Yeti") or (v2205.Name == "Vice Admiral") or (v2205.Name == "Warden") or (v2205.Name == "Chief Warden") or (v2205.Name == "Swan") or (v2205.Name == "Magma Admiral") or (v2205.Name == "Fishman Lord") or (v2205.Name == "Wysper") or (v2205.Name == "Thunder God") or (v2205.Name == "Cyborg") or (v2205.Name == "Don Swan") or (v2205.Name == "Diamond") or (v2205.Name == "Jeremy") or (v2205.Name == "Fajita") or (v2205.Name == "Smoke Admiral") or (v2205.Name == "Awakened Ice Admiral") or (v2205.Name == "Tide Keeper") or (v2205.Name == "Order") or (v2205.Name == "Darkbeard") or (v2205.Name == "Stone") or (v2205.Name == "Island Empress") or (v2205.Name == "Kilo Admiral") or (v2205.Name == "Captain Elephant") or (v2205.Name == "Beautiful Pirate") or (v2205.Name == "Cake Queen") or (v2205.Name == "rip_indra True Form") or (v2205.Name == "Longma") or (v2205.Name == "Soul Reaper") or (v2205.Name == "Cake Prince") or (v2205.Name == "Dough King")) then
						if ((v2205.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v2205.Humanoid.WalkSpeed = 0;
								v2205.HumanoidRootPart.CanCollide = false;
								v2205.Head.CanCollide = false;
								v2205.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								topos(v2205.HumanoidRootPart.CFrame * Pos );
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v2205.Humanoid.Health <= 0) or (_G.AllBoss == false) or  not v2205.Parent
						end
					elseif _G.AllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v65:Seperator("Cày Đặt");
v65:Toggle("Duy Chuyển Dạng Reset", BypassTP, function(v484)
	BypassTP = v484;
end);
v65:Seperator("Bay");
local v91 = {
	"100",
	"150",
	"250",
	"300",
	"325",
	"350"
};
getgenv().TweenSpeed = "325";
v65:Dropdown("Tốc Độ Bay", v91, function(v485)
	getgenv().TweenSpeed = v485;
end);
v65:Button("Dừng Bay", function()
	topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	_G.Clip = false;
end);
v65:Toggle("Gôm Quái", true, function(v487)
	_G.BringMonster = v487;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v2206, v2207 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v2207.Name == Mon) and ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or (Mon == "Dragon Crew Warrior [Lv. 1575]") or (Mon == "Dragon Crew Archer [Lv. 1600]")) and v2207:FindFirstChild("Humanoid") and v2207:FindFirstChild("HumanoidRootPart") and (v2207.Humanoid.Health > 0) and ((v2207.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v2207.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2207.HumanoidRootPart.CFrame = PosMon;
						v2207.Humanoid:ChangeState(14);
						v2207.HumanoidRootPart.CanCollide = false;
						v2207.Head.CanCollide = false;
						if v2207.Humanoid:FindFirstChild("Animator") then
							v2207.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v2207.Name == Mon) and v2207:FindFirstChild("Humanoid") and v2207:FindFirstChild("HumanoidRootPart") and (v2207.Humanoid.Health > 0) and ((v2207.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v2207.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2207.HumanoidRootPart.CFrame = PosMon;
						v2207.Humanoid:ChangeState(14);
						v2207.HumanoidRootPart.CanCollide = false;
						v2207.Head.CanCollide = false;
						if v2207.Humanoid:FindFirstChild("Animator") then
							v2207.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
local v93 = {
	"Ít",
	"Vừa",
	"Nhiều"
};
_G.BringMode = "Ít";
v65:Dropdown("Chế Độ Gôm Quái", v93, function(v488)
	_G.BringMode = v488;
end);
spawn(function()
	while wait(0.1) do
		if _G.BringMode then
			pcall(function()
				if (_G.BringMode == "Ít") then
					_G.BringMode = 250;
				elseif (_G.BringMode == "Vừa") then
					_G.BringMode = 300;
				elseif (_G.BringMode == "Nhiều") then
					_G.BringMode = 350;
				end
			end);
		end
	end
end);
v65:Toggle("Tự Động Mở Haki", true, function(v489)
	_G.Haki = v489;
end);
spawn(function()
	while wait(0.1) do
		if _G.Haki then
			if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v2208 = {
					[1] = "Buso"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2208));
			end
		end
	end
end);
v65:Toggle("Tự Động Nhấp chuột", false, function(v490)
	_G.Click = v490;
end);
v65:Toggle("Tắt Thông Báo", false, function(v491)
	_G.Remove_trct = v491;
end);
spawn(function()
	while wait() do
		if _G.Remove_trct then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end
	end
end);
v65:Toggle("Tắt Dame", true, function(v492)
	_G.KobenHeegeen = v492;
end);
spawn(function()
	while wait() do
		if _G.KobenHeegeen then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false;
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;
		end
	end
end);
spawn(function()
	while wait() do
		if _G.WhiteScreen then
			for v2141, v2142 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v2142.Name == "CurvedRing") or (v2142.Name == "SlashHit") or (v2142.Name == "DamageCounter") or (v2142.Name == "SwordSlash") or (v2142.Name == "SlashTail") or (v2142.Name == "Sounds")) then
					v2142:Destroy();
				end
			end
		end
	end
end);
v65:Toggle("Màng Hình Trắng", _G.WhiteScreen, function(v493)
	_G.WhiteScreen = v493;
	if (_G.WhiteScreen == true) then
		game:GetService("RunService"):Set3dRenderingEnabled(false);
	elseif (_G.WhiteScreen == false) then
		game:GetService("RunService"):Set3dRenderingEnabled(true);
	end
end);
v65:Toggle("Ẩn Quái", _G.inv, function(v494)
	_G.inv = v494;
	while wait() do
		if _G.inv then
			pcall(function()
				for v2209, v2210 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2210.ClassName == "MeshPart") then
						v2210.Transparency = 1;
					end
				end
				for v2211, v2212 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2212.Name == "Head") then
						v2212.Transparency = 1;
					end
				end
				for v2213, v2214 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2214.ClassName == "Accessory") then
						v2214.Handle.Transparency = 1;
					end
				end
				for v2215, v2216 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2216.ClassName == "Decal") then
						v2216.Transparency = 1;
					end
				end
			end);
		end
	end
end);
v65:Seperator("Cày Đặt Cày Thông Thạo");
v65:Toggle("Kỹ năng Z", true, function(v495)
	_G.SkillZ = v495;
end);
v65:Toggle("Kỹ năng X", true, function(v496)
	_G.SkillX = v496;
end);
v65:Toggle("Kỹ năng C", true, function(v497)
	_G.SkillC = v497;
end);
v65:Toggle("Kỹ năng V", true, function(v498)
	_G.SkillV = v498;
end);
if (World1 or World2) then
	v66:Seperator("World");
end
if World1 then
	v66:Toggle("Tự Động Qua Biển 2", _G.SecondSea, function(v1874)
		_G.SecondSea = v1874;
		StopTween(_G.SecondSea);
	end);
	spawn(function()
		while wait() do
			if _G.SecondSea then
				pcall(function()
					local v2271 = game:GetService("Players").LocalPlayer.Data.Level.Value;
					if ((v2271 >= 700) and World1) then
						if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							local v2888 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(v2888);
								wait();
							until ((v2888.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(0.5);
						elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for v3155, v3156 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v3156.Name == "Ice Admiral") then
										if ( not v3156.Humanoid.Health <= 0) then
											if (v3156:FindFirstChild("Humanoid") and v3156:FindFirstChild("HumanoidRootPart") and (v3156.Humanoid.Health > 0)) then
												OldCFrameSecond = v3156.HumanoidRootPart.CFrame;
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v3156.HumanoidRootPart.CanCollide = false;
													v3156.Humanoid.WalkSpeed = 0;
													v3156.Head.CanCollide = false;
													v3156.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													v3156.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v3156.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until  not _G.SecondSea or  not v3156.Parent or (v3156.Humanoid.Health <= 0)
											end
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v66:Toggle("Tự Động Qua Biển 3", _G.ThirdSea, function(v1875)
		_G.ThirdSea = v1875;
		StopTween(_G.ThirdSea);
	end);
	spawn(function()
		while wait() do
			if _G.ThirdSea then
				pcall(function()
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
						_G.Level = false;
						if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
							topos(CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end
							wait(1.8);
							if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
								for v3032, v3033 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v3033.Name == "rip_indra") then
										OldCFrameThird = v3033.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											topos(v3033.HumanoidRootPart.CFrame * Pos );
											v3033.HumanoidRootPart.CFrame = OldCFrameThird;
											v3033.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											v3033.HumanoidRootPart.CanCollide = false;
											v3033.Humanoid.WalkSpeed = 0;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.ThirdSea == false) or (v3033.Humanoid.Health <= 0) or  not v3033.Parent
									end
								end
							elseif ( not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
								topos(CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016));
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v66:Toggle("Đánh Nhà Máy", _G.Factory, function(v1876)
		_G.Factory = v1876;
		StopTween(_G.Factory);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Factory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for v2721, v2722 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2722.Name == "Core") and (v2722.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
								until (v2722.Humanoid.Health <= 0) or (_G.Factory == false)
							end
						end
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end
				end
			end);
		end
	end);
end
v66:Seperator("Võ");
v66:Toggle("Tự Động Superhuman", _G.Superhuman, function(v499)
	_G.Superhuman = v499;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Superhuman then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 150000))) then
					UnEquipWeapon("Combat");
					wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then
					_G.SelectWeapon = "Superhuman";
				end
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299)) then
						_G.SelectWeapon = "Black Leg";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299)) then
						_G.SelectWeapon = "Electro";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299)) then
						_G.SelectWeapon = "Fishman Karate";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299)) then
						_G.SelectWeapon = "Dragon Claw";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
				end
			end
		end
	end);
end);
v66:Toggle("Tự Động Chân Đen", _G.DeathStep, function(v500)
	_G.DeathStep = v500;
end);
spawn(function()
	while wait() do
		wait();
		if _G.DeathStep then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449)) then
					_G.SelectWeapon = "Black Leg";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end
		end
	end
end);
v66:Toggle("Tự Động Võ Người Cá", _G.Sharkman, function(v501)
	_G.Sharkman = v501;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Sharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						topos(CFrame.new( -2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for v3034, v3035 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3035.Name == Ms) then
									OldCFrameShark = v3035.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v3035.Head.CanCollide = false;
										v3035.Humanoid.WalkSpeed = 0;
										v3035.HumanoidRootPart.CanCollide = false;
										v3035.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v3035.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v3035.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v3035.Parent or (v3035.Humanoid.Health <= 0) or (_G.Sharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
								end
							end
						else
							topos(CFrame.new( -3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
v66:Toggle("Tự Động Võ Điện", _G.ElectricClaw, function(v502)
	_G.ElectricClaw = v502;
	StopTween(_G.ElectricClaw);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399)) then
						_G.SelectWeapon = "Electro";
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
				end
			end
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						if (_G.Level == false) then
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif (_G.Level == true) then
							_G.Level = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.Level = true;
						end
					end
				end
			end
		end
	end);
end);
v66:Toggle("Tự Động Võ Rồng", _G.DragonTalon, function(v503)
	_G.DragonTalon = v503;
end);
spawn(function()
	while wait() do
		if _G.DragonTalon then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399)) then
					_G.SelectWeapon = "Dragon Claw";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end
		end
	end
end);
v66:Toggle("Tự Động GodHuman", _G.God_Human, function(v504)
	_G.God_Human = v504;
end);
spawn(function()
	while task.wait() do
		if _G.God_Human then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400))) then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
							end
						end
					else
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
				end
			end);
		end
	end
end);
v66:Seperator("Nguyên Liệu");
if World2 then
	v66:Toggle("Cày Vật Chất Phóng Xạ", false, function(v1877)
		Radioactive = v1877;
		StopTween(Radioactive);
	end);
	local v943 = CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if (Radioactive and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
						for v2723, v2724 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2724.Name == "Factory Staff") then
								if (v2724:FindFirstChild("Humanoid") and v2724:FindFirstChild("HumanoidRootPart") and (v2724.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2724.HumanoidRootPart.CanCollide = false;
										v2724.Humanoid.WalkSpeed = 0;
										v2724.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2724.HumanoidRootPart.CFrame;
										topos(v2724.HumanoidRootPart.CFrame * Pos );
									until  not Radioactive or  not v2724.Parent or (v2724.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v943.Position).Magnitude > 3500) then
								BTP(v943);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v943.Position).Magnitude < 3500) then
								topos(v943);
							end
						else
							topos(v943);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v66:Toggle("Cày Giọt Nước Huyền Bí", false, function(v1878)
		_G.Makori_gay = v1878;
		StopTween(_G.Makori_gay);
	end);
	local v944 = CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if (_G.Makori_gay and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
						for v2725, v2726 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2726.Name == "Water Fighter") then
								if (v2726:FindFirstChild("Humanoid") and v2726:FindFirstChild("HumanoidRootPart") and (v2726.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2726.HumanoidRootPart.CanCollide = false;
										v2726.Humanoid.WalkSpeed = 0;
										v2726.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2726.HumanoidRootPart.CFrame;
										topos(v2726.HumanoidRootPart.CFrame * Pos );
									until  not _G.Makori_gay or  not v2726.Parent or (v2726.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v944.Position).Magnitude > 3500) then
								BTP(v944);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v944.Position).Magnitude < 3500) then
								topos(v944);
							end
						else
							topos(v944);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2) then
	v66:Toggle("Cày Quặng Nham Thạch", _G.Makori_gay, function(v1879)
		_G.Umm = v1879;
		StopTween(_G.Umm);
	end);
	local v945 = CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if (_G.Umm and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
						for v2727, v2728 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2728.Name == "Military Spy") then
								if (v2728:FindFirstChild("Humanoid") and v2728:FindFirstChild("HumanoidRootPart") and (v2728.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2728.HumanoidRootPart.CanCollide = false;
										v2728.Humanoid.WalkSpeed = 0;
										v2728.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2728.HumanoidRootPart.CFrame;
										topos(v2728.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2728.Parent or (v2728.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v945.Position).Magnitude > 3500) then
								BTP(v945);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v945.Position).Magnitude < 3500) then
								topos(v945);
							end
						else
							topos(v945);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v946 = CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if (_G.Umm and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
						for v2729, v2730 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2730.Name == "Lava Pirate") then
								if (v2730:FindFirstChild("Humanoid") and v2730:FindFirstChild("HumanoidRootPart") and (v2730.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2730.HumanoidRootPart.CanCollide = false;
										v2730.Humanoid.WalkSpeed = 0;
										v2730.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2730.HumanoidRootPart.CFrame;
										topos(v2730.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2730.Parent or (v2730.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v946.Position).Magnitude > 3500) then
								BTP(v946);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v946.Position).Magnitude < 3500) then
								topos(v946);
							end
						else
							topos(v946);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World1 then
	v66:Toggle("Cày Đôi cánh thiên thần", _G.Makori_gay, function(v1880)
		_G.Wing = v1880;
		StopTween(_G.Wing);
	end);
	local v947 = CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if (_G.Wing and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
						for v2731, v2732 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2732.Name == "Royal Soldier") then
								if (v2732:FindFirstChild("Humanoid") and v2732:FindFirstChild("HumanoidRootPart") and (v2732.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2732.HumanoidRootPart.CanCollide = false;
										v2732.Humanoid.WalkSpeed = 0;
										v2732.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2732.HumanoidRootPart.CFrame;
										topos(v2732.HumanoidRootPart.CFrame * Pos );
									until  not _G.Wing or  not v2732.Parent or (v2732.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v947.Position).Magnitude > 3500) then
								BTP(v947);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v947.Position).Magnitude < 3500) then
								topos(v947);
							end
						else
							topos(v947);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2 or World3) then
	v66:Toggle("Cày Da", _G.Makori_gay, function(v1881)
		_G.Leather = v1881;
		StopTween(_G.Leather);
	end);
	local v948 = CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if (_G.Leather and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
						for v2733, v2734 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2734.Name == "Pirate") then
								if (v2734:FindFirstChild("Humanoid") and v2734:FindFirstChild("HumanoidRootPart") and (v2734.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2734.HumanoidRootPart.CanCollide = false;
										v2734.Humanoid.WalkSpeed = 0;
										v2734.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2734.HumanoidRootPart.CFrame;
										topos(v2734.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2734.Parent or (v2734.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v948.Position).Magnitude > 3500) then
								BTP(v948);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v948.Position).Magnitude < 3500) then
								topos(v948);
							end
						else
							topos(v948);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v949 = CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if (_G.Leather and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
						for v2735, v2736 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2736.Name == "Marine Captain") then
								if (v2736:FindFirstChild("Humanoid") and v2736:FindFirstChild("HumanoidRootPart") and (v2736.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2736.HumanoidRootPart.CanCollide = false;
										v2736.Humanoid.WalkSpeed = 0;
										v2736.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2736.HumanoidRootPart.CFrame;
										topos(v2736.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2736.Parent or (v2736.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v949.Position).Magnitude > 3500) then
								BTP(v949);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v949.Position).Magnitude < 3500) then
								topos(v949);
							end
						else
							topos(v949);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v950 = CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if (_G.Leather and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
						for v2737, v2738 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2738.Name == "Jungle Pirate") then
								if (v2738:FindFirstChild("Humanoid") and v2738:FindFirstChild("HumanoidRootPart") and (v2738.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2738.HumanoidRootPart.CanCollide = false;
										v2738.Humanoid.WalkSpeed = 0;
										v2738.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2738.HumanoidRootPart.CFrame;
										topos(v2738.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2738.Parent or (v2738.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v950.Position).Magnitude > 3500) then
								BTP(v950);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v950.Position).Magnitude < 3500) then
								topos(v950);
							end
						else
							topos(v950);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or world2 or World3) then
	v66:Toggle("Cày Kim loại phế liệu", false, function(v1882)
		Scrap = v1882;
		StopTween(Scrap);
	end);
	local v951 = CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if (Scrap and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
						for v2739, v2740 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2740.Name == "Brute") then
								if (v2740:FindFirstChild("Humanoid") and v2740:FindFirstChild("HumanoidRootPart") and (v2740.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2740.HumanoidRootPart.CanCollide = false;
										v2740.Humanoid.WalkSpeed = 0;
										v2740.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2740.HumanoidRootPart.CFrame;
										topos(v2740.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2740.Parent or (v2740.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v951.Position).Magnitude > 3500) then
								BTP(v951);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v951.Position).Magnitude < 3500) then
								topos(v951);
							end
						else
							topos(v951);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v952 = CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if (Scrap and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
						for v2741, v2742 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2742.Name == "Mercenary") then
								if (v2742:FindFirstChild("Humanoid") and v2742:FindFirstChild("HumanoidRootPart") and (v2742.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2742.HumanoidRootPart.CanCollide = false;
										v2742.Humanoid.WalkSpeed = 0;
										v2742.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2742.HumanoidRootPart.CFrame;
										topos(v2742.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2742.Parent or (v2742.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v952.Position).Magnitude > 3500) then
								BTP(v952);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v952.Position).Magnitude < 3500) then
								topos(v952);
							end
						else
							topos(v952);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v953 = CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if (Scrap and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
						for v2743, v2744 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2744.Name == "Pirate Millionaire") then
								if (v2744:FindFirstChild("Humanoid") and v2744:FindFirstChild("HumanoidRootPart") and (v2744.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2744.HumanoidRootPart.CanCollide = false;
										v2744.Humanoid.WalkSpeed = 0;
										v2744.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2744.HumanoidRootPart.CFrame;
										topos(v2744.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2744.Parent or (v2744.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v953.Position).Magnitude > 3500) then
								BTP(v953);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v953.Position).Magnitude < 3500) then
								topos(v953);
							end
						else
							topos(v953);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v66:Toggle("Cày Bột Ca cao", false, function(v1883)
		Cocoafarm = v1883;
		StopTween(Cocoafarm);
	end);
	local v954 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait() do
			if (Cocoafarm and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
						for v2745, v2746 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2746.Name == "Chocolate Bar Battler") then
								if (v2746:FindFirstChild("Humanoid") and v2746:FindFirstChild("HumanoidRootPart") and (v2746.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2746.HumanoidRootPart.CanCollide = false;
										v2746.Humanoid.WalkSpeed = 0;
										v2746.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2746.HumanoidRootPart.CFrame;
										topos(v2746.HumanoidRootPart.CFrame * Pos );
									until  not Cocoafarm or  not v2746.Parent or (v2746.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v954.Position).Magnitude > 3500) then
								BTP(v954);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v954.Position).Magnitude < 3500) then
								topos(v954);
							end
						else
							topos(v954);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v66:Toggle("Cày Vảy Rồng", false, function(v1884)
		Dragon_Scale = v1884;
		StopTween(Dragon_Scale);
	end);
	local v955 = CFrame.new(6752, 565, 315);
	spawn(function()
		while wait() do
			if (Dragon_Scale and World3) then
				pcall(function()
					if (game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior")) then
						for v2747, v2748 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2748.Name == "Dragon Crew Archer") or (v2748.Name == "Dragon Crew Warrior")) then
								if (v2748:FindFirstChild("Humanoid") and v2748:FindFirstChild("HumanoidRootPart") and (v2748.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2748.HumanoidRootPart.CanCollide = false;
										v2748.Humanoid.WalkSpeed = 0;
										v2748.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2748.HumanoidRootPart.CFrame;
										topos(v2748.HumanoidRootPart.CFrame * Pos );
									until  not Dragon_Scale or  not v2748.Parent or (v2748.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v955.Position).Magnitude > 3500) then
								BTP(v955);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v955.Position).Magnitude < 3500) then
								topos(v955);
							end
						else
							topos(v955);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(6752, 565, 315));
						if (game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") or game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior")) then
							if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							end
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v66:Toggle("Cày Thuốc Súng", false, function(v1885)
		Gunpowder = v1885;
		StopTween(Gunpowder);
	end);
	local v956 = CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait() do
			if (Gunpowder and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
						for v2749, v2750 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2750.Name == "Pistol Billionaire") then
								if (v2750:FindFirstChild("Humanoid") and v2750:FindFirstChild("HumanoidRootPart") and (v2750.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2750.HumanoidRootPart.CanCollide = false;
										v2750.Humanoid.WalkSpeed = 0;
										v2750.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2750.HumanoidRootPart.CFrame;
										topos(v2750.HumanoidRootPart.CFrame * Pos );
									until  not Gunpowder or  not v2750.Parent or (v2750.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v956.Position).Magnitude > 3500) then
								BTP(v956);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v956.Position).Magnitude < 3500) then
								topos(v956);
							end
						else
							topos(v956);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v66:Toggle("Cày Đuôi Cá", false, function(v1886)
		Fish = v1886;
		StopTween(Fish);
	end);
	local v957 = CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait() do
			if (Fish and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
						for v2751, v2752 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2752.Name == "Fishman Captain") then
								if (v2752:FindFirstChild("Humanoid") and v2752:FindFirstChild("HumanoidRootPart") and (v2752.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2752.HumanoidRootPart.CanCollide = false;
										v2752.Humanoid.WalkSpeed = 0;
										v2752.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2752.HumanoidRootPart.CFrame;
										topos(v2752.HumanoidRootPart.CFrame * Pos );
									until  not Fish or  not v2752.Parent or (v2752.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v957.Position).Magnitude > 3500) then
								BTP(v957);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v957.Position).Magnitude < 3500) then
								topos(v957);
							end
						else
							topos(v957);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v66:Toggle("Cày Sừng Tê Giác", false, function(v1887)
		MiniHee = v1887;
		StopTween(MiniHee);
	end);
	local v958 = CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait() do
			if (MiniHee and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v2753, v2754 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2754.Name == "Mythological Pirate") then
								if (v2754:FindFirstChild("Humanoid") and v2754:FindFirstChild("HumanoidRootPart") and (v2754.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2754.HumanoidRootPart.CanCollide = false;
										v2754.Humanoid.WalkSpeed = 0;
										v2754.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2754.HumanoidRootPart.CFrame;
										topos(v2754.HumanoidRootPart.CFrame * Pos );
									until  not MiniHee or  not v2754.Parent or (v2754.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v958.Position).Magnitude > 3500) then
								BTP(v958);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v958.Position).Magnitude < 3500) then
								topos(v958);
							end
						else
							topos(v958);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
v66:Seperator("nâng cao");
v66:Toggle("Tự động đột kích Phoenix", _G.AdvanceDungeon, function(v505)
	_G.AdvanceDungeon = v505;
	StopTween(_G.AdvanceDungeon);
end);
spawn(function()
	while wait() do
		if _G.AdvanceDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					end
				end
			end);
		end
	end
end);
v66:Label("Biển 1");
v66:Seperator("Saw");
v66:Toggle("Đánh Sharks saw", _G.doughking, function(v506)
	_G.saw = v506;
	StopTween(_G.saw);
end);
v66:Toggle("Đánh Shark Saw Đổi Sever", _G.doughkingHop, function(v507)
	_G.sawhop = v507;
end);
local v94 = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
	while wait() do
		if (_G.saw and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
					for v2453, v2454 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2454.Name == "The Saw") then
							if (v2454:FindFirstChild("Humanoid") and v2454:FindFirstChild("HumanoidRootPart") and (v2454.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2454.HumanoidRootPart.CanCollide = false;
									v2454.Humanoid.WalkSpeed = 0;
									v2454.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2454.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.saw or  not v2454.Parent or (v2454.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v94.Position).Magnitude > 3500) then
							BTP(v94);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v94.Position).Magnitude < 3500) then
							topos(v94);
						end
					else
						topos(v94);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094));
					if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2) );
					elseif _G.sawhop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then
				Hop();
			end
		end
	end);
end);
v66:Seperator("Thanh kiếm Waden");
v66:Toggle("Lấy kiếm Waden", _G.waden, function(v508)
	_G.waden = v508;
	StopTween(_G.waden);
end);
v66:Toggle("kiếm Waden Đổi Sever", _G.wadenhop, function(v509)
	_G.wadenhop = v509;
end);
local v95 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
	while wait() do
		if (_G.waden and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
					for v2455, v2456 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2456.Name == "Chief Warden") then
							if (v2456:FindFirstChild("Humanoid") and v2456:FindFirstChild("HumanoidRootPart") and (v2456.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2456.HumanoidRootPart.CanCollide = false;
									v2456.Humanoid.WalkSpeed = 0;
									v2456.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2456.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.waden or  not v2456.Parent or (v2456.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 3500) then
							BTP(TridentPos);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 3500) then
							topos(TridentPos);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.wadenhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Seperator("Râu Xám");
v66:Toggle("Đánh Râu Xám", _G.doughking, function(v510)
	_G.gay = v510;
	StopTween(_G.gay);
end);
v66:Toggle("Đánh Râu Xám Đổi Sever", _G.doughkingHop, function(v511)
	_G.gayhop = v511;
end);
local v96 = CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375);
spawn(function()
	while wait() do
		if (_G.gay and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
					for v2457, v2458 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2458.Name == "Greybeard") then
							if (v2458:FindFirstChild("Humanoid") and v2458:FindFirstChild("HumanoidRootPart") and (v2458.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2458.HumanoidRootPart.CanCollide = false;
									v2458.Humanoid.WalkSpeed = 0;
									v2458.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2458.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.gay or  not v2458.Parent or (v2458.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v96.Position).Magnitude > 3500) then
							BTP(v96);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v96.Position).Magnitude < 3500) then
							topos(v96);
						end
					else
						topos(v96);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.gayhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Seperator("Saber");
v66:Toggle("Tự Động Lấy Saber", _G.Saber, function(v512)
	_G.Saber = v512;
	StopTween(_G.Saber);
end);
v66:Toggle("Saber Đổi Sever", _G.SaberHop, function(v513)
	_G.SaberHop = v513;
end);
spawn(function()
	while task.wait() do
		if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
			pcall(function()
				if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
					if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
						if ((CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
							wait(1);
						else
							topos(CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279));
						end
					elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
						if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
							EquipWeapon("Torch");
							topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754488e-10, -0.648466587));
						else
							topos(CFrame.new( -1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408));
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
						wait(0.5);
						EquipWeapon("Cup");
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
						wait(0);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
							topos(CFrame.new( -2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
							for v3244, v3245 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3245.Name == "Mob Leader") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										if (v3245:FindFirstChild("Humanoid") and v3245:FindFirstChild("HumanoidRootPart") and (v3245.Humanoid.Health > 0)) then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v3245.HumanoidRootPart.CanCollide = false;
												v3245.Humanoid.WalkSpeed = 0;
												v3245.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
												topos(v3245.HumanoidRootPart.CFrame * Pos );
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until (v3245.Humanoid.Health <= 0) or  not _G.Saber
										end
									end
									if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode );
									end
								end
							end
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						wait(0.5);
						EquipWeapon("Relic");
						wait(0.5);
						topos(CFrame.new( -1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
					end
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
					for v2755, v2756 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2756:FindFirstChild("Humanoid") and v2756:FindFirstChild("HumanoidRootPart") and (v2756.Humanoid.Health > 0)) then
							if (v2756.Name == "Saber Expert") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2756.HumanoidRootPart.CFrame * Pos );
									v2756.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v2756.HumanoidRootPart.Transparency = 1;
									v2756.Humanoid.JumpPower = 0;
									v2756.Humanoid.WalkSpeed = 0;
									v2756.HumanoidRootPart.CanCollide = false;
									FarmPos = v2756.HumanoidRootPart.CFrame;
									MonFarm = v2756.Name;
								until (v2756.Humanoid.Health <= 0) or  not _G.Saber
								if (v2756.Humanoid.Health <= 0) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
								end
							end
						end
					end
				end
			end);
		end
	end
end);
v66:Seperator("Lôi Thể");
v66:Toggle("Lấy Gậy Lôi Thể v1", _G.doughking, function(v514)
	_G.pole = v514;
	StopTween(_G.pole);
end);
v66:Toggle("Gậy Lôi Thể Đổi Sever", _G.doughkingHop, function(v515)
	_G.polehop = v515;
end);
local v97 = CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625);
spawn(function()
	while wait() do
		if (_G.pole and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for v2459, v2460 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2460.Name == "Thunder God") then
							if (v2460:FindFirstChild("Humanoid") and v2460:FindFirstChild("HumanoidRootPart") and (v2460.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2460.HumanoidRootPart.CanCollide = false;
									v2460.Humanoid.WalkSpeed = 0;
									v2460.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2460.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.pole or  not v2460.Parent or (v2460.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v97.Position).Magnitude > 3500) then
							BTP(v97);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v97.Position).Magnitude < 3500) then
							topos(v97);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.polehop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Label("Biển 2");
v66:Seperator("Kiếm Huyền Thoại");
v66:Toggle("Mua Kiếm Huyền Thoại", _G.BuyLegendarySword, function(v516)
	_G.BuyLegendarySword = v516;
end);
spawn(function()
	while wait() do
		if _G.BuyLegendarySword then
			pcall(function()
				local v2143 = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2143));
				local v2143 = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2143));
				local v2143 = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2143));
				if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v66:Toggle("Kiếm Huyền Thoại Đổi Sever", _G.BuyLegendarySword_Hop, function(v517)
	_G.BuyLegendarySword_Hop = v517;
end);
v66:Seperator("Haki Màu");
local v98 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
v66:Toggle("Mua Haki Màu", _G.BuyEnchancementColour, function(v518)
	_G.BuyEnchancementColour = v518;
end);
v66:Toggle("Haki Màu Đổi Sever", _G.BuyEnchancementColour_Hop, function(v519)
	_G.BuyEnchancementColour_Hop = v519;
end);
spawn(function()
	while wait() do
		if _G.BuyEnchancementColour then
			local v2033 = {
				[1] = "ColorsDealer",
				[2] = "2"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2033));
			if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then
				wait(10);
				Hop();
			end
		end
	end
end);
v66:Seperator("Bartlio");
v66:Toggle("Làm Nhiệm Vụ Bartlio", _G.Bartilo, function(v520)
	_G.Bartilo = v520;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Bartilo then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							Ms = "Swan Pirate";
							for v2919, v2920 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2920.Name == Ms) then
									pcall(function()
										repeat
											task.wait();
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2920.HumanoidRootPart.Transparency = 1;
											v2920.HumanoidRootPart.CanCollide = false;
											v2920.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2920.HumanoidRootPart.CFrame * Pos );
											PosMonBarto = v2920.HumanoidRootPart.CFrame;
											AutoBartiloBring = true;
										until  not v2920.Parent or (v2920.Humanoid.Health <= 0) or (_G.Bartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
										AutoBartiloBring = false;
									end);
								end
							end
						else
							repeat
								topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582)).Magnitude <= 10)
						end
					else
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1)) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						Ms = "Jeremy";
						for v2921, v2922 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2922.Name == Ms) then
								OldCFrameBartlio = v2922.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2922.HumanoidRootPart.Transparency = 1;
									v2922.HumanoidRootPart.CanCollide = false;
									v2922.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2922.HumanoidRootPart.CFrame = OldCFrameBartlio;
									topos(v2922.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not v2922.Parent or (v2922.Humanoid.Health <= 0) or (_G.Bartilo == false)
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
						wait(1);
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
						wait(2);
					else
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2)) then
					repeat
						topos(CFrame.new( -1850.49329, 13.1789551, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.87305, 19.3777466, 1712.01807));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1803.94324, 16.5789185, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.55835, 16.8604317, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1869.54224, 15.987854, 1681.00659));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1869.54224, 15.987854, 1681.00659)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1800.0979, 16.4978027, 1684.52368));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1819.26343, 14.795166, 1717.90625));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1819.26343, 14.795166, 1717.90625)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1813.51843, 14.8604736, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10)
				end
			end
		end
	end);
end);
v66:Seperator("Kính Thiên Nga");
v66:Toggle("Lấy Kính Thiên Nga", _G.FarmSwanGlasses, function(v521)
	_G.FarmSwanGlasses = v521;
	StopTween(_G.FarmSwanGlasses);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for v2461, v2462 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2462.Name == "Don Swan") and (v2462.Humanoid.Health > 0) and v2462:IsA("Model") and v2462:FindFirstChild("Humanoid") and v2462:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2462.HumanoidRootPart.CanCollide = false;
									v2462.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2462.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								end);
							until (_G.FarmSwanGlasses == false) or (v2462.Humanoid.Health <= 0)
						end
					end
				else
					repeat
						task.wait();
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
					until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.FarmSwanGlasses == false)
				end
			end
		end
	end);
end);
v66:Toggle("Kính Thiên Nga Đổi Sever", _G.FarmSwanGlasses_Hop, function(v522)
	_G.FarmSwanGlasses_Hop = v522;
end);
v66:Toggle("Tự Động Nâng Tộc V2", _G.EvoRace, function(v523)
	_G.EvoRace = v523;
	StopTween(_G.EvoRace);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EvoRace then
				if  not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
						topos(CFrame.new( -2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, -0.730484903));
						if ((Vector3.new( -2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.3);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
						pcall(function()
							if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
								topos(game:GetService("Workspace").Flower1.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
								topos(game:GetService("Workspace").Flower2.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
								if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
									for v3260, v3261 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v3261.Name == "Zombie") then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												topos(v3261.HumanoidRootPart.CFrame * Pos );
												v3261.HumanoidRootPart.CanCollide = false;
												v3261.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonEvo = v3261.HumanoidRootPart.CFrame;
												StartEvoMagnet = true;
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v3261.Parent or (v3261.Humanoid.Health <= 0) or (_G.EvoRace == false)
											StartEvoMagnet = false;
										end
									end
								else
									StartEvoMagnet = false;
									topos(CFrame.new( -5685.9233398438, 48.480125427246, -853.23724365234));
								end
							end
						end);
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
					end
				end
			end
		end
	end);
end);
v66:Seperator("Vật Chất Kì Dị");
v66:Toggle("Cày Vật Chất Kì Dị", _G.Ectoplasm, function(v524)
	_G.Ectoplasm = v524;
	StopTween(_G.Ectoplasm);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Ectoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for v2463, v2464 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2464.Name == "Ship Deckhand") or (v2464.Name == "Ship Engineer") or (v2464.Name == "Ship Steward") or (v2464.Name == "Ship Officer")) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								if string.find(v2464.Name, "Ship") then
									v2464.HumanoidRootPart.CanCollide = false;
									v2464.Head.CanCollide = false;
									v2464.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2464.HumanoidRootPart.CFrame * Pos );
									EctoplasmMon = v2464.HumanoidRootPart.CFrame;
									StartEctoplasmMagnet = true;
								else
									StartEctoplasmMagnet = false;
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end
							until (_G.Ectoplasm == false) or  not v2464.Parent or (v2464.Humanoid.Health <= 0)
						end
					end
				else
					topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					StartEctoplasmMagnet = false;
					local v2272 = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (v2272 > 18000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end
			end
		end
	end);
end);
v66:Seperator("Rengoku");
v66:Toggle("Lấy Rengoku", _G.Rengoku, function(v525)
	_G.Rengoku = v525;
	StopTween(_G.Rengoku);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Rengoku then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
					EquipWeapon("Hidden Key");
					topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
					for v2757, v2758 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (((v2758.Name == "Snow Lurker") or (v2758.Name == "Arctic Warrior")) and (v2758.Humanoid.Health > 0)) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2758.HumanoidRootPart.CanCollide = false;
								v2758.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								RengokuMon = v2758.HumanoidRootPart.CFrame;
								topos(v2758.HumanoidRootPart.CFrame * Pos );
								StartRengokuMagnet = true;
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku == false) or  not v2758.Parent or (v2758.Humanoid.Health <= 0)
							StartRengokuMagnet = false;
						end
					end
				else
					StartRengokuMagnet = false;
					topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
				end
			end
		end
	end);
end);
v66:Seperator("Trident");
v66:Toggle("Lấy Dragon Trident", _G.Dragon_Trident, function(v526)
	_G.Dragon_Trident = v526;
	StopTween(_G.Dragon_Trident);
end);
v66:Toggle("Lấy Dragon Trident Đổi Sever", _G.Dragon_Trident_Hop, function(v527)
	_G.Dragon_Trident_Hop = v527;
end);
local v99 = CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125);
spawn(function()
	while wait() do
		if (_G.Dragon_Trident and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
					for v2465, v2466 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2466.Name == "Tide Keeper") then
							if (v2466:FindFirstChild("Humanoid") and v2466:FindFirstChild("HumanoidRootPart") and (v2466.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2466.HumanoidRootPart.CanCollide = false;
									v2466.Humanoid.WalkSpeed = 0;
									v2466.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Dragon_Trident or  not v2466.Parent or (v2466.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v99.Position).Magnitude > 3500) then
							BTP(v99);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v99.Position).Magnitude < 3500) then
							topos(v99);
						end
					else
						topos(v99);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Dragon_Trident_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Label("Biển 3");
v66:Seperator("Rip Indra");
v66:Toggle("Đánh Rip_Indra True", _G.DarkDagger, function(v528)
	_G.DarkDagger = v528;
	StopTween(_G.DarkDagger);
end);
local v100 = CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.DarkDagger then
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
					for v2467, v2468 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2468.Name == ("rip_indra True Form" or (v2468.Name == "rip_indra"))) and (v2468.Humanoid.Health > 0) and v2468:IsA("Model") and v2468:FindFirstChild("Humanoid") and v2468:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2468.HumanoidRootPart.CanCollide = false;
									v2468.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2468.HumanoidRootPart.CFrame * Pos );
								end);
							until (_G.DarkDagger == false) or (v2468.Humanoid.Health <= 0)
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v100.Position).Magnitude > 3500) then
							BTP(v100);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v100.Position).Magnitude < 3500) then
							topos(v100);
						end
					else
						topos(v100);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781));
				end
			end
		end
	end);
end);
v66:Toggle("Rip_Indra True Đổi Sever", _G.DarkDagger_Hop, function(v529)
	_G.DarkDagger_Hop = v529;
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.DarkDagger_Hop and _G.DarkDagger and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
				Hop();
			end
		end
	end);
end);
v66:Toggle("Tự động nhấn nút Haki", _G.Ob_Color, function(v530)
	Open_Color_Haki = v530;
	StopTween(Open_Color_Haki);
end);
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Open_Color_Haki then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				wait(0.5);
				repeat
					topos(CFrame.new( -5420.16602, 1084.9657, -2666.8208));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				wait(0.5);
				repeat
					topos(CFrame.new( -5414.41357, 309.865753, -2212.45776));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				wait(0.5);
				repeat
					topos(CFrame.new( -4971.47559, 331.565765, -3720.02954));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)
				wait(0.5);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
				wait(3);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
			end
		end);
	end
end);
function EquipAllWeapon()
	pcall(function()
		for v1888, v1889 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v1889:IsA("Tool") and  not ((v1889.Name == "Summon Sea Beast") or (v1889.Name == "Water Body") or (v1889.Name == "Awakening"))) then
				local v2144 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1889.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2144);
				wait(1);
			end
		end
	end);
end
v66:Seperator("Yama");
v66:Toggle("Lấy Yama", _G.Yama, function(v531)
	_G.Yama = v531;
	StopTween(_G.Yama);
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v66:Seperator("Musketeer");
v66:Toggle("Lấy Musketeer Hat", _G.MusketeerHat, function(v532)
	_G.MusketeerHat = v532;
	StopTween(_G.MusketeerHat);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.MusketeerHat then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for v2927, v2928 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2928.Name == "Forest Pirate") then
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2928.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2928.HumanoidRootPart.CFrame * Pos );
											v2928.HumanoidRootPart.CanCollide = false;
											MusketeerHatMon = v2928.HumanoidRootPart.CFrame;
											StartMagnetMusketeerhat = true;
										end);
									until (_G.MusketeerHat == false) or  not v2928.Parent or (v2928.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									StartMagnetMusketeerhat = false;
								end
							end
						else
							StartMagnetMusketeerhat = false;
							topos(CFrame.new( -13206.452148438, 425.89199829102, -7964.5537109375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((Vector3.new( -12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for v3037, v3038 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3038.Name == "Captain Elephant") then
									OldCFrameElephant = v3038.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v3038.HumanoidRootPart.CanCollide = false;
											v3038.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v3038.HumanoidRootPart.CFrame * Pos );
											v3038.HumanoidRootPart.CanCollide = false;
											v3038.HumanoidRootPart.CFrame = OldCFrameElephant;
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										end);
									until (_G.MusketeerHat == false) or (v3038.Humanoid.Health <= 0) or  not v3038.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new( -13374.889648438, 421.27752685547, -8225.208984375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
					topos(CFrame.new( -12512.138671875, 340.39279174805, -9872.8203125));
				end
			end
		end
	end);
end);
v66:Seperator("Twin Hook");
v66:Toggle("Lấy Twin Hook", _G.TwinHook, function(v533)
	_G.TwinHook = v533;
	StopTween(_G.TwinHook);
end);
v66:Toggle("Lấy Twin Hook Đổi Sever", _G.TwinHook_Hop, function(v534)
	_G.TwinHook_Hop = v534;
end);
local v101 = CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625);
spawn(function()
	while wait() do
		if (_G.TwinHook and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for v2469, v2470 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2470.Name == "Captain Elephant") then
							if (v2470:FindFirstChild("Humanoid") and v2470:FindFirstChild("HumanoidRootPart") and (v2470.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2470.HumanoidRootPart.CanCollide = false;
									v2470.Humanoid.WalkSpeed = 0;
									v2470.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2470.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.TwinHook or  not v2470.Parent or (v2470.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v101.Position).Magnitude > 3500) then
							BTP(v101);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v101.Position).Magnitude < 3500) then
							topos(v101);
						end
					else
						topos(v101);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.TwinHook_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Seperator("Haki");
v66:Toggle("Lấy Haki Màu", _G.Rainbow_Haki, function(v535)
	_G.Rainbow_Haki = v535;
	StopTween(_G.Rainbow_Haki);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Rainbow_Haki then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
						for v2929, v2930 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2930.Name == "Stone") then
								OldCFrameRainbow = v2930.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2930.HumanoidRootPart.CFrame * Pos );
									v2930.HumanoidRootPart.CanCollide = false;
									v2930.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2930.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2930.Humanoid.Health <= 0) or  not v2930.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for v3040, v3041 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3041.Name == "Island Empress") then
								OldCFrameRainbow = v3041.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3041.HumanoidRootPart.CFrame * Pos );
									v3041.HumanoidRootPart.CanCollide = false;
									v3041.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v3041.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3041.Humanoid.Health <= 0) or  not v3041.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for v3168, v3169 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3169.Name == "Kilo Admiral") then
								OldCFrameRainbow = v3169.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3169.HumanoidRootPart.CFrame * Pos );
									v3169.HumanoidRootPart.CanCollide = false;
									v3169.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3169.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3169.Humanoid.Health <= 0) or  not v3169.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v3208, v3209 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3209.Name == "Captain Elephant") then
								OldCFrameRainbow = v3209.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3209.HumanoidRootPart.CFrame * Pos );
									v3209.HumanoidRootPart.CanCollide = false;
									v3209.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3209.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3209.Humanoid.Health <= 0) or  not v3209.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v3247, v3248 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3248.Name == "Beautiful Pirate") then
								OldCFrameRainbow = v3248.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3248.HumanoidRootPart.CFrame * Pos );
									v3248.HumanoidRootPart.CanCollide = false;
									v3248.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3248.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3248.Humanoid.Health <= 0) or  not v3248.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
					end
				else
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				end
			end
		end
	end);
end);
v66:Toggle("Lấy Haki Quan Sát V2", _G.Observationv2, function(v536)
	_G.Observationv2 = v536;
	StopTween(_G.Observationv2);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observationv2 then
				if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
					_G.MusketeerHat = false;
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
						repeat
							topos(CFrame.new( -12444.78515625, 332.40396118164, -7673.1806640625));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
						repeat
							topos(CFrame.new( -10920.125, 624.20275878906, -10266.995117188));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
						wait(1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
					else
						for v2931, v2932 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if ((v2932.Name == "Apple") or (v2932.Name == "Banana") or (v2932.Name == "Pineapple")) then
								v2932.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
								wait();
								firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v2932.Handle, 0);
								wait();
							end
						end
					end
				else
					_G.MusketeerHat = true;
				end
			end
		end);
	end
end);
v66:Seperator("Carvander");
v66:Toggle("Lấy Cavander", _G.Carvender, function(v537)
	_G.Carvender = v537;
	StopTween(_G.Carvender);
end);
v66:Toggle("Lấy Carvander Đổi Sever", _G.Carvenderhop, function(v538)
	_G.Carvenderhop = v538;
end);
local v102 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
	while wait() do
		if (_G.Carvender and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
					for v2471, v2472 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2472.Name == "Beautiful Pirate") then
							if (v2472:FindFirstChild("Humanoid") and v2472:FindFirstChild("HumanoidRootPart") and (v2472.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2472.HumanoidRootPart.CanCollide = false;
									v2472.Humanoid.WalkSpeed = 0;
									v2472.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2472.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Carvender or  not v2472.Parent or (v2472.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v102.Position).Magnitude > 3500) then
							BTP(v102);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v102.Position).Magnitude < 3500) then
							topos(v102);
						end
					else
						topos(v102);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Cavanderhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Seperator("Tushita");
v66:Toggle("Lấy Tushita", _G.tushita, function(v539)
	_G.tushita = v539;
	StopTween(_G.tushita);
end);
v66:Toggle("Lấy Tushita Đổi Sever", _G.tushitahop, function(v540)
	_G.tushitahop = v540;
end);
local v103 = CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125);
spawn(function()
	while wait() do
		if (_G.tushita and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for v2473, v2474 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2474.Name == "Longma") then
							if (v2474:FindFirstChild("Humanoid") and v2474:FindFirstChild("HumanoidRootPart") and (v2474.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2474.HumanoidRootPart.CanCollide = false;
									v2474.Humanoid.WalkSpeed = 0;
									v2474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2474.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.tushita or  not v2474.Parent or (v2474.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v103.Position).Magnitude > 3500) then
							BTP(v103);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v103.Position).Magnitude < 3500) then
							topos(v103);
						end
					else
						topos(v103);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.tushitahop then
						Hop();
					end
				end
			end);
		end
	end
end);
v66:Seperator("Hallow Scythe");
v66:Toggle("Lấy Lưỡi Hái", _G.FarmBossHallow, function(v541)
	_G.FarmBossHallow = v541;
	StopTween(_G.FarmBossHallow);
end);
v66:Toggle("Lưỡi Hái Đổi Sever", _G.FarmBossHallowHop, function(v542)
	_G.FarmBossHallowHop = v542;
end);
spawn(function()
	while wait() do
		if _G.FarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for v2475, v2476 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v2476.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2476.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								topos(v2476.HumanoidRootPart.CFrame * Pos );
								v2476.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v2476.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
					repeat
						topos(CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125));
						wait();
					until (CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					EquipWeapon("Hallow Essence");
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.FarmBossHallowHop then
					Hop();
				end
			end);
		end
	end
end);
v66:Seperator("Buddy Sword");
v66:Toggle("Lấy Kiếm Buddy", _G.BudySword, function(v543)
	_G.BudySword = v543;
	StopTween(_G.BudySword);
end);
v66:Toggle("Kiếm Buddy Đổi Sever", _G.BudySwordHop, function(v544)
	_G.BudySwordHop = v544;
end);
local v104 = CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875);
spawn(function()
	while wait() do
		if (_G.BudySword and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
					for v2477, v2478 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2478.Name == "Cake Queen") then
							if (v2478:FindFirstChild("Humanoid") and v2478:FindFirstChild("HumanoidRootPart") and (v2478.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2478.HumanoidRootPart.CanCollide = false;
									v2478.Humanoid.WalkSpeed = 0;
									v2478.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2478.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.BudySword or  not v2478.Parent or (v2478.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v104.Position).Magnitude > 3500) then
							BTP(v104);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v104.Position).Magnitude < 3500) then
							topos(v104);
						end
					else
						topos(v104);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.BudySwordHop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v2217, v2218 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v2218.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0) and ((v2218.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2218.HumanoidRootPart.CFrame = PosMon;
						v2218.Humanoid:ChangeState(14);
						v2218.HumanoidRootPart.CanCollide = false;
						v2218.Head.CanCollide = false;
						if v2218.Humanoid:FindFirstChild("Animator") then
							v2218.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v2218.Name == Mon) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0) and ((v2218.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2218.HumanoidRootPart.CFrame = PosMon;
						v2218.Humanoid:ChangeState(14);
						v2218.HumanoidRootPart.CanCollide = false;
						v2218.Head.CanCollide = false;
						if v2218.Humanoid:FindFirstChild("Animator") then
							v2218.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.Ectoplasm and StartEctoplasmMagnet) then
						if (string.find(v2218.Name, "Ship") and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0) and ((v2218.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.HumanoidRootPart.CFrame = EctoplasmMon;
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Rengoku and StartRengokuMagnet) then
						if (((v2218.Name == "Snow Lurker") or (v2218.Name == "Arctic Warrior")) and ((v2218.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = RengokuMon;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.MusketeerHat and StartMagnetMusketeerhat) then
						if ((v2218.Name == "Forest Pirate") and ((v2218.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
						if ((v2218.Name == "Forest Pirate") and ((v2218.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosHee;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.EvoRace and StartEvoMagnet) then
						if ((v2218.Name == "Zombie") and ((v2218.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosMonEvo;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Bartilo and AutoBartiloBring) then
						if ((v2218.Name == "Swan Pirate") and ((v2218.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosMonBarto;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
						if (v2218.Name == "Monkey") then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2218.Name == "Factory Staff") then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2218.Name == Mon) then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmGunMastery and StartMasteryGunMagnet) then
						if (v2218.Name == "Monkey") then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2218.Name == "Factory Staff") then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2218.Name == Mon) then
							if (((v2218.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
								v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2218.Humanoid:ChangeState(14);
								v2218.HumanoidRootPart.CanCollide = false;
								v2218.Head.CanCollide = false;
								v2218.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2218.Humanoid:FindFirstChild("Animator") then
									v2218.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.Bone and StartMagnetBoneMon) then
						if (((v2218.Name == "Reborn Skeleton") or (v2218.Name == "Living Zombie") or (v2218.Name == "Demonic Soul") or (v2218.Name == "Posessed Mummy")) and ((v2218.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosMonBone;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmCandy and StartCandyMagnet) then
						if (((v2218.Name == "Ice Cream Chef") or (v2218.Name == "Ice Cream Commander")) and ((v2218.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = CandyMon;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v2218.Name == "Cocoa Warrior") or (v2218.Name == "Chocolate Bar Battler") or (v2218.Name == "Sweet Thief") or (v2218.Name == "Candy Rebel")) and ((v2218.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosGG;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v2218.Name == "Shanda") or (v2218.Name == "Shanda")) and ((v2218.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = FastMon;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.DoughtBoss and MagnetDought) then
						if (((v2218.Name == "Cookie Crafter") or (v2218.Name == "Cake Guard") or (v2218.Name == "Baking Staff") or (v2218.Name == "Head Baker")) and ((v2218.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode) and v2218:FindFirstChild("Humanoid") and v2218:FindFirstChild("HumanoidRootPart") and (v2218.Humanoid.Health > 0)) then
							v2218.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2218.Humanoid:ChangeState(14);
							v2218.HumanoidRootPart.CanCollide = false;
							v2218.Head.CanCollide = false;
							v2218.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor;
							if v2218.Humanoid:FindFirstChild("Animator") then
								v2218.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while true do
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
function InMyNetWork(v545)
	if isnetworkowner then
		return isnetworkowner(v545);
	else
		if ((v545.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for v2219, v2220 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2220.Name, "Boss") and ((v2220.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2220.HumanoidRootPart) then
							v2220.HumanoidRootPart.CFrame = PosGay;
							v2220.Humanoid.JumpPower = 0;
							v2220.Humanoid.WalkSpeed = 0;
							v2220.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2220.HumanoidRootPart.Transparency = 1;
							v2220.HumanoidRootPart.CanCollide = false;
							v2220.Head.CanCollide = false;
							if v2220.Humanoid:FindFirstChild("Animator") then
								v2220.Humanoid.Animator:Destroy();
							end
							v2220.Humanoid:ChangeState(11);
							v2220.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (Anchor and _G.BringMonster) then
				for v2221, v2222 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2222.Name, "Boss") and ((v2222.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2222.HumanoidRootPart) then
							v2222.HumanoidRootPart.CFrame = PosNarathiwat;
							v2222.Humanoid.JumpPower = 0;
							v2222.Humanoid.WalkSpeed = 0;
							v2222.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2222.HumanoidRootPart.Transparency = 1;
							v2222.HumanoidRootPart.CanCollide = false;
							v2222.Head.CanCollide = false;
							if v2222.Humanoid:FindFirstChild("Animator") then
								v2222.Humanoid.Animator:Destroy();
							end
							v2222.Humanoid:ChangeState(11);
							v2222.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
				for v2223, v2224 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2224.Name, "Boss") and ((v2224.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2224.HumanoidRootPart) then
							v2224.HumanoidRootPart.CFrame = PosMon;
							v2224.Humanoid.JumpPower = 0;
							v2224.Humanoid.WalkSpeed = 0;
							v2224.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2224.HumanoidRootPart.Transparency = 1;
							v2224.HumanoidRootPart.CanCollide = false;
							v2224.Head.CanCollide = false;
							if v2224.Humanoid:FindFirstChild("Animator") then
								v2224.Humanoid.Animator:Destroy();
							end
							v2224.Humanoid:ChangeState(11);
							v2224.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
if (World1 or World2) then
	v67:Label("Hãy Qua Sea 3");
end
if World3 then
	v67:Seperator("Đảo Bí Ẩn");
	v67:Toggle("Bay Lại Đảo Bí Ẩn", _G.MysticIsland, function(v1890)
		_G.MysticIsland = v1890;
		StopTween(_G.MysticIsland);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.MysticIsland then
					local v2273 = game:GetService("Workspace").Map:FindFirstChild("MysticIsland");
					if v2273 then
						local v2673 = v2273.WorldPivot.Position;
						topos(CFrame.new(v2673.X, 500, v2673.Z));
					end
				end
			end
		end);
	end);
	v67:Toggle("Bay Đến Chổ Bán Trái", _G.TPNPC, function(v1891)
		_G.Miragenpc = v1891;
		StopTween(_G.Miragenpc);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Miragenpc then
					if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
						topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
					end
				end
			end
		end);
	end);
	v67:Button("Đến Chổ Bán Trái", function()
		TweenNpc();
	end);
	function TweenNpc()
		repeat
			wait();
		until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			AllNPCS = getnilinstances();
			for v2225, v2226 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				table.insert(AllNPCS, v2226);
			end
			for v2227, v2228 in pairs(AllNPCS) do
				if (v2228.Name == "Advanced Fruit Dealer") then
					topos(v2228.HumanoidRootPart.CFrame);
				end
			end
		end
	end
	v67:Toggle("Bay Đến Bánh Răng", _G.TweenMGear, function(v1892)
		_G.TweenMGear = v1892;
		StopTween(_G.TweenMGear);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.TweenMGear then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						for v2828, v2829 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
							if v2829:IsA("MeshPart") then
								if (v2829.Material == Enum.Material.Neon) then
									topos(v2829.CFrame);
								end
							end
						end
					end
				end
			end
		end);
	end);
end
if World3 then
	v67:Seperator("Tộc V4");
	v67:Button("Bay Đến Đỉnh Cay Đại Thụ", function()
		topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
	end);
	v67:Button("Dịch chuyển đến đền Thờ thời gian", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
	end);
	v67:Button("Bay Đến Cần Gạt", function()
		topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	end);
	v67:Button("Bay Đến Chỗ Bán Bánh Răng", function()
		topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end);
	v67:Button("Truy cập đồng hồ", function()
		game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
		game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
	end);
	v67:Toggle("Mua Bánh Răng", _G.Bone4, function(v1894)
		_G.Bone4 = v1894;
		StopTween(_G.Bone4);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bone4 then
					local v2274 = {
						[1] = true
					};
					local v2274 = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v2274));
				end
			end
		end);
	end);
	v67:Button("Bay Đến Tộc Của Bạn", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969));
		end
	end);
	v67:Button("Bay Đến Đồng Hồ", function()
		topos(CFrame.new(29551.9941, 15069.002, -85.5179291));
	end);
	v67:Toggle("Tự Động Hoàng Thành Ải", false, function(v1896)
		_G.QuestRace = v1896;
		StopTween(_G.QuestRace);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.QuestRace then
					if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
						for v2830, v2831 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2831:FindFirstChild("Humanoid") and v2831:FindFirstChild("HumanoidRootPart") and (v2831.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2831.Humanoid.Health = 0;
										v2831.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2831.Parent or (v2831.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
						for v2941, v2942 in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
							if (v2942.Name == "snowisland_Cylinder.081") then
								topos(v2942.CFrame * CFrame.new(0, 0, 0) );
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
						for v3053, v3054 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
							if (v3054.Name == "HumanoidRootPart") then
								topos(v3054.CFrame * CFrame.new(PosX, PosY, PosZ) );
								for v3193, v3194 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3194:IsA("Tool") then
										if (v3194.ToolTip == "Melee") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3194);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								for v3195, v3196 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3196:IsA("Tool") then
										if (v3196.ToolTip == "Blox Fruit") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3196);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v3197, v3198 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3198:IsA("Tool") then
										if (v3198.ToolTip == "Sword") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3198);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v3199, v3200 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3200:IsA("Tool") then
										if (v3200.ToolTip == "Gun") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3200);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
						for v3210, v3211 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v3211:FindFirstChild("Humanoid") and v3211:FindFirstChild("HumanoidRootPart") and (v3211.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v3211.Humanoid.Health = 0;
										v3211.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v3211.Parent or (v3211.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
						for v3249, v3250 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if (v3250.Name == "StartPoint") then
								topos(v3250.CFrame * CFrame.new(0, 10, 0) );
							end
						end
					end
				end
			end
		end);
	end);
	v67:Toggle("Tự Động Cày Và Bậc V4", false, function(v1897)
		_G.Bone = v1897;
		_G.Bone4 = v1897;
		_G.ActiveV4 = v1897;
		StopTween(_G.Bone);
	end);
	v67:Toggle("Giết Người Chơi Trial", false, function(v1898)
		_G.KillAfterTrials = v1898;
		_G.Click = v1898;
		_G.TurnKen = v1898;
		_G.AimNearest = v1898;
		_G.Aimbot_Skill = v1898;
		StopTween(_G.KillAfterTrials);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.KillAfterTrials then
					for v2483, v2484 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if ((v2484.Name ~= game.Players.LocalPlayer.Name) and ((v2484.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
							if (v2484.Humanoid.Health > 0) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									NameTarget = v2484.Name;
									TP1(v2484.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5) );
									v2484.HumanoidRootPart.CanCollide = false;
									v2484.Head.CanCollide = false;
									v2484.HumanoidRootPart.Size = Vector3.new(100, 100, 100);
									Click();
								until  not _G.KillAfterTrials or  not v2484.Parent or (v2484.Humanoid.Health <= 0)
							end
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.TurnKen then
					repeat
						task.wait();
						if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):SetKeyDown("0x65");
							wait(2);
							game:GetService("VirtualUser"):SetKeyUp("0x65");
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
				end
			end);
		end
	end);
	v67:Toggle("Tự động khóa mặt trăng", _G.LockCamToMoon, function(v1899)
		_G.LockCamToMoon = v1899;
	end);
	function CamToMoon()
		workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position );
	end
	spawn(function()
		pcall(function()
			while wait() do
				if _G.LockCamToMoon then
					CamToMoon();
				end
			end
		end);
	end);
	v67:Button("Mua nhiệm vụ cổ đại", function(v1901)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
end
local v105 = v68:Label("Kiểm Tra Đảo: ");
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
				v105:Set("Đảo Núi Lửa : Có!");
			else
				v105:Set("Đảo Núi Lửa : Không");
			end
		end);
	end
end);
v68:Button("Xoá Dung Nham Ở Đảo Núi Lửa", function()
	for v959, v960 in pairs(game.Workspace:GetDescendants()) do
		if (v960.Name == "Lava") then
			v960:Destroy();
		end
	end
	for v961, v962 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v962.Name == "Lava") then
			v962:Destroy();
		end
	end
end);
v68:Button("Lấp Năm Châm", function()
	local v546 = {
		"CraftItem",
		"Craft",
		"Volcanic Magnet"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v546));
end);
v68:Toggle("Bay Đến Đảo Tiki", false, function(v547)
	_G.TpSpy = v547;
	StopTween(_G.TpSpy);
	task.spawn(function()
		while _G.TpSpy do
			task.wait();
			topos(CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781));
		end
	end);
end);
v68:Toggle("Tìm Đảo Núi Lửa", false, function(v548)
	_G.AutoFindPrehistoric = v548;
end);
local v106 = {};
local v107 = game:GetService("Players");
local v108 = game:GetService("RunService");
local v109 = game:GetService("VirtualInputManager");
local v110 = game:GetService("Workspace");
local v111 = 350;
game:GetService("RunService").RenderStepped:Connect(function()
	for v963, v964 in pairs(v106) do
		if (v964 and v964.Parent and (v964.Name == "VehicleSeat") and  not v964.Occupant) then
			v106[v963] = v964;
		end
	end
end);
local function v112()
	for v965, v966 in pairs(v106) do
		if (v966 and v966.Parent and (v966.Name == "VehicleSeat") and  not v966.Occupant) then
			topos(v966.CFrame);
		end
	end
end
local v58 = false;
local v113 = false;
v108.RenderStepped:Connect(function()
	if  not _G.AutoFindPrehistoric then
		v113 = false;
		return;
	end
	local v549 = v107.LocalPlayer;
	local v550 = v549.Character;
	if ( not v550 or  not v550:FindFirstChild("Humanoid")) then
		return;
	end
	local function v551()
		if v58 then
			return;
		end
		v58 = true;
		for v1902, v1903 in pairs(v106) do
			if (v1903 and v1903.Parent and (v1903.Name == "VehicleSeat") and  not v1903.Occupant) then
				topos(v1903.CFrame);
				break;
			end
		end
		v58 = false;
	end
	local v552 = v550.Humanoid;
	local v553 = false;
	local v554 = nil;
	for v967, v968 in pairs(v110.Boats:GetChildren()) do
		local v969 = v968:FindFirstChild("VehicleSeat");
		if (v969 and (v969.Occupant == v552)) then
			v553 = true;
			v554 = v969;
			v106[v968.Name] = v969;
		elseif (v969 and (v969.Occupant == nil)) then
			v551();
		end
	end
	if  not v553 then
		return;
	end
	v554.MaxSpeed = v111;
	v554.CFrame = CFrame.new(Vector3.new(v554.Position.X, v554.Position.Y, v554.Position.Z)) * v554.CFrame.Rotation ;
	v109:SendKeyEvent(true, "W", false, game);
	for v970, v971 in pairs(v110.Boats:GetDescendants()) do
		if v971:IsA("BasePart") then
			v971.CanCollide = false;
		end
	end
	for v972, v973 in pairs(v550:GetDescendants()) do
		if v973:IsA("BasePart") then
			v973.CanCollide = false;
		end
	end
	local v557 = {
		"ShipwreckIsland",
		"SandIsland",
		"TreeIsland",
		"TinyIsland",
		"MysticIsland",
		"KitsuneIsland",
		"FrozenDimension"
	};
	for v974, v975 in ipairs(v557) do
		local v976 = v110.Map:FindFirstChild(v975);
		if (v976 and v976:IsA("Model")) then
			v976:Destroy();
		end
	end
	local v558 = v110.Map:FindFirstChild("PrehistoricIsland");
	if v558 then
		v109:SendKeyEvent(false, "W", false, game);
		_G.AutoFindPrehistoric = false;
		if  not v113 then
			v113 = true;
		end
		return;
	end
end);
v68:Toggle("Bay Lại Đầu Lâu Đảo Núi Lửa", false, function(v559)
	_G.TpPrehistoric = v559;
	StopTween(_G.TpPrehistoric);
end);
spawn(function()
	local v560;
	while  not v560 do
		v560 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
		wait();
	end
	while wait() do
		if _G.TpPrehistoric then
			local v2038 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
			if v2038 then
				local v2229 = v2038:FindFirstChild("Core") and v2038.Core:FindFirstChild("PrehistoricRelic") ;
				local v2230 = v2229 and v2229:FindFirstChild("Skull") ;
				if v2230 then
					topos(CFrame.new(v2230.Position));
					_G.TpPrehistoric = false;
				end
			end
		end
	end
end);
v68:Toggle("Đánh Golem", false, function(v561)
	_G.Kill_Aura = v561;
	_G.KillGolem = v561;
	StopTween(_G.KillGolem);
end);
spawn(function()
	while wait() do
		if (_G.KillGolem and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
					for v2485, v2486 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2486.Name == "Lava Golem") then
							if (v2486:FindFirstChild("Humanoid") and v2486:FindFirstChild("HumanoidRootPart") and (v2486.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									v2486.HumanoidRootPart.CanCollide = false;
									v2486.Humanoid.WalkSpeed = 0;
									v2486.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2486.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.KillGolem or  not v2486.Parent or (v2486.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v2146 = game:GetService("Players").LocalPlayer;
				local v2147 = game:GetService("Workspace").Enemies:GetChildren();
				local v2148 = v2146.Character and v2146.Character:FindFirstChild("HumanoidRootPart") and v2146.Character.HumanoidRootPart.Position ;
				if v2148 then
					for v2487, v2488 in pairs(v2147) do
						if (v2488:FindFirstChild("Humanoid") and v2488:FindFirstChild("HumanoidRootPart") and (v2488.Humanoid.Health > 0)) then
							local v2832 = (v2488.HumanoidRootPart.Position - v2148).Magnitude;
							if (v2832 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v2146, "SimulationRadius", math.huge);
										v2488.Humanoid.Health = 0;
										v2488.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v2488.Parent or (v2488.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v68:Toggle("Tự Động Lấp Núi Lửa", false, function(v562)
	_G.DefendVolcano = v562;
	StopTween(_G.DefendVolcano);
end);
local function v114(v563)
	game:GetService("VirtualInputManager"):SendKeyEvent(true, v563, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, v563, false, game);
end
local function v115()
	local v564 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
	if (v564 and v564:IsA("Model")) then
		v564:Destroy();
	end
	local v565 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v565 then
		for v2039, v2040 in pairs(v565:GetDescendants()) do
			if (v2040:IsA("Part") and v2040.Name:lower():find("lava")) then
				v2040:Destroy();
			end
		end
	end
	local v566 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v566 then
		for v2041, v2042 in pairs(v566:GetDescendants()) do
			if v2042:IsA("Model") then
				for v2276, v2277 in pairs(v2042:GetDescendants()) do
					if (v2277:IsA("MeshPart") and v2277.Name:lower():find("lava")) then
						v2277:Destroy();
					end
				end
			end
		end
	end
end
local function v116()
	local v567 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
	for v977, v978 in pairs(v567:GetChildren()) do
		if v978:IsA("Model") then
			local v2043 = v978:FindFirstChild("volcanorock");
			if (v2043 and v2043:IsA("MeshPart")) then
				local v2231 = v2043.Color;
				if ((v2231 == Color3.fromRGB(185, 53, 56)) or (v2231 == Color3.fromRGB(185, 53, 57))) then
					return v2043;
				end
			end
		end
	end
	return nil;
end
local function v117(v568)
	local v569 = game.Players.LocalPlayer;
	local v570 = v569.Backpack;
	for v979, v980 in pairs(v570:GetChildren()) do
		if (v980:IsA("Tool") and (v980.ToolTip == v568)) then
			v980.Parent = v569.Character;
			for v2149, v2150 in ipairs({
				"Z",
				"X",
				"C",
				"V",
				"F"
			}) do
				wait();
				pcall(function()
					v114(v2150);
				end);
			end
			v980.Parent = v570;
			break;
		end
	end
end
spawn(function()
	while wait() do
		if _G.DefendVolcano then
			AutoHaki();
			pcall(v115);
			local v2046 = v116();
			if v2046 then
				local v2232 = CFrame.new(v2046.Position);
				topos(v2232);
				local v2233 = v2046.Color;
				if ((v2233 ~= Color3.fromRGB(185, 53, 56)) and (v2233 ~= Color3.fromRGB(185, 53, 57))) then
					v2046 = v116();
				else
					local v2489 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v2490 = (v2489 - v2046.Position).Magnitude;
					if (v2490 <= 1) then
						if _G.UseMelee then
							v117("Melee");
						end
						if _G.UseSword then
							v117("Sword");
						end
						if _G.UseGun then
							v117("Gun");
						end
					end
					_G.TpPrehistoric = false;
				end
			else
				_G.TpPrehistoric = true;
			end
		end
	end
end);
v68:Toggle("Lụm Xương", false, function(v571)
	_G.CollectBone = v571;
end);
spawn(function()
	while wait() do
		if _G.CollectBone then
			for v2151, v2152 in pairs(workspace:GetDescendants()) do
				if (v2152:IsA("BasePart") and (v2152.Name == "DinoBone")) then
					topos(CFrame.new(v2152.Position));
				end
			end
		end
	end
end);
v68:Toggle("Lụm Trứng", false, function(v572)
	_G.CollectEgg = v572;
end);
spawn(function()
	while wait() do
		if _G.CollectEgg then
			local v2047 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren();
			if ( #v2047 > 0) then
				local v2234 = v2047[math.random(1, #v2047)];
				if (v2234:IsA("Model") and v2234.PrimaryPart) then
					topos(v2234.PrimaryPart.CFrame);
					local v2491 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v2492 = v2234.PrimaryPart.Position;
					local v2493 = (v2491 - v2492).Magnitude;
					if (v2493 <= 1) then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
						wait(1.5);
						game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game);
					end
				end
			end
		end
	end
end);
v68:Seperator("Cài Đặt");
v68:Toggle("Sử Dụng Võ", true, function(v573)
	_G.UseMelee = v573;
end);
v68:Toggle("Sử Dụng Kiếm", false, function(v574)
	_G.UseSword = v574;
end);
v68:Toggle("Sử Dụng Súng", false, function(v575)
	_G.UseGun = v575;
end);
v70:Seperator("Định Vị");
v70:Toggle("Định Vị Người Chơi", false, function(v576)
	ESPPlayer = v576;
	UpdatePlayerChams();
end);
v70:Toggle("Định Vị Đảo Kitsune", false, function(v577)
	IslandESP = v577;
	while IslandESP do
		wait();
		UpdateIslandESPKitsune();
	end
end);
function UpdateIslandESPKitsune()
	for v981, v982 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v982.Name ~= "NeonShrinePart") then
					if  not v982:FindFirstChild("IslandESP") then
						local v2675 = Instance.new("BillboardGui", v982);
						v2675.Name = "IslandESP";
						v2675.ExtentsOffset = Vector3.new(0, 1, 0);
						v2675.Size = UDim2.new(1, 200, 1, 30);
						v2675.Adornee = v982;
						v2675.AlwaysOnTop = true;
						local v2681 = Instance.new("TextLabel", v2675);
						v2681.Font = "Code";
						v2681.FontSize = "Size14";
						v2681.TextWrapped = true;
						v2681.Size = UDim2.new(1, 0, 1, 0);
						v2681.TextYAlignment = "Top";
						v2681.BackgroundTransparency = 1;
						v2681.TextStrokeTransparency = 0.5;
						v2681.TextColor3 = Color3.fromRGB(80, 245, 245);
						v2681.Text = "Kitsune Island";
					else
						v982['IslandESP'].TextLabel.Text = "Kitsune Island";
					end
				end
			elseif v982:FindFirstChild("IslandESP") then
				v982:FindFirstChild("IslandESP"):Destroy();
			end
		end);
	end
end
v70:Toggle("Định Vị Rương", false, function(v578)
	ChestESP = v578;
	UpdateChestChams();
end);
v70:Toggle("Định Vị Trái Ác Quỷ", false, function(v579)
	DevilFruitESP = v579;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
v70:Toggle("Định Vị Trái Cây", RealFruitESP, function(v580)
	RealFruitESP = v580;
	UpdateRealFruitChams();
end);
v70:Toggle("Định Vị Hoa", false, function(v581)
	FlowerESP = v581;
	UpdateFlowerChams();
end);
spawn(function()
	while wait() do
		if FlowerESP then
			UpdateFlowerChams();
		end
		if DevilFruitESP then
			UpdateDevilChams();
		end
		if ChestESP then
			UpdateChestChams();
		end
		if ESPPlayer then
			UpdatePlayerChams();
		end
		if RealFruitESP then
			UpdateRealFruitChams();
		end
	end
end);
v70:Toggle("Định Vị Đảo", IslandESP, function(v582)
	IslandESP = v582;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
v70:Toggle("Định Vị Đảo Bí Ẩn", false, function(v583)
	MirageIslandESP = v583;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
v70:Seperator("Chơi khăm");
v70:Button("Mưa Trái", function()
	for v983, v984 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
		v984.Parent = game.Workspace.Map;
		v984:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50, 50), 100, math.random( -50, 50)) );
		if v984.Fruit:FindFirstChild("AnimationController") then
			v984.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v984.Fruit:FindFirstChild("Idle")):Play();
		end
		v984.Handle.Touched:Connect(function(v1904)
			if (v1904.Parent == game.Players.LocalPlayer.Character) then
				v984.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v984);
			end
		end);
	end
end);
v70:Button("Làm Giả Cấp/Beli/Kinh Nghiệm", function()
	local v584 = game:GetService("Players").LocalPlayer;
	local v585 = require(game:GetService("ReplicatedStorage").Notification);
	local v586 = v584:WaitForChild("Data");
	local v587 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	local v588 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
	local v589 = require(game:GetService("ReplicatedStorage").Util.Sound);
	local v590 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
	function v129(v987)
		local v988 = v987;
		while true do
			local v1905, v1906 = string.gsub(v988, "^(-?%d+)(%d%d%d)", "%1,%2");
			v988 = v1905;
			if (v1906 == 0) then
				break;
			end
		end
		return v988;
	end
	v585.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
	v585.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
	v585.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
	v584.Data.Exp.Value = 999999999999;
	v584.Data.Beli.Value = v584.Data.Beli.Value + 999999999999 ;
	delay = 0;
	count = 0;
	while (v584.Data.Exp.Value - v587(v586.Level.Value)) > 0  do
		v584.Data.Exp.Value = v584.Data.Exp.Value - v587(v586.Level.Value) ;
		v584.Data.Level.Value = v584.Data.Level.Value + 1 ;
		v584.Data.Points.Value = v584.Data.Points.Value + 3 ;
		v588({
			v584
		});
		v589.Play(v589, v590.Value);
		v585.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v584.Data.Level.Value   .. ")" ):Display();
		count = count + 1 ;
		if (count >= 5) then
			delay = tick();
			count = 0;
			wait(2);
		end
	end
end);
v70:Textbox("Làm Giả Cấp", true, function(v593)
	game:GetService("Players").LocalPlayer.Data.Level.Value = v593;
end);
v70:Textbox("Làm Giả Kinh Nghiệm", true, function(v595)
	game:GetService("Players").LocalPlayer.Data.Exp.Value = v595;
end);
v70:Textbox("Làm Giả Tiền", true, function(v597)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = v597;
end);
v70:Textbox("Làm Giả Điểm Tím", true, function(v599)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = v599;
end);
v70:Textbox("Làm Giả Điểm", true, function(v601)
	game:GetService("Players").LocalPlayer.Data.Points.Value = v601;
end);
v70:Textbox("Làm Giả Tiền Thưởng", true, function(v603)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = v603;
end);
v70:Seperator("Điểm nổi bật");
v70:Toggle("Hiển thị trò chuyện", _G.chat, function(v605)
	_G.chat = v605;
	if (_G.chat == true) then
		local v1907 = game:GetService("StarterGui");
		v1907:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	elseif (_G.chat == false) then
		local v2155 = game:GetService("StarterGui");
		v2155:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end
end);
v70:Toggle("Hiển thị bảng xếp hạng", _G.leaderboard, function(v606)
	_G.leaderboard = v606;
	if (_G.leaderboard == true) then
		local v1908 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	elseif (_G.leaderboard == false) then
		local v2156 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end
end);
v70:Seperator("Gian lận");
v70:Button("Mở khóa Buso", function()
	local v607 = "Buso";
	if (type(v607) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v607);
	elseif (type(v607) == "table") then
		for v2235, v2236 in next, v607 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2236);
		end
	end
end);
v70:Button("Mở Khoá Soru", function()
	local v608 = "Soru";
	if (type(v608) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v608);
	elseif (type(v608) == "table") then
		for v2237, v2238 in next, v608 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2238);
		end
	end
end);
v70:Button("Mở Khoá Geppo", function()
	local v609 = "Geppo";
	if (type(v609) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v609);
	elseif (type(v609) == "table") then
		for v2239, v2240 in next, v609 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2240);
		end
	end
end);
v70:Button("Thu phóng tối đa", function()
	while wait() do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718;
	end
end);
v70:Button("Hiển Thị Tài Khoản", function(v610)
	local v611 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
	local v612 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
	local v613 = {};
	local v614 = {
		"Mythical",
		"Legendary",
		"Rare",
		"Uncommon",
		"Common"
	};
	local v615 = {
		Common = Color3.fromRGB(179, 179, 179),
		Uncommon = Color3.fromRGB(92, 140, 211),
		Rare = Color3.fromRGB(140, 82, 255),
		Legendary = Color3.fromRGB(213, 43, 228),
		Mythical = Color3.fromRGB(238, 47, 50)
	};
	function GetRaity(v993)
		for v1909, v1910 in pairs(v615) do
			if (v1910 == v993) then
				return v1909;
			end
		end
	end
	for v994, v995 in pairs(v612) do
		v613[v995.Name] = v995;
	end
	local v616 = #getupvalue(v611.UpdateRender, 4);
	local v617 = {};
	local v618 = {};
	local v619 = 0;
	while v619 < v616  do
		local v997 = 0;
		while (v997 < 25000) and (v619 < v616)  do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v997);
			for v2048, v2049 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if (v2049:IsA("Frame") and  not v617[v2049.ItemName.Text] and (v2049.ItemName.Visible == true)) then
					local v2241 = GetRaity(v2049.Background.BackgroundColor3);
					if v2241 then
						print("Rac");
						if  not v618[v2241] then
							v618[v2241] = {};
						end
						table.insert(v618[v2241], v2049:Clone());
					end
					v619 = v619 + 1 ;
					v617[v2049.ItemName.Text] = true;
				end
			end
			v997 = v997 + 20 ;
		end
		wait();
	end
	function GetXY(v998)
		return v998 * 100 ;
	end
	local v620 = Instance.new("UIListLayout");
	v620.FillDirection = Enum.FillDirection.Vertical;
	v620.SortOrder = 2;
	v620.Padding = UDim.new(0, 10);
	local v625 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v625.BackgroundTransparency = 1;
	v625.Size = UDim2.new(0.5, 0, 1, 0);
	v620.Parent = v625;
	local v629 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v629.BackgroundTransparency = 1;
	v629.Size = UDim2.new(0.5, 0, 1, 0);
	v629.Position = UDim2.new(0.6, 0, 0, 0);
	v620:Clone().Parent = v629;
	for v999, v1000 in pairs(v618) do
		local v1001 = Instance.new("Frame", v625);
		v1001.BackgroundTransparency = 1;
		v1001.Size = UDim2.new(1, 0, 0, 0);
		v1001.LayoutOrder = table.find(v614, v999);
		local v1005 = Instance.new("Frame", v629);
		v1005.BackgroundTransparency = 1;
		v1005.Size = UDim2.new(1, 0, 0, 0);
		v1005.LayoutOrder = table.find(v614, v999);
		local v1009 = Instance.new("UIGridLayout", v1001);
		v1009.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
		v1009.CellSize = UDim2.new(0, 70, 0, 70);
		v1009.FillDirectionMaxCells = 100;
		v1009.FillDirection = Enum.FillDirection.Horizontal;
		local v1015 = v1009:Clone();
		v1015.Parent = v1005;
		for v1912, v1913 in pairs(v1000) do
			if (v613[v1913.ItemName.Text] and v613[v1913.ItemName.Text].Mastery) then
				if (v1913.ItemLine2.Text ~= "Accessory") then
					local v2278 = v1913.ItemName:Clone();
					v2278.BackgroundTransparency = 1;
					v2278.TextSize = 10;
					v2278.TextXAlignment = 2;
					v2278.TextYAlignment = 2;
					v2278.ZIndex = 5;
					v2278.Text = v613[v1913.ItemName.Text].Mastery;
					v2278.Size = UDim2.new(0.5, 0, 0.5, 0);
					v2278.Position = UDim2.new(0.5, 0, 0.5, 0);
					v2278.Parent = v1913;
				end
				v1913.Parent = v1001;
			elseif (v1913.ItemLine2.Text == "Blox Fruit") then
				v1913.Parent = v1005;
			end
		end
		v1001.AutomaticSize = 2;
		v1005.AutomaticSize = 2;
	end
	local v634 = {
		Superhuman = Vector2.new(3, 2),
		GodHuman = Vector2.new(3, 2),
		DeathStep = Vector2.new(4, 3),
		ElectricClaw = Vector2.new(2, 0),
		SharkmanKarate = Vector2.new(0, 0),
		DragonTalon = Vector2.new(1, 5)
	};
	local v635 = Instance.new("Frame", v625);
	v635.BackgroundTransparency = 1;
	v635.Size = UDim2.new(1, 0, 0, 0);
	v635.LayoutOrder = table.find(v614, k);
	v635.AutomaticSize = 2;
	v635.LayoutOrder = 100;
	local v620 = Instance.new("UIGridLayout", v635);
	v620.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
	v620.CellSize = UDim2.new(0, 70, 0, 70);
	v620.FillDirectionMaxCells = 100;
	v620.FillDirection = Enum.FillDirection.Horizontal;
	local v611 = {
		"Superhuman",
		"ElectricClaw",
		"DragonTalon",
		"SharkmanKarate",
		"DeathStep",
		"GodHuman"
	};
	for v1019, v1020 in pairs(v611) do
		if (v634[v1020] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v1020 , true) == 1)) then
			local v2050 = Instance.new("ImageLabel", v635);
			v2050.Image = "rbxassetid://9945562382";
			v2050.ImageRectSize = Vector2.new(100, 100);
			v2050.ImageRectOffset = v634[v1020] * 100 ;
		end
	end
	function formatNumber(v1021)
		return tostring(v1021):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550);
	local v646 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
	v646.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
	v646.Position = UDim2.new(0, 800, 0.63, 0);
	local v650 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
	v646.Text = "Ã†â€™"   .. v650 ;
	print("Done");
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy();
	end);
	for v1022, v1023 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v1023:IsA("ImageButton") then
			v1023:Destroy();
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
	end);
end);
v70:Seperator("Đồ Hoạ");
v70:Button("Xoá Sương Mù ( Biển 3 )", function(v652)
	game:GetService("Lighting").LightingLayers:Destroy();
	game:GetService("Lighting").Sky:Destroy();
end);
v70:Toggle("Xoá Sương Mù", RemoveFog, function(v653)
	RemoveFog = v653;
	if  not RemoveFog then
		return;
	end
	while RemoveFog do
		wait();
		game.Lighting.FogEnd = 8999999488;
		if  not RemoveFog then
			game.Lighting.FogEnd = 2500;
		end
	end
end);
v70:Toggle("Loại Bỏ Thiệt Hại", true, function()
	for v1025, v1026 in pairs(game.Workspace:GetDescendants()) do
		if (v1026.Name == "DamageCounter") then
			v1026:Destroy();
		end
	end
	for v1027, v1028 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v1028.Name == "DamageCounter") then
			v1028:Destroy();
		end
	end
end);
v70:Button("Mở Khoá FPS", function()
	setfpscap(9999999);
end);
v70:Button("Giảm Lag", function()
	for v1029, v1030 in pairs(game.Workspace.Map:GetDescendants()) do
		if ((v1030.Name == "Tavern") or (v1030.Name == "SmileFactory") or (v1030.Name == "Tree") or (v1030.Name == "Rocks") or (v1030.Name == "PartHouse") or (v1030.Name == "Hotel") or (v1030.Name == "WallPiece") or (v1030.Name == "MiddlePillars") or (v1030.Name == "Cloud") or (v1030.Name == "PluginGrass") or (v1030.Name == "BigHouse") or (v1030.Name == "SmallHouse") or (v1030.Name == "Detail")) then
			v1030:Destroy();
		end
	end
	for v1031, v1032 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
		if ((v1032.Name == "Tavern") or (v1032.Name == "SmileFactory") or (v1032.Name == "Tree") or (v1032.Name == "Rocks") or (v1032.Name == "PartHouse") or (v1032.Name == "Hotel") or (v1032.Name == "WallPiece") or (v1032.Name == "MiddlePillars") or (v1032.Name == "Cloud") or (v1032.Name == "PluginGrass") or (v1032.Name == "BigHouse") or (v1032.Name == "SmallHouse") or (v1032.Name == "Detail")) then
			v1032:Destroy();
		end
	end
	for v1033, v1034 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if (v1034:IsA("Accessory") or (v1034.Name == "Pants") or (v1034.Name == "Shirt")) then
			v1034:Destroy();
		end
	end
	local v654 = true;
	local v655 = game;
	local v656 = v655.Workspace;
	local v657 = v655.Lighting;
	local v658 = v656.Terrain;
	v658.WaterWaveSize = 0;
	v658.WaterWaveSpeed = 0;
	v658.WaterReflectance = 0;
	v658.WaterTransparency = 0;
	v657.GlobalShadows = false;
	v657.FogEnd = 8999999488;
	v657.Brightness = 0;
	settings().Rendering.QualityLevel = "Level01";
	for v1035, v1036 in pairs(v655:GetDescendants()) do
		if (v1036:IsA("Part") or v1036:IsA("Union") or v1036:IsA("CornerWedgePart") or v1036:IsA("TrussPart")) then
			v1036.Material = "Plastic";
			v1036.Reflectance = 0;
		elseif (v1036:IsA("Decal") or (v1036:IsA("Texture") and v654)) then
			v1036.Transparency = 1;
		elseif (v1036:IsA("ParticleEmitter") or v1036:IsA("Trail")) then
			v1036.Lifetime = NumberRange.new(0);
		elseif v1036:IsA("Explosion") then
			v1036.BlastPressure = 1;
			v1036.BlastRadius = 1;
		elseif (v1036:IsA("Fire") or v1036:IsA("SpotLight") or v1036:IsA("Smoke") or v1036:IsA("Sparkles")) then
			v1036.Enabled = false;
		elseif v1036:IsA("MeshPart") then
			v1036.Material = "Plastic";
			v1036.Reflectance = 0;
			v1036.TextureID = 10385902758728956;
		end
	end
	for v1037, v1038 in pairs(v657:GetChildren()) do
		if (v1038:IsA("BlurEffect") or v1038:IsA("SunRaysEffect") or v1038:IsA("ColorCorrectionEffect") or v1038:IsA("BloomEffect") or v1038:IsA("DepthOfFieldEffect")) then
			v1038.Enabled = false;
		end
	end
end);
v70:Seperator("Khả năng");
v70:Toggle("Né tránh không có thời gian hồi chiêu", false, function(v667)
	nododgecool = v667;
	NoDodgeCool();
end);
v70:Toggle("Năng lượng vô hạn", false, function(v668)
	InfiniteEnergy = v668;
	v57 = v25.Character.Energy.Value;
end);
v70:Toggle("Tự Động Bậc V3", _G.ActiveV3, function(v670)
	_G.ActiveV3 = v670;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ActiveV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
			end
		end
	end);
end);
v70:Toggle("Tự Động Bậc V4", _G.ActiveV4, function(v671)
	_G.ActiveV4 = v671;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.ActiveV4 then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
			end
		end);
	end
end);
v70:Toggle("Khả năng vô hạn", false, function(v672)
	InfAbility = v672;
	if (value == false) then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end);
spawn(function()
	while wait() do
		if InfAbility then
			InfAb();
		end
	end
end);
v70:Toggle("Phạm vi quan sát vô hạn", getgenv().InfiniteObRange, function(v673)
	getgenv().InfiniteObRange = v673;
	local v675 = game:GetService("Players").LocalPlayer.VisionRadius.Value;
	while getgenv().InfiniteObRange do
		wait();
		local v1039 = game:GetService("Players").LocalPlayer;
		local v1040 = v1039.Character;
		local v1041 = v1039.VisionRadius;
		if v1039 then
			if (v1040.Humanoid.Health <= 0) then
				wait(5);
			end
			v1041.Value = math.huge;
		elseif ((getgenv().InfiniteObRange == false) and v1039) then
			v1041.Value = v675;
		end
	end
end);
v70:Toggle("Geppo vô hạn", getgenv().InfGeppo, function(v676)
	getgenv().InfGeppo = v676;
end);
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().InfGeppo then
				for v2245, v2246 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if ((typeof(v2246) == "function") and (getfenv(v2246).script == game:GetService("Players").LocalPlayer.Character.Geppo)) then
							for v2898, v2899 in next, getupvalues(v2246) do
								if (tostring(v2898) == "9") then
									repeat
										wait(0.1);
										setupvalue(v2246, v2898, 0);
									until  not getgenv().InfGeppo or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v70:Toggle("vô hạn Soru", _G.Infsoru, function(v678)
	_G.Infsoru = v678;
end);
spawn(function()
	while wait() do
		pcall(function()
			if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil)) then
				for v2247, v2248 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if ((typeof(v2248) == "function") and (getfenv(v2248).script == game:GetService("Players").LocalPlayer.Character.Soru)) then
							for v2900, v2901 in next, getupvalues(v2248) do
								if (typeof(v2901) == "table") then
									repeat
										wait(0.1);
										v2901.LastUse = 0;
									until  not _G.Infsoru or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v70:Toggle("Đi Trên Nước", true, function(v679)
	_G.WalkWater = v679;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end
		end);
	end
end);
v70:Toggle("Xuyên Tường", _G.NoClip, function(v680)
	_G.NoClip = v680;
end);
spawn(function()
	while wait() do
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100);
		end
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge , (((((((((math.huge * math.huge * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0 ;
		end
	end
end);
v70:Button("Xoá Dung Nham", function()
	for v1042, v1043 in pairs(game.Workspace:GetDescendants()) do
		if (v1043.Name == "Lava") then
			v1043:Destroy();
		end
	end
	for v1044, v1045 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v1045.Name == "Lava") then
			v1045:Destroy();
		end
	end
end);
local v118 = v69:Label("Người Chơi");
spawn(function()
	while wait() do
		pcall(function()
			for v2061, v2062 in pairs(game:GetService("Players"):GetPlayers()) do
				if (v2061 == 12) then
					v118:Set("Players:"   .. " "   .. v2061   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
				elseif (v2061 == 1) then
					v118:Set("Player:"   .. " "   .. v2061   .. " "   .. "/"   .. " "   .. "12" );
				else
					v118:Set("Players:"   .. " "   .. v2061   .. " "   .. "/"   .. " "   .. "12" );
				end
			end
		end);
	end
end);
Playerslist = {};
for v681, v682 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v682.Name);
end
local v119 = v69:Dropdown("Chọn Người Chơi", Playerslist, function(v683)
	_G.SelectPly = v683;
end);
v69:Button("Làm Mới Người Chơi", function()
	Playerslist = {};
	v119:Clear();
	for v1046, v1047 in pairs(game:GetService("Players"):GetChildren()) do
		v119:Add(v1047.Name);
	end
end);
v69:Toggle("Quan Sát Người Chơi", false, function(v684)
	SpectatePlys = v684;
	local v685 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local v686 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v69:Toggle("Bay Đến Người Chơi", false, function(v689)
	_G.TeleportPly = v689;
	pcall(function()
		if _G.TeleportPly then
			repeat
				topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame);
				wait();
			until _G.TeleportPly == false
		end
		StopTween(_G.TeleportPly);
	end);
end);
v69:Toggle("Bay Đến Người Chơi Bypass", false, function(v690)
	_G.Teleport = v690;
	if (_G.Teleport == false) then
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
	end
	while _G.Teleport do
		task.wait();
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) ;
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
		game:GetService("VirtualUser"):CaptureController();
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
	end
end);
v69:Seperator("Nhiệm Vụ");
v69:Button("Nhận Nhiệm Vụ Thợ Săn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v69:Toggle("Giết Người Chơi Nhận Nhiệm Vụ", _G.PlayerHunter, function(v691)
	_G.PlayerHunter = v691;
	StopTween(_G.PlayerHunter);
end);
spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.PlayerHunter then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.PlayerHunter then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if _G.PlayerHunter then
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
			else
				for v2290, v2291 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v2291.Name) then
						repeat
							wait();
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2944 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2944));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							topos(v2291.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3) );
							v2291.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.PlayerHunter == false) or (v2291.Humanoid.Health <= 0)
						Useskill = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
v69:Seperator("PvP");
v69:Toggle("Aimbot gần nhất", false, function(v692)
	_G.AimNearest = v692;
end);
local v107 = game:GetService("Players");
local v25 = v107.LocalPlayer;
local v108 = game:GetService("RunService");
local function v120()
	local v693 = nil;
	local v694 = math.huge;
	for v1052, v1053 in pairs(v107:GetPlayers()) do
		if ((v1053 ~= v25) and v1053.Character and v1053.Character:FindFirstChild("HumanoidRootPart")) then
			if ((v1053.Team ~= v25.Team) and (v1053.Team.Name ~= "Marines")) then
				local v2249 = v1053.Character.HumanoidRootPart.Position;
				local v2250 = (v25.Character.HumanoidRootPart.Position - v2249).Magnitude;
				if (v2250 < v694) then
					v693 = v1053;
					v694 = v2250;
				end
			end
		end
	end
	return v693;
end
v108.RenderStepped:Connect(function()
	if _G.AimNearest then
		local v1915 = v120();
		if v1915 then
			_G.Aim_Players = v1915;
		end
	end
end);
local v121 = getrawmetatable(game);
local v122 = v121.__namecall;
setreadonly(v121, false);
v121.__namecall = newcclosure(function(...)
	local v695 = getnamecallmethod();
	local v696 = {
		...
	};
	if (tostring(v695) == "FireServer") then
		if (tostring(v696[1]) == "RemoteEvent") then
			if ((tostring(v696[2]) ~= "true") and (tostring(v696[2]) ~= "false")) then
				if (_G.AimNearest and _G.Aim_Players) then
					v696[2] = _G.Aim_Players.Character.HumanoidRootPart.Position;
					return v122(unpack(v696));
				end
			end
		end
	end
	return v122(...);
end);
setreadonly(v121, true);
v69:Toggle("Enabled PvP", false, function(v697)
	_G.EnabledPvP = v697;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EnabledPvP then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
v69:Button("Đặt vị trí Hồi Sinh", function()
	_G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	Com();
end);
v69:Toggle("Chế độ an toàn", false, function(v699)
	_G.Safe_Mode = v699;
	StopTween(_G.Safe_Mode);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Safe_Mode then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end
	end);
end);
v69:Button("hồi sinh", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	wait();
end);
v69:Seperator("Thống kê");
local v124 = v69:Label("Điểm chỉ số");
spawn(function()
	while wait() do
		pcall(function()
			v124:Set("Điểm chỉ số: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
		end);
	end
end);
local v125 = v69:Label("Võ: ");
local v126 = v69:Label("Phòng Thủ: ");
local v127 = v69:Label("Kiếm: ");
local v128 = v69:Label("Súng: ");
local v129 = v69:Label("Trái: ");
spawn(function()
	while wait() do
		pcall(function()
			v125:Set("Võ: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v126:Set("Phòng Thủ: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v127:Set("Kiếm: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v128:Set("Súng: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v129:Set("Trái: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
		end);
	end
end);
v69:Toggle("Tự Động Nâng Chỉ Số", _G.Stats_Kaitun, function(v700)
	_G.Stats_Kaitun = v700;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if World1 then
					local v2292 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2292));
				elseif World2 then
					local v2693 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2693));
					local v2693 = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2693));
				end
			end
		end);
	end
end);
v69:Toggle("Võ", false, function(v701)
	melee = v701;
end);
v69:Toggle("Phòng Thủ", false, function(v702)
	defense = v702;
end);
v69:Toggle("Kiếm", false, function(v703)
	sword = v703;
end);
v69:Toggle("Súng", false, function(v704)
	gun = v704;
end);
v69:Toggle("Trái Ác Quỷ", false, function(v705)
	demonfruit = v705;
end);
PointStats = 100;
spawn(function()
	while wait() do
		if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
			if melee then
				local v2251 = {
					[1] = "AddPoint",
					[2] = "Võ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2251));
			end
			if defense then
				local v2252 = {
					[1] = "AddPoint",
					[2] = "Phòng Thủ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2252));
			end
			if sword then
				local v2253 = {
					[1] = "AddPoint",
					[2] = "Kiếm",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2253));
			end
			if gun then
				local v2254 = {
					[1] = "AddPoint",
					[2] = "Súng",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2254));
			end
			if demonfruit then
				local v2255 = {
					[1] = "AddPoint",
					[2] = "Trái Ác Quỷ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2255));
			end
		end
	end
end);
v71:Seperator("Tập Kích");
_G.SelectChip = selectraids or "" ;
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for v706, v707 in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v707);
end
for v708, v709 in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v709);
end
v71:Dropdown("Chọn Chip", Raidslist, function(v710)
	_G.SelectChip = v710;
end);
v71:Toggle("Tự động chọn Đột Kích", _G.SelectDungeon, function(v711)
	_G.SelectDungeon = v711;
end);
spawn(function()
	while wait() do
		if _G.SelectDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then
					_G.SelectChip = "Flame";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then
					_G.SelectChip = "Ice";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then
					_G.SelectChip = "Quake";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then
					_G.SelectChip = "Light";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then
					_G.SelectChip = "Dark";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then
					_G.SelectChip = "String";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then
					_G.SelectChip = "Rumble";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then
					_G.SelectChip = "Magma";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					_G.SelectChip = "Human: Buddha";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then
					_G.SelectChip = "Sand";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then
					_G.SelectChip = "Bird: Phoenix";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then
					_G.SelectChip = "Dough";
				else
					_G.SelectChip = "Flame";
				end
			end);
		end
	end
end);
v71:Toggle("Mua Chip Tự Động", _G.BuyChip, function(v712)
	_G.BuyChip = v712;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.BuyChip then
				if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
					if  not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
					end
				end
			end
		end
	end);
end);
v71:Button("Mua Chip Đã Chọn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
v71:Toggle("Tự Động Bắt Đầu Đột Kích", _G.StartRaid, function(v713)
	_G.StartRaid = v713;
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.StartRaid then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
					if (( not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
					end
				end
			end
		end);
	end
end);
v71:Button("Bắt Đầu Đột Kích", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
	elseif World3 then
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
	end
end);
v71:Toggle("Auto Next Island And Kill Mob", false, function(v714)
	_G.Dungeon = v714;
	StopTween(_G.Dungeon);
end);
function IsIslandRaid(v715)
	if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island "   .. v715 ) then
		min = 4500;
		for v2063, v2064 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v2064.Name == ("Island "   .. v715)) and ((v2064.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min)) then
				min = (v2064.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			end
		end
		for v2065, v2066 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v2066.Name == ("Island "   .. v715)) and ((v2066.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min)) then
				return v2066;
			end
		end
	end
end
function getNextIsland()
	TableIslandsRaid = {
		5,
		4,
		3,
		2,
		1
	};
	for v1054, v1055 in pairs(TableIslandsRaid) do
		if (IsIslandRaid(v1055) and ((IsIslandRaid(v1055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500)) then
			return IsIslandRaid(v1055);
		end
	end
end
function attackNearbyEnemies()
	local v716 = {};
	for v1056, v1057 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if (v1057:FindFirstChild("HumanoidRootPart") and v1057:FindFirstChild("Humanoid") and (v1057.Humanoid.Health > 0)) then
			local v2067 = (v1057.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			if (v2067 <= 1000) then
				table.insert(v716, v1057);
			end
		end
	end
	for v1058, v1059 in pairs(v716) do
		repeat
			if (v1059:FindFirstChild("Humanoid") and (v1059.Humanoid.Health > 0)) then
				EquipWeapon(_G.SelectWeapon);
				topos(v1059.HumanoidRootPart.CFrame * Pos );
				wait(0.1);
			end
		until  not v1059:FindFirstChild("Humanoid") or (v1059.Humanoid.Health <= 0)
	end
end
spawn(function()
	while wait() do
		if _G.Dungeon then
			attackNearbyEnemies();
			if getNextIsland() then
				spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0) ), 1);
			end
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v2161 = game:GetService("Players").LocalPlayer;
				local v2162 = game:GetService("Workspace").Enemies:GetChildren();
				local v2163 = v2161.Character and v2161.Character:FindFirstChild("HumanoidRootPart") and v2161.Character.HumanoidRootPart.Position ;
				if v2163 then
					for v2495, v2496 in pairs(v2162) do
						if (v2496:FindFirstChild("Humanoid") and v2496:FindFirstChild("HumanoidRootPart") and (v2496.Humanoid.Health > 0)) then
							local v2837 = (v2496.HumanoidRootPart.Position - v2163).Magnitude;
							if (v2837 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v2161, "SimulationRadius", math.huge);
										v2496.Humanoid.Health = 0;
										v2496.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v2496.Parent or (v2496.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v71:Toggle("Tự động thức Tỉnh", _G.Awakener, function(v717)
	_G.Awakener = v717;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end
		end
	end);
end);
if World2 then
	v71:Button("Dịch chuyển đến phòng thí nghiệm", function()
		topos(CFrame.new( -6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	v71:Button("Dịch chuyển đến phòng thí nghiệm", function()
		topos(CFrame.new( -5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
if World2 then
	v71:Button("Phòng thức tỉnh", function()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732));
	end);
elseif World3 then
	v71:Button("Phòng thức tỉnh", function()
		topos(CFrame.new( -11571.440429688, 49.172668457031, -7574.7368164062));
	end);
end
v71:Seperator("Kiếm KoKo");
v71:Toggle("Đánh Law", _G.OderSword, function(v718)
	_G.OderSword = v718;
	StopTween(_G.OderSword);
end);
v71:Toggle("Đánh Law Đổi Sever", _G.OderSwordHop, function(v719)
	_G.OderSwordHop = v719;
end);
spawn(function()
	while wait() do
		if _G.OderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for v2497, v2498 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2498.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v2498:FindFirstChild("Humanoid") and v2498:FindFirstChild("HumanoidRootPart") and (v2498.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2498.HumanoidRootPart.CanCollide = false;
									v2498.Humanoid.WalkSpeed = 0;
									v2498.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2498.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.OderSword or  not v2498.Parent or (v2498.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.OderSwordHop then
					Hop();
				end
			end);
		end
	end
end);
v71:Button("Mua Chip Law", function()
	local v720 = {
		[1] = "BlackbeardReward",
		[2] = "Microchip",
		[3] = "2"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v720));
end);
v71:Button("Bắt Đầu Vào Đánh", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
	end
end);
v72:Seperator("Thế Giới");
v72:Button("Dịch chuyển đến Biển 1", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v72:Button("Dịch chuyển đến Biển 2", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v72:Button("Dịch chuyển đến Biển 3", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v72:Seperator("Dịch chuyển nhanh");
if World1 then
	v72:Dropdown("Chọn Đảo", {
		"Đảo Trời 1",
		"Đảo Trời 2",
		"Đảo dưới nước",
		"Lối vào Đảo Dưới Nước"
	}, function(v1916)
		_G.SelectFast = v1916;
	end);
end
if World2 then
	v72:Dropdown("Chọn Đảo", {
		"Biệt thự Flamingo",
		"Phòng Flamingo",
		"Con tàu bị nguyền rủa",
		"Đảo thây ma"
	}, function(v1917)
		_G.SelectFast = v1917;
	end);
end
if World3 then
	v72:Dropdown("Chọn Đảo", {
		"Dinh Thự",
		"Đảo Hydra",
		"Pháo đài trên biển",
		"Đảo rùa",
		"Cướp biển xinh đẹp"
	}, function(v1918)
		_G.SelectFast = v1918;
	end);
end
v72:Toggle("Dịch Chuyển Đến Đảo Đã Chỉ Định", false, function(v721)
	_G.TeleFast = v721;
	if (_G.TeleFast == true) then
		repeat
			wait();
			if (_G.SelectFast == "Đảo Trời 1") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -4652, 873, -1754));
			elseif (_G.SelectFast == "Đảo Trời 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7895, 5547, -380));
			elseif (_G.SelectFast == "Đảo dưới nước") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820));
			elseif (_G.SelectFast == "Lối vào Đảo Dưới Nước") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926));
			elseif (_G.SelectFast == "Biệt thự Flamingo") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -317, 331, 597));
			elseif (_G.SelectFast == "Phòng Flamingo") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867));
			elseif (_G.SelectFast == "Con tàu bị nguyền rủa") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853));
			elseif (_G.SelectFast == "Đảo thây ma") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -6509, 83, -133));
			elseif (_G.SelectFast == "Dinh Thự") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12471, 374, -7551));
			elseif (_G.SelectFast == "Đảo Hydra") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282));
			elseif (_G.SelectFast == "Pháo đài trên biển") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -5092, 315, -3130));
			elseif (_G.SelectFast == "Đảo rùa") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12001, 332, -8861));
			elseif (_G.SelectFast == "Cướp biển xinh đẹp") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5319, 23, -93));
			end
		until  not _G.TeleFast
	end
end);
v72:Seperator("đảo");
if World1 then
	v72:Dropdown("Chọn Đảo", {
		"Cối xay gió",
		"Hàng hải",
		"Trung tâm thị trấn",
		"Rừng",
		"Làng cướp biển",
		"Sa mạc",
		"Đảo Tuyết",
		"Ford hàng hải",
		"Đấu trường La Mã",
		"Đảo Trời 1",
		"Đảo Trời 2",
		"Đảo Trời 3",
		"Nhà tù",
		"Làng Magma",
		"Đảo dưới nước",
		"Thành phố đài phun nước"
	}, function(v1919)
		_G.SelectIsland = v1919;
	end);
end
if World2 then
	v72:Dropdown("Chọn Đảo", {
		"Quán cà phê",
		"Đốm đầu tiên",
		"Đảo Râu Đen",
		"Biệt thự Flamingo",
		"Phòng Flamingo",
		"Khu vực xanh",
		"Đảo thây ma",
		"Hai ngọn núi tuyết",
		"Punk nguy hiểm",
		"Con tàu bị nguyền rủa",
		"Lâu đài băng",
		"Đảo bị lãng quên",
		"Đảo Ussop"
	}, function(v1920)
		_G.SelectIsland = v1920;
	end);
end
if World3 then
	v72:Dropdown("Chọn Đảo", {
		"Dinh Thự",
		"Cảng",
		"Cây lớn",
		"Pháo đài trên biển",
		"Đảo Hydra",
		"Đảo rùa",
		"Đảo Xương",
		"Đảo kem",
		"Đảo Đậu Phộng",
		"Đảo Bánh",
		"Đảo kẹo mía",
		"Doanh Trại Tiki"
	}, function(v1921)
		_G.SelectIsland = v1921;
	end);
end
v72:Toggle("Bay Đến Đảo Đã Chọn", false, function(v722)
	_G.TeleportIsland = v722;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "Trung tâm thị trấn") then
				topos(CFrame.new( -688, 15, 1585));
			elseif (_G.SelectIsland == "Ford hàng hải") then
				topos(CFrame.new( -4810, 21, 4359));
			elseif (_G.SelectIsland == "Hàng hải") then
				topos(CFrame.new( -2728, 25, 2056));
			elseif (_G.SelectIsland == "Cối xay gió") then
				topos(CFrame.new(889, 17, 1434));
			elseif (_G.SelectIsland == "Sa mạc") then
				topos(CFrame.new(945, 21, 4375));
			elseif (_G.SelectIsland == "Đảo Tuyết") then
				topos(CFrame.new(1298, 87, -1344));
			elseif (_G.SelectIsland == "Làng cướp biển") then
				topos(CFrame.new( -1173, 45, 3837));
			elseif (_G.SelectIsland == "Rừng") then
				topos(CFrame.new( -1614, 37, 146));
			elseif (_G.SelectIsland == "Nhà tù") then
				topos(CFrame.new(4870, 6, 736));
			elseif (_G.SelectIsland == "Đảo dưới nước") then
				topos(CFrame.new(61164, 5, 1820));
			elseif (_G.SelectIsland == "Đấu trường La Mã") then
				topos(CFrame.new( -1535, 7, -3014));
			elseif (_G.SelectIsland == "Làng Magma") then
				topos(CFrame.new( -5290, 9, 8349));
			elseif (_G.SelectIsland == "Đảo Trời 1") then
				topos(CFrame.new( -4814, 718, -2551));
			elseif (_G.SelectIsland == "Đảo Trời 2") then
				topos(CFrame.new( -4652, 873, -1754));
			elseif (_G.SelectIsland == "Đảo trời 3") then
				topos(CFrame.new( -7895, 5547, -380));
			elseif (_G.SelectIsland == "Thành phố đài phun nước") then
				topos(CFrame.new(5128, 60, 4106));
			elseif (_G.SelectIsland == "Quán cà phê") then
				topos(CFrame.new( -382, 73, 290));
			elseif (_G.SelectIsland == "Đốm đầu tiên") then
				topos(CFrame.new( -11, 29, 2771));
			elseif (_G.SelectIsland == "Đảo Râu Đen") then
				topos(CFrame.new(3494, 13, -3259));
			elseif (_G.SelectIsland == "Biệt thự Flamingo") then
				topos(CFrame.new( -317, 331, 597));
			elseif (_G.SelectIsland == "Phòng Flamingo") then
				topos(CFrame.new(2285, 15, 905));
			elseif (_G.SelectIsland == "Khu vực xanh") then
				topos(CFrame.new( -2258, 73, -2696));
			elseif (_G.SelectIsland == "Đảo thây ma") then
				topos(CFrame.new( -5552, 194, -776));
			elseif (_G.SelectIsland == "Hai ngọn núi tuyết") then
				topos(CFrame.new(752, 408, -5277));
			elseif (_G.SelectIsland == "Punk nguy hiểm") then
				topos(CFrame.new( -5897, 18, -5096));
			elseif (_G.SelectIsland == "Con tàu bị nguyền rủa") then
				topos(CFrame.new(919, 125, 32869));
			elseif (_G.SelectIsland == "Lâu đài băng") then
				topos(CFrame.new(5505, 40, -6178));
			elseif (_G.SelectIsland == "Đảo bị lãng quên") then
				topos(CFrame.new( -3050, 240, -10178));
			elseif (_G.SelectIsland == "Đảo Ussop") then
				topos(CFrame.new(4816, 8, 2863));
			elseif (_G.SelectIsland == "Dinh Thự") then
				topos(CFrame.new( -12471, 374, -7551));
			elseif (_G.SelectIsland == "Cảng") then
				topos(CFrame.new( -334, 7, 5300));
			elseif (_G.SelectIsland == "Pháo đài trên biển") then
				topos(CFrame.new( -5073, 315, -3153));
			elseif (_G.SelectIsland == "Đảo Hydra") then
				topos(CFrame.new(5756, 610, -282));
			elseif (_G.SelectIsland == "Cây lớn") then
				topos(CFrame.new(2681, 1682, -7190));
			elseif (_G.SelectIsland == "Đảo rùa") then
				topos(CFrame.new( -12528, 332, -8658));
			elseif (_G.SelectIsland == "Đảo Xương") then
				topos(CFrame.new( -9517, 142, 5528));
			elseif (_G.SelectIsland == "Đảo kem") then
				topos(CFrame.new( -902, 79, -10988));
			elseif (_G.SelectIsland == "Đảo Đậu Phộng") then
				topos(CFrame.new( -2062, 50, -10232));
			elseif (_G.SelectIsland == "Đảo Bánh") then
				topos(CFrame.new( -1897, 14, -11576));
			elseif (_G.SelectIsland == "Đảo kẹo mía") then
				topos(CFrame.new( -1038, 10, -14076));
			elseif (_G.SelectIsland == "Doanh Trại Tiki") then
				topos(CFrame.new( -16224, 9, 439));
			end
		until  not _G.TeleportIsland
	end
	StopTween(_G.TeleportIsland);
end);
v73:Seperator("Khả năng");
v73:Button("Mua Geppo [ 10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
v73:Button("Mua Haki Vũ Trang [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
v73:Button("Mua Soru [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
v73:Button("Mua Haki Quan Sát [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
v73:Toggle("Mua Tất Cả Những Thứ Ở Trên", false, function(v723)
	Abilities = v723;
	while Abilities do
		wait(0.1);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end
end);
v73:Seperator("Phong cách chiến đấu");
v73:Button("Mua Chân Đen V1 [ 150,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v73:Button("Mua Võ Điện V1 [ 550,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v73:Button("Mua Võ Người Cá V1 [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v73:Button("Mua Hơi Thở Rồng V1 [ 1,500 Fragments ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
v73:Button("Mua Superhuman [ 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v73:Button("Mua Chân Đen V2 [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v73:Button("Mua Võ Cá V2 [ 5,000 Fragments 2,500,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v73:Button("Mua Võ Điện V2 [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v73:Button("Mua Võ Rồng V2 [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v73:Button("Mua God Human [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v73:Button("Mua Huyết Quỷ [ 5,000 Fragments $5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v73:Seperator(" Kiếm ");
v73:Button("Cutlass [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
v73:Button("Katana [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
v73:Button("Iron Mace [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
v73:Button("Dual Katana [ 12,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
v73:Button("Triple Katana [ 60,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
v73:Button("Pipe [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
v73:Button("Dual-Headed Blade [ 400,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
v73:Button("Bisento [ 1,200,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
v73:Button("Soul Cane [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
v73:Button("Pole v.2 [ 5,000 Fragments ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v73:Toggle("Yama Sword [ Elite Hunter 30 ]", _G.Yama, function(v724)
	_G.Yama = v724;
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v73:Seperator(" Súng ");
v73:Button("Slingshot [ 5,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
v73:Button("Musket [ 8,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
v73:Button("Flintlock [ 10,500 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
v73:Button("Refined Slingshot [ 30,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
v73:Button("Refined Flintlock [ 65,000 Beli ]", function()
	local v725 = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v725));
end);
v73:Button("Cannon [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
v73:Button("Kabucha [ 1,500 Fragments]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
v73:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local v726 = "Ectoplasm";
	local v727 = "Buy";
	local v728 = 1;
	local v729 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v729:InvokeServer(v726, v727, v728);
	local v726 = "Ectoplasm";
	local v727 = "Buy";
	local v728 = 1;
	local v729 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v729:InvokeServer(v726, v727, v728);
end);
v73:Seperator(" Fragments ");
v73:Button("Đặt lại Chỉ Số ( 2.5K F )", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
v73:Button("Đổi Tộc ( 3K F )", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
v73:Seperator(" Phụ kiện ");
v73:Button("Black Cape [ 50,000 Beli ]", function()
	local v730 = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v730));
end);
v73:Button("Swordsman Hat [ 150k Beli ]", function()
	local v731 = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v731));
end);
v73:Button("Tomoe Ring [ 500k Beli ]", function()
	local v732 = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v732));
end);
v74:Seperator("Trái");
FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon",
	"Leopard-Leopard"
};
local v130 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v733, v734 in next, v130 do
	table.insert(Table_DevilFruitSniper, v734.Name);
	if v734.OnSale then
		table.insert(ShopDevilSell, v734.Name);
	end
end
_G.SelectFruit = "";
v74:Dropdown("Chọn Trái", Table_DevilFruitSniper, function(v735)
	_G.SelectFruit = v735;
end);
v74:Toggle("Mua Trái Đã Chọn", _G.BuyFruitSniper, function(v736)
	_G.BuyFruitSniper = v736;
end);
v74:Seperator("khác");
v74:Dropdown("Chọn Trái", Table_DevilFruitSniper, function(v737)
	_G.SelectFruitEat = v737;
end);
v74:Toggle("Ăn Trái Đã Chọn", _G.EatFruit, function(v738)
	_G.EatFruit = v738;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EatFruit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.BuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false);
			end
		end
	end);
end);
v74:Button("Quay Trái Ác Quỷ", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
v74:Button("Mở Shop Trái", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
v74:Toggle("Tự Động Lưu Trái", _G.StoreFruit, function(v740)
	_G.StoreFruit = v740;
end);
spawn(function()
	while wait() do
		if _G.StoreFruit then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") );
				end
			end);
		end
	end
end);
v74:Toggle("Dịch Chuyển Đến Trái", _G.Grabfruit, function(v741)
	_G.Grabfruit = v741;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for v2164, v2165 in pairs(game.Workspace:GetChildren()) do
				if v2165:IsA("Tool") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2165.Handle.CFrame;
				end
			end
		end
	end
end);
v74:Toggle("Bay Đến Trái", _G.Tweenfruit, function(v742)
	_G.Tweenfruit = v742;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait() do
		if _G.Tweenfruit then
			for v2166, v2167 in pairs(game.Workspace:GetChildren()) do
				if v2167:IsA("Tool") then
					topos(v2167.Handle.CFrame);
				end
			end
		end
	end
end);
v75:Seperator("Máy Chủ");
v75:Button("Vào Lại Máy Chủ", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
v75:Button("Đổi Máy Chủ", function()
	Hop();
end);
v75:Button("Đổi Máy Chủ Ít Người", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if  not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local v746 = math.huge;
	local v747;
	local v748;
	local v749 = "https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
	function serversearch()
		for v1922, v1923 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v749)).data) do
			if ((type(v1923) == "table") and (v1923.playing ~= nil) and (v746 > v1923.playing)) then
				v747 = v1923.maxPlayers;
				v746 = v1923.playing;
				v748 = v1923.id;
			end
		end
	end
	function getservers()
		serversearch();
		for v1924, v1925 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v749))) do
			if (v1924 == "nextPageCursor") then
				if v749:find("&cursor=") then
					local v2295 = v749:find("&cursor=");
					local v2296 = v749:sub(v2295);
					v749 = v749:gsub(v2296, "");
				end
				v749 = v749   .. "&cursor="   .. v1925 ;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if (( #game:GetService("Players"):GetPlayers() - 4) == v746) then
				return warn("It has same number of players (except you)");
			elseif (v748 == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v748);
	end
end);
v75:Button("Sao chép Id Máy Chủ", function()
	setclipboard(tostring(game.JobId));
end);
v75:Textbox("Nhập Id Máy Chủ", true, function(v750)
	_G.Job = v750;
end);
v75:Button("Vào Máy Chủ Đã Nhập Id", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
end);
v75:Seperator("linh tinh");
v75:Button("Mở Tilte", function()
	local v751 = {
		[1] = "getTitles"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v751));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
v75:Button("Mở Haki Màu", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
v75:Seperator("Đội");
v75:Button("Tham gia đội Hải Tặc", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
v75:Button("Tham gia đội Thủy quân lục chiến", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
v75:Toggle("Chống AFK", true, function()
	local v754 = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		v754:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		v754:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
v75:Seperator("Mã");
local v131 = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO"
};
v75:Button("Nhập Tất Cả Mã", function()
	function RedeemCode(v1060)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v1060);
	end
	for v1061, v1062 in pairs(v131) do
		RedeemCode(v1062);
	end
end);
v75:Dropdown("Chọn Mã Reset Chỉ Số", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, function(v755)
	_G.CodeSelect = v755;
end);
v75:Button("Nhập Mã Đã Chọn", function()
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v75:Seperator("Tình trạng");
v75:Dropdown("Chọn trạng thái Haki", {
	"Tình trạng 0",
	"Tình trạng 1",
	"Tình trạng 2",
	"Tình trạng 3",
	"Tình trạng 4",
	"Tình trạng 5"
}, function(v756)
	_G.SelectStateHaki = v756;
end);
v75:Button("Thay đổi trạng thái Haki", function()
	if (_G.SelectStateHaki == "Tình trạng 0") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
	elseif (_G.SelectStateHaki == "Tình trạng 1") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
	elseif (_G.SelectStateHaki == "Tình trạng 2") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
	elseif (_G.SelectStateHaki == "Tình trạng 3") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
	elseif (_G.SelectStateHaki == "Tình trạng 4") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
	elseif (_G.SelectStateHaki == "Tình trạng 5") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
	end
end);
local v132 = require(game.ReplicatedStorage.Util.CameraShaker);
v132:Stop();
local v133 = game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "KimP Roblox",
	Text = "Đã tải xong",
	Icon = "rbxthumb://type=Asset&id=82526416250283&w=150&h=150",
	Duration = 10
});