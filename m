Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82426E00902; Sun, 26 Oct 2014 19:18:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63393E0085E
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 19:18:43 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 59393A409E; Mon, 27 Oct 2014 02:18:43 +0000 (UTC)
Date: Mon, 27 Oct 2014 02:18:43 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141027021843.GA12114@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 27 Oct 2014 02:18:45 -0000
X-Groupsio-MsgNum: 21935
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline

--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.9                         3.1.10                        Wenzong Fan <wenzong.fan@windriver.com>           
chkconfig                     1.3.58                        1.3.62                        Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.3.2                      0.19.3                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.1.0+gitAUTOINC+2cf87e6      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+dc7bb40        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          0.91                          1.0                           Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.55                          9.56.1                        Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.9.3                       Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.12                        4.8.13                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+dc878b4        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+dd183c2      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+5b3e      Saul Wold <sgw@linux.intel.com>                   
cups                          1.7.5                         2.0.0                         Saul Wold <sgw@linux.intel.com>                   
hdparm                        9.43                          9.45                          Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.21                       Saul Wold <sgw@linux.intel.com>                   
libaio                        0.3.109                       0.3.110                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+9b34db1         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.4                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+dc7bb40        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.3                         0.5.0                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.75                          1.76                          Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080700                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.4                         0.8.5                         Saul Wold <sgw@linux.intel.com>                   
less                          466                           470                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.3+gitAUTOINC+074ee56      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.71                          3.75                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
watchdog                      5.13                          5.14                          Saul Wold <sgw@linux.intel.com>                   
cronie                        1.4.11                        1.4.12                        Saul Wold <sgw@linux.intel.com>                   
usbutils                      007                           008                           Saul Wold <sgw@linux.intel.com>                   
at                            3.1.15                        3.1.16                        Saul Wold <sgw@linux.intel.com>                   
curl                          7.37.1                        7.38.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+40c      Saul Wold <sgw@linux.intel.com>                   
libksba                       1.3.0                         1.3.1                         Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.36                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.1                        Ross Burton <ross.burton@intel.com>               
gnome-common                  3.12.0                        3.14.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.15.0                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.9                         Ross Burton <ross.burton@intel.com>               
xcb-util-image                0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.26.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.20.0                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.15.0                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
xcb-util                      0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.2                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.14.1                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.5                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.6.0                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.48.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.1                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pango                         1.36.6                        1.36.8                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.14.0                        Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.14.0                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.15.0                        Ross Burton <ross.burton@intel.com>               
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
vte                           0.28.2                        0.38.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.14.1                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.12                          2.13                          Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.6.2                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+b786e3d       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.14.1                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xcb-util-keysyms              0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.16                       1.14.0                        Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.42.0                        Robert Yang <liezhi.yang@windriver.com>           
logrotate                     3.8.7                         3.8.8                         Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
make                          4.0                           4.1                           Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.20                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
libunistring                  0.9.3                         0.9.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.4.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
kexec-tools                   2.0.7                         2.0.8                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8                           Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+8e8ce8d        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.16.2+gitAUTOINC+5a7157e     Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.14.0                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.58                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.8.9                         1.8.10                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3.1                      7.19.5                        Richard Purdie <richard.purdie@linuxfoundation.org>
nasm                          2.11.05                       2.11.06                       Richard Purdie <richard.purdie@linuxfoundation.org>
oprofile                      0.9.9                         1.0.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.66                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.17                          Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.15                          3.16                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        11                            Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.6p1                         6.7p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+dd79a61      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
nfs-utils                     1.3.0                         1.3.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.4                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.3                           No Maintainer info                                
dbus-test                     1.8.2                         1.9.0                         No Maintainer info                                
libnewt-python                0.52.17                       0.52.18                       No Maintainer info                                
serf                          1.3.6                         1.3.8                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.9.0                         No Maintainer info                                
pinentry                      0.8.4                         0.9.0                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+6f050      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.2                         Hongxu Jia <hongxu.jia@windriver.com>             
libnewt                       0.52.17                       0.52.18                       Hongxu Jia <hongxu.jia@windriver.com>             
cracklib                      2.9.1                         2.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
libxml2                       2.9.1                         2.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.3                         1.5.4                         Hongxu Jia <hongxu.jia@windriver.com>             
pax-utils                     0.8.1                         0.9.1                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.6                         2.4.7                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.03                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          2.1.0                         2.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.24                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.22                          5.24                          Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.25                          1.26                          Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
wpa-supplicant                2.2                           2.3                           Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.24                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.30                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.6.1                         1.6.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.30.0                        0.30.1                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+0e5f637        Cristian Iorga <cristian.iorga@intel.com>         
netbase                       5.2                           5.3                           Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.3                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.9.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
libpcre                       8.35                          8.36                          Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20141006                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
xz                            5.1.3alpha                    5.1.4beta                     Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.2                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
sysklogd                      1.5                           1.5.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.16                          3.17.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r122                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 182
Upgrade Total Count: 202
The based commit merge time is:
Fri Oct 24 21:59:46 2014 +0100
The based commit is:
commit dacc4ce59e48129a1a1e5316e10780f7358e29ef
Author: Otavio Salvador <otavio@ossystems.com.br>
Date:   Mon Oct 20 23:58:52 2014 -0200
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--ReaqsoxgOBHFXBhH
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA9QAAAEsCAIAAACt6GyOAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3de1yUZf7/8UsODXJUUBEEEXABOYmBgq4iB9H1mFqpD7fSasW+VlrZltp22DZdTemwtWmZ
/so85LE2Xc+6Sp4xFVA5iSDiCWGEwUFggPn9cbvTLANqzs2N4Ov518w9M++55oYPfOa6r7mnjV6v
FwAAAACankVzDwAAAAB4WNB8AwAAAAqh+QYAAAAUQvMNAAAAKITmG2h+ixcvHjx4cE1NjWHLq6++
OmTIkOrqasOWP//5z1OmTLmP8JSUlGHDhplunzdv3oIFC+4xZMeOHbGxsXV1dXfd2NQWLVp078MW
QixZsiTWyODBg6dPn75p06amG6FBY3umoqLi1VdfjY6OvnLlyv0ljx49OjY2Nj8/v972N998MzY2
dseOHUKIf/7zn3PmzBFCZGdnx8bGarXa+3giJX+4P//8865duxq86cCBA++Y2LhxY727LV++PDY2
9h//+Ee97QcPHoyNjX3xxReNN+r1+vnz51dVVcn4EgDgXtB8A80vKChIrVZnZmZKVysrK48ePVpS
UnLy5Elpi16vT0lJCQgIuI/wmpqamzdvmm6vrKysrKy8xxCdTldeXn4vG5vabxq2EKKqqsrGxuZv
/zV9+vS2bdvOmzdv+/btTTdIyeTJk9esWWO6/dChQ0ePHn3nnXdcXV3vL/nmzZtarXbnzp3GG8vL
y5OTk7VarU6nE0L4+PgEBQUJIWpra8vLy+/vxFaJiYnffvvt/Q3yN6murv7www+zsrIavLW2trbq
fyUnJ1+8eLHe3aqqqrRa7bZt2+q92B07dmi12oqKCuONmzdv3rBhg7SvAEBJVs09AAAiPDzc0tIy
NTU1ODhYCHH8+HErK6uAgIBDhw5FRkYKIXJzc2/evBkREWH8qJqaGiurBkq4trbW0tJSmZGb+q2j
qqurq66utrGxka7q9Xq9Xm9hUX9eoLHtd0g2sLGx6d+/v+Hq8OHDR44c+cMPP/zhD3+4l5zf+or0
en1lZWXbtm0bG49arfb09Bw0aNC9pNXV1dXU1DzyyCP1tgcHB+/atSsxMdGwZd++fd26dbt06ZJ0
dejQoY0NQDT+ohrbbs5QpZsa/NkJITQaTVJSUkpKSlFRUWPPOHDgwIEDBxqunjhx4uTJk88995zp
Pb29va9evXry5MlHH31U2qLT6ZKTk4ODgw0d+c6dO3/88cfjx483/hIBoAkx8w00Pzs7u4CAgNTU
VOnqkSNHwsPDBwwYcPjwYWlLWlqahYWFoZ9Ys2bNpEmT+vXr98QTT/z888+GnBMnTrz55psDBw5M
SEj45JNPamtr6z1RXl7exIkT//WvfxlvTExM/OmnnwxXFy5c+JvWdQgh6urqxowZc/z48Wefffb3
v//96NGjjZcEbNu27fnnn+/fv//LL7+8Z8+el19+WQihVqvHjBmTlZX15JNPvvvuu0KI3Nzcjz76
aNiwYTExMYmJiYY1FWVlZYsWLRo6dGhMTMz7779vvBQnPT19zpw5sbGx8fHxH3744T3OYrZp0yYw
MFClUklXNRrNP/7xj1GjRg0YMCAxMdEwnzpx4sTDhw8nJib2799/1KhR3333nSHh4MGD0vbHHnvs
s88+kzZWVVWNGTPmzJkzEydOnDlz5tSpU8+dO7d8+fL33nvP+Nk3bdq0dOnSixcvjhkz5tq1a0KI
n3766Zlnnunbt++4ceO+//576W75+fnjxo3LyMh47LHHkpKSTF9FbGxsYWHhuXPnDFt27dqVkJBg
uPrtt9/Omzev3qP0ev2KFSueeuqpfv36jRs37tixY9L28vLyOXPmxMfHR0dHT5o06cKFC0KIl19+
OSMj47vvvpOWr9TU1Hz44YcjR46UdlRaWpr02A0bNixcuHDDhg0JCQn9+/efPHny1atXpZuuX7+e
lJQ0bNiw6Ojol19+ucH22tLSMigoaPLkye7u7g3/wP6XTqebO3fujBkzHB0dTW9VqVQDBw40Xr5y
+PBhe3v70NBQwxYXF5eYmJjx48ffy9MBgOxovoEHQu/evU+dOiVdPnLkSGRkZL9+/c6fPy/1K6mp
qX5+fg4ODkKI1atXL1u2bMqUKRs2bOjXr9/MmTOlObyCgoJXXnnF19d37dq1b7zxxqZNm+r10Hl5
eVOnTpVaRuPtv/vd77Zs2SJdrqys3Lx5s6HLv3cXL1584403hg8fvm7dupEjRy5YsGDfvn1CiEOH
Dr333nujRo3auHFjcHDwe++9Jy10rqmpuXjx4ttvvz1s2LDJkycLId54443i4uIvvvhi9erVtra2
c+fOlZL/9re/JScnv//++19//XVpaalhucjVq1dnzJjh7u6+evXqt956a/v27e+///5dx1lTU3Pg
wIGff/55xIgR0pZ33nnn1KlT8+fP//rrr62srJ577jlpLU1hYeHs2bOjo6PXrl07YcKEzz77TNpL
2dnZs2bNCgsLW79+/cyZM9evX7906VIhRF1dnfSKYmJiXnjhhXfeecfT03PMmDHTpk0zHsCgQYMe
f/zxzp07f/LJJx06dDhw4MDcuXNHjBjx448/Tpw48eOPP5ZeYHV1dUFBwV//+tcnn3xy3Lhxpi/E
0dExKirKsPKkvLw8JSXFeDa9tLT0+vXr9R61bNmy1atXv/TSS+vXr+/Vq9dLL7105swZIcTHH3+c
kZHx+uuvr1y50sHBYfbs2UKI2bNn+/j4jBgxYsaMGUKIDz/8cP/+/X/5y1/Wrl3bpUuXmTNnSj9K
jUaza9eu48ePr1y58ptvvsnOzv7yyy+lHfLmm2/m5+d/8skn//znP8vLy//0pz8Zv3eS2NnZjRs3
bty4cS4uLnf98UkvoWPHjsOHD2/sDoMHD96zZ49htfru3bvj4+PbtGljuEN4ePi4ceNiY2Pv5ekA
QHY038ADoXfv3mq1urCw8OrVq/n5+VFRUf7+/s7OzocOHRJCpKamGtacLFmy5JVXXunfv3/Xrl1n
zJjh6uoqzfN9++23YWFhiYmJXbp0SUhIGD16tPH8n9R5jxo1ql4vKIRISEg4deqUWq0WQuzfv9/S
0tL4EP+9i4uLe+KJJ7y8vJ5//vkhQ4bs3r1bCLFs2bLRo0c/9thj7u7uU6dODQkJMX7IyJEjn3/+
+R49elRWVo4aNWrWrFne3t4eHh7Dhg3Lzc0VQhQUFOzbt+/dd9/t06ePn5/fvHnz2rVrJz121apV
Pj4+L730koeHR1xc3Lhx4/bs2dPgyuZLly4ZPnA5YMCAV155ZcqUKYMHDxZCpKenHzhwYP78+YGB
gYGBga+//npZWVlKSor0wMjIyKeeesrLy2vixIlPPPGEtD83bdoUGBg4bdo0Dw+P6Ojo6dOnr1+/
3vBcgwYNmjp1amhoaJcuXVQqVfv27Tt16mQ8GEdHR2dnZ2tray8vL0tLyzVr1owcOXLcuHHu7u6j
R4+eMGHCunXrpHvW1NT88Y9/fOaZZ3x9fRvc4QkJCdJOFkL85z//8fb27tq16x1+QDU1NcuWLXvj
jTeioqK8vLxmzpzZrl07KSE/P9/Dw2PIkCE+Pj5/+ctfpI/2uru7Sy/B1dX11q1bP/744+zZsyMj
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
bobPFAoh+vbte/bsWePm+6233nrxxRcTEhKcnZ2vXbv21FNPDRgwQAgRGxubmZk5ZcqUTp06FRcX
BwQESCepMObh4fH8888vXrw4Li6u3k2DBg1atWrVHU4i8cUXX/z5z39+4oknHB0dtVqtk5PThAkT
jM8znZCQMGnSJEdHx+Li4ri4uKeffloI0a9fv/j4+KeeesrR0bFNmzYjRoyQGvR64uLivv/++9de
e61Tp06lpaXPPvvs6tWrX3zxxaVLlyYlJUmfj3RwcHBwcBg7dqy0fCIyMjIxMfGll17q2LGjWq32
9vaud1K/O/D19d20aVNRUVGnTp0+//zzadOmbd682crKqrq6+r333nNycpLuNnjw4GnTptnZ2RUX
F0dFRU2dOlUIER8fn5WVNWPGDGk/9+jR45133mnwWTw9PVeuXHnjxo3XX3+9sZFMmjQpJydn4sSJ
rq6uRUVF/fv3r/dFjHfWtm3b/v3738uCb8n777//wgsvxMfHt2vXrri4+Nlnn5Xe6U2dOvWNN95I
SEiwtbWVjp/4+PgIIbp27bp27dqysrLZs2cvXLhwypQpcXFxDg4O0pd03nnm29bW9pNPPnnllVfW
rFmj1+vbtGnzwQcf3Pukvl6vX7169SOPPCIdTqmrq9u+ffukSZPq3S09PX316tX/93//V+/05AkJ
CZs2bXrmmWfu8ekAQDFt7u9rzwA0r4KCgsLCQh8fn86dOxtv12g0Z86ccXZ2/t3vftfY15o06KOP
Pjp79uzXX39957sVFRXl5uZ27tzZ29vbsLGurq5Pnz7Lli3r2rVrRkaGq6ur4QQdGo3G2tpap9Od
OXMmIiLi7bffrqmpWbRokWlydXV1ZmZmTU1NUFCQSqWSJsKlj1rW1dWdPXu2srLy0UcfrfeiysvL
z5w54+Tk5Ofnd99fLVRbW5uZmVlRUeHv72+Ymo2Ojp43b15oaKi0Pw0LwQ3Pe/bsWW9vb9PPdxrc
unUrNTVVOnxx5wGUlJTk5OQEBgb+1iXj9ycvL+/KlSvdu3evN/icnByNRhMQEGCY+6+qqjp16pSD
g4Nh/vj8+fOlpaWhoaF3/S4eiU6ny8jIqKmpMSydAoCHHM03AJGVlfXiiy/OmDFj5MiR9/FwQ/Mt
rTQw9v777587d27x4sV2dnYnTpyYNWvWCy+8IC1Af8BJzbfxV2MCAGA+lp0AD7slS5YsX768d+/e
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
QmCC

--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--ReaqsoxgOBHFXBhH--
