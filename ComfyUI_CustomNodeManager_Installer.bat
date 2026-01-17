@echo off
echo This will take a while to download, go drink some coffee and layback while we install this :)

timeout /t 5


curl -L -o ComfyUI_windows_portable_nvidia_cu128.7z ^
https://github.com/Comfy-Org/ComfyUI/releases/download/v0.9.2/ComfyUI_windows_portable_nvidia_cu128.7z

timeout /t 3 /nobreak >nul

"C:\Program Files\7-Zip\7z.exe" x ComfyUI_windows_portable_nvidia_cu128.7z

del ComfyUI_windows_portable_nvidia_cu128.7z

cd ComfyUI_windows_portable\ComfyUI\custom_nodes

git clone https://github.com/ltdrdata/ComfyUI-Manager comfyui-manager

echo DONE!
pause