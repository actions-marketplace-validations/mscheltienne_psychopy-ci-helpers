[![tests](https://github.com/mscheltienne/setup-psychopy/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/mscheltienne/setup-psychopy/actions/workflows/test.yml)
[![monitor](https://github.com/mscheltienne/setup-psychopy/actions/workflows/monitor.yml/badge.svg?branch=main)](https://github.com/mscheltienne/setup-psychopy/actions/workflows/monitor.yml)

# setup-psychopy

[PsychoPy](https://www.psychopy.org/) can be difficult to setup on github action
runners. This action covers install on `linux-latest`, `macos-latest`, `windows-latest`.

## Usage

Prior to running this action, python must be installed with
[actions/setup-python](https://github.com/marketplace/actions/setup-python).

```yaml
- name: Setup Python ${{ matrix.python-version }}
  uses: actions/setup-python@v4
  with:
    python-version: 3.9
    architecture: 'x64'
- name: Install Psychopy
  uses: mscheltienne/setup-psychopy@0.1.6
```

## General information

For now, the version of PsychoPy installed may differ depending on the runner OS and on
the python-version. The installation is untested, and might not be fully functional. A
virtual soundcard and monitor are not created. PRs are welcome to improve the
installation and the functionality coverage.

## License

The scripts and documentation in this project are released under the
[MIT License](LICENSE).
