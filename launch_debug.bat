for %%i in (ModPacker-*.jar) do (
	start "" "./runtime/bin/java.exe" -cp "%%i" me.andre111.halleytool.HalleyTool
)
