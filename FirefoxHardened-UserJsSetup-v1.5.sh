#!/bin/sh
## 
## FirefoxHardened-UserJsSetup-v1.5.sh
## 

git clone https://github.com/pyllyukko/user.js



## Set as default value on Firefox profile creation.
##_____________________________________________________________________________________________________________________________________________________
   [+] systemwide_user.js	|  systemwide_user.js profile allows values in about:config to be modified. ## Profile is persistent through browser sessions.
   [+] locked_user.js 		|  locked_user.js  	  profile will locked the about:config and the firefox-esr.js file
   [+] 000-tor-browser.js	|  000-tor-browser.js profile is imported from the torproject website.



make 000-tor-browser.js
make systemwide_user.js
make locked_user.js
make tbb-diff tbb-diff-2
make tbb-missing-from-user.js




| OS             | Path                                                  					     |
| -------------- | ----------------------------------------------------------------------------- |
| Linux (Debian) | `/etc/firefox-esr/firefox-esr.js`        									 |
| Linux          | `~/.mozilla/firefox/XXXXXXXX.your_profile_name/user.js`                       |
| Android        | `/data/data/org.mozilla.firefox/files/mozilla/XXXXXXXX.your_profile_name` 	 |	## see [issue #14](https://github.com/pyllyukko/user.js/issues/14) |
| -------------- | ----------------------------------------------------------------------------- |





cp -v user.js /home/$user/.mozilla/firefox/xk1uxyq9.Parrot/user.js
chmod -v 0644  /home/$user/.mozilla/firefox/xk1uxyq9.Parrot/user.js
chown -v $user /home/$user/.mozilla/firefox/xk1uxyq9.Parrot/user.js
chmod -v u+rwx,go+rx user.js



cp -v systemwide_user.js /etc/firefox-esr/firefox-esr.js
cp -v locked_user.js /etc/firefox-esr/firefox-esr.js
cp -v 000-tor-browser.js /etc/firefox-esr/firefox-esr.js
cp -v Hardened.js /etc/firefox-esr/firefox-esr.js


chown -v $user:$user /etc/firefox-esr/firefox-esr.js
chmod -v 0644 /etc/firefox-esr/firefox-esr.js



