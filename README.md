# MQTT - Mosquitto - PAHO
Dependencies

* [mosquitto](https://github.com/eclipse/mosquitto)
* [paho.mqtt.c](https://github.com/eclipse/paho.mqtt.c)

*Following packages have to be installed:
```Shell
apt-get install build-essential gcc make cmake cmake-gui cmake-curses-gui libssl-dev doxygen graphviz libc-ares-dev
```
Steps to build and install [mosquitto](https://github.com/eclipse/mosquitto):
```Shell
git clone https://github.com/eclipse/mosquitto
cd mosquitto
mkdir build
cd build
cmake ..
make
sudo make install
```
Steps to build and install [paho.mqtt.c](https://github.com/eclipse/paho.mqtt.c)
```Shell
git clone https://github.com/eclipse/paho.mqtt.c
cd paho.mqtt.c
// change CMAKE_MINIMUM_REQUIRED(VERSION 3.0) to CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
// in line 20 of file CMakeLists.txt to avoid some unexpected errors
mkdir build_paho_library
cd build_paho_library
cmake ..
make
sudo make install
sudo ldconfig
```

#Steps to build and run samples to see how MQTT protocol works:
```Shell
git clone 
cd mqtt-mosquitto-paho-sample
./build.sh
```
In 1st Terminal, run ``mosquito`` server:
```Shell
mosquitto
```
In 2nd Terminal, run ``async_subscription_example`` app:
```Shell
./async_subscription_example
```
In 3rd Terminal, run ``async_publication_example`` and/or ``sync_publication_example`` app:
```Shell
./async_publication_example
./sync_publication_example
```


You also can run client apps in another hosts (PCs or virtual machines). 
To do this, change variable ``ADDRESS`` in source code with the server's IP and build again.
