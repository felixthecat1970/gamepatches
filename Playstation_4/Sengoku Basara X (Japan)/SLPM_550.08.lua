--gametitle=Sengoku Basara X (Japan) SLPM_550.08;1) Game CRC = 0x721DEBE4
--comment=PS4 port native sdtv 480p mode unlock + extend resolution 640x480 v4 by felixthecat1970

apiRequest(2.0)	-- request version 0.1 API. Calling apiRequest() is mandatory.

local eeObj = getEEObject()
local emuObj = getEmuObject()
local gsObj	= getGsObject()

local lightDef0 = {153, 0, 0}
local lightDef1 = {0, 0, 153}

emuObj.PadSetLightBar(0, lightDef0, 1, lightDef1)

--enable 480p - 640x480 - Qol options

local options = function()

eeInsnReplace(0x001004E4, 0x00000000, 0xA2620016)
eeInsnReplace(0x0010CF00, 0x24040001, 0x24040000)
eeInsnReplace(0x001EA6B4, 0x24060001, 0x24060000)
eeInsnReplace(0x00386720, 0x002A0630, 0x002A0640)
eeInsnReplace(0x00386740, 0x002A0740, 0x002A0640)
eeInsnReplace(0x002A0550, 0x24020001, 0x24020000)
eeInsnReplace(0x001EA7D0, 0xAE00FCB4, 0xAE0AFCB4)
eeInsnReplace(0x001004CC, 0x0C0C5B3C, 0x00000000)

end
emuObj.AddVsyncHook(options)

--soft filter L3=OFF R3=ON

local CheckInputs = function()

local pad_bits = emuObj.GetPad()
local UP		= pad_bits &  0x0010
local DOWN		= pad_bits &  0x0040
local LEFT		= pad_bits &  0x0080
local RIGHT		= pad_bits &  0x0020
local Triangle	= pad_bits &  0x1000
local Cross		= pad_bits &  0x4000
local Square	= pad_bits &  0x8000
local Circle	= pad_bits &  0x2000
local L1		= pad_bits &  0x0400
local L2		= pad_bits &  0x0100
local L3		= pad_bits &  0x0002
local R1		= pad_bits &  0x0800
local R2		= pad_bits &  0x0200
local R3		= pad_bits &  0x0004
local Select	= pad_bits &  0x0001
local Start		= pad_bits &  0x0008	

if (L3 ~= 0) then
	 gsObj.SetUpscaleMode("point")
	end
if (R3 ~= 0) then
     gsObj.SetUpscaleMode("gpu")
	end
end
emuObj.AddVsyncHook(CheckInputs)