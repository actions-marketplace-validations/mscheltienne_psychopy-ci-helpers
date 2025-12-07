#!/bin/bash -e

python -m pip install --progress-bar off --upgrade pip setuptools
readonly py_version=$(python -c 'import sys; print("".join(map(str, sys.version_info[:2])))')
if [[ $py_version == "310" ]]; then
    python -m pip install --progress-bar off git+https://github.com/psychopy/psychopy
else
    python -m pip install --progress-bar off psychopy
fi
python -m pip install --progress-bar off psychtoolbox psychopy-sounddevice
