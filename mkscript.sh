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
# Update url:https://raw.githubusercontent.com/changegene/essential_scripts/master/mkscript.sh



# Modify the following paths if needed:
bash_bin='env sh'
perl_bin='env perl'
ruby_bin='env ruby'
python_bin='env python'

usage() {
	echo "Usage: `basename $0` \"Author\" \"Author's email\" \"Organization\" script_name [description]\n"
	echo 'Example: sh mkscript.sh "NIKITA" "info@changegene.com" "ChangeGene LLC. https://ChangeGene.com" test.sh ["This is a test script."]\n'
	echo 'Set alias: mkscript="sh /path/mkscript.sh "NIKITA" "info@changegene.com" "ChangeGene LLC. https://ChangeGene.com"'
	echo '           mkscript test.sh ["This is a test script."]'

	[ $1 -eq 1 ] && exit 64 # command line usage error
}

if [ -n "$4" ]; then
	[ -e $4 ] && echo "File already exists: $4. Please delete $4 and try again." && usage 1
else
	echo "Please input a script_name" && usage 1
fi

script_auth=$1
auth_email=$2
Organization=$3
script_name=$4
script_desc=$5
script_type=${script_name##*.}

if [ $script_type = 'sh' ]; then
	bin=$bash_bin
elif [ $script_type = 'pl' ]; then
	bin=$perl_bin
elif [ $script_type = 'rb' ]; then
	bin=$ruby_bin
elif [ $script_type = 'py' ]; then
	bin=$python_bin
fi

summary=$script_name
if [ -n "$script_desc" ]; then
  summary="$summary - $script_desc"
fi

creation="Created on `date`"
if [ -n "$script_auth" ]; then
	creation="$creation by $script_auth."
else
	creation="$creation."
fi

echo "#!$bin\n#\n# $summary\n# $creation\n# Version: 1.0\n# Last modified: \n# Modified logs: \n# Author's email: $auth_email\n# Powered by: $Organization\n# License: Peaceful Open Source License (PeaceOSL)\n# Update url: \n\n\n\n\n\n" > $script_name
chmod +x $script_name
exit 0


# cite 1: https://github.com/babuu/mkscript
