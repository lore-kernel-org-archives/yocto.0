Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C42DE008E3; Sun,  2 Nov 2014 18:18:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14151E00881
	for <yocto@yoctoproject.org>; Sun,  2 Nov 2014 18:18:52 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 07A8AA409E; Mon,  3 Nov 2014 02:18:52 +0000 (UTC)
Date: Mon, 3 Nov 2014 02:18:51 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141103021851.GA22718@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 03 Nov 2014 02:18:53 -0000
X-Groupsio-MsgNum: 22023
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline

--FCuugMFkClbJLl1L
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+05b1f16        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          0.91                          1.1                           Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.55                          9.56.1                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+f94698c        Saul Wold <sgw@linux.intel.com>                   
opkg-utils                    0.1.8+gitAUTOINC+eae0d8f      0.1.8+gitAUTOINC+762d9da      Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+e53b171      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+571b      Saul Wold <sgw@linux.intel.com>                   
cups                          1.7.5                         2.0.0                         Saul Wold <sgw@linux.intel.com>                   
hdparm                        9.43                          9.45                          Saul Wold <sgw@linux.intel.com>                   
libaio                        0.3.109                       0.3.110                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+27eceb2         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.4                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+05b1f16        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.3                         0.5.0                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.75                          1.76                          Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.4                         0.8.5                         Saul Wold <sgw@linux.intel.com>                   
less                          466                           470                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.3+gitAUTOINC+96aa3f9      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.71                          3.75                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
watchdog                      5.13                          5.14                          Saul Wold <sgw@linux.intel.com>                   
usbutils                      007                           008                           Saul Wold <sgw@linux.intel.com>                   
at                            3.1.15                        3.1.16                        Saul Wold <sgw@linux.intel.com>                   
curl                          7.37.1                        7.38.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+40c      Saul Wold <sgw@linux.intel.com>                   
libksba                       1.3.0                         1.3.1                         Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.36                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.99.901                   Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.15.1                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.9                         Ross Burton <ross.burton@intel.com>               
xcb-util-image                0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.26.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.20.0                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.15.1                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
xcb-util                      0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.2                           Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.5                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.6.0                         Ross Burton <ross.burton@intel.com>               
libsoup-2.4                   2.46.0                        2.48.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.1                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pango                         1.36.6                        1.36.8                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.15.1                        Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.15.1                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.15.1                        Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
xinit                         1.3.3                         1.3.4                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.916                      Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.42.0                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.38.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.14.1                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.12                          2.13                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.7.1                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+e4b3624       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
xcb-util-keysyms              0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.16                       1.14.0                        Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.43.0                        Robert Yang <liezhi.yang@windriver.com>           
logrotate                     3.8.7                         3.8.8                         Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
make                          4.0                           4.1                           Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
nativesdk-libtool             2.4.2                         2.4.3                         Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
wget                          1.15                          1.16                          Robert Yang <liezhi.yang@windriver.com>           
libtool                       2.4.2                         2.4.3                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.20                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
libunistring                  0.9.3                         0.9.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.4.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
kexec-tools                   2.0.7                         2.0.8                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+1666295        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.17+gitAUTOINC+44cdb62       Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
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
psplash                       0.1+gitAUTOINC+afd4e228c6     0.1+gitAUTOINC+14c8f7b        Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+dd79a61      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.4                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.3                           No Maintainer info                                
dbus-test                     1.8.2                         1.9.0                         No Maintainer info                                
libnewt-python                0.52.17                       0.52.18                       No Maintainer info                                
serf                          1.3.6                         1.3.8                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.9.1                         No Maintainer info                                
pinentry                      0.8.4                         0.9.0                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+6f050      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
ghostscript                   9.14                          9.15                          Hongxu Jia <hongxu.jia@windriver.com>             
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
sbc                           1.2                           1.3                           Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.16.0                        3.17.0                        Cristian Iorga <cristian.iorga@intel.com>         
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
linux-libc-headers            3.16                          3.17.2                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r122                          N/A                           Armin Kuster <akuster@mvista.com>                 
apt                           0.9.9.4                       1.0.9.3                       An?bal Lim?n <anibal.limon@linux.intel.com>       
mc                            4.8.12                        4.8.13                        An?bal Lim?n <anibal.limon@linux.intel.com>       
jpeg                          8d                            9a                            An?bal Lim?n <anibal.limon@linux.intel.com>       webkit-gtk 1.8.3 doesn't work...
dpkg                          1.17.4                        1.17.21                       An?bal Lim?n <anibal.limon@linux.intel.com>       
xrandr                        1.4.2                         1.4.3                         An?bal Lim?n <anibal.limon@linux.intel.com>       
screen                        4.0.3                         4.2.1                         An?bal Lim?n <anibal.limon@linux.intel.com>       
sqlite3                       3.8.6.0                       3080701                       An?bal Lim?n <anibal.limon@linux.intel.com>       
gnome-common                  3.12.0                        3.14.0                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gsettings-desktop-schemas     3.10.1                        3.14.1                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gnome-icon-theme              2.31.0                        3.12.0                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>waiting for the sato gtk3 port
nfs-utils                     1.3.0                         1.3.1                         Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gnome-desktop                 2.32.1                        3.15.1                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>waiting for the sato gtk3 port
cronie                        1.4.11                        1.4.12                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Upgradable Count: 189
Upgrade Total Count: 209
The based commit merge time is:
Thu Oct 30 13:39:52 2014 +0000
The based commit is:
commit f19b4e995ea47f9243f152b39337330307453c9f
Author: Alexandru DAMIAN <alexandru.damian@intel.com>
Date:   Thu Oct 23 15:00:01 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--FCuugMFkClbJLl1L
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAIwAAAEsCAIAAACeycwzAAAABmJLR0QA/wD/AP+gvaeTAAATX0lE
QVR4nO3aeVAT9/vA8QcEE4IcQgVBENGOeKCiKYI2COGyHiBoBWu11lpxigdandrTqtM62GqnrThF
sY4KeKCCFY+K4IWCgloOEcKtARUMAYLBkJDs74/9Ns2PS0XEPtPn9VfyIXz2s/tmswtBj2EYIP9u
+q97AeTZKBICFAkBioTAP5HOnTsnFAo1Gk1vbn7btm1bt259/tdHR0cLdfj7+69atSoxMfHVrVCr
syPT3Ny8Zs2aKVOmPHz4sHszBwUFCYXCysrKNuPr168XCoXnzp0z0A6pVKqmpqbubabbFAqFWq1+
/te3tLRwudyvvvqKfdrQ0JCenr5lyxYej/fOO++8mjX+z4cffjht2rT33nuvzXhGRsaNGzc2b95s
bW3dvZmfPHkil8tTUlLCwsK0g01NTVeuXFGr1SqV6hlvd62trR2Od3ZkNRqNQqHQPmUYpsMfwM7G
u5hZi8vlCv42c+bMyMjIgQMHJiUlPec8L7pHDMM8ffq0i/VIpVJ7e3tfX199/X8OZhfHR6lUth93
dnY+f/687silS5eGDBnC5XKhw2uSRqMJDg6+efPm4sWL33777aCgoOPHj2u/evbs2SVLlggEgpUr
V6alpa1cuZJdaHBwsEgkmjt37rfffgsAZWVlP/300/Tp0728vMLCwrTncmNj47Zt26ZNm+bl5bV5
82bdFefn53/55ZdCodDHx+eHH35QqVRdHBotPT29UaNGcTgc9qlMJvv1118DAwM9PDzCwsLEYjE7
Pn/+/MzMzLCwMIFAEBgYGBsbq53h2rVr7PisWbN27NjBDra0tAQHBxcUFMyfP3/t2rXLli0rLS3d
u3fvxo0bdbeemJgYExMjFouDg4NramoA4OTJkx988MGkSZNCQkIOHz7MvqyysjIkJKSwsHDWrFnb
t29vvxdCobCqqqq0tFQ7cv78eT8/v/89Yf6WnJzM5/PVarVarebz+UKh8OjRo5WVlXv27HF1db14
8SLDMNeuXZs4ceKJEyeqq6ujo6MFAsGcOXMYhqmpqeHz+XPnzt2zZ8/du3cZhpk9e/YXX3xRXl4u
FosjIiI+/vhjditr164NCAi4ceOGSCRas2aNq6vrxo0bGYZ5+PChUCjcsWOHWCxOS0sTCoVff/01
087PP/8cFBSkfapSqdLT093d3c+dO8eORERELF68uKCgoKCg4JNPPvH19ZXJZAzDeHh4eHp6xsbG
VlZWxsfHu7q6JicnMwwjEokEAsHOnTvFYvHly5c9PDx2797NMExzczOfzw8ODo6Ojs7Nza2qqgoJ
Cdm5c2dNTY3uehobG3/77bfg4ODKysrW1tb09PSJEyceOXKkuro6KSlp4sSJZ8+eZbfi5uYWGhq6
f//+0tLSNjvl4+Nz4sSJ1atX79y5kx2RyWTu7u737t3z8PBITk42aF+V5e3t/e677wLAkiVLKisr
U1NTvby8fv/996CgoFmzZgHAsmXLcnNza2trtd8SEBCwcOFCAFAoFIGBgcHBwaampgAwffr0yMhI
ALh///6lS5d27drF5/MBYMuWLYGBgez3xsfHDx06dMWKFQBgZ2dXXFx84MCBzZs36+nptVlYdXW1
UChkHysUCpVKFR4e7u/vDwD5+flXr149c+aMlZUVAKxbt27evHnZ2dne3t4A4ObmtmDBAgBwcHCo
qqo6f/78zJkzExMTR40aFR4ezm531apVu3fvXrp0KTu/r6/vsmXL2MccDqd///7szFqmpqYWFhaG
hoYODg4AcOjQoYCAgJCQEAAICgqqqKhISEhgL5atra3vv/9+QEBAZwfcz89vz5497EouXrzo6Og4
ePBg9kudRpowYYL2MZ/P37dvHwBUVFSw5VgjR47UjeTi4sI+4HK5CxcuLCoqunv3bn5+fmpqat++
fQGgvLycx+ONHz9e+7IRI0awj0tKSlpbW6OiotinDQ0NSqXy8ePHbQ4KAFhaWmpvHDQaTUpKSnx8
vJeX19ChQ0tKSng8XkJCgvbF5ubmDx480O6F7h6lpKQAQGlpqe6ejhkzRiqVPn78uF+/frp79JxK
S0unTp2qO1tSUpL2D29dz+bl5fXdd9+JRCInJ6fU1NR/3ut0I7W5krMnAYvD4UilUnZjPB5PO25s
bNzhtzQ1Na1Zs6aqqkogEPD5fCcnp5iYGABgTwvdC6z2WqJUKjkcjnZyHo8XHh7ep0+f9jvD3jho
n06ZMsXPz+/69etDhw5VqVSGhoa6K5w3b56TkxP72MTERHe7MplMpVIplUr24qy7R01NTWwk3YPw
PNrPxp7rbY5Ph3g83uTJk1NSUmxsbLKzsz/77DPtl/6JVFpa6ujoqK+vz9YqKSnRHos7d+44ODjo
6ekJBIKysjJPT092vKKiosPtXb58+f79+8eOHWOXdebMGXbc2dm5ublZLBbb29uzIwUFBW5ubgAw
bty4ioqKjz76iB1/9OhRdna2paXl8xyaIUOGsDcIY8eObWpqCg0N1f70nD59etCgQezjkpKSadOm
affI1tbW0NBwxIgRupfr4uJi9r2rw3uwZ2JnY9972S3a2dmx7yLPw9/fPyoqysHBYdiwYXZ2dtpx
fQBQKpV//vnnsWPHdE+xAwcOlJSUAEBBQUFycrKvry8AeHt7x8fH379/HwDy8vLS0tLaXzMAoLW1
tampid35kpKS+Ph4tVqtVCotLS0dHR23bNkik8kAIC4uTvtu6e7unp2dnZWVBQByufybb765cOHC
c+4bj8eTSCQA4OTkZG5uHh0dzd7iHzhw4Pvvv9cGS0hIyM/PB4CysrKEhAR2j9zc3C5cuJCZmQkA
MpksOjraw8OjwzMYAJqbm7teiZubW0JCArvj1dXVcXFxXl5ez7kXAODh4SGVSmNiYnRDAICBt7e3
XC43MzObN2+e7i9Tfn5+ixYtMjU1lUgk3t7e7B3B5MmTfXx8FixYYGpqqqenN3PmTDZkG97e3ocP
H/7000+trKwaGhoWL1588ODB5cuXx8TEbN++fenSpf7+/iYmJiYmJrNnz2bfDdzc3MLCwlasWDFg
wACpVOro6NjmZrcLw4YNS0xMrK2ttbKyioqKCg8PT05ONjAwUCqVGzduNDMzY1/m7+8fHh5ubGws
kUjc3d3ZOwIfHx+RSBQREWFlZSWRSEaOHLlhw4YOt2Jvbx8XF1dfX79u3brOVrJo0aKSkpL58+db
W1vX1tYKBILly5c/514AgJGRkUAgaHNBAgDIyMgoLy/XvSNkb8FzcnKkUum1a9d0bxkbGxubm5sb
GxszMjKUSuX69evXrl3b/kaZYZiWlpbc3Nxbt24pFAr2nvL27dva+fPz87Ozs9VqdZvvkslkmZmZ
d+/ebW1t7XDa59Ha2nrnzp2srKzGxkbtoIeHR3p6OrvyoqKi9tu9fv16m9vrNpqbmzMzMwsLC5+5
AIlEkpmZqbv1lwTth7SR2n9p06ZNCxcufPLkCcMwt27d8vPzO378eE8t5ZViI73uVXRTp7fgHVq1
alVERISPj8+AAQM0Gk1oaOjMmTNfaAbSDXpMRx+fZ2VljR49us0dtlZtbW1NTc3o0aN1b6b/5W7f
vj1s2DDt9QmXjiORfxU0p8J/GUVCgCIhQJEQoEgIUCQE/l+klpaWuLg47VO5XJ6YmBgbG8v++ZK8
Lv9EysnJiYmJuXfvnnZk+/btHA5nzJgxP/74o1wufx3LIwC6kZqbm7Uf8wBARUWFSqWaMWOGi4vL
+PHji4uLX8fyCIBupMmTJ7u7u2uf1tXV2djYsI9tbGxEIlFvL438rdM/sCoUCu3f7szMzMrKyoqL
i9nzicfjsf/aQXpHp5FMTU3ZfyQDgIaGBmtr6+HDhw8fPhwATp061UurIwDQxS24k5OTTCZjPzDO
zc3V/cid9LJOzyQOh+Pr67t161YzMzNLS8tx48b15rKIrmd8VNHS0iKVSgcOHKj7DyenTp2iz/p6
0zM+meVwONp7PPK60J+FEKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKA
IiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQE
KBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAkBCgSAhQJAYqEAEVC
gCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAk
BCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIUCQGKhABF
QoAiIUCREKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQ
JAQoEgIUCQGKhIDBy0+hUGtefhJun45/XF7p5Fj0QCSj3/96+UmYMH7vT44F7h+x/wiKhABFQoAi
IUCREKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQJAQo
EgIUCQGKhABFQoAiIUCREKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKA
IiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAkBCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQE
KBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAkBCgSAhQJAYqEAEVC
gCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIUCQGKhABFQoAiIUCREKBICFAk
BCgSAhQJAYqEAEVCgCIhQJEQoEgIUCQEKBICFAkBioQARUKAIiFAkRCgSAhQJAQoEgIGXXytsbHx
9OnThoaG/v7+ZmZmvbYm0kanZ5JKpYqMjLS1tbWzs4uMjGQYpjeXRXR1eibduXNnwIABXl5eAJCT
k1NZWeno6Nh76yI6Oj2TJBKJjY0N+9jW1lYkEvXWkkhbep29j506dUqj0QQGBgLApUuX6uvrR48e
XVxcDAB1dXWWlpbPv40Xff0L+U9MznTi0qVLu3fvZh8nJiZeu3ats1c+U3Jycre/lyZnGKbTt7ux
Y8dWV1crlUoAyMvLs7Oz66mfIPKiOr1x6N+/P5/P37p1q4GBgYuLy+DBg7u9jeHDh3f7e2ly6OKa
xJLL5XK53MrKqidWRbrpGZFehdTUVHNz87feegsAioqKLl++bGRkJBQK7e3te3bywsLCixcv6uvr
CwQCZ2fnnp2cdePGDblc7u3t3bOTR0dH19fXs+OLFi3q7T8LlZeXnzhxQiaTAUB9ff3+/ftdXV39
/PyioqJu3brVg5NLpdIjR474+Ph4enrq7nOPTM6qra09dOjQy8/cZnKGYSoqKj76m5WVVfcj7du3
TyKRAMDRo0fT0tIAoKioKDk5edeuXU1NTQAQFxd39epVAMjNzU1JSQEAhUJx9OjRiRMnsjPcu3fP
1dV1woQJNjY2Hh4e9+7d68HJHz16NHXqVCcnp5EjR9rb29fV1fXg5ACgVqtjY2MnTZrU44elvr7e
wsJiwIABlpaW1tbWBgYG3Y/E4/EKCwsZhsnJycnKygKAvLw8c3NzDocjEolUKlVeXt7NmzcB4K+/
/rKwsACAgwcPzpgxw9TUlJ3BxcVl9uzZAPD06dP8/PyRI0f24OSjRo2aNGlSYWHh3r17uVzukCFD
enByADhx4oSbm5u1tXWPH5bHjx/X1dVt3bp1+/btZ8+ebW1t7X4kZ2fnoqIisVj85ptvtrS0KBQK
kUjk7OzMjpeVlfH5fIlEolarS0tLR40alZmZaWxs3P7akJOTExkZ6enpqRuppyY3NDTs168fh8PR
aDQ9OHlhYaFEIhEIBK/isJiZmYWGhn7++edr1669cuVKXl5en40bN3YvUv/+/ZOSkkxMTGxsbPr0
6fP06dPKysqpU6eam5ufPHmSy+U6Ojo+ffpUqVRKJBJPT8/Y2Fi5XJ6dnV1SUiIWixmGcXR0PH78
eH5+/rJly9rcj7785FwuFwBsbGxGjx5dXl4uFou1m3j5yW/evNnY2Hjr1q2ioqKqqiq5XO7k5NRT
k48ZM8bW1lZPT09fX1+j0Ugkkq4+quiagYHBoEGDLl++vHr1ag6Hk5SUxN6Z8Hg8ExOTrKwsb2/v
J0+enDlzZsqUKQCwfPlytVoNAOfOnevXr5+bm9v9+/cfPHiwcuVKff22J/TLT56RkSGTyebMmaNS
qaRSqa2tbQ9O7urqqlKpACAzM7OhoUEoFPbg5Onp6bW1tXPmzFEqlRUVFQEBAS91dzdmzBi1Wv3G
G28MHz68rq5Oe846Ozv37dvX2Nh4xIgREomEHTczM7OwsLCwsDAyMjI2NjY2Ns7PzxeJRGvWrImI
iIiIiPjjjz96cHIvLy+RSBQVFbVhwwaFQqF7zX/5yU1MTNgRY2NjLpdrYmLSg5OPHz++pqbml19+
2bRpk5GRka2t7Wv4Pak3SaVSAwMD3Qs+FjKZrE+fPsbGxvBafpklL4r+xwEBioQARUKAIiHwf+Db
5t4Sw5OlAAAAAElFTkSuQmCC

--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--FCuugMFkClbJLl1L--
