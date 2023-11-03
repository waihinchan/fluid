@ECHO OFF
SET DXC="E:\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "E:\UE_5.2\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality -disable-lifetime-markers /T vs_6_6 /E Main /Fc LumenCardVertexShader.d3dasm /Fo LumenCardVertexShader.dxil LumenCardVertexShader.usf
:END
PAUSE
