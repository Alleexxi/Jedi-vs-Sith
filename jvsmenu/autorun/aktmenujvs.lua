-- Config

--Text beim Anonymen anflug
local Unbekanterflug = "Anonymer"
local letzterplanet = "Geonosis"

--Das hier unten in ruhe lassen

local isopen = false



bind = {}

local Bindings = {}

--[[---------------------------------------------------------
    GetTable()
    Returns a table of all the bindings.
-----------------------------------------------------------]]
function bind.GetTable() return Bindings end

--[[---------------------------------------------------------
    Add( number button, any identifier, function func )
    Add a binding to run when the button is pressed.
-----------------------------------------------------------]]
function bind.Add( btn, name, func )

	if not isfunction( func ) then return end
	if not isnumber( btn ) then return end

	if Bindings[ btn ] == nil then
		Bindings[ btn ] = {}
	end

	Bindings[ btn ][ name ] = func

end


function bind.Remove( btn, name )

	if not isnumber( btn ) then return end
	if not Bindings[ btn ] then return end

	Bindings[ btn ][ name ] = nil

end

local FirstPressed = {}

hook.Add( "Think", "CallBindings", function()
	for btn, tbl in pairs( Bindings ) do
		local cache = input.IsButtonDown( btn )
		if cache and FirstPressed[ btn ] then
			for _, func in pairs( tbl ) do func() end
		end
		FirstPressed[ btn ] = not cache
	end
end )




concommand.Add("aktmenu", function()
local frame = vgui.Create( "DFrame" )
frame:SetSize( 250, 600 )
frame:Center()
frame:MakePopup()
frame:SetTitle("Landen")
frame:ShowCloseButton( false )
frame.Paint = function()
	draw.RoundedBox( 8, 0, 0, frame:GetWide(), frame:GetTall(), Color( 0, 0, 0, 150 ) )
end



local Anonym = frame:Add( "DCheckBoxLabel" )
Anonym:SetPos( 25, 550 )
Anonym:SetText("Unbekanter Anflug?")
Anonym:SetValue( false )
Anonym:SizeToContents()

local endor = vgui.Create( "DButton", frame ) 
endor:SetText( "Endor" )					
endor:SetPos( 25, 50 )					
endor:SetSize( 200, 30 )					
endor.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Endor*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Endor*" )
end
frame:Close()
isopen = false
end

local Tython = vgui.Create( "DButton", frame ) 
Tython:SetText( "Tython" )					
Tython:SetPos( 25, 100 )					
Tython:SetSize( 200, 30 )					
Tython.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Tython*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Tython*" )
end
frame:Close()
isopen = false
end

local ilum = vgui.Create( "DButton", frame ) 
ilum:SetText( "Ilum" )					
ilum:SetPos( 25, 150 )					
ilum:SetSize( 200, 30 )					
ilum.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Ilum*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Ilum*" )
end
frame:Close()
isopen = false
end

local Korriban = vgui.Create( "DButton", frame ) 
Korriban:SetText( "Korriban" )					
Korriban:SetPos( 25, 200 )					
Korriban:SetSize( 200, 30 )					
Korriban.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Korriban*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Korriban*" )
end
frame:Close()
isopen = false
end

local Tatooine = vgui.Create( "DButton", frame ) 
Tatooine:SetText( "Tatooine" )					
Tatooine:SetPos( 25, 250 )					
Tatooine:SetSize( 200, 30 )					
Tatooine.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Tatooine*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Tatooine*" )
end
frame:Close()
isopen = false
end

local Hoth = vgui.Create( "DButton", frame ) 
Hoth:SetText( "Hoth" )					
Hoth:SetPos( 25, 300 )					
Hoth:SetSize( 200, 30 )					
Hoth.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Hoth*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Hoth*" )
end
frame:Close()
isopen = false
end

local SZ = vgui.Create( "DButton", frame ) 
SZ:SetText( "SZ" )					
SZ:SetPos( 25, 350 )					
SZ:SetSize( 200, 30 )					
SZ.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf SZ*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf SZ*" )
end
frame:Close()
isopen = false
end

local AstroBasis = vgui.Create( "DButton", frame ) 
AstroBasis:SetText( "Astro Basis" )					
AstroBasis:SetPos( 25, 400 )					
AstroBasis:SetSize( 200, 30 )					
AstroBasis.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt  *"..Unbekanterflug.." Landeanflug auf Astro Basis*" )
else
	RunConsoleCommand( "say", "/akt  *Landeanflug auf Astro Basis*" )
end
frame:Close()
isopen = false
end

local planet = vgui.Create( "DButton", frame ) 
planet:SetText( "Geonosis" )					
planet:SetPos( 25, 450 )					
planet:SetSize( 200, 30 )					
planet.DoClick = function()
	if Anonym:GetChecked() == true then
	RunConsoleCommand( "say", "/akt *"..Unbekanterflug.." Landeanflug auf "..letzterplanet.."*" )
else
	RunConsoleCommand( "say", "/akt Landeanflug auf "..letzterplanet.."*" )
end
frame:Close()
isopen = false
end
end)

bind.Add( KEY_J, "yeeet", function()
	if isopen == false then
 	   RunConsoleCommand("aktmenu")
 	   isopen = true
	end
end )
