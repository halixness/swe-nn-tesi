last=213
filename="toce_ris_V17_50-output-"
rm -rf time-*

# DEP
./swegpu -decode "${filename}0000.DEP" decoded- -all -frames 0 $last -binary=0 -res=1

# WSE
./swegpu -decode "${filename}0000.WSE" decoded- -all -frames 0 $last -binary=0 -res=1

# VVX
./swegpu -decode "${filename}0000.VVX" decoded- -all -frames 0 $last -binary=0 -res=1

# VVY
./swegpu -decode "${filename}0000.VVY" decoded- -all -frames 0 $last -binary=0 -res=1

# Clean
rm $filename*
rm -rf ../output
mkdir ../output

# Move to folders
for X in {00..0213}
do
        mkdir ../output/output-$X
        mv decoded--$X.* ../output/output-$X/
done
