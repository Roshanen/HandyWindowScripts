@echo off
echo === CPU Information ===
wmic cpu get Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors
echo.

echo === Memory Information ===
powershell -Command "Get-WmiObject -Class Win32_PhysicalMemory | Select-Object Manufacturer, Capacity, Speed, MemoryType, DeviceLocator, BankLabel | Format-Table -AutoSize"
echo.

echo === Total Physical Memory ===
wmic computersystem get TotalPhysicalMemory
echo.

echo === Motherboard Information ===
wmic baseboard get Manufacturer, Product
echo.

echo === GPU Information ===
wmic path win32_videocontroller get Name, AdapterRAM, DriverVersion
echo.

echo === Disk Space Information ===
wmic logicaldisk get DeviceID, Size, FreeSpace, FileSystem
echo.

pause
