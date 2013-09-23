Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A27DE015CF
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 19:00:35 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 3099240D1B; Mon, 23 Sep 2013 02:00:35 +0000 (UTC)
Date: Mon, 23 Sep 2013 02:00:35 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130923020035.GA16207@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
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
X-List-Received-Date: Mon, 23 Sep 2013 02:00:35 -0000
X-Groupsio-MsgNum: 16165
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
puzzles                       r9765                         10035                         Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.20                       3.9.16                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.7                         Valentin Popa <valentin.popa@intel.com>           
mesa                          9.1.6                         9.2                           Valentin Popa <valentin.popa@intel.com>           
libx11                        1.6.1                         1.6.2                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.43.92                       Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.9.16                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.9.91                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.9.16                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.1.91                        Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
libxv                         1.0.9                         1.0.10                        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17                          1.17.1                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.48                          9.50                          Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+73cffd6        Saul Wold <sgw@linux.intel.com>                   
kbd                           1.15.2                        2.0.0                         Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.10.0.0                      3.11.0.0                      Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
glib-networking               2.36.2                        2.37.5                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.34.8                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
sysstat                       10.1.6                        10.1.7                        Saul Wold <sgw@linux.intel.com>                   
desktop-file-utils-native     0.21                          0.22                          Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.53                          3.54                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.26                        3.5.28                        Saul Wold <sgw@linux.intel.com>                   
libxrandr                     1.4.1                         1.4.2                         Ross Burton <ross.burton@intel.com>               
librsvg                       2.32.1                        2.39.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.29.3                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libsm                         1.2.1                         1.2.2                         Ross Burton <ross.burton@intel.com>               
libxpm                        3.5.10                        3.5.11                        Ross Burton <ross.burton@intel.com>               
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
libxmu                        1.1.1                         1.1.2                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.1                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.14                       1.12.16                       Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.2                         Ross Burton <ross.burton@intel.com>               
libav                         0.8.8                         9.9                           Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.2p2                         6.3p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+9e941d1      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.10                          3.11                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.9.9                         Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
vala                          0.16.0                        0.21.2                        No Maintainer info                                
clutter-1.0                   1.14.4                        1.15.92                       No Maintainer info                                
cogl-1.0                      1.14.0                        1.15.10                       No Maintainer info                                
bluez5                        5.7                           5.9                           No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.91                        No Maintainer info                                
libnotify                     0.6.0                         0.7.6                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.92                        No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.92                        No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
ltp                           20130503                      20130904                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.13-0.20130819             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xset                          1.2.2                         1.2.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.1+gitAUTOINC+10fe4e3      2.3.0+gitAUTOINC+35097f3      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.99.902                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcl                           8.6.0                         8.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6                           7.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput                        1.6.0                         1.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xmodmap                       1.0.7                         1.0.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xprop                         1.2.1                         1.2.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinit                         1.3.2                         1.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+8fd4350        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.95                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
mdadm                         3.2.6                         3.3                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.9.92                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vesa               2.3.2                         2.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.12.6                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.3.4                       1.8.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.3-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.2                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.6.1                         1.6.2                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr706                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.11.3                      Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.35.3                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnr706                 Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-fw-utils               2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
imake                         1.0.5                         1.0.6                         Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          14+gitAUTOINC+3b38c7fcb5      15+gitAUTOINC+6506ddf         Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.7.7                         0.8.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+8b8dcf9      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
at                            3.1.13                        3.1.14                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+c37      Cristiana Voicu <cristiana.voicu@intel.com>       
transfig-native               3.2.5d                        3.2.5e                        Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.9                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.19.1                      1.4.20                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.12+gitAUTOINC+77504c9       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.17                          1.18                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.19                        0.9.21                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.4                        2.37.93                       Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.20.4                        0.99.1                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.10.0                        3.11.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.9                           Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.23                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.9                         1.0.10                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+3fe01af        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.59+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.11.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 120
Upgrade Total Count: 141
The based commit merge time is:
Sun Sep 22 12:23:35 2013 +0100
The based commit is:
commit bf6b0d95db3863a2cfbccb154c0c7ad5b3bbf0b0
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Fri Sep 20 14:43:45 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--x+6KMIRAuhnl3hBn--
