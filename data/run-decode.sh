last=50
filename="toce_ris_V17_50-output-"
rm -rf time-*

# DEP
../swegpu -decode "${filename}0000.DEP" decoded- -all -frames 0 $last -binary=0 -res=1

# WSE
../swegpu -decode "${filename}0000.WSE" decoded- -all -frames 0 $last -binary=0 -res=1

# VVX
../swegpu -decode "${filename}0000.VVX" decoded- -all -frames 0 $last -binary=0 -res=1

# VVY
../swegpu -decode "${filename}0000.VVY" decoded- -all -frames 0 $last -binary=0 -res=1

# Clean
rm $filename*

# Move to folders
last=0050

for X in {00..0050}
do
        mkdir output-$X
        mv decoded--$X.* output-$X/
done
