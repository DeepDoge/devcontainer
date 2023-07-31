 dotnet publish devcontainer -r linux-x64 -o ./dist /p:PublishSingleFile=true /p:IncludeNativeLibrariesForSelfExtract=true --self-contained true
 rm ./dist/devcontainer.pdb