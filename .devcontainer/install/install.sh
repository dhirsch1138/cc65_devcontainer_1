mkdir .minipro_fromgitlab
cd .minipro_fromgitlab
git clone https://gitlab.com/DavidGriffith/minipro.git
cd minipro
#dpkg-buildpackge performs the make and spits out the deb in parent directory
fakeroot dpkg-buildpackage -b -us -uc
cd ..
# find the generated deb (but not the debug symbols) and installs them
find -H -name "*.deb" -not -name "*dbgsym*" | xargs sudo dpkg -i
exit