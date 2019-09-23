input_folder=/home/nisarg/inhouse_research/imusic/third_party_repos/LakhNES/generated/LakhIndianRaags_4k_steps/midi_multi_instrument_converted
output_folder=/home/nisarg/inhouse_research/imusic/third_party_repos/LakhNES/generated/LakhIndianRaags_4k_steps/midi_multi_instrument_converted_wav
if [ ! -d $output_folder ]; then
  mkdir -p $output_folder;
fi
files_arr=($input_folder/*)
for file in "${files_arr[@]}";
do
	filename="${file##*/}"
	extension="${filename##*.}"
	filename="${filename%.*}"
	filename="$filename.wav"
	timidity $file -Ow -o "$output_folder/$filename" -A800
	#if [ $extension == "txt" ]; then
	#	python data/synth_client.py $file "$output_folder/$filename"
	#fi
done
