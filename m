Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96783E00BA4; Sun, 25 May 2014 19:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 207D3E00B5C
	for <yocto@yoctoproject.org>; Sun, 25 May 2014 19:19:51 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 16C0FA4048; Mon, 26 May 2014 02:19:51 +0000 (UTC)
Date: Mon, 26 May 2014 02:19:51 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140526021950.GA18674@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 26 May 2014 02:19:53 -0000
X-Groupsio-MsgNum: 19814
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline

--VbJkn9YxBvnuCH5J
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
libtasn1                      3.5                           3.6                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.10.1                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.13.1                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.12.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
screen                        4.0.3                         4.2.1                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.4.2                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
shared-mime-info              1.2                           1.3                           Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+27ce133        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
libusb1                       1.0.18                        1.0.19                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+20ea040        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.9                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.40.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.37.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libxkbcommon                  0.4.1                         0.4.2                         Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.74                          1.75                          Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.4.3                       3080403                       Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.65                          3.67                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
libxfont                      1.4.7                         1.4.8                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.18.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
cogl-1.0                      1.16.2                        1.18.0                        Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.4.0                         1.5.0                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
weston                        1.4.0                         1.5.0                         Ross Burton <ross.burton@intel.com>               
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
file                          5.17                          5.18                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.10                       Robert Yang <liezhi.yang@windriver.com>           
gpgme                         1.4.3                         1.5.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.11                        10.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+ac76440      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a20                       3.01a23                       Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+4f4a4d4       No Maintainer info                                
python3                       3.3.3                         3.4.1rc1                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.15.1                        1.15.99.902                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.1                        13.0.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.99.910                      2.99.911                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.2.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
gccmakedep                    1.0.2                         1.0.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.4.0                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
powertop                      2.5                           2.6.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       Do not upgrade to version 1.9...
python                        2.7.3                         3.4.1rc1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.7                           7.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+b6ce173        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.1+gitAUTOINC+f2d42b7     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.4                         1.8.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.2                         2.9.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.28.3                        3.13.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
fontsproto                    2.1.2                         2.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.53                        2.4.54                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.3                        7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.14                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.7.5                         0.7.7                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
directfb                      1.7.1                         1.7.4                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.1                         Hongxu Jia <hongxu.jia@windriver.com>             
socat                         1.7.2.3                       1.7.2.4                       Hongxu Jia <hongxu.jia@windriver.com>             2.0.0 is beta                 
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
squashfs-tools                4.2                           4.3                           Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       1.0.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+c33b217      0.1.8+gitAUTOINC+5beb5b4      Cristiana Voicu <cristiana.voicu@intel.com>       
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+7d2839b      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+9665      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          17+gitAUTOINC+49d8e0b590      17+gitAUTOINC+86e19e9         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+27ce133        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+61bb790      Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.36.0                        7.37.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+44c      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.7.0                         2.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.18                          5.19                          Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.27                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
gawk                          4.0.2                         4.1.1                         Chen Qi <Qi.Chen@windriver.com>                   Version 4.1.0 requires Automa...
sudo                          1.8.10p2                      1.8.10p3                      Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.18                          2.19                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        10.3.1                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.14.4                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 117
Upgrade Total Count: 138
The based commit merge time is:
Wed May 21 19:50:21 2014 +0100
The based commit is:
commit 894df445fa71a170397c6e0b4960a89ef20a4230
Author: Chong Lu <Chong.Lu@windriver.com>
Date:   Tue May 20 09:28:26 2014 +0800
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--VbJkn9YxBvnuCH5J
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--VbJkn9YxBvnuCH5J--
