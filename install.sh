sudo apt-get install cmake libopencv-dev qtbase5-dev libqt5opengl5-dev libopenni2-dev
cd ReSLAM-1.2.4
mkdir build
cd build
cmake ../ -DBUILD_GUI=ON
make -j4
sudo make install