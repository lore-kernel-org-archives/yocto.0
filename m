Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C38BE00BF5
	for <yocto@yoctoproject.org>; Sun, 30 Mar 2014 19:01:16 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 4A9B0A421E; Mon, 31 Mar 2014 02:01:16 +0000 (UTC)
Date: Mon, 31 Mar 2014 02:01:16 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140331020116.GA21084@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 31 Mar 2014 02:01:16 -0000
X-Groupsio-MsgNum: 18761
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.1                      0.18.3.2                      Wenzong Fan <wenzong.fan@windriver.com>           
gnome-common                  3.7.4                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.12.0                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.45.3                        2.46.0                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.33                        1.4.35                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.12.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libpng12                      1.2.50                        1.2.51                        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.4.0                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
gnome-desktop                 2.32.1                        3.12.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
util-macros                   1.18.0                        1.19.0                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.52                          9.53                          Saul Wold <sgw@linux.intel.com>                   
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.6                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.40.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
help2man-native               1.44.1                        1.45.1                        Saul Wold <sgw@linux.intel.com>                   
msmtp                         1.4.31                        1.4.32                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.36.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.1                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.0                         0.4.1                         Saul Wold <sgw@linux.intel.com>                   
util-linux                    2.23.2                        2.24.1                        Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.24                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
sqlite3                       3.8.3.1                       3080402                       Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.60                          3.63                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.32                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.18.0                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.1                        2.40.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
gdk-pixbuf                    2.30.3                        2.30.7                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
cogl-1.0                      1.16.0                        1.18.0                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.2                         2.5.3                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.10                        Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.2                        1.0.0                         Ross Burton <ross.burton@intel.com>               
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
glib-2.0                      2.38.2                        2.40.0                        Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.38                        0.1.39                        Robert Yang <liezhi.yang@windriver.com>           
wget                          1.14                          1.15                          Robert Yang <liezhi.yang@windriver.com>           
file                          5.16                          5.18                          Robert Yang <liezhi.yang@windriver.com>           
libav                         0.8.9                         10                            Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.5p1                         6.6p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
nfs-utils                     1.2.9                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
cdrtools-native               3.01a20                       3.01a23                       Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.1                         No Maintainer info                                
libsdl2                       2.0.1                         2.0.3                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
python3                       3.3.3                         3.4.0rc3                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.15.0                        1.15.0.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.1                        13.0.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.2.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.4.0                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
kexec-tools                   2.0.4                         2.0.6                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0rc3                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.2                         7.7                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.11.0                        2.11.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.3                         1.7.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.12.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xrandr                        1.4.1                         1.4.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.3                        7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.11                          2.11.02                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.14                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.5                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.3                         1.7.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
socat                         1.7.2.3                       1.7.2.4                       Hongxu Jia <hongxu.jia@windriver.com>             2.0.0 is beta                 
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
pax-utils                     0.7                           0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.16.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
pango                         1.36.2                        1.36.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.12.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.10.0                        2.12.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.12.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.35.0                        7.36.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.7.0                         1.7.1                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.17                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.15                          5.17                          Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.21                          1.22                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.26                        0.9.27                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.2                        0.24.0                        Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.17                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
taglib                        1.8                           1.9.1                         Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    4.0                           5.0                           Cristian Iorga <cristian.iorga@intel.com>         
flex                          2.5.38                        2.5.39                        Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
guile                         2.0.9                         2.0.11                        Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 
sudo                          1.8.9p1                       1.8.10p2                      Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.16                          2.18                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        10.3.1                        Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.13.7                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 108
Upgrade Total Count: 129
The based commit merge time is:
Sat Mar 8 02:00:02 2014 +0000
The based commit is:
commit 8b0e3a840a9fe5536ceacecf73666e687b569684
Merge: d42eed6 abe417e
Author: package-report@yoctoproject.org <packages@packages.i.yoctoproject.org>
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--sm4nu43k4a2Rpi4c--
