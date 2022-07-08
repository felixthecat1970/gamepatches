--gametitle=Hokuto no Ken Shinpan no Sousousei Kengou Retsuden (Japan) CRC-0x9E8F0454 SLPM_666.60
--comment= PS4 port Native 480p sdtv mode + extend 640x480 v4 by felixthecat1970

apiRequest(2.0)	-- request version 0.1 API. Calling apiRequest() is mandatory.

local eeObj = getEEObject()
local emuObj = getEmuObject()
local gsObj	= getGsObject()

local lightDef0 = {153, 0, 0}
local lightDef1 = {0, 0, 153}

emuObj.PadSetLightBar(0, lightDef0, 1, lightDef1)

--//Native 480p sdtv mode + 640x480

local options = function()

eeObj.WriteMem32(0x20292720,0xA38286E8)
eeObj.WriteMem32(0x202ACA50,0x0000102D)
eeObj.WriteMem32(0x202B3EB8,0x0000102D)
eeObj.WriteMem32(0x202B4068,0x0000102D)
eeObj.WriteMem32(0x002B3D38,0x24060000)

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
