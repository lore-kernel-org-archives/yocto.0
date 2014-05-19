Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7FFE00BE6; Sun, 18 May 2014 19:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8251CE00BE2
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 19:01:08 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 774A0A4048; Mon, 19 May 2014 02:01:08 +0000 (UTC)
Date: Mon, 19 May 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140519020108.GA26532@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 19 May 2014 02:01:10 -0000
X-Groupsio-MsgNum: 19683
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
gnome-common                  3.7.4                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.13.1                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gnutls                        3.2.13                        3.2.14                        Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.10.7                        3.13.1                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+b50e1cd        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+40788c6        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.9                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.40.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.37.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libxkbcommon                  0.4.1                         0.4.2                         Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.74                          1.75                          Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.4.3                       3080403                       Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
libxfont                      1.4.7                         1.4.8                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.18.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
cogl-1.0                      1.16.2                        1.18.0                        Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.4.0                         1.4.93                        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
weston                        1.4.0                         1.4.93                        Ross Burton <ross.burton@intel.com>               
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
file                          5.17                          5.18                          Robert Yang <liezhi.yang@windriver.com>           
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.9                         10.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+ac76440      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+5209dbf       No Maintainer info                                
python3                       3.3.3                         3.4.1rc1                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.15.1                        1.15.99.902                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.1                        13.0.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.99.910                      2.99.911                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.2.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.4.0                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
powertop                      2.5                           2.6                           Laurentiu Palcu <laurentiu.palcu@intel.com>       Do not upgrade to version 1.9...
python                        2.7.3                         3.4.1rc1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.7                           7.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+62cba6a        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.1+gitAUTOINC+f2d42b7     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.4                         1.8.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.2                         2.8.99.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.28.3                        3.13.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
fontsproto                    2.1.2                         2.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.53                        2.4.54                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
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
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
squashfs-tools                4.2                           4.3                           Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       1.0.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+c33b217      0.1.8+gitAUTOINC+5beb5b4      Cristiana Voicu <cristiana.voicu@intel.com>       
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+7d2839b      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+6be6      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          17+gitAUTOINC+49d8e0b590      17+gitAUTOINC+30bfd48         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+b50e1cd        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+cae67ef      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+35d      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.7.0                         2.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.18                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
harfbuzz                      0.9.27                        0.9.28                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.18                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.27                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
flex                          2.5.38                        2.5.39                        Chong Lu <Chong.Lu@windriver.com>                 
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
linux-libc-headers            3.14                          3.14.4                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 113
Upgrade Total Count: 134
The based commit merge time is:
Thu May 15 23:27:45 2014 +0100
The based commit is:
commit 874d81a5ebb6395b0d65d0082471287e522d0c47
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon May 12 18:00:03 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--4Ckj6UjgE2iN1+kY
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
tWvX0p9KnThx4ssvv3zy5IlWq9VqtQBgOODSTzAzM/P09ExLS+vo6AAAxldfffWnP/3prbfesrCw
UCgUbDZ7wYIFxte7UVFRS5YssbCwkEgk4eHh9OlhcHBwRETEokWLLCwsTExMZs+eTRfTSXh4+NGj
Rz/88ENbW9u2tralS5d+9913K1euTE9PT0tLW758eXR0tLm5ubm5+dy5c+k9XmBgYFJS0vvvv29j
YyOVSl1dXTtdy/XA3d09Ozu7tbXV1tZ29+7dycnJOTk5DAZDrVZv2rSJzWbTT4uOjk5OTjYzM5NI
JEFBQfTpYUREhEAgWLNmja2trUQimTRp0l/+8pfnvoqTk1NGRsbjx48/+uij7layZMmS2trahQsX
2tnZtba2hoSErFy5spdbAQCjRo0KCQnpzUkDbcuWLe+9915ERMSYMWMkEsnSpUvp/cSKFSs+/vjj
qKgoFosll8uXLVvm5uYGABMmTPj+++9lMtknn3yyffv25cuXh4eHm5ubP/v8p6WlpaCg4O7du8YX
PPQV5u3bt6VSaX5+vvEVkUwmUyqVMpmsoKBArVavX79+3bp1Xa8DKYrq6OgoKyu7deuWSqWiL5lK
S0sN81dUVJSUlHS6xKWfVlhYWF1drdVqnzttb2i12srKyuLiYplMZhgMDQ29du0avfKampqur1tU
VNTp6rETpVJZWFh4586dFy5AIpEUFhYav/pLdffu3fz8/K6LFwqFN2/efPLkiWFEpVIVFRVVVVUZ
RkQi0a1bt6CH2Q01dH1o8+bNixcvpl/g1q1bUVFRx48f79emDBa6hqFexa9Ubz+Z7mT16tVr1qyJ
iIiwsbHR6/Xz58+fPXt236ZCvx4mVI9/9iguLvby8up0AWnQ2tra0tLi5eX13D80/DqVlpa6u7sb
ziGQsRfUgP6n/Nf8m0aDAGtABNaACKwBEVgDIrAGRJBPnwQCwYULF0xNTd944w0fHx8AUCgUubm5
CoUiJiZm7NixQ7dINEie7RseP3783XffhYeH8/n8ffv2SaVSAEhLS2MymT4+Ptu3b+/bN7XRf5dn
+4aHDx9GR0fTX0BycXGRSCQymUyj0cyaNQsAampqhEKh4atK6FX1rIZJkyYBgEAgKCgoYDAYrq6u
ZWVl9vb29KP29vYCgQBreOX94q9WDAaD/s6WXq9XqVSGP0+w2WyRSCQUCoVCIQCwWCz666boFUOO
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
iLHppJMAAAAASUVORK5CYII=

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--4Ckj6UjgE2iN1+kY--
