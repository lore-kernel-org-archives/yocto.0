Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85FF0E0082D; Sun, 31 Aug 2014 19:01:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9D90E00801
	for <yocto@yoctoproject.org>; Sun, 31 Aug 2014 19:01:08 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id D37DAA42D9; Mon,  1 Sep 2014 02:01:08 +0000 (UTC)
Date: Mon, 1 Sep 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140901020108.GA6801@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Sep 2014 02:01:11 -0000
X-Groupsio-MsgNum: 21335
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
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
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+a799c31        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
apt                           0.9.9.4                       1.0.7                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+6abb33c        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+6def      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.13                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+74c2694         Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+a799c31        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.2                         0.4.3                         Saul Wold <sgw@linux.intel.com>                   
libassuan                     2.1.1                         2.1.2                         Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080600                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
less                          458                           466                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.2+gitAUTOINC+9213bd4      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.70                          3.71                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
at                            3.1.14                        3.1.15                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+989      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.34                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.7                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.7                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.25.2                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.8                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.7                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.1                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.91                       Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.3                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.4                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.47.4                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.0                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.32.4                        0.32.6                        Ross Burton <ross.burton@intel.com>               
pango                         1.36.5                        1.36.6                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.7                        Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
xrandr                        1.4.2                         1.4.3                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.914                      Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.41.4                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.37.90                       Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.13.4                        Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.5.91                        Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.5.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+3457f01       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.90                       Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.5.91                        Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.3                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8                           Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e2e9948        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.16+gitAUTOINC+ea7c181       Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.90                       Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.56                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.8.9                         1.8.10                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3.1                      7.19.5                        Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.65                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        10.4                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+dd79a61      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.4                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.2.99.902                    No Maintainer info                                
dbus-test                     1.8.2                         1.8.6                         No Maintainer info                                
serf                          1.3.6                         1.3.7                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+2090a      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.27                        1.0.28                        Kai Kang <kai.kang@windriver.com>                 
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.6                         2.4.7                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
gstreamer1.0-plugins-bad      1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.15.0                        3.16.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
libtirpc                      0.2.4                         0.2.5                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.5.3                         1.6.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.0                         1.4.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+365e80c        Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.6                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140715                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.0.0                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.16.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+e914d57023     0.2+gitAUTOINC+83f468a        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r120                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 141
Upgrade Total Count: 161
The based commit merge time is:
Sun Aug 31 23:40:50 2014 +0100
The based commit is:
commit fd0398f2c1355597a95242e6c8400eae6ad60fa4
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Aug 31 10:59:54 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--4Ckj6UjgE2iN1+kY--
