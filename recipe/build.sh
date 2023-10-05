#!/bin/bash
SHTNS="shtns-3.6.1"
cd src

# workaround due to the setup.py file not setting
# the CC2/shtcc variable to be the same as CC, just hardcoding
# it as 'gcc' if it's not set.
# Check if the file already exists
if [ -f "./gcc" ]; then
    echo "The file 'gcc' already exists in the current directory. Exiting."
    exit 1
fi

# make a script that just calls CC 
echo '#!/bin/bash' > gcc
echo "${CC:-gcc}" '$@' >> gcc
chmod +x gcc
echo "'gcc' script created in the current directory."

# add it to path
export PATH=$PWD:$PATH

# install the package
python -m pip install . -vv
