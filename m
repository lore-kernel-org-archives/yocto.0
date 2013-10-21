Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C08BE01723
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2013 19:00:33 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 8A5F64197D; Mon, 21 Oct 2013 02:00:33 +0000 (UTC)
Date: Mon, 21 Oct 2013 02:00:33 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131021020033.GA25416@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 21 Oct 2013 02:00:33 -0000
X-Groupsio-MsgNum: 16622
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         10035                         Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.20                       3.10.0                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
mesa                          9.1.6                         9.2                           Valentin Popa <valentin.popa@intel.com>           
libx11                        1.6.1                         1.6.2                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.44.0                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.8.2                         Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.1.92                        Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
libxv                         1.0.9                         1.0.10                        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+42c2d1e        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17                          1.17.1                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.48                          9.50                          Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+dd6c4ec        Saul Wold <sgw@linux.intel.com>                   
kbd                           1.15.2                        2.0.0                         Saul Wold <sgw@linux.intel.com>                   
cups                          1.6.3                         1.6.4                         Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.10.0.0                      3.11.0.0                      Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
glib-networking               2.36.2                        2.38.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.34.8                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
sysstat                       10.1.6                        10.1.7                        Saul Wold <sgw@linux.intel.com>                   
tzcode-native                 2013d                         2013e                         Saul Wold <sgw@linux.intel.com>                   
desktop-file-utils-native     0.21                          0.22                          Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.53                          3.54                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
file                          5.14                          5.15                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.26                        3.5.28                        Saul Wold <sgw@linux.intel.com>                   
libxrandr                     1.4.1                         1.4.2                         Ross Burton <ross.burton@intel.com>               
librsvg                       2.32.1                        2.39.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.30.0                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libsm                         1.2.1                         1.2.2                         Ross Burton <ross.burton@intel.com>               
libxpm                        3.5.10                        3.5.11                        Ross Burton <ross.burton@intel.com>               
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
libxmu                        1.1.1                         1.1.2                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.8                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.91                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.14                       1.12.16                       Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.91                        Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.0                        0.16.2                        Ross Burton <ross.burton@intel.com>               
libav                         0.8.8                         9.9                           Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.2p2                         6.3p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+9e941d1      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.10                          3.11                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.9.9                         Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
vala                          0.16.0                        0.22.0                        No Maintainer info                                
clutter-1.0                   1.14.4                        1.16.0                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.16.0                        No Maintainer info                                
bluez5                        5.7                           5.9                           No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.10.0                        No Maintainer info                                
libnotify                     0.6.0                         0.7.6                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.10.0                        No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.10.0                        No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
ltp                           20130503                      20130904                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.13-0.20130819             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xset                          1.2.2                         1.2.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.1+gitAUTOINC+10fe4e3      2.3.1+gitAUTOINC+9998f52      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.99.902                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
m4                            1.4.16                        1.4.17                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcl                           8.6.0                         8.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6                           7.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput                        1.6.0                         1.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xmodmap                       1.0.7                         1.0.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-fbdev              0.4.3                         0.4.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xprop                         1.2.1                         1.2.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinit                         1.3.2                         1.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+57adad8        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.95                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
mdadm                         3.2.6                         3.3                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.10.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vesa               2.3.2                         2.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.12.6                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.3.4                       1.8.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4                         Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.2                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.6.1                         1.6.2                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr709                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.11.4                      Cristiana Voicu <cristiana.voicu@intel.com>       
tzdata                        2013d                         2013e                         Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.0                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnr709                 Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-fw-utils               2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.8.0                         2.10.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
imake                         1.0.5                         1.0.6                         Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          14+gitAUTOINC+3b38c7fcb5      15+gitAUTOINC+8f67ab5         Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+42c2d1e        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.7.7                         0.8.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+8b8dcf9      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
at                            3.1.13                        3.1.14                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+c37      Cristiana Voicu <cristiana.voicu@intel.com>       
transfig-native               3.2.5d                        3.2.5e                        Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.15.0                        5.15.1                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.1.16                        0.1.17                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.9                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf3      0.13+gitAUTOINC+f7694d8       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.17                          1.18                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.19                        0.9.21                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.4                        2.38.0                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.20.4                        0.99.1                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.10.0                        3.11.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.9                           Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.23                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+3fe01af        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.59+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.11.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+9bbdd79086     0.2+gitAUTOINC+a42509b        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 132
Upgrade Total Count: 153
The based commit merge time is:
Fri Oct 18 16:03:39 2013 +0100
The based commit is:
commit 505114c13d29799a25379f7ce720d632616d8776
Author: Tom Zanussi <tom.zanussi@linux.intel.com>
Date:   Wed Oct 16 15:25:41 2013 -0500
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--EVF5PPMfhYS0aIcm--
