-- 简单阴影
-- 作者：houshuu
-- AddonSkins, 任务追踪, 部分 ElvUI 组件美化修改自 BenikUI

local _G = _G
local unpack = unpack
local hooksecurefunc = hooksecurefunc

local E, L, V, P, G = unpack(ElvUI)
local WT = E:GetModule("WindTools")
local A = E:GetModule('Auras')
local S = E:GetModule('Skins')
local UF = E:GetModule('UnitFrames')
local TT = E:GetModule('Tooltip')
local DATABAR = E:GetModule('DataBars')
local EasyShadow = E:NewModule('Wind_EasyShadow')
local MMB = E:GetModule('Wind_MinimapButtons')
local LSM = LibStub("LibSharedMedia-3.0")

-- 不需要检测插件载入即可上阴影的框体
EasyShadow.BlzFrames = {
	["MMHolder"] = L["MiniMap"],
	["GameMenuFrame"] = L["Game Menu"],
	["InterfaceOptionsFrame"] = L["Interface Options"],
	["VideoOptionsFrame"] = L["Video Options"],
}

EasyShadow.elvui_frame_list = {
	["actionbars"] = L["Actionbars"],
	["auras"] = L["Auras"],
	["castbar"] = L["Cast Bar"],
	["classbar"] = L["Class Bar"],
	["databars"] = L["Databars"],
	["general"] = L["General"],
	["quest_item"] = L["Quest Icon"],
	["unitframes"] = L["Unit Frames"],
	["tooltips"] = L["Game Tooltip"],
}

EasyShadow.addonskins_list = {
	["weakaura"] = L["Weakaura 2"],
	["bigwigs"] = L["Bigwigs"],
	["general"] = L["General"],
}

EasyShadow.windtools_list = {
	["minimap_button"] = L["Minimap Buttons"],
}

local function shadow_bigwigs(self, event, addon)
	local AS = unpack(AddOnSkins)
	if event == 'PLAYER_ENTERING_WORLD' then
		if BigWigsLoader then
			BigWigsLoader.RegisterMessage('AddOnSkins', "BigWigs_FrameCreated", function(event, frame, name)
				if name == "QueueTimer" then
					AS:SkinStatusBar(frame)
					frame:ClearAllPoints()
					frame:SetPoint('TOP', '$parent', 'BOTTOM', 0, -(AS.PixelPerfect and 2 or 4))
					frame:SetHeight(16)
					frame:CreateShadow()
				end
			end)
		end
	end

	if event == 'ADDON_LOADED' and addon == 'BigWigs_Plugins' then
		BigWigsInfoBox:CreateShadow()
		BigWigsAltPower:CreateShadow()

		local buttonsize = 19
		local FreeBackgrounds = {}

		local CreateBG = function()
			local BG = CreateFrame('Frame')
			BG:SetTemplate('Transparent')
			BG:CreateShadow()
			return BG
		end

		local function FreeStyle(bar, FreeBackgrounds)
			local bg = bar:Get('bigwigs:AddOnSkins:bg')
			if bg then
				bg:ClearAllPoints()
				bg:SetParent(UIParent)
				bg:Hide()
				FreeBackgrounds[#FreeBackgrounds + 1] = bg
			end

			local ibg = bar:Get('bigwigs:AddOnSkins:ibg')
			if ibg then
				ibg:ClearAllPoints()
				ibg:SetParent(UIParent)
				ibg:Hide()
				FreeBackgrounds[#FreeBackgrounds + 1] = ibg
			end

			bar.candyBarIconFrame:ClearAllPoints()
			bar.candyBarIconFrame:SetPoint('TOPLEFT')
			bar.candyBarIconFrame:SetPoint('BOTTOMLEFT')

			bar.candyBarBar:ClearAllPoints()
			bar.candyBarBar.SetPoint = nil
			bar.candyBarBar:SetPoint('TOPRIGHT')
			bar.candyBarBar:SetPoint('BOTTOMRIGHT')
		end

		local function GetBG(FreeBackgrounds)
			if #FreeBackgrounds > 0 then
				return tremove(FreeBackgrounds)
			else
				return CreateBG()
			end
		end

		local function SetupBG(bg, bar, ibg)
			bg:SetParent(bar)
			bg:SetFrameStrata(bar:GetFrameStrata())
			bg:SetFrameLevel(bar:GetFrameLevel() - 1)
			bg:ClearAllPoints()
			if ibg then
				bg:SetOutside(bar.candyBarIconFrame)
				bg:SetBackdropColor(0, 0, 0, 0)
			else
				bg:SetOutside(bar)
				bg:SetBackdropColor(unpack(AS.BackdropColor))
			end
			bg:Show()
		end

		local function ApplyStyle(bar, FreeBackgrounds, buttonsize)
			bar:SetHeight(buttonsize)

			local bg = GetBG(FreeBackgrounds)
			SetupBG(bg, bar)
			bar:Set('bigwigs:AddOnSkins:bg', bg)

			if bar.candyBarIconFrame:GetTexture() then
				local ibg = GetBG(FreeBackgrounds)
				SetupBG(ibg, bar, true)
				bar:Set('bigwigs:AddOnSkins:ibg', ibg)
			end

			bar.candyBarBar:ClearAllPoints()
			bar.candyBarBar:SetAllPoints(bar)
			bar.candyBarBar.SetPoint = AS.Noop
			bar.candyBarBar:SetStatusBarTexture(AS.NormTex)
			bar.candyBarBackground:SetTexture(AS.NormTex)

			bar.candyBarIconFrame:ClearAllPoints()
			bar.candyBarIconFrame:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMLEFT', -7, 0)
			bar.candyBarIconFrame:SetSize(buttonsize, buttonsize)
			AS:SkinTexture(bar.candyBarIconFrame)

			bar.candyBarLabel:ClearAllPoints()
			bar.candyBarLabel:SetPoint("LEFT", bar, "LEFT", 2, 0)
			bar.candyBarLabel:SetPoint("RIGHT", bar, "RIGHT", -2, 0)

			bar.candyBarDuration:ClearAllPoints()
			bar.candyBarDuration:SetPoint("LEFT", bar, "LEFT", 2, 0)
			bar.candyBarDuration:SetPoint("RIGHT", bar, "RIGHT", -2, 0)
		end

		local function ApplyStyleHalfBar(bar, FreeBackgrounds, buttonsize)
			local bg = GetBG(FreeBackgrounds)
			SetupBG(bg, bar)
			bar:Set('bigwigs:AddOnSkins:bg', bg)

			if bar.candyBarIconFrame:GetTexture() then
				local ibg = GetBG(FreeBackgrounds)
				SetupBG(ibg, bar, true)
				bar:Set('bigwigs:AddOnSkins:ibg', ibg)
			end

			bar:SetHeight(buttonsize / 2)

			bar.candyBarBar:ClearAllPoints()
			bar.candyBarBar:SetAllPoints(bar)
			bar.candyBarBar.SetPoint = AS.Noop
			bar.candyBarBar:SetStatusBarTexture(AS.NormTex)
			bar.candyBarBackground:SetTexture(unpack(AS.BackdropColor))

			bar.candyBarIconFrame:ClearAllPoints()
			bar.candyBarIconFrame:SetPoint('BOTTOMRIGHT', bar, 'BOTTOMLEFT', -7, 0)
			bar.candyBarIconFrame:SetSize(buttonsize, buttonsize)
			AS:SkinTexture(bar.candyBarIconFrame)

			bar.candyBarLabel:ClearAllPoints()
			bar.candyBarLabel:SetPoint("LEFT", bar, "LEFT", 2, AS:AdjustForTheme(10))
			bar.candyBarLabel:SetPoint("RIGHT", bar, "RIGHT", -2, AS:AdjustForTheme(10))

			bar.candyBarDuration:ClearAllPoints()
			bar.candyBarDuration:SetPoint("LEFT", bar, "LEFT", 2, AS:AdjustForTheme(10))
			bar.candyBarDuration:SetPoint("RIGHT", bar, "RIGHT", -2, AS:AdjustForTheme(10))

			AS:SkinTexture(bar.candyBarIconFrame)
		end

		local BigWigsBars = BigWigs:GetPlugin('Bars')
		BigWigsBars:RegisterBarStyle('AddOnSkins', {
			apiVersion = 1,
			version = 1,
			GetSpacing = function() return 3 end,
			ApplyStyle = function(bar) ApplyStyle(bar, FreeBackgrounds, buttonsize) end,
			BarStopped = function(bar) FreeStyle(bar, FreeBackgrounds) end,
			GetStyleName = function() return 'AddOnSkins' end,
		})
		BigWigsBars:RegisterBarStyle('AddOnSkins Half-Bar', {
			apiVersion = 1,
			version = 1,
			GetSpacing = function() return 13 end,
			ApplyStyle = function(bar) ApplyStyleHalfBar(bar, FreeBackgrounds, buttonsize) end,
			BarStopped = function(bar) FreeStyle(bar, FreeBackgrounds) end,
			GetStyleName = function() return 'AddOnSkins Half-Bar' end,
		})

		AS:UnregisterSkinEvent('BigWigs', event)
	end
end

local function shadow_weakauras()
	local function Skin_WeakAuras(frame, ftype)
		if frame.Backdrop then frame.Backdrop:CreateShadow() end
	end
	local Create_Icon, Modify_Icon = WeakAuras.regionTypes.icon.create, WeakAuras.regionTypes.icon.modify
	local Create_AuraBar, Modify_AuraBar = WeakAuras.regionTypes.aurabar.create, WeakAuras.regionTypes.aurabar.modify

	WeakAuras.regionTypes.icon.create = function(parent, data)
		local region = Create_Icon(parent, data)
		Skin_WeakAuras(region, 'icon')
		return region
	end

	WeakAuras.regionTypes.aurabar.create = function(parent)
		local region = Create_AuraBar(parent)
		Skin_WeakAuras(region, 'aurabar')
		return region
	end

	WeakAuras.regionTypes.icon.modify = function(parent, region, data)
		Modify_Icon(parent, region, data)
		Skin_WeakAuras(region, 'icon')
	end

	WeakAuras.regionTypes.aurabar.modify = function(parent, region, data)
		Modify_AuraBar(parent, region, data)
		Skin_WeakAuras(region, 'aurabar')
	end

	for weakAura, _ in pairs(WeakAuras.regions) do
		if WeakAuras.regions[weakAura].regionType == 'icon' or WeakAuras.regions[weakAura].regionType == 'aurabar' then
			Skin_WeakAuras(WeakAuras.regions[weakAura].region, WeakAuras.regions[weakAura].regionType)
		end
	end
end

local function shadow_objective_tracker()
	-- 修改自 BenikUI

	-- 收起按钮
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:CreateShadow(5)
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton.shadow:SetOutside()

	local function ProgressBarsShadows(self, _, line)
		local progressBar = line and line.ProgressBar
		local bar = progressBar and progressBar.Bar
		if not bar then return end
		local icon = bar.Icon
		local label = bar.Label

		if not progressBar.hasShadow then
			bar.backdrop:CreateShadow()
			progressBar.backdrop:CreateShadow()
			-- 稍微移动下图标位置，防止阴影重叠，更加美观！
			if icon then icon:Point("LEFT", bar, "RIGHT", E.PixelMode and 7 or 11, 0) end
			-- 顺便修正一下字体位置，反正不知道为什么 ElvUI 要往上移动一个像素
			if label then
				label:ClearAllPoints()
				label:Point("CENTER", bar, 0, 0)
				label:FontTemplate(E.media.normFont, 14, "OUTLINE")
			end
			progressBar.hasShadow = true
		end
	end

	local function ItemButtonShadows(self, block)
		local item = block.itemButton
		if item and not item.shadow then
			item:CreateShadow()
		end
	end

	local function FindGroupButtonShadows(block)
		if block.hasGroupFinderButton and block.groupFinderButton then
			if block.groupFinderButton and not block.groupFinderButton.hasShadow then
				block.groupFinderButton:SetTemplate("Transparent")
				block.groupFinderButton:CreateShadow()
				block.groupFinderButton.hasShadow = true
			end
		end
	end

	hooksecurefunc(BONUS_OBJECTIVE_TRACKER_MODULE,"AddProgressBar", ProgressBarsShadows)
	hooksecurefunc(WORLD_QUEST_TRACKER_MODULE,"AddProgressBar", ProgressBarsShadows)
	hooksecurefunc(DEFAULT_OBJECTIVE_TRACKER_MODULE,"AddProgressBar", ProgressBarsShadows)
	hooksecurefunc(SCENARIO_TRACKER_MODULE,"AddProgressBar", ProgressBarsShadows)
	hooksecurefunc(QUEST_TRACKER_MODULE,"SetBlockHeader", ItemButtonShadows)
	hooksecurefunc(WORLD_QUEST_TRACKER_MODULE,"AddObjective", ItemButtonShadows)
	hooksecurefunc("QuestObjectiveSetupBlockButton_FindGroup", FindGroupButtonShadows)
end

local function shadow_alerts()
	local function create_alert_shadow(alert)
		if not alert then return end
		if alert.backdrop then alert.backdrop:CreateShadow() end
		if alert.Label and alert.Icon then
			alert.Label:ClearAllPoints()
			alert.Label:SetPoint("TOPLEFT", alert.Icon, "TOPRIGHT", 5, 2)
		end
		if alert.Icon then alert.Icon.b:CreateShadow() end
		if alert.SpecIcon then alert.SpecIcon.b:CreateShadow() end
	end

	-- 成就
	hooksecurefunc(_G.AchievementAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.CriteriaAlertSystem, "setUpFunction", create_alert_shadow)

	-- 遭遇
	hooksecurefunc(_G.DungeonCompletionAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GuildChallengeAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.InvasionAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.ScenarioAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.WorldQuestCompleteAlertSystem, "setUpFunction", create_alert_shadow)

	-- 要塞
	hooksecurefunc(_G.GarrisonFollowerAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonShipFollowerAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonTalentAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonBuildingAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonMissionAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonShipMissionAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.GarrisonRandomMissionAlertSystem, "setUpFunction", create_alert_shadow)

	-- 荣誉
	hooksecurefunc(_G.HonorAwardedAlertSystem, "setUpFunction", create_alert_shadow)

	-- 拾取
	hooksecurefunc(_G.LegendaryItemAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.LootAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.LootUpgradeAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.MoneyWonAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.StorePurchaseAlertSystem, "setUpFunction", create_alert_shadow)
	
	-- 专业技能
	hooksecurefunc(_G.DigsiteCompleteAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.NewRecipeLearnedAlertSystem, "setUpFunction", create_alert_shadow)

	-- 宠物 / 坐骑
	hooksecurefunc(_G.NewPetAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.NewMountAlertSystem, "setUpFunction", create_alert_shadow)
	hooksecurefunc(_G.NewToyAlertSystem, "setUpFunction", create_alert_shadow)
end

function EasyShadow:ShadowBlzFrames()
	if not self.db then return end
	for k, v in pairs(self.BlzFrames) do
		if self.db.BlzFrames[k] then _G[k]:CreateShadow() end
	end
end

function EasyShadow:ShadowElvUIFrames()
	if not self.db then return end

	if self.db.elvui.general then
		-- 为 ElvUI 美化皮肤模块添加阴影功能
		hooksecurefunc(S, "HandleTab", function(_, tab) if tab and tab.backdrop then tab.backdrop:CreateShadow(2) end end)
		hooksecurefunc(S, "HandleButton", function(_, button) if button then button:CreateShadow(2) end end)
		hooksecurefunc(S, "HandleEditBox", function(_, f) if f and f.backdrop then f.backdrop:CreateShadow() end end)
		hooksecurefunc(S, "HandlePortraitFrame", function(_, f) if f and f.backdrop then f.backdrop:CreateShadow() end end)

		-- 任务追踪
		shadow_objective_tracker()

		-- 提醒
		shadow_alerts()
		
		-- 人物面板
		_G.CharacterFrame:CreateShadow()
		for i=1, 4 do
			local tab = _G["CharacterFrameTab"..i]
			if tab and tab.backdrop then tab.backdrop:CreateShadow(2) end
		end

		-- 团队控制
		if _G.RaidUtility_ShowButton then _G.RaidUtility_ShowButton:CreateShadow() end
		if _G.RaidUtilityPanel then _G.RaidUtilityPanel:CreateShadow() end

		-- 镜像时间条 呼吸条
		for i = 1, MIRRORTIMER_NUMTIMERS do
			local statusBar = _G['MirrorTimer'..i..'StatusBar']
			if statusBar.backdrop then statusBar.backdrop:CreateShadow() end
		end

		-- 换装备
		EquipmentFlyoutFrameButtons:CreateShadow()
	end

	-- 光环条
	if self.db.elvui.auras then
		hooksecurefunc(A, "CreateIcon", function(_, button) if button then button:CreateShadow() end end)
		hooksecurefunc(A, "UpdateAura", function(_, button) if button then button:CreateShadow() end end)
	end

	-- 单位框体
	if self.db.elvui.unitframes then
		-- 低频度更新单位框体外围阴影
		hooksecurefunc(UF, "UpdateNameSettings", function(_, frame) if frame then frame:CreateShadow() end end)
		-- 在 oUF 更新仇恨值阴影时判断是否隐藏美化阴影
		hooksecurefunc(UF, "Configure_Threat", function(_, frame)
			local threat = frame.ThreatIndicator
			if not threat then return end
			threat.PostUpdate = function(self, unit, status, r, g, b)
				UF.UpdateThreat(self, unit, status, r, g, b)
				local parent = self:GetParent()
				if (parent.unit ~= unit) or not unit then return end
				local db = parent.db
				if not db then return end
				if db.threatStyle == 'GLOW' and parent.shadow then parent.shadow:SetShown(not threat.glow:IsShown()) end
			end
		end)
		-- 为单位框体光环提供边缘美化
		hooksecurefunc(UF, "UpdateAuraSettings", function(_, _, button) if button then button:CreateShadow() end end)
	end

	-- 职业条
	if self.db.elvui.classbar then
		hooksecurefunc(UF, "Configure_ClassBar", function(_, frame)
			local bars = frame[frame.ClassBar]
			if bars then bars:CreateShadow() end
		end)
	end

	-- 施法条
	if self.db.elvui.castbar then
		hooksecurefunc(UF, "Configure_Castbar", function(_, frame)
			frame.Castbar:CreateShadow()
			if not frame.db.castbar.iconAttached then
				frame.Castbar.ButtonIcon.bg:CreateShadow()
			end
		end)
	end

	-- 鼠标提示
	if self.db.elvui.tooltips then
		hooksecurefunc(TT, "SetStyle", function(_, tt) if tt then tt:CreateShadow(4) end end)
		hooksecurefunc(TT, "GameTooltip_SetDefaultAnchor", function(_, tt)
			if tt:IsForbidden() or E.private.tooltip.enable ~= true then return end
			if _G.GameTooltipStatusBar then _G.GameTooltipStatusBar:CreateShadow(4) end
		end)
	end

	-- 数据条
	if self.db.elvui.databars then
		if DATABAR.db.azerite.enable then _G.ElvUI_AzeriteBar:CreateShadow() end
		if DATABAR.db.experience.enable then _G.ElvUI_ExperienceBar:CreateShadow() end
		if DATABAR.db.reputation.enable then _G.ElvUI_ReputationBar:CreateShadow() end
		if DATABAR.db.honor.enable then _G.ElvUI_HonorBar:CreateShadow() end
	end

	if self.db.elvui.actionbars then
		-- 常规动作条
		local actionbar_list = {
			"ElvUI_Bar1Button",
			"ElvUI_Bar2Button",
			"ElvUI_Bar3Button",
			"ElvUI_Bar4Button",
			"ElvUI_Bar5Button",
			"ElvUI_Bar6Button",
			"ElvUI_StanceBarButton",
			"ElvUI_TotemBarTotem",
			"PetActionButton",
		}
		for _, item in pairs(actionbar_list) do
			for i = 1, 12 do
				local button = _G[item..i]
				if button and button.backdrop then button.backdrop:CreateShadow() end
			end
		end

		-- 非常规动作条
		if _G.ZoneAbilityFrame and _G.ZoneAbilityFrame.SpellButton then
			-- 区域技能
			_G.ZoneAbilityFrame.SpellButton:CreateShadow()
			-- 特殊技能栏 1 好像也没遇到需要用到 2 的，先放着吧
			_G.ExtraActionButton1:CreateShadow()
		end
	end
end

function EasyShadow:Initialize()
	self.db = E.db.WindTools["Interface"]["EasyShadow"]
	if not self.db["enabled"] then return end

	self:ShadowBlzFrames()
	self:ShadowElvUIFrames()

	if IsAddOnLoaded("AddOnSkins") then
		self:AddOnSkins()
	end
end

function EasyShadow:AddOnSkins()
	-- 用 AddOnSkins 美化的窗体标签页
	local AS = unpack(AddOnSkins)
	if self.db.addonskins.general then
		hooksecurefunc(AS, "SkinTab", function() if tab and tab.backdrop then tab.backdrop:CreateShadow() end end)
	end
	
	-- Weakaura
	if self.db.addonskins.weakaura and AS:CheckAddOn('WeakAuras') then
		AS:RegisterSkin('WeakAuras', shadow_weakauras, 'ADDON_LOADED')
	end

	-- Bigwigs
	if self.db.addonskins.bigwigs and AS:CheckAddOn('BigWigs') then
		AS:RegisterSkin('BigWigs', shadow_bigwigs, 'ADDON_LOADED')
		AS:RegisterSkinForPreload('BigWigs_Plugins', shadow_bigwigs)
	end
end


local function InitializeCallback()
	EasyShadow:Initialize()
end

E:RegisterModule(EasyShadow:GetName(), InitializeCallback)