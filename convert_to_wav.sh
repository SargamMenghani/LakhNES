input_folder=/home/nisarg/inhouse_research/imusic/third_party_repos/LakhNES/generated/Lakh400kPretrainOnly
output_folder=/home/nisarg/inhouse_research/imusic/third_party_repos/LakhNES/generated/Lakh400kPretrainOnly/wav
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
	#timidity $file -Ow -o "$output_folder/$filename"
	if [ $extension == "txt" ]; then
		python data/synth_client.py $file "$output_folder/$filename"
	fi
done
