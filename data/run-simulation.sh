input="input_toce_ris_V17_50.txt"
input_aux="toce_ris_V17_50"

# Run simulazion
./swegpu $input -order=1 -gpu=0 > "output.txt"

# Ask run recode
read -r -p "Run the decode utility? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        ./run-decode.sh
        ;;
    *)
        echo ""
        ;;
esac

# Move everything
mkdir ../output
mv output-* ../output/
mv *output.* ../output/

# Clean
rm "${input_aux}-INITIAL.*"
