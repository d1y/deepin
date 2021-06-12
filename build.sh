# author: d1y<chenhonzhou@gmail.com>

# TODO impl linux and macos build

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [  "${machine}" == 'MinGw' ]
then
  
  # before use `fluter pub get` command
  flutter build windows --no-sound-null-safety -v
  flutter pub run msix:create

fi