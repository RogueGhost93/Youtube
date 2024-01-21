#!/bin/bash
source functions
data_root="/home/$USER/Youtube"
config="$data_root/ytdl.conf"
log_aggregate="$data_root/youtubescript.log"
global_yt_options="--max-downloads 500"
echo "START" > $data_root/log.log
log=$data_root/log.log

#OPTIONS:
echo "=========================================================================================================================================================="
echo  "Option:  music will download only audio of the entire music playlist as Origin/Genre/Artist/Folder-like-'Concerts' if applied/songs.ext"
echo  "Usage:   music 'Origin Strano|Domace' 'Genre' 'Artist' 'Link' 'Extra folder if desired e.g. Concerts/Live'"
echo  "Example: music 'Foreign' 'Oldies' 'Roy Orbinson' 'https://www.youtube.com/playlist?list=PLvPrczMM8gz3y1Iboy6CsZ432HjCWUQgR' 'Concerts'"
echo "=========================================================================================================================================================="
echo  "Option:  music_videos will download the entire music playlist as Origin/Genre/Artist/Folder-like-'Concerts' if applied/songs.ext"
echo  "Usage:   music_videos 'Origin Strano|Domace' 'Genre' 'Artist' 'Link' 'Extra folder if desired e.g. Concerts/Live'"
echo  "Example: music_videos 'Domestic' 'Yugoslavia' 'Djordje Balasevic' 'https://www.youtube.com/watch?v=z62StmSvXgo' 'Live'"
echo "=========================================================================================================================================================="
echo "Option:   archive will download the entire channel with the --match-filters applied. Organized as Genre/Channel/Playlist Name/videoname.ext"
echo "Usage:    archive 'GENRE' 'LINK'"
echo "Example:  archive 'Networking' 'https://www.youtube.com/@homenetworkguy/playlists'"
echo "=========================================================================================================================================================="
echo "Option:  documentary_single will download a single documentary regardless if it belongs to a playlist or not; in form /Title/title.ext with an option to"
echo "         override the folder title name with the 3rd argument like in example below to become /Overriden title/title.ext"
echo "Usage:   documentary_single 'Genre' 'Link' 'Override Title'"
echo "Example: documentary_single 'Economics' 'https://www.youtube.com/watch?v=wdJFeSY8UVk' 'Best documentary ever'"
echo "=========================================================================================================================================================="
echo "Option:  documentary_playlist will download the entire documentary playlist in form '/playlist-name/S(Year)-E(Playlist-index) - title.ext' with an option to"
echo "         override the playlist name with the 3rd argument like in example below to become '/overriden-playlist-name/S(Year)-E(Playlist-index) - title.ext'"
echo "Usage:   documentary_playlist 'Genre' 'Link' 'Override Playlist Name'"
echo "Example: documentary_playlist 'Economics' 'https://www.youtube.com/watch?v=DyV0OfU3-FU&list=PLE88E9ICdiphYjJkeeLL2O09eJoC8r7Dc' 'Hidden Secrets of Money'"
echo "=========================================================================================================================================================="
echo "==================================================================================================================================" >> $log
date >> $log
echo "==================================================================================================================================" >> $log
printf "\e[32mStarting Download ...\e[0m"
echo

###################################################################################################################################
###################################################################################################################################
#################################################### DEFINE LINKS HERE!!! #########################################################
###################################################################################################################################
###################################################################################################################################

###################################################################################################################################
### MUSIC
music 'Foreign' 'Oldies' 'Roy Orbinson' 'https://www.youtube.com/playlist?list=PLvPrczMM8gz3y1Iboy6CsZ432HjCWUQgR'
###################################################################################################################################
### MUSIC VIDEOS
music_videos 'Domestic' 'Yugoslavia' 'Djordje Balasevic' 'https://www.youtube.com/watch?v=z62StmSvXgo' 'Concerts'
###################################################################################################################################
### DOCUMENTARY FROM A SINGLE VIDEO
documentary_playlist 'Economics' 'https://www.youtube.com/watch?v=DyV0OfU3-FU&list=PLE88E9ICdiphYjJkeeLL2O09eJoC8r7Dc' 'Hidden Secrets of Money'
###################################################################################################################################
### DOCUMENTARY AS A SERIES FROM A PLAYLIST
documentary_single 'Economics' 'https://www.youtube.com/watch?v=wdJFeSY8UVk' 'Best documentary ever'
###################################################################################################################################
### ARCHIVE OF AN ENTIRE CHANNEL
archive 'Networking' 'https://www.youtube.com/@homenetworkguy/playlists'
###################################################################################################################################


printf "\e[32mDownloading Finished!\e[0m"
echo
echo "==================================================================================================================================" >> $log
date >> $log
echo "==================================================================================================================================" >> $log

exit 0
