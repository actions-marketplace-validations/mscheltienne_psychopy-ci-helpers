#!/bin/bash -e

sudo apt update
sudo apt install libusb-1.0-0-dev portaudio19-dev libasound2-dev libsdl2-2.0-0 libnotify4 freeglut3-dev
python -m pip install --progress-bar off --upgrade pip setuptools
readonly py_version=$(python -c 'import sys; print("".join(map(str, sys.version_info[:2])))')
readonly wx_name="wxPython-4.2.1-cp${py_version}-cp${py_version}-linux_x86_64.whl"
curl https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-22.04/${wx_name} -o ${wx_name}
python -m pip install --progress-bar off ${wx_name}
python -m pip install --progress-bar off psychopy psychtoolbox psychopy-sounddevice
