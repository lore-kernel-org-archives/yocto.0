Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21C78E00B70; Sun,  8 Jun 2014 19:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7BEE00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 19:01:08 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 538BEA4048; Mon,  9 Jun 2014 02:01:08 +0000 (UTC)
Date: Mon, 9 Jun 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140609020107.GA25517@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Jun 2014 02:01:11 -0000
X-Groupsio-MsgNum: 20006
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.2                      0.19                          Wenzong Fan <wenzong.fan@windriver.com>           
gnome-common                  3.7.4                         3.12.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.13.2                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gtk+3                         3.10.7                        3.13.2                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
libtasn1                      3.5                           3.6                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.10.1                        3.13.2                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.13.2                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.12.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
screen                        4.0.3                         4.2.1                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.4.3                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
shared-mime-info              1.2                           1.3                           Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.13.2                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+2d186d3        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
libusb1                       1.0.18                        1.0.19                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+da09d02        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.10                       Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.40.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
gnupg                         2.0.22                        2.0.23                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.37.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
sqlite3                       3.8.4.3                       3080500                       Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
libice                        1.0.8                         1.0.9                         Ross Burton <ross.burton@intel.com>               
libxfont                      1.4.7                         1.4.8                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
gdk-pixbuf                    2.30.7                        2.30.8                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libxft                        2.3.1                         2.3.2                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
inputproto                    2.3                           2.3.1                         Ross Burton <ross.burton@intel.com>               2.2.99.1 is unstable          
glib-2.0                      2.40.0                        2.41.0                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.10                       Robert Yang <liezhi.yang@windriver.com>           
gpgme                         1.4.3                         1.5.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.11                        10.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+a5831aa      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
gstreamer1.0-rtsp-server      1.2.3                         1.3.2                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+6b9ceca       No Maintainer info                                
python3                       3.3.3                         3.4.1rc1                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.15.1                        1.15.99.903                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
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
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+5d3871a        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.2+gitAUTOINC+24cf4d8     Laurentiu Palcu <laurentiu.palcu@intel.com>       
mdadm                         3.3                           3.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.11                          2.12                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.4                         1.8.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.2                         2.9.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.28.3                        3.13.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
fontsproto                    2.1.2                         2.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.53                        2.4.54                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.3                        7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.11.02                       2.11.05                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.14                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.7.5                         0.7.7                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
squashfs-tools                4.2                           4.3                           Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       1.0.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1g                        1.0.1h                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
opkg-utils                    0.1.8+gitAUTOINC+d144584      0.1.8+gitAUTOINC+eae0d8f      Cristiana Voicu <cristiana.voicu@intel.com>       
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.12.0                        2.13.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+3e1f      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          17+gitAUTOINC+49d8e0b590      17+gitAUTOINC+5963c36         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+2d186d3        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.12.0                        2.13.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+92757c3      Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.36.0                        7.37.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+44c      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
connman                       1.23                          1.24                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.28                        0.9.29                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
wpa-supplicant                2.1                           2.2                           Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.27                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+a4f3bc0        Cristian Iorga <cristian.iorga@intel.com>         
diffstat                      1.58                          1.59                          Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140527                      Chong Lu <Chong.Lu@windriver.com>                 
sudo                          1.8.10p2                      1.8.10p3                      Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        10.3.1                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.14.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 120
Upgrade Total Count: 142
The based commit merge time is:
Fri Jun 6 10:33:19 2014 +0100
The based commit is:
commit 66d5be204fd339cc84a0ae92d3923a8c1e6f1389
Author: Ash Charles <ashcharles@gmail.com>
Date:   Thu Jun 5 12:56:05 2014 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--BOKacYhQ+x31HxR3
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
AEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAA
QQKgAEECoABBAqAAQQKgQPt1dwD+XsadLep8kRMj+nW+CF0IEnSpk/dqXncXXgkM7QAoQJAAKECQ
AChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAA
KECQAChAkAAoQJAAKPjjx08EAsHly5c5HA6Px+vbty8hRCqVnj17ViqVjhw50tTU9PV1EuBN9+KM
JBaL9+7d6+npOWLEiO3bt6enpxNCoqOjORyOm5vbpk2bpFLpa+0nwBvtxRmptLR08ODBnp6ehBA/
P7+ysjIzMzO5XD569GhCSH5+fkFBwaBBg15nTwHeYC+C5O7u7u7uTgipq6vLzs4eM2bM06dPLSws
mKUWFhYCgcDIyKi0tJQQUl1d/Zp6C/CG+tMPRGZnZx87dozP57u4uCQnJ+vq6jLthoaGxcXFlpaW
JiYmhJCamr/mb/wBdNgfQTp+/HhpaWlERISxsTEhxMDAoKKigllUXV1tbm7evXv37t27E0K0tLRe
S18B3lgvJhsePHhQVla2aNEiJkWEECcnJ7FYXFtbSwjJysqysrJ6bX0EeOO9OCPl5OQUFhZ++umn
zN2AgICJEycGBwdHRUUZGhqamJgMHDjw9XUS4E33IkgjR44cOXJko2UBAQHDhg0TiUS9e/fu8o4B
vE3a+G8UHA6HnbsDgJbgK0IAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFLTx
FSHoMI2d1ztfRBXm2fki0AVwRgKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKg
AEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAA
QQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABB
AqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgQPt1d+B10th5vfNFVGGe
nS8CbzuckQAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQACj4U5Dq
6+tjYmLYu1KpNCEh4cCBA0KhsMs7BvA2+SNIt27d2rVr171799iW6OhoDofj5ua2adMmqVT6OroH
8Hb4I0i1tbXW1tbs3ZKSErlcPnr0aA8Pj0GDBhUUFLyO7gG8Hf4Iko+Pj7e3N3v36dOnFhYWzG0L
CwuBQCCTySQSiUQiaWho6OpuArzZWrywr66uTldXl7ltaGhYXFz88OHD0tJSQohEIumazgG8LVoM
koGBQUVFBXO7urra3Nzc1tbW1taWEHLq1Kmu6RzA26LF6W8nJyexWFxbW0sIycrKsrKy6sJeAbxl
WjwjcTic4ODgqKgoQ0NDExOTgQMHdmW3AN4ufwqSubn5qlWr2LsBAQHDhg0TiUS9e/fu8o4BvE3a
+BUhDofDzt0BQEvwFSEAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQ
JAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAK2rjUHN5MBwqfdr7IzH+YdH3xvyoE6a30we+lnS/S
0t/6Ky3+V4WhHQAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUI
EgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgS
AAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIA
BQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABdqtLKupqfn1
11+7desWEhJiaGjYZX0CeOu0eEaSy+WRkZGWlpZWVlaRkZEqlaoruwXwdmnxjHT79m0zM7OAgABC
yK1bt0pLS+3s7LquXwBvlRbPSEKh0MLCgrltaWkpEAi6qksAbx+NlsZsp06dUiqV48aNI4RcunSp
qqrKxcWloKCAEPL06VMTE5P2b+Nl138pKI7ir6i4o6Ojo6Nje0urWnDp0qWdO3cytxMSElJSUlpa
s00nT57s8GNRHMXfiuItDu3c3d3Ly8tlMhkhJDs728rKqr3RBPj70VqzZk2zC3r06CGRSI4dO5aa
murm5ubl5dWZzby6kzWKo/ibULzF90gMqVQqlUp79er1KrYN8JfRRpCoq66uvnjx4qRJkwghSUlJ
KSkp7KJ+/fpNmTKFVnFCSFFRUVJSUo8ePXg8Xu/evTtTuWlxgUCQmppqZGQUFBSkr6/fmco3bty4
evWqsbExj8czNzcnhFRVVZ0+fZrD4YSEhBgYGNAtTgipr6+Pj49///33O1O52eL5+fmXL19mjrm1
tTXd4nl5eb///rumpqavr6+rqyvd4oxr165JpdLAwMCXLdilXxFKTU3dtWtXZWUlc9fT0/Oj/7G0
tGRn26kUVygU8fHxAwcOHDx48Pr162tqaigWf/78+ZEjR4YMGeLi4vLVV18pFIoOV753794vv/wS
EBDg5eX13//+t7i4WCaTRUVFWVtbW1padvKj8KbFCSE3b97cuXNnWVlZh8u2VLyqqmrfvn1Dhgzh
8/nbtm27fv06xeIikejw4cNBQUH+/v47duyoqqqiWJxpr6ysPHjwYMcqt/geqU179+61srLicrlH
jx59/Pixvb19fn5+WlrapUuXnJycOBxOTEyMWCzu27dvVlZWdna2g4NDYWGhpqZmfX394MGDCSHd
u3fX09PT09MTi8WZmZlTp06lWLygoCA3N3fq1KkmJiYFBQXW1tbGxsa0iiclJVlbW3t7e5uYmDx6
9MjQ0LDDxZ89e9a3b9+hQ4caGRkJhUKVSlVdXV1VVTV16lRra+v8/PzevXuz38/qfHE7O7uSkhJt
bW2hUDh8+PDOPKFNi9fX13O53MDAQH19/fr6epFINGDAAFrFCSFWVlYeHh5mZmY5OTm2trYUj7md
nV1DQ8POnTtdXFw0NTWdnZ1fNg4dPyNxudy8vDyVSnXr1q309HRCSHZ2ds+ePTkcjkAgkMvl2dnZ
mZmZhJCbN28y+xwYGOjh4dG01KFDh6ZNm0a3uJOTU69evX766advvvmGEOLg4ECxeI8ePW7cuEEI
UalUUqmUfUnrQHF/f39mIFFTU1NQUODk5KT+UbiFhYX6R+GdL04I8fHxGTp0aOef0KbFPTw8mKHv
8+fPc3Jy2BRRKe7s7Dxs2LC8vLw9e/bo6OjY2trSPSw///yzl5eX+jDvpXQ8SK6urvn5+ffv3+/X
r199fX1dXZ1AIHB1dWXai4uLPT09hUJhQ0NDUVFRKxEvLS01MDBoNK7rfHGRSPTw4UM9PT1XV9ea
mhqhUEixuIeHh76+/q5du6Kjo6VSaed7npqaunnz5ilTplhaWjKv60y7oaFhbW0txeLUn9CmxW/d
uhUZGenv768eJFrFu3Xrpqenx+FwlEolxeJ5eXlCodDX17eV49O61r793XSey5EAAAKLSURBVDpH
R8eYmBiBQMCcPW/cuKGhoWFkZOTs7Hzy5ElDQ0NHR0eJRHLt2jUjIyP2L6Opq1ev+vj4UC+elpY2
dOjQd999lxDy9OnTtLS0sWPH0irO5XLnz59fUVFhZGT066+/2tvbd7jnDQ0NBw4ckMvly5Yt09PT
I4To6+uXlJQw1aqrq/v06UOxOMUntNnix44de/DgweLFi42MjOgWf/TokZ6eXr9+/fr163fkyJHE
xMTRo0fTKv7777+LxeJvvvmmqqpKJpN169aN+U5P+3X8jKStrd2nT5/Lly87Ojo6OTmdPn2amUjh
crn6+vrp6elsu5ubW0tFGhoaCgsL1V+6aBU3NjZmBkUqlUoul6uPBDpfvKioaPfu3aamptra2jdu
3LCxselw8du3b2toaMydO5f9W/Tw8CgvL5fL5YSQ7Oxs9SB1vngrOl+8rKzs4cOHCxcubJQiKsVv
37597tw5QohcLheJROrX9XS++MyZM8PCwmbOnMlMIPF4vDYPV+MdfNkHqHNzc3vw4IGpqSmHw3n6
9Ck7I+nq6pqRkaGrq9u/f//Y2NhWZipzcnKsra01NDSoF/f09CwpKfnhhx8qKytNTEwaRaKTxW1s
bEQi0ddff61QKEaPHt2tW7cOF8/JycnMzGTecRFCJk2a5O/v7+7uHhkZqaWlNWTIkEaTyJ0v3uwe
USn+7NkzgUDwySefMC2BgYHjx4+nVTwgIGDTpk3btm0rLy83Nzdv9DaP1mHR1dWtq6vrwOcZXf05
Uherra2Vy+Wv4qpElUr16NEjfX39Tn6I1BKpVFpbW2tmZvYqir+9RCKRtrZ2Jz9bexX+4kEC6Br4
zQYAChAkAAoQJAAKECQACv4fexKir4W7sBkAAAAASUVORK5CYII=

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--BOKacYhQ+x31HxR3--
