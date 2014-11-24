Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5482E0089B; Sun, 23 Nov 2014 18:18:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6874E00837
	for <yocto@yoctoproject.org>; Sun, 23 Nov 2014 18:18:51 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id D92ACA409E; Mon, 24 Nov 2014 02:18:51 +0000 (UTC)
Date: Mon, 24 Nov 2014 02:18:51 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141124021850.GA11265@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 24 Nov 2014 02:18:53 -0000
X-Groupsio-MsgNum: 22294
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.9                         3.2                           Wenzong Fan <wenzong.fan@windriver.com>           
chkconfig                     1.3.58                        1.3.63                        Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.3.2                      0.19.3                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.1.0+gitAUTOINC+2cf87e6      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+0cf3720        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
npth                          1.0                           1.1                           Saul Wold <sgw@linux.intel.com>                   
boost                         1.56.0                        1.57.0                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.56.1                        9.59                          Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+9e999d6        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+92686f2      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2014.07+gitAUTOINC+5241      v2014.07+gitAUTOINC+4d70      Saul Wold <sgw@linux.intel.com>                   
cups                          2.0.0                         2.0.1                         Saul Wold <sgw@linux.intel.com>                   
libaio                        0.3.109                       0.3.110                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      19+gitAUTOINC+efb5bfa         Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+0cf3720        Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.26                        2.1.0                         Saul Wold <sgw@linux.intel.com>                   
valgrind                      3.9.0                         3.10.0                        Saul Wold <sgw@linux.intel.com>                   
libassuan                     2.1.2                         2.1.3                         Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.5                         0.8.6                         Saul Wold <sgw@linux.intel.com>                   
rgb                           1.0.5                         1.0.6                         Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.4+gitAUTOINC+200b270      Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
usbutils                      007                           008                           Saul Wold <sgw@linux.intel.com>                   
curl                          7.37.1                        7.39.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+40c      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.37                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.99.901                   Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.15.1                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.10                        Ross Burton <ross.burton@intel.com>               
xcb-util-image                0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.20.0                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.15.1                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
xkbcomp                       1.2.4                         1.3.0                         Ross Burton <ross.burton@intel.com>               
xcb-util                      0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.2                           Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.5                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.6.0                         Ross Burton <ross.burton@intel.com>               
pciutils                      3.2.1                         3.3.0                         Ross Burton <ross.burton@intel.com>               
libsoup-2.4                   2.46.0                        2.48.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.2                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pango                         1.36.6                        1.36.8                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.15.1                        Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.15.1                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.15.2                        Ross Burton <ross.burton@intel.com>               
xf86-video-modesetting        0.8.1                         0.9.0                         Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
xinit                         1.3.3                         1.3.4                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.916                      Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.42.0                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.38.2                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
xkeyboard-config              2.12                          2.13                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
libpng12                      1.2.51                        1.2.52                        Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.7.1                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+5bcbc84       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
xcb-util-keysyms              0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.16                       1.14.0                        Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
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
libtool                       2.4.2                         2.4.3                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.20                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.4.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+f3a1136        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+44cdb6      3.17.2+gitAUTOINC+c38aa53     Richard Purdie <richard.purdie@linuxfoundation.org>
libdrm                        2.4.54                        2.4.58                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.2                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.66                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libevdev                      1.2.2                         1.3.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.17                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        11                            Paul Eggleton <paul.eggleton@linux.intel.com>     
augeas                        1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.6p1                         6.7p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+24e4fed      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
opkg-utils                    0.1.8+gitAUTOINC+762d9da      0.1.8+gitAUTOINC+127b371      Paul Barker <paul@paulbarker.me.uk>               
dbus-test                     1.8.2                         1.9.2                         No Maintainer info                                
python-smmap                  0.8.2                         0.8.3                         No Maintainer info                                
python-gitdb                  0.5.4                         0.6.0                         No Maintainer info                                
serf                          1.3.6                         1.3.8                         No Maintainer info                                
python-async                  0.6.1                         0.6.2                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+3ab81      No Maintainer info                                
bjam-native                   1.56.0                        1.57.0                        No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
python-nose                   1.2.1                         1.3.4                         Khem Raj <raj.khem@gmail.com>                     
python-mako                   0.9.1                         1.0.0                         Khem Raj <raj.khem@gmail.com>                     
python-numpy                  1.7.0                         1.9.1                         Khem Raj <raj.khem@gmail.com>                     
python3-distribute            0.6.32                        0.7.3                         Khem Raj <raj.khem@gmail.com>                     
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
xmlto                         0.0.25                        0.0.26                        Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
libnewt-python                0.52.17                       0.52.18                       Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
bash                          4.3                           4.3.30                        Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.2                         Hongxu Jia <hongxu.jia@windriver.com>             
libnewt                       0.52.17                       0.52.18                       Hongxu Jia <hongxu.jia@windriver.com>             
cracklib                      2.9.1                         2.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
libxml2                       2.9.1                         2.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.3                         1.5.4                         Hongxu Jia <hongxu.jia@windriver.com>             
pax-utils                     0.8.1                         0.9.2                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.6                         2.4.7                         Hongxu Jia <hongxu.jia@windriver.com>             
groff                         1.22.2                        1.22.3                        Hongxu Jia <hongxu.jia@windriver.com>             1.18.1.4 is latest GPLv2 Vers...
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.03                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.25                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
gstreamer1.0-plugins-bad      1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.35                        0.9.36                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.16.0                        3.17.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.25                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.31                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.6.1                         1.6.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.1                         1.4.4                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.82                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.30.0                        0.30.1                        Cristian Iorga <cristian.iorga@intel.com>         
netbase                       5.2                           5.3                           Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    5.0                           5.99.1                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.8.2                         1.9.2                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
xz                            5.1.3alpha                    5.1.4beta                     Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.21                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.2                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
sysklogd                      1.5                           1.5.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.16                          3.17.4                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r123                          N/A                           Armin Kuster <akuster808@gmail.com>               
apt                           0.9.9.4                       1.0.9.3                       An?bal Lim?n <anibal.limon@linux.intel.com>       
mc                            4.8.12                        4.8.13                        An?bal Lim?n <anibal.limon@linux.intel.com>       
jpeg                          8d                            9a                            An?bal Lim?n <anibal.limon@linux.intel.com>       webkit-gtk 1.8.3 doesn't work...
dpkg                          1.17.4                        1.17.21                       An?bal Lim?n <anibal.limon@linux.intel.com>       
xrandr                        1.4.2                         1.4.3                         An?bal Lim?n <anibal.limon@linux.intel.com>       
screen                        4.0.3                         4.2.1                         An?bal Lim?n <anibal.limon@linux.intel.com>       
sqlite3                       3.8.6.0                       3080702                       An?bal Lim?n <anibal.limon@linux.intel.com>       
gnome-common                  3.12.0                        3.14.0                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gsettings-desktop-schemas     3.10.1                        3.14.1                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gnome-icon-theme              2.31.0                        3.12.0                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>waiting for the sato gtk3 port
nfs-utils                     1.3.0                         1.3.1                         Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gnome-desktop                 2.32.1                        3.15.1                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>waiting for the sato gtk3 port
cronie                        1.4.11                        1.4.12                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Upgradable Count: 166
Upgrade Total Count: 186
The based commit merge time is:
Fri Nov 21 11:52:37 2014 +0000
The based commit is:
commit 49547a6d6dead6c9e9c8c209afacd9edc6a9bd5f
Author: Alexandru DAMIAN <alexandru.damian@intel.com>
Date:   Thu Nov 20 16:00:10 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--PNTmBPCT7hxwcZjr
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--PNTmBPCT7hxwcZjr--
