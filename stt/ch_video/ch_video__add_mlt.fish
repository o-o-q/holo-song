# fish

set dir_prj  ~/doc/hoby/youtube/vtuber/hololive/prj
set dir_lib  $dir_prj/stt/lib
set dir_data $dir_prj/www/song/data/ch
set dir_exe  $dir_prj/stt/ch_video
cd $dir_exe

source $dir_lib/mmbr.fish

set term_date $argv[1] #2022-06-12.-.2022-06-13

for _mmbr_name in $mmbr_name
  set path_file1 $dir_data/$_mmbr_name.json
  set path_file2 $dir_data/$_mmbr_name.$term_date.json
  #echo $path_file1
  #echo $path_file2

  fish ch_video__add.fish $path_file1 $path_file2
end

