Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF00E00869; Sun, 28 Sep 2014 19:01:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	DC_PNG_UNO_LARGO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 DC_PNG_UNO_LARGO Message contains a single large inline gif
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396F4E0079E
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 19:01:11 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 2860BA42D9; Mon, 29 Sep 2014 02:01:11 +0000 (UTC)
Date: Mon, 29 Sep 2014 02:01:11 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140929020110.GA15677@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Sep 2014 02:01:12 -0000
X-Groupsio-MsgNum: 21689
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
chkconfig                     1.3.58                        1.3.62                        Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.3.2                      0.19.2                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.1.0+gitAUTOINC+2cf87e6      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+3525152        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          0.91                          1.0                           Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.9.1                       Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.12                        4.8.13                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+81f90c5        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+15685fe      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+be9f      Saul Wold <sgw@linux.intel.com>                   
hdparm                        9.43                          9.45                          Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.13                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+419b700         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.3                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+3525152        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080600                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
less                          466                           468                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.2+gitAUTOINC+d521c31      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.71                          3.73                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
cronie                        1.4.11                        1.4.12                        Saul Wold <sgw@linux.intel.com>                   
curl                          7.37.1                        7.38.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+ff8      Saul Wold <sgw@linux.intel.com>                   
libksba                       1.3.0                         1.3.1                         Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.36                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.1                        Ross Burton <ross.burton@intel.com>               
gnome-common                  3.12.0                        3.14.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.14.0                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.8                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.26.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.20.0                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.14.0                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.2                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.14.0                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.4                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.6.0                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.48.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.1                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pango                         1.36.6                        1.36.8                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.14.0                        Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.14.0                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.14.0                        Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
xrandr                        1.4.2                         1.4.3                         Ross Burton <ross.burton@intel.com>               
xinit                         1.3.3                         1.3.4                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.916                      Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.42.0                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.38.0                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.14.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.6.0                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+4efb025       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.14.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.42.0                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
libunistring                  0.9.3                         0.9.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.3.90                        Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8                           Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+2f747a3        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.16.1-rc2+gitAUTOINC+ad      Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.14.0                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.56                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.8.9                         1.8.10                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3.1                      7.19.5                        Richard Purdie <richard.purdie@linuxfoundation.org>
oprofile                      0.9.9                         1.0.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.65                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.16                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        11                            Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+dd79a61      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.15                          3.16                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
nfs-utils                     1.3.0                         1.3.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.4                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.3                           No Maintainer info                                
dbus-test                     1.8.2                         1.8.8                         No Maintainer info                                
serf                          1.3.6                         1.3.7                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.9.0                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+94c32      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
ghostscript                   9.14                          9.15                          Hongxu Jia <hongxu.jia@windriver.com>             
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.3                         1.5.4                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.6                         2.4.7                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          2.1.0                         2.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.23                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.22                          5.23                          Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.23                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.6.1                         1.6.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.30.0                        0.30.1                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+f662913        Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.8                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140715                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
xz                            5.1.3alpha                    5.1.4beta                     Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.1                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.16                          3.16.3                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r122                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 152
Upgrade Total Count: 172
The based commit merge time is:
Tue Sep 23 22:10:26 2014 +0100
The based commit is:
commit 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Sep 23 22:10:21 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--lrZ03NoBR/3+SXJZ
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
R0pb3n777VOnTs2fP//rr7+2srJ69tlnpfXlwsLCN998Mzo6eu3atRMnTvzss8+kdyk7O3v27Nlh
YWHr16+fNWvW+vXrly5dKoSor6+XXlFMTMzzzz//9ttve3p6jh07dvr06cYDGDx48GOPPda1a9dP
PvmkU6dOBw4c+OCDD0aOHPnjjz9OmjTp448/ll5gTU1NQUHBX//61yeeeGL8+PGmL8TR0TEqKsqw
GltRUZGSkmK8F7CsrOzq1asNvmvZsmWrV69+8cUX169f37t37xdffPHMmTNCiI8//jgjI+O1115b
uXKlg4PDm2++KYR48803fXx8Ro4cOXPmTCHEhx9+uH///r/85S9r167t1q3brFmzpH9KjUaza9eu
48ePr1y58ptvvsnOzv7yyy+lN+SNN97Iz8//5JNP/vnPf1ZUVPzpT38y7uUSOzu78ePHjx8/3sXF
5Zb/fNJL6Ny584gRI5p6wJAhQ/bs2WM4OnD37t3x8fHt2rUzPCA8PHz8+PGxsbEteToArYZiB0Xp
06ePWq0uLCwsKirKz8+Piory9/d3dnY+dOiQECI1NdWwDrtkyZKXX355wIAB3bt3nzlzpqurq7R/
4ttvvw0LC0tMTOzWrVtCQsKYMWOM91tIrW706NENeoYQIiEh4dSpU2q1Wgixf/9+S0tL42WvlouL
i3v88ce9vLyee+65oUOH7t69WwixbNmyMWPGPProo+7u7tOmTQsJCTH+llGjRj333HM9e/asqqoa
PXr07Nmzvb29PTw8hg8fnpubK4QoKCjYt2/fO++807dvXz8/v3nz5nXo0EH63lWrVvn4+Lz44ose
Hh5xcXHjx4/fs2dPo0eSXbx40XDyxMCBA19++eWpU6cOGTJECJGenn7gwIH58+cHBgYGBga+9tpr
5eXlKSkp0jdGRkY++eSTXl5ekyZNevzxx6X3c9OmTYGBgdOnT/fw8IiOjp4xY8b69esNzzV48OBp
06aFhoZ269ZNpVJ17NixS5cuxoNxdHR0dna2trb28vKytLRcs2bNqFGjxo8f7+7uPmbMmIkTJ65b
t056ZG1t7R//+Menn37a19e30Tc8ISFBepOFEP/5z3+8vb27d+/ezD9QbW3tsmXLXn/99aioKC8v
r1mzZnXo0EFKyM/P9/DwGDp0qI+Pz1/+8hfpNB13d3fpJbi6ut64cePHH3988803IyMjPT0933rr
LQcHB8MPmEajeeedd9zc3AIDAx977DFph9/BgwczMzMXLFjg5+fXq1evGTNmXLp06fTp082M8JbK
y8tXrFgxe/bsZh4TFRVVW1v7yy+/CCF0Ot3+/fuNd2QCuGdxjB0UJSwszNraOjU1VafTubq69ujR
QwgRFRV16NCh6OjowsJCqdhdvHixsrIyLS3NsFLp7Ows7TjJycl56KGHPv/8c2m7RqOpqKiQTpvQ
6XTPP/98dXV1o4uVYWFhnTp12rdv37hx47Zt2zZ48OBGD5O6JeP9fOHh4d98840QIi8v7/HHHzds
79mzp/F6XFhYmPSFjY3NU089lZmZefbs2fT09N27d0tjOH/+vK2tbe/evQ0PM5xBkpOTU1tba3i9
ZWVlNTU1V69ebVCkhBAuLi5z586Vvq6vr9+5c+eqVatiYmJ8fHxycnJsbW0NXUoI0aFDh0uXLhle
hfErknaPnTt3zviVhoSEqNXqq1ev2tvbG7+iFjp37tzQoUON03744QdDPW0+LSYm5v3338/KyvL3
99+9e/ct60teXp5Opzt+/PjZs2elLZ06dZJe7MiRI+fPn//ss89GR0fHxMSY7s3Kzc2tr683LGha
WFgEBgYaznXo0aOH4ZjCTp06SePPycmxt7dfvny5IcTW1vbSpUt3sD/YYPv27cHBwdLsaIqVlVVM
TMyuXbv69Olz+PBhR0fH4ODgPXv23PGTAmgd7LGDoqhUquDg4NTUVGkdVtrYv3//lJSUkydPWlpa
Sr8OpZUsOzs72/8aNGhQfHy8EEKn09nY2Bi2d+/effr06dKCVF1d3bRp0+bMmfP9999nZ2ebPnt8
fPzu3bvLysqOHDnS6CKXdOR7g4tfNLhpfMyTSqVSq9XSL3hbW1vDdjs7u0a/paKiIjEx8dVXX83M
zAwPDzdcmUJaQTM+7t5wbFxNTY1KpTK8Xnd39+nTpzd6UL908oQkOjr6/ffft7CwOHLkiPSmWVtb
2xqZOHGiv7+/9I3S2rfheTUajU6nMz7Vw/CKDGcHN3rgVzNM06qqqgz9u/k0W1vb/v3779y5U6PR
pKSk3LLYSbH29vaGFzt48GBp7+y4ceO+//77vn37JicnT5w48Y033miw77OmpsbCwsLw5ktDNbzq
Rs8UMX1vp0yZ0vw+xVvasmWLYQ29GQkJCXv37q2vr9+1a1eDk1QA3LPYYwel6dOnz86dO9VqtWGl
KSoqSqvVrlq1KiAgQKpH3t7ejo6OvXr1iomJkR5z9OhRqRmEhoZWVFQYThUsLCxMS0uTmoGNjc24
ceOEEJs3b37//fe//fZb40OOhBAJCQnr16/fsGGDq6tro3uJpAtnnD171vgg9HPnznl7e1tYWEgN
Lycnx3Dy6enTp728vNq1azdgwIDc3FzD2m5eXl6jr33//v0FBQUbNmyQBrx161Zpe3BwcGVl5YUL
Fzw9PaUtZ86ckYpvr1698vLyDK+3qKgoJSWlhcdp9ejRQzpJQnrTJkyYYGic//73v7t16yZ9nZOT
Yzi39PTp0+7u7tbW1gEBAcanLGRnZ0vrqqZHj7WElCatC0vP6OHh0fI9pkOGDPn888+9vLx8fX09
PDyaf7C/v7+NjU1ERETfvn2lLQcPHpSWtnft2hUaGjp9+vTp06fv2LFj7ty5R48ejYqKMv5eIURu
bm5gYKBhqM3vUAwNDV21atWUKVOkXl5bW7t169YWniHRqPPnz+fl5bWkqEk/IT///HNycvLixYvv
+BkBtCb22EFpIiIi8vPzr1+/bvi926FDh4CAgLS0NOMLnURGRq5YsUJaY01LS3v55ZfLysqEEFFR
UQcOHJBOrdVoNHPmzDlw4ECDp5g9e3Zubu7atWsbbA8NDXVxcVm+fHlTx6R7eXl5eXl99NFH0hJw
TU3N9u3bpRMhDY9ZsWJFTk6OEOLMmTObN2+WfgHHxcWtWrWqoKBAGu2ePXsadEpJbW1tRUWFVJhy
cnJWrVpVV1dXU1Pj4uLi7e09b948jUYjhFi5cqVhJTcqKiolJUU6r1Or1b711lt79+5tyfsshLC1
tS0pKRFC+Pv7d+jQYcmSJXq9vr6+fsWKFR988IGh5K1bty49PV0IkZubu27dOukVRUZG7t27Vzph
WaPRLFmyZODAgU1db6XBtdNMRUZGrlu3TnrhFy9eXLlypaGyt8TAgQPVavXSpUtbchiZpaVleHj4
8uXLb9y4IYQ4duzYK6+8Il24+Icffvj000+vX79eW1srXSjbsKItPcDOzi4wMDApKUm6ou/WrVvP
nDkTHR3dzNP16tVLCCEtxdbV1S1evPiTTz5p+R5NvV7/0UcfGf8Mb9myJTo62ngHsBDi8OHDH330
kfHFvYUQFhYWcXFxixYtcnJyMjRRAPc49thBaUJDQ21sbHr06GE4P0AI0a9fv7NnzxoXu7lz577w
wgsJCQnOzs5Xrlx58sknBw4cKISIjY3NzMycOnVqly5dSkpKAgICpJMZjXl4eDz33HOLFy+Oi4tr
cNfgwYNXrVrVzMmGX3zxxZ///OfHH3/c0dFRq9U6OTlNnDjR+DpqCQkJkydPdnR0LCkpiYuLe+qp
p4QQ/fv3j4+Pf/LJJx0dHdu1azdy5Eip/DUQFxf3/fffv/rqq126dCkrK3vmmWdWr179wgsvLF26
NCkpSTrXwcHBwcHBYdy4cdKSYmRkZGJi4osvvti5c2e1Wu3t7d3gwiLN8PX13bRpU3FxcZcuXT7/
/PPp06dv3rzZysqqpqbm3XffdXJykh42ZMiQ6dOn29nZlZSUREVFTZs2TQgRHx+flZU1c+ZM6X3u
2bPn22+/3eizeHp6rly58tq1a6+99lpTI5k8eXJOTs6kSZNcXV2Li4sHDBjQ4AMSmte+ffsBAwa0
5AA7yXvvvff888/Hx8d36NChpKTkmWeekf6KmDZt2uuvv56QkGBrayvt9/Xx8RFCdO/efe3ateXl
5W+++ebChQunTp0aFxfn4OAgfXhG83vsbG1tP/nkk5dffnnNmjV6vb5du3bvv/9+y3dG6vX61atX
P/TQQ9Ju4Pr6+u3bt0+ePLnBw9LT01evXv1///d/DS6/l5CQsGnTpqeffrqFTwegzbW7swupA8pQ
UFBQWFjo4+PTtWtX4+0ajebMmTPOzs6/+93vmrokbKM++uijs2fPfv31180/rLi4ODc3t2vXrt7e
3oaN9fX1ffv2XbZsWffu3TMyMlxdXQ0ncmo0Gmtra51Od+bMmYiIiLfeequ2tnbRokWmyTU1NZmZ
mbW1tUFBQSqVStqBJ502UV9ff/bs2aqqqkceeaTBi6qoqDhz5oyTk5Ofn98dX5a5rq4uMzOzsrLS
39/fsEspOjp63rx5oaGh0vtpOPDO8Lxnz5719vY2PVfD4MaNG6mpqdJu1+YHUFpampOTExgYeLuH
6N2ZvLy8y5cvP/zwww0Gn5OTo9FoAgICDPssq6urT5065eDgYNjvdf78+bKystDQ0Ftex1ii0+ky
MjJqa2sNhxMAQKModoBssrKyXnjhhZkzZ44aNeoOvt1Q7KTVN2PvvffeuXPnFi9ebGdnd+LEidmz
Zz///PPSAX/3OKnYGX9kBQDg7mEpFpDHkiVLli9f3qdPnztrdc2bMWPGzJkz4+PjO3fuXF9fP2HC
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
ry8rK7t27dqECRM8PT0zMzO7du1q+Dw388O9vb3z8vKsrKxKSkoGDhxozj+oaXh1dbX0B5mDg0N1
dbVare7Zs6dc4UIIDw+PsLCwzp07p6en9+jRQ8b33Nvbu66u7quvvgoKCrKwsAgMDJTxbXFycsrI
yEhISGjfvr2jo6OFhYWM4R07djx//vyjjz7q7OwcHh5ub2+vUqnkCvfz85NrhpqG63Q6uWaoaXhB
QYFcM1Sv1wcGBvr7+3t4eCQnJ4eHh2dlZck1Q03DbW1t5ZqhpuEFBQVyzVDT8CtXrsg1Qxt9W+Sa
oabhVVVVcs1Q0/Camhq5ZqhpuJOTk1wz1DS8sLBQrhlqGp6SkiLXDPX19a2qqlq+fHlAQICjo6O3
t/fJkyebmqEPiDvfY2dra5uRkaHX60+dOnXs2DEhRFpaWocOHVQqVVZWlk6nS0tLO378uBDi5MmT
0r9ZXFxcWFiYadT3338/ceJEecP9/f27dOny9ddff/rpp0IIX19fGcPbt29/4sQJIYRer9dqtYZd
PncQPmjQIGlZoby8PDs729/f3/jS0G5ubsaXhjY/XAjRv3//vn37mv8PahoeFhYmLVXfuHEjPT3d
8DtDlvDAwMB+/fplZGQsX77cxsamR48e8r4tP/74Y2RkpPGyrFzhV69eLS0tXbBgQVJS0rZt24z/
NjU/PDc319nZeevWrUuWLCkvLzdedJDlbZGYP0NNw2WcoabhMs7Qvn37hoSEnDx58ssvv/Tx8XFx
cZFxhpqGC/lmqGm4jDPUNFzGGdro2yLXDDUNl3GGmobLOEMbfVvkmqGm4TLOUNNwGWeoEGL16tUj
RowwvLfNzNAHxJ0Xu+Dg4MzMzAsXLjz88MPV1dVVVVVZWVnBwcHSdmkdp6SkpK6u7ty5c8Z/YDWQ
n5/v6OjYYB+y+eFqtfrSpUv29vbBwcHl5eUlJSUyhoeFhTk4OCxdujQpKUmr1Zo/8kOHDi1atOiJ
J55wd3eX9ntJ252cnCorK2UMl/0f1DT81KlT8+fPHzRokPGvDbnCra2tpT956+vrZQzPyMgoKSkZ
MGDA3XhbnJycJkyYMHv27FmzZiUnJ6elpckYfuXKlePHj7u6uk6cOHHJkiUZGRmyv+cyzlDjcNln
qHG47DNUWl6wtraur6+XfYYah5v+BMoeLuMMNQ2XcYYah8s+Q43DZZ+hxuGyz1DT91zGGWocLvsM
NQ6XcYYePnzYzs7O+JjOZmboA+LOl2I7duz4ww8/ODg4uLm5WVpa3rhxIz8/f+jQoR06dPjpp59s
bGy8vb1v3LhRU1NTUlIyaNAg6buuXr3666+/Sguaku3bt0dERHTu3Fne8L1793p6eo4ZM8bHx6e4
uLioqMiwB8L8cGtr64iICA8Pj5iYmNLS0oCAAMNu5NsNr6urW7FiRVFR0fPPPy8dy3zp0qXCwsJH
HnlECHHy5Ek3NzfDRQTND5dUVFSkpqY2WOiRJXzjxo3p6enTpk1rcI1v88MvX74shHBzcwsKCjp/
/vyFCxcMT2F++Pr168vLy3/55ZfMzMzCwkKtVnvHPy2m4fb29u7u7u3atbOwsKivry8pKQkICJAr
/MaNG1ZWVkOGDLGxsdHpdMXFxTKGyzhDTcNlnKGm4TLO0IKCApVK5e7uHhoaevToUZ1OZ2lpKdcM
NQ2Xxi/LDG00XK4ZahpuZWUl1ww1DT9y5IhcM9Q0vGfPnnLNUNPwTp06yTVDm/ppkWWGmobn5OTI
NUNNw318fOSaod99951Wq01JScnJyblw4YJer1epVE3N0AfEne+xs7Ky6tat2/79+/38/Pz9/bdu
3SpVZltbWwcHh2PHjhm2h4SENBVSV1eXk5Nj/IejXOHOzs7SDljpaB7jdQHzw8+dO7ds2TJpxp44
ccLLy+uOw0+fPt2uXbupU6fa29tLCWFhYRcvXtTpdEKItLS0bt26yRjeDPPDCwoKLl269NJLL3Xs
2FH28NOnT+/cuVMIodPp1Gq18TET5oc/9dRTiYmJTz31lHQwb2xsrIzhP//888aNG4UQNTU1eXl5
xqts5of7+vqePn26vr5er9cXFxcb/9kqy0+LXDPUNFzGGWoaLuMMPXr0qHTiYWVlpUajcXR0lHGG
moaLppkfLuMMNQ2XcYaahss4Q03DZZyhpuEyztBGf1rkmqGm4TLOUNNwGWfoCy+88Oyzzz711FPB
wcERERGRkZHNzNAHhJU53xwSElJYWNipUyeVSlVaWmr4kQ0ODk5JSbGzswsICFi1alVw0+e9p6en
e3p6tmvXTvbw8PDwvLy8L774ori42MXFpUFFMzPcy8tLrVZ//PHHtbW1I0aMsLa2vuPw9PT048eP
S0cbCCHGjRs3aNCg0NDQ+fPnW1pa9unTp8ElCcwPb/QVyRJ+/fr1rKysV155RdoSFxf36KOPyhUe
ExOzcOHCzz///OLFi66urg0OQpLrbbGzs6uqqmpw7r2Z4eHh4StWrPj000+Li4v9/f0bLIibP/KB
Awd+9tlnFRUVnTp1evjhh+UNl2uGmoZHRUXJNUNNw/v37y/XDP3DH/6waNGinJyc3Nxc6VhPCwsL
uWaoabjp+yxj+LZt2+Saoabh/v7+cs3QRt9z6fHmz1DT8MrKSrlmaKMjl2uGNvrTItcMNQ3X6XRy
zVDT8Lq6OrlmqOFPiPbt29v9VzMz9EHQ2texa2WVlZU6ne5unBGj1+svX77s4OAgywV4TGm12srK
ygZ716FWq62srO7H6xJpNBpLS0s7O7u7ES4diXI/nvl1v8zQ4uJi6ReGYYuMM9Q0XEatHC7jDG3l
kcs4Q03DZZyhrfy2yDhDG4TzO/TuUXixAwAAeHC06gWKAQAAcPdQ7AAAABSCYgcAAKAQFDsAAACF
+P+11/C+B1UlqwAAAABJRU5ErkJggg==

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--lrZ03NoBR/3+SXJZ--
