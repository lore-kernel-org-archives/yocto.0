Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B96C2E01790
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 10:45:37 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id B0B6740CFD; Tue, 29 Oct 2013 17:45:37 +0000 (UTC)
Date: Tue, 29 Oct 2013 17:45:37 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131029174537.GA900@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Tue, 29 Oct 2013 17:45:37 -0000
X-Groupsio-MsgNum: 16781
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
puzzles                       r9765                         10051                         Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.20                       3.11.0                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
mesa                          9.1.6                         9.2.2                         Valentin Popa <valentin.popa@intel.com>           
libx11                        1.6.1                         1.6.2                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.44.1                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.32                        1.4.33                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.0                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.10.1                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
libpng                        1.6.3                         1.6.6                         Valentin Popa <valentin.popa@intel.com>           1.4.3 and later changes the A...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.11.0                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.1                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
shared-mime-info              1.1                           1.2                           Valentin Popa <valentin.popa@intel.com>           
libxv                         1.0.9                         1.0.10                        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+eeb0dd0        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17                          1.17.1                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.48                          9.50                          Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+1ce4860        Saul Wold <sgw@linux.intel.com>                   
kbd                           1.15.2                        2.0.0                         Saul Wold <sgw@linux.intel.com>                   
nspr                          4.10                          4.10.1                        Saul Wold <sgw@linux.intel.com>                   
cups                          1.6.3                         1.7.0                         Saul Wold <sgw@linux.intel.com>                   
pigz                          2.3                           2.3.1                         Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.10.0.0                      3.11.0.0                      Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
glib-networking               2.36.2                        2.38.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
gnupg                         2.0.21                        2.0.22                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.9                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
sysstat                       10.1.6                        10.1.7                        Saul Wold <sgw@linux.intel.com>                   
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
tzcode-native                 2013d                         2013h                         Saul Wold <sgw@linux.intel.com>                   
desktop-file-utils-native     0.21                          0.22                          Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.53                          3.54                          Saul Wold <sgw@linux.intel.com>                   
rsync                         3.0.9                         3.1.0                         Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
file                          5.14                          5.15                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.26                        3.5.28                        Saul Wold <sgw@linux.intel.com>                   
libxrandr                     1.4.1                         1.4.2                         Ross Burton <ross.burton@intel.com>               
librsvg                       2.32.1                        2.40.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.30.0                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libsm                         1.2.1                         1.2.2                         Ross Burton <ross.burton@intel.com>               
libxpm                        3.5.10                        3.5.11                        Ross Burton <ross.burton@intel.com>               
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
libxmu                        1.1.1                         1.1.2                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.8                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.3.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.14                       1.12.16                       Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.3.0                         Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.0                        0.16.2                        Ross Burton <ross.burton@intel.com>               
dropbear                      2013.58                       2013.60                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.2p2                         6.3p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+9e941d1      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.10                          3.11                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cmake                         2.8.11.2                      2.8.12                        Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
vala                          0.16.0                        0.22.0                        No Maintainer info                                
clutter-1.0                   1.14.4                        1.16.0                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.16.0                        No Maintainer info                                
bluez5                        5.7                           5.10                          No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.10.1                        No Maintainer info                                
libnotify                     0.6.0                         0.7.6                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.10.1                        No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.10.0                        No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
ltp                           20130503                      20130904                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.3                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xset                          1.2.2                         1.2.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             0.6c11                        1.1.6                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.1+gitAUTOINC+10fe4e3      2.3.2+gitAUTOINC+2978449      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.99.905                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
tar                           1.26                          1.27                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
m4                            1.4.16                        1.4.17                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
diffstat                      1.57                          1.58                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xauth                         1.0.7                         1.0.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcl                           8.6.0                         8.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a4                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6                           7.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput                        1.6.0                         1.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xmodmap                       1.0.7                         1.0.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-fbdev              0.4.3                         0.4.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xz                            5.1.2alpha                    5.1.3alpha                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
xprop                         1.2.1                         1.2.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinit                         1.3.2                         1.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+93c6d9b        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
mdadm                         3.2.6                         3.3                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.9                           2.10.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
byacc                         20130304                      20130925                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.1                         2.8.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.46                        2.4.47                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vesa               2.3.2                         2.3.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.12.6                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.3.4                       1.8.4.2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0                        7.19.0.2                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4                         Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.3                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.6.1                         1.6.2                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr739                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
rxvt-unicode                  9.18                          9.19                          Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.12.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
tzdata                        2013d                         2013h                         Cristiana Voicu <cristiana.voicu@intel.com>       
sudo                          1.8.7                         1.8.8                         Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.0                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnr739                 Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-fw-utils               2011.06                       2013.10                       Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                2013.07                       2013.10                       Cristiana Voicu <cristiana.voicu@intel.com>       
grep                          2.14                          2.15                          Cristiana Voicu <cristiana.voicu@intel.com>       
imake                         1.0.5                         1.0.6                         Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          14+gitAUTOINC+3b38c7fcb5      15+gitAUTOINC+b3e0a07         Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+eeb0dd0        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.7.7                         0.8.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+9a7312d      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
at                            3.1.13                        3.1.14                        Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.32.0                        7.33.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+c74      Cristiana Voicu <cristiana.voicu@intel.com>       
transfig-native               3.2.5d                        3.2.5e                        Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.15.0                        5.16.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.1.16                        0.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.1                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.10                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.19.1                      1.4.20                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.13+gitAUTOINC+2e27396       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.6                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.17                          1.19                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.19                        0.9.23                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.4                        2.39.0                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.20.4                        0.99.2                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.10.0                        3.11.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.10                          Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.23                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+7d0c7a8        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.6                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.59+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.11.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+9bbdd79086     0.2+gitAUTOINC+a42509b        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 159
Upgrade Total Count: 182
The based commit merge time is:
Tue Oct 29 15:24:07 2013 +0000
The based commit is:
commit d69931da48b9cc5082feb46c654b9861f30244d9
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Tue Oct 29 15:21:52 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--EVF5PPMfhYS0aIcm
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAV4AAAEsCAIAAAAEo0yHAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3deVgT194H8MNmMKyyiCDIZgXZxAKCFJDdKrgr+ljresW+uNe6t1a91QdUrFZbsVYfN3BD
9Cp1twVkUcEFEFkjCLghREgMQhLI+8f0TnPhgAoRbnu/n7+SM8lvzkzCN2fOjKOSTCYjAAD/Sbm7
OwAA/40QDQBAgWgAAApEAwBQKCAa9uzZExwcLJVK2ZalS5cOHz5cLBazLcuXL587d24HimdmZo4c
ObJ1++bNm6Oiot6xyOXLl/38/Jqbm9/a+KFt27bt3btNCImJifGTExwcvGjRooSEhA/XQ1Zbe6a+
vn7p0qU+Pj7Pnj3rWOWxY8f6+fmVlZW1aF+5cqWfn9/ly5cJIT/++OOaNWsIIUVFRX5+fiKRqAMr
6soP98aNG1evXm1r6ZUrV9bJWb9+fevXHDhwwM/P74cffmjRnpaW5ufnN3/+/Bbtr169Wr9+/Zs3
bzrddzoFRIO9vT2fzy8oKGCeNjQ03Lp1q6am5t69e0yLTCbLzMy0tbXtQHGpVPr69evW7Q0NDQ0N
De9YRCKRCIXCd2n80N6r24SQxsZGdXX1f/7bokWLevbsuXnz5kuXLn24TjJmzpx57Nix1u3p6em3
bt1at26dkZFRxyq/fv1aJBJduXJFvlEoFKakpIhEIolEQgixsrKyt7cnhDQ1NQmFwo6dRwsPDz90
6FDHOvlexGLxli1bCgsL23pBUlJSXl5e47/J/2qyGhsbRSLRxYsXW2zs5cuXRSJRfX19i9dv2LAh
MTGRWkohVDtfwsXFRUVFJTs728HBgRCSlZWlqqpqa2ubnp7u7u5OCOHxeK9fv3Z1dZV/l1QqVVWl
rL2pqUlFRaXzveqY9+1Vc3OzWCxWV1dnnspkMplMpqzcMnDbam+nMktdXd3Ly4t9GhISMmrUqDNn
znz66afvUud9t0gmkzU0NPTs2bOt/vD5fDMzs8DAwHep1tzcLJVKe/To0aLdwcHh6tWr4eHhbEtS
UpKFhcWTJ0+YpyNGjGirA6TtjWqrvTNdZRZRPztCiEAgiI6OzszMrKqqamellZWVEyZMmDp1avt9
s7S0fP78+b179z7++GOmRSKRpKSkODg4tMiL48eP379/v/1qnaSAUYOGhoatrW12djbz9ObNmy4u
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
s2fPHn9//xaLAgMDY2Nj24oGQshPP/20fPnyiRMnamtri0QiHR2dKVOmyJ9XDwoKmjFjhra2dnV1
tb+//+eff04I8fT0DAgImDZtmra2tpKSUmhoKBMfLfj7+x8/fvzLL7/s3bt3bW3trFmz4uLi5s+f
v2/fvujoaGbWUEtLS0tLa/z48czA2N3dPTw8fMGCBYaGhnw+39LSknqFHJW1tXVCQkJVVVXv3r13
794dERFx/vx5VVVVsVi8fv16HR0d5mXBwcEREREaGhrV1dUeHh7z5s0jhAQEBBQWFi5evJjZzwMH
Dly3bh11LWZmZkePHn316tVXX33VVk9mzJhRXFw8depUIyOjqqoqLy+v1hfttaNnz55eXl7vMtHA
2Lhx4xdffBEQEKCrq1tdXT1r1izmd2jevHkrVqwICgricrnM2JOZve/Xr9+JEyfq6upWr169devW
uXPn+vv7a2lpMRd0tj9q4HK5O3bsWLJkybFjx2QymZKS0nfffffuAyKZTBYXF9ejRw8vL6+BAweu
XLkyPj7+xx9/lEgklpaWkZGRvXr1IoTk5ubGxcX93//9X4vLMYKCghISEqZPn/6Oq/sgZN3h8ePH
aWlpz549a9FeV1eXnp5eUFDQ1NT0XgWjo6PnzJnz1pe9ePEiPT390aNH8o1NTU0uLi7MaY60tLSS
khL5/tTX1zO9EovFK1euXLZsGbVyY2Njdnb2nTt3GhoaZDKZQCC4e/cuWz83NzczM7P1RgkEgoyM
jIcPH0ql0vfaXnlSqfTBgwe3b9+uq6tjG729vW/cuMHuz9brvXnz5osXL9opW19fn5GRkZ+f/9YO
VFdXZ2RkyK/9g3r06FFaWlrrzhcVFWVlZb1+/ZptaWhouHnzZl5eHtvC4/Hu3LkjkUjecV1isZj5
WEUiUed7XlhYWFlZ2fk6XaN7okGxCgoKAgICzp0717G3s9HQetGGDRs+//xz5tt2586doKCg06dP
d6qvXYWJhu7uBfyFKeyAorvExMQcOHDAzc1t1KhRCi++aNGixYsXBwQEGBoaNjc3T548mb3WCODv
TUn2F78BnEAgqKqq6t+/f2eK3L59297evsW5SVZVVdWLFy/s7e3bupD+v9Ddu3etra3ZeQeA9/WX
jwYA+BD+Mj+DANCVEA0AQIFoAAAKRAMAUCAaAIAC0QAAFH9e8lRYWHj9+nVlZeVPPvmEuWeJSCRi
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
8f+YIHk11+TtEAAAAABJRU5ErkJggg==

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--EVF5PPMfhYS0aIcm--
