# TATEditor

This user package doesn't satisfy standards of Arch's packages.

* Executing `makepkg -i` doesn't install anything
* After executing `makepkg` an install script named `install` will be generated
* Executing `./install` will install TATEditor to `~/.local/share/tateditor`(not under `/usr`)

```
makepkg -s
./install
```
