Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3450BE0084A
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 14:28:49 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 3215EA421D; Mon,  3 Mar 2014 22:28:49 +0000 (UTC)
Date: Mon, 3 Mar 2014 22:28:49 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140303222848.GA14155@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Package Report System]Upgrade recipes name list
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Mar 2014 22:28:49 -0000
X-Groupsio-MsgNum: 18328
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline

--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.1                      0.18.3.2                      Wenzong Fan <wenzong.fan@windriver.com>           
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.7                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.90                       Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.45.3                        2.45.90                       Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.1                          Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.33                        1.4.34                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.7                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.8.2                         3.11.7                        Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.11.5                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
webkit-gtk                    1.8.3                         2.3.90                        Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.90                       Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+09c1646        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
lsbinitscripts                9.50                          9.52                          Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+9cd96b4        Saul Wold <sgw@linux.intel.com>                   
libcheck                      0.9.11                        0.9.12                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.35.2                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
nspr                          4.10.2                        4.10.3                        Saul Wold <sgw@linux.intel.com>                   
dhcp                          4.2.5-P1                      4.3.0                         Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.6                        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.5.3                         1.6.1                         Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.90                       Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
help2man-native               1.43.3                        1.44.1                        Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.3.2                         0.4.0                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.24                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.56                          3.61                          Saul Wold <sgw@linux.intel.com>                   
psmisc                        22.20                         22.21                         Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
libcgroup                     0.38                          0.41                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.32                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.3                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.17.4                        Ross Burton <ross.burton@intel.com>               
cogl-1.0                      1.16.0                        1.17.4                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.3                        2.30.5                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.4                         1.1.5                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.4.0                         Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.2                        0.99.2                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.1                         1.4.0                         Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.38.2                        2.39.90                       Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.23.2                        2.24                          Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.38                        0.1.39                        Robert Yang <liezhi.yang@windriver.com>           
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
wget                          1.14                          1.15                          Robert Yang <liezhi.yang@windriver.com>           
git                           1.8.5.2                       1.9.0                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.16                          5.17                          Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.62                       2014.63                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.9                         9.11                          Paul Eggleton <paul.eggleton@linux.intel.com>     
augeas                        1.1.0                         1.2.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.4p1                         6.5p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.15                          0.16                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+956c8d8      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.12.1                        3.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cmake                         2.8.12.1                      2.8.12.2                      Paul Eggleton <paul.eggleton@linux.intel.com>     
cdrtools-native               3.01a20                       3.01a22                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+49c19f9       No Maintainer info                                
python-nose                   1.2.1                         1.3.0                         No Maintainer info                                
gnome-desktop-testing         2013.1                        2014.1                        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.4                        1.15.99.901                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.2                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.910                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.3.9                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
kexec-tools                   2.0.4                         2.0.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0rc2                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+388ce39        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.10.1                        2.11                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xtrans                        1.3.2                         1.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.90                       Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
gdb                           7.6.1                         7.7                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.49                        2.4.52                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.3.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0.2                      7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Laurentiu Palcu <laurentiu.palcu@intel.com>       
libmpc                        1.0.1                         1.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.10.09                       2.11.02                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.5                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.5                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.2.0                         0.2.1                         Jessica Zhang <jessica.zhang@intel.com>           
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
socat                         1.7.2.2                       1.7.2.3                       Hongxu Jia <hongxu.jia@windriver.com>             2.0.0 is beta                 
bash                          4.2                           4.3                           Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.5                         2.4.6                         Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
readline                      6.2                           6.3                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.1+gitAUTOINC+50e80fc      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.1+gitAUTOINC+50e80fc      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.15.5                      Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.36.1                        1.36.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
opkg                          0.2.0                         0.2.1                         Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.90                       Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
at-spi2-atk                   2.10.0                        2.11.90                       Cristiana Voicu <cristiana.voicu@intel.com>       
liburcu                       0.8.1                         0.8.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+fd4a3a4      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          16+gitAUTOINC+36c4bb928a      16+gitAUTOINC+a4bd144         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+09c1646        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.2.0+gitAUTOINC+8327bb6      Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.34.0                        7.35.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+3f6      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.0                        5.99.6                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+f8c22c6        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.15                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.13                          5.15                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+3d563e5       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.20                          1.21                          Cristian Iorga <cristian.iorga@intel.com>         
sbc                           1.1                           1.2                           Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.25                        0.9.26                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.7                        Cristian Iorga <cristian.iorga@intel.com>         
wpa-supplicant                2.0                           2.1                           Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.15                          Cristian Iorga <cristian.iorga@intel.com>         
libvorbis                     1.3.3                         1.3.4                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.26                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.2.2                         1.2.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.77                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.5.2                         1.5.3                         Cristian Iorga <cristian.iorga@intel.com>         
minicom                       2.6.2                         2.7                           Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    4.0                           4.99.4                        Cristian Iorga <cristian.iorga@intel.com>         
flex                          2.5.37                        2.5.38                        Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.21.1                        1.22.1                        Chen Qi <Qi.Chen@windriver.com>                   
sudo                          1.8.9p1                       1.8.9p5                       Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.16                          2.18                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.0                        10.2.1                        Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.13.5                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 150
Upgrade Total Count: 173
The based commit merge time is:
Mon Mar 3 15:55:27 2014 +0000
The based commit is:
commit f03955041d0e44d377ca1c4def630982f24f1e8b
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon Mar 3 15:52:26 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--+QahgC5+KEYLbs62--
