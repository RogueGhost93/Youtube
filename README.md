Youtube Dowwnload script that will automatically orginize your downloads into a folder structure according to Video and Music Genres, Music Artist, Music Video types (Concerts, Live...) etc.

*Description*

After many years of using ytdl I managed to come up with this simple script that will perfectly orginize all of my downloads into a desired folder structure. This is an alternative to software like youtube archivist, tubesync and the latest one I started using ytdl-sub which provides much more advanced usage of yt-dlp, but for noobs or just a simple download of youtube content this script is perfect. Enjoy!

*Before running*

Before installing, make sure you have:
[[https://github.com/yt-dlp/yt-dlp]YT-DLP]


*To install*

#+begin_src bash
$mkdir /home/$USER/Youtube
$ cd Youtube
$ git clone https://github.com/RogueGhost93/youtube-download
$ chmod +x ytdl.sh
#+end_src


*Usage*
#+begin_src bash
# Open ytdl.sh in order to define your channels you would like to download.
# You can also change any variable in ytdl.sh file such as download or config location.
$ cd /home/$USER/Youtube
$ ./ytdl.sh
#+end_src


