Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECA06E0084D; Thu, 30 Oct 2014 13:54:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB89CE007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 13:54:33 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id CF157A409E; Thu, 30 Oct 2014 20:54:33 +0000 (UTC)
Date: Thu, 30 Oct 2014 20:54:33 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141030205433.GA15622@packages.i.yoctoproject.org>
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
X-List-Received-Date: Thu, 30 Oct 2014 20:54:36 -0000
X-Groupsio-MsgNum: 21996
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline

--YZ5djTAD1cGYuMQK
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+3564103        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          0.91                          1.0                           Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.55                          9.56.1                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+76b46e0        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+e53b171      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+571b      Saul Wold <sgw@linux.intel.com>                   
cups                          1.7.5                         2.0.0                         Saul Wold <sgw@linux.intel.com>                   
hdparm                        9.43                          9.45                          Saul Wold <sgw@linux.intel.com>                   
dtc                           1.4.0+gitAUTOINC+65cc4d2      9418+gitAUTOINC+fatal:        Saul Wold <sgw@linux.intel.com>                   
libaio                        0.3.109                       0.3.110                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+27eceb2         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.4                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+3564103        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.3                         0.5.0                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.75                          1.76                          Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.4                         0.8.5                         Saul Wold <sgw@linux.intel.com>                   
less                          466                           470                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.3+gitAUTOINC+074ee56      Saul Wold <sgw@linux.intel.com>                   
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
wayland                       1.5.0                         1.6.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.7.1                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+e873499       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
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
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+38a8fc1        Richard Purdie <richard.purdie@linuxfoundation.org>
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
python-numpy                  1.7.0                         1.9.0                         No Maintainer info                                
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
Upgradable Count: 188
Upgrade Total Count: 208
The based commit merge time is:
Thu Oct 30 13:39:52 2014 +0000
The based commit is:
commit f19b4e995ea47f9243f152b39337330307453c9f
Author: Alexandru DAMIAN <alexandru.damian@intel.com>
Date:   Thu Oct 23 15:00:01 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--YZ5djTAD1cGYuMQK
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAGkAAAEsCAIAAABPAgoGAAAABmJLR0QA/wD/AP+gvaeTAAAP4UlE
QVR4nO3af1RT9f/A8Tc43BgOEBICoUQ7/FbRNcDOkPE7AinwiOWJiiw8YkZmJ09ZxrGTQaGnk3Ck
KI/JjyOQYIp64IjFoUBBDBgIY4DgxATHgCFjbGz3+8f9fG58wCmfFwv18309/tq9215778ndb0wo
iiIIxPRhL+Axhu3gsB0ctoNjGXdcRkaGTqfbs2fPLC+fnZ1dWFjIbJqZmbm7u4tEori4OOMubCa9
Xm9qeo9DR6VS7d27t6GhobCw0MHB4T4TjNxOrVbrdLrZX35iYoLD4ezdu5feHB4erq6uPnDgAJfL
ff755427tmneeOONyMjIV155Zdr+mpqay5cv79+/397e/v4T/tVOp9MtWLBg5tl6vV6j0XA4HHqT
oiiKomb+uQztv89kBofDEQqFzGZUVNSGDRtKS0untTM0Z3JyksW6xxFg6PIURanVanNzc0PrUSgU
zs7OoaGhD5xmev78+a1btwqFwp07d1ZWVu7cuZO+fmxsrEQi2bRp02effUYI6erqOnTo0AsvvCAS
iZKSknp6eujrj4yMZGRkREZGikSi/fv3azQaZrRYLP7444+DgoJCQkK++uorrVZraLlTmZiYeHp6
stlselOpVH777bcxMTEBAQFJSUkymYzev2XLltra2qSkJKFQGBMTk5uby0z4448/6P0vvvji4cOH
6Z0TExOxsbGtra1btmzZvXv3tm3bOjs7jx49mpqaOvXWS0pKcnJyZDJZbGxsf38/IeT06dOvvfba
unXr4uPjT5w4QV+sp6cnPj6e+Pr6njp1qq+vLzs7WygUbty4kaKo/v5+Pp+/adOmH3744dq1axRF
xcXFffTRR93d3TKZLCUl5a233qKPtd27d2/YsOHy5csSiWTXrl0CgSA1NZWiqL/++isoKOjw4cMy
mayysjIoKOiTTz6hZvjmm29eeuklZlOr1VZXV/v7+5eXl9N7UlJSEhMTW1tbW1tbt2/fHhoaqlQq
KYoKCAgIDAzMzc3t6enJz88XCARnzpyhKEoikQiFwqysLJlMVlVVFRAQ8P3331MUpVKp+Hx+bGxs
dnZ2U1PTzZs34+Pjs7Ky+vv7p65nZGTkyJEjsbGxPT09k5OT1dXVvr6+hYWFfX19paWlvr6+58+f
p2/Fz8+PHDhwgLnm9u3bp7Y7fvw4vX98fPzYsWMjIyP0Znl5eVBQEEVRvb29fD7/ypUrzMXCwsLo
dhkZGVu3bmUmHzlyZN26dXq9fmY7gUAg+jd/f38+n//jjz/S5zY3N/P5fObudXV1CQSCyspKut2H
H37IzElPT3/33Xcpivryyy+TkpKY/cXFxWFhYUy7rKws5qyEhISCgoKZf87CwsL4+Hj6dHJy8uef
f86cdejQocTERLodn89n+fj4MEesh4fHwMAAs8mcxeFwEhIS2tvbr127JhaLL1y4sHDhQkJId3c3
l8tds2YNczF3d3f6tFQqnZyczMzMpDeHh4c1Gs2dO3fs7OymPUhtbW2Z1wq9Xl9RUZGfny8SiZYv
Xy6VSrlcblFREXNha2vrW7du0af5fD6zn8/nV1RUEEI6OzvXrl3L7F+5cqVCobhz586iRYum3qNZ
6uzsjIiImDqttLSU+venWBaXy2XOs7CwmHpNS0tL+sTo6OiuXbtu3rwpFAr5fL6bm1tOTg4hxMTE
hBAy9SWCeZ7SaDRsNpsZzuVyk5OT7/nkPe21Yv369WFhYZcuXVq+fLlWqzUzM5u6wpdfftnNzY0+
zePxpt6uUqnUarVTX9mYezQ6Okq3Y+7RLM2cplarmSduVldXV2BgIL1x/fr1e46oqqq6cePGzz//
TN/2uXPn6P3e3t4qlUomkzk7O9N7Wltb/fz8CCGrV6++fv36m2++Se+/fft2fX29ra3tbFa8bNky
+jVh1apVo6OjmzdvZv6oZ8+eXbp0KX1aKpVGRkbSp1taWhwdHem3h52dncyojo4OMzOzp59+euqL
2OzR08LDw5lbdHJyoh9zhBDT/Pz8GzduEEKam5srKyvpQ2maycnJ0dFRek1SqTQ/P1+n02k0Gltb
WxcXlwMHDiiVSkJIXl4e85D39/evr6+vq6sjhIyNjX366acXL16c5Yq5XK5cLieEuLm5WVtbZ2dn
UxSl1+uPHz/+xRdfMB2LiorEYjEhpKurq6ioiH5X4efnd/HixdraWkKIUqnMzs4OCAgw9CZJpVLd
fyV+fn5FRUX0He/r68vLyxOJRMy5rJCQkFdffdXS0tLExCQ6Oloqlc4cERwcfOLEiffff9/Ozm54
eDgxMbGgoGDHjh05OTkHDx58++23w8PDeTwej8eLi4ujD2k/P7+kpKR33nlnyZIlCoXCxcVl2ruB
+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

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--YZ5djTAD1cGYuMQK--
