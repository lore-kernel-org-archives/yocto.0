Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47585E00B74; Sun, 11 May 2014 19:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82F2DE00AFD
	for <yocto@yoctoproject.org>; Sun, 11 May 2014 19:01:09 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 814C7A4048; Mon, 12 May 2014 02:01:09 +0000 (UTC)
Date: Mon, 12 May 2014 02:01:09 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140512020109.GA9753@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 12 May 2014 02:01:11 -0000
X-Groupsio-MsgNum: 19552
Content-Type: multipart/mixed; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gnome-common                  3.7.4                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.13.1                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gnutls                        3.2.13                        3.2.14                        Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.10.7                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
libtasn1                      3.4                           3.5                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.10.1                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.45.3                        2.46.0                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.13.1                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.12.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
screen                        4.0.3                         4.2.1                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libpng12                      1.2.50                        1.2.51                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.4.1                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
shared-mime-info              1.2                           1.3                           Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+684fe50        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+a3b06c9        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.9                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.40.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.37.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
sqlite3                       3.8.4.3                       3080403                       Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.18.2                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.1                        2.40.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
gdk-pixbuf                    2.30.3                        2.30.7                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
cogl-1.0                      1.16.2                        1.18.0                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.2                         2.5.3                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.4.0                         1.4.92                        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.2                        1.0.0                         Ross Burton <ross.burton@intel.com>               
weston                        1.4.0                         1.4.92                        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.38.2                        2.40.0                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
file                          5.17                          5.18                          Robert Yang <liezhi.yang@windriver.com>           
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.9                         10.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.5p1                         6.6p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+ac76440      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.13                          3.14                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
nfs-utils                     1.2.9                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
cdrtools-native               3.01a20                       3.01a23                       Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
libsdl2                       2.0.1                         2.0.3                         No Maintainer info                                
dbus-test                     1.6.18                        1.8.2                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
gummiboot                     43+gitAUTOINC+4062c51075      44+gitAUTOINC+ac4a587         No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+bd80b1b       No Maintainer info                                
python3                       3.3.3                         3.4.1rc1                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.15.1                        1.15.99.902                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.1                        13.0.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.99.910                      2.99.911                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.2.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.4.0                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.1rc1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.7                           7.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+421f605        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.1+gitAUTOINC+f2d42b7     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.4                         1.7.99.2                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.2                         2.8.99.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.28.3                        3.13.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
fontsproto                    2.1.2                         2.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.53                        2.4.54                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.3                        7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.11.02                       2.11.04                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.14                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.7.5                         0.7.6                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
directfb                      1.7.1                         1.7.4                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.1                         Hongxu Jia <hongxu.jia@windriver.com>             
socat                         1.7.2.3                       1.7.2.4                       Hongxu Jia <hongxu.jia@windriver.com>             2.0.0 is beta                 
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
pax-utils                     0.7                           0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       1.0.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+c33b217      0.1.8+gitAUTOINC+5beb5b4      Cristiana Voicu <cristiana.voicu@intel.com>       
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+7d2839b      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+bcb8      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          17+gitAUTOINC+49d8e0b590      17+gitAUTOINC+b8b990f         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+684fe50        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+62f11f7      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+35d      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.1                        5.99.10                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.10                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.7.0                         2.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.18                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
harfbuzz                      0.9.27                        0.9.28                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.10                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.18                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.27                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
flex                          2.5.38                        2.5.39                        Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.6.18                        1.8.2                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
quilt                         0.61                          0.63                          Chong Lu <Chong.Lu@windriver.com>                 
libpcre                       8.34                          8.35                          Chong Lu <Chong.Lu@windriver.com>                 
guile                         2.0.9                         2.0.11                        Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140101                      20140422                      Chong Lu <Chong.Lu@windriver.com>                 
gawk                          4.0.2                         4.1.1                         Chen Qi <Qi.Chen@windriver.com>                   Version 4.1.0 requires Automa...
sudo                          1.8.10p2                      1.8.10p3                      Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        10.3.1                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.14.3                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 125
Upgrade Total Count: 147
The based commit merge time is:
Sun May 11 15:26:25 2014 +0100
The based commit is:
commit 50067e069c8cbc0d339819494f22ae7623d47aa6
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun May 11 15:25:44 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--u3/rZRmxL6MmkK24--
