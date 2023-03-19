for %%i in (ModPacker-*.jar) do (
	start "" "./runtime/bin/javaw.exe" -cp "%%i" me.andre111.halleytool.HalleyTool
)
