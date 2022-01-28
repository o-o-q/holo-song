# fish

set dir_prj ~/doc/hoby/youtube/vtuber/hololive/prj

set dir_exe $dir_prj/stt
cd $dir_exe

set dir_www $dir_prj/www
set dir_data $dir_www/song/data

set path_file ( ls -t $dir_data/????-??-??.??:??.json )
set path_file1 $path_file[1]
set path_file2 $path_file[2]
# echo $path_file1 $path_file2

set sub_file ( basename $path_file1 .json ).-.( basename $path_file2 .json ).json
echo $sub_file

set path_out_jsn $dir_data/$sub_file
# echo $path_out_jsn

# exit

lua song_view_cnt_sub.lua $path_file1 $path_file2 | jq > $path_out_jsn

set path_ltst_jsn $dir_data/s.ltst.json
cp $path_out_jsn $path_ltst_jsn

