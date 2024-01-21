#+title: Youtube Dowwnload script that will automatically orginize your downloads into a folder structure according to Video and Music Genres, Music Artist, Music Video types (Concerts, Live...) etc.


* Description
:PROPERTIES:
:ID:       280135a0-2cff-4e93-8679-7d1a6d56b7b2
:END:


After many years of using ytdl I managed to come up with this simple script that will perfectly orginize all of my downloads into a desired folder structure. This is an alternative to software like youtube archivist, tubesync and the latest one I started using ytdl-sub which provides much more advanced usage of yt-dlp, but for noobs or just a simple download of youtube content this script is perfect. Enjoy!



* Dependencies
:PROPERTIES:
:ID:       01577a0a-852e-481a-b9b3-791b68594f96
:END:
Before installing, make sure you have:
[[https://github.#+begin_src
$ fly-hi
Fly-Hi Media

Usage: fly-hi [help|option] [compose-file]
options:
help        displays this help message
restart     restarts Fly-Hi services
stop        stops all Fly-Hi services
start       starts Fly-Hi services
update      updates Fly-Hi services
destroy     destroy Fly-Hi services but preserve container data
uninstall   completely remove all containers and their data from the system
ip          checks if the VPN is working as expected
ports       shows all ports currently used and opened by docker containers
links       shows links to access your services
links-all   shows all links including non running services
#+end_src
