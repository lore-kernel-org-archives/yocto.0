Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CCF3E0084F; Sun,  5 Oct 2014 19:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	DC_PNG_UNO_LARGO,URIBL_RHS_DOB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
	*  1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day Old Bread)
	*      [URIs: mvista.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 DC_PNG_UNO_LARGO Message contains a single large inline gif
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A1FE0084D
	for <yocto@yoctoproject.org>; Sun,  5 Oct 2014 19:33:53 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 37F1EA42D9; Mon,  6 Oct 2014 02:33:53 +0000 (UTC)
Date: Mon, 6 Oct 2014 02:33:53 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141006023352.GA7592@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 06 Oct 2014 02:33:55 -0000
X-Groupsio-MsgNum: 21748
Content-Type: multipart/mixed; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline

--WIyZ46R2i8wDzkSu
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+4c651ca        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          0.91                          1.0                           Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.9.2                       Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.12                        4.8.13                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+a296f9e        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+15685fe      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+b966      Saul Wold <sgw@linux.intel.com>                   
cups                          1.7.5                         2.0.0                         Saul Wold <sgw@linux.intel.com>                   
hdparm                        9.43                          9.45                          Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.13                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+9b34db1         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.3                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+4c651ca        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080600                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
less                          466                           468                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.3+gitAUTOINC+c64b794      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.71                          3.74                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
cronie                        1.4.11                        1.4.12                        Saul Wold <sgw@linux.intel.com>                   
at                            3.1.15                        3.1.16                        Saul Wold <sgw@linux.intel.com>                   
curl                          7.37.1                        7.38.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+ff8      Saul Wold <sgw@linux.intel.com>                   
libksba                       1.3.0                         1.3.1                         Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.36                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.1                        Ross Burton <ross.burton@intel.com>               
gnome-common                  3.12.0                        3.14.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.14.1                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.8                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.26.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.20.0                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.14.1                        Ross Burton <ross.burton@intel.com>               
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
gtk-update-icon-cache-native  3.4.4                         3.14.1                        Ross Burton <ross.burton@intel.com>               
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
xkeyboard-config              2.12                          2.13                          Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.6.0                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+6ea7eb0       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.14.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xcb-util-keysyms              0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.42.0                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
make                          4.0                           4.1                           Robert Yang <liezhi.yang@windriver.com>           
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
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+442ab51        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.16.2+gitAUTOINC+5a7157e     Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.14.0                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.58                        Richard Purdie <richard.purdie@linuxfoundation.org>
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
dbus-test                     1.8.2                         1.9.0                         No Maintainer info                                
serf                          1.3.6                         1.3.7                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.9.0                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+6f050      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
ghostscript                   9.14                          9.15                          Hongxu Jia <hongxu.jia@windriver.com>             
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
cracklib                      2.9.1                         2.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
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
bluez4                        4.101                         5.24                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.22                          5.24                          Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.24                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.6.1                         1.6.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.1                         1.4.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.30.0                        0.30.1                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+935b555        Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.9.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
libpcre                       8.35                          8.36                          Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140715                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
xz                            5.1.3alpha                    5.1.4beta                     Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.1                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.16                          3.17                          Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r122                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 159
Upgrade Total Count: 179
The based commit merge time is:
Fri Oct 3 14:41:30 2014 +0100
The based commit is:
commit 6c3d1192c79d5b513169a734818f436b1ce645f0
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Wed Oct 1 11:46:38 2014 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--WIyZ46R2i8wDzkSu
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
nTv3xRdfTEhIcHZ2vnbt2lNPPTVgwAAhRGxsbGZm5pQpUzp16lRSUhIQECCdQmvMw8Pj+eefX7Jk
SVxcXIO7Bg0atHr16tuc4vr555//+c9/fuKJJxwdHbVarZOT04QJE4yvR5iQkDBp0iRHR8eSkpK4
uLinn35aCNGvX7/4+PinnnrK0dGxTZs2I0aMkLrMBuLi4r777rvXXnutU6dOZWVlzz777Jo1a158
8cVly5YlJSVJJ744ODg4ODiMHTtWWo2NjIxMTEx86aWXOnbsqFarvb29G1w35zZ8fX03b95cXFzc
qVOnzz77bNq0aVu2bLGysqqpqXn33XednJykhw0ePHjatGl2dnYlJSVRUVFTp04VQsTHx2dlZc2Y
MUPazz169Hj77bcbfRZPT89Vq1bduHHj9ddfb2okkyZNysnJmThxoqura3Fxcf/+/Rt8dMrttW3b
tn///s05CFLy3nvvvfDCC/Hx8e3atSspKXn22WeltytTp0594403EhISbG1tpZlsHx8fIUTXrl3X
rVtXXl4+e/bsRYsWTZkyJS4uzsHBQfpYndvPQdra2n788cevvPLK2rVr9Xp9mzZt3n///eZPr+r1
+jVr1jzyyCPSxHZ9ff2OHTsmTZrU4GHp6elr1qz5v//7vwaXsUxISNi8efMzzzzTzKcD8OBqc3cf
mQA8nAoKCgoLC318fDp37my8XaPRnD171tnZ+Xe/+11T13Bu1Icffnju3Lmvvvrq9g8rLi7Ozc3t
3Lmzt7e3YWN9fX2fPn2WL1/etWvXjIwMV1dXw+nDGo3G2tpap9OdPXs2IiLirbfeqq2tXbx4sWly
TU1NZmZmbW1tUFCQSqWSpiSlc2jq6+vPnTtXVVX16KOPNnhRFRUVZ8+edXJy8vPzu+vrqNfV1WVm
ZlZWVvr7+xsmyaKjo+fPnx8aGirtT8PBkYbnPXfunLe3t+mJOwa3bt1KTU2VJpJvP4DS0tKcnJzA
wEC5h1Henby8vKtXr3bv3r3B4HNycjQaTUBAgGEWtrq6+vTp0w4ODoaZvAsXLpSVlYWGht7xwuMS
nU6XkZFRW1trOBIDAJRFBwm0mKysrBdffHHGjBkjR468i283dJDSwqWx99577/z580uWLLGzszt5
8uSsWbNeeOEF6aDMVk7qII0/zAYA0Aqxig20jKVLl65YsaJ379531z7e3vTp02fMmBEfH9+xY8f6
+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

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--WIyZ46R2i8wDzkSu--
