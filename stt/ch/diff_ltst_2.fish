# fish

set dir_prj ~/doc/hoby/youtube/vtuber/hololive/prj
set dir_exe $dir_prj/stt/ch
cd $dir_exe

source utl.fish
source diff_sbs.fish

source df.fish

diff_sbs (day_files_ltst_2)

