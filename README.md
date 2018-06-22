# Essential scripts
There are some essential scripts powered by ChangeGene LLC.

##  General scripts

### mkscript.sh - A Shell help you add head information when you create a script.

#### Download
```shell
wget https://raw.githubusercontent.com/changegene/essential_scripts/master/mkscript.sh
```
#### Set alias
```shell
vi ~/.bashrc
mkscript="sh /path/mkscript.sh "NIKITA" "info@changegene.com" "ChangeGene LLC. https://ChangeGene.com"
wq!
exit
```
#### Login again and enjoy
```shell
mkscript test.sh
mkscript test.sh ["This is a test script."]
vi test.sh

#!#!env sh
#
# mkscript.sh - A Shell help you add head information when you create a script.
# Created on Wed Jun 19 11:33:51 CST 2018 by NIKITA.
# Version: 1.0
# Last modified:
# Modified logs:
# Author's email: info@changegene.com
# Powered by: ChangeGene LLC. https://ChangeGene.com
# License: Peaceful Open Source License (PeaceOSL)
# Update url:



```

##  bioinformatics scripts
