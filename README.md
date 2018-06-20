# essential scripts
There are some essential scripts powered by ChangeGene LLC.

##  general scripts

### mkscript.sh - A Shell help you add head information when you create a script.

#### download
```shell
wget https://raw.githubusercontent.com/changegene/essential_scripts/master/mkscript.sh
```
#### set alias
```shell
vi ~/.bashrc
mkscript="sh /path/mkscript.sh "NIKITA" "info@changegene.com" "ChangeGene LLC. https://ChangeGene.com"
wq!
exit
```
#### login again and enjoy
```shell
mkscript test.sh
mkscript test.sh ["This is a test script."]
```

##  bioinformatics scripts
