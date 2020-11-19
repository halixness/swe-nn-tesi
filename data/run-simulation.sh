input="input_toce_ris_V17_50.txt"
input_aux="toce_ris_V17_50"
timesteps=1000

# Run simulazion
./swegpu $input -order=1 -gpu=0 -frames 0 $timesteps > "output.txt"

rm *-INITIAL*

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
