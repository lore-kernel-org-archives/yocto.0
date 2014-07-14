Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D922AE0076F; Sun, 13 Jul 2014 19:01:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 135B6E004DD
	for <yocto@yoctoproject.org>; Sun, 13 Jul 2014 19:01:07 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 05756A42D9; Mon, 14 Jul 2014 02:01:06 +0000 (UTC)
Date: Mon, 14 Jul 2014 02:01:06 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140714020106.GA29376@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 14 Jul 2014 02:01:08 -0000
X-Groupsio-MsgNum: 20502
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.2                      0.19.1                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+91c82d3        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
squashfs-tools                4.2                           4.3                           Saul Wold <sgw@linux.intel.com>                   
libpod-plainer-perl           1.03                          1.04                          Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.6                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+562db3b        Saul Wold <sgw@linux.intel.com>                   
opkg-utils                    0.1.8+gitAUTOINC+d144584      0.1.8+gitAUTOINC+eae0d8f      Saul Wold <sgw@linux.intel.com>                   
lzo                           2.06                          2.08                          Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+84f2      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.10                       Saul Wold <sgw@linux.intel.com>                   
kbd                           2.0.1                         2.0.2                         Saul Wold <sgw@linux.intel.com>                   
kmod                          17+gitAUTOINC+49d8e0b590      18+gitAUTOINC+74c2694         Saul Wold <sgw@linux.intel.com>                   
ubootchart                    0.0+r12                       N/A                           Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+91c82d3        Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.23                        2.0.25                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.5.0                       3080500                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+3fb312c      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.69                          3.70                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+d84      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.15.99.904                   Ross Burton <ross.burton@intel.com>               
libice                        1.0.8                         1.0.9                         Ross Burton <ross.burton@intel.com>               
gnome-common                  3.7.4                         3.12.0                        Ross Burton <ross.burton@intel.com>               
libxfont                      1.4.7                         1.4.99.901                    Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.3                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
xf86-video-vmware             13.0.1                        13.0.2                        Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.910                      2.99.912                      Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.4                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.3                        Ross Burton <ross.burton@intel.com>               
xcb-util-wm                   0.4.0                         0.4.1                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.47.3                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.7                        2.30.8                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.32.4                        0.32.6                        Ross Burton <ross.burton@intel.com>               
pango                         1.36.3                        1.36.5                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
libxft                        2.3.1                         2.3.2                         Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.2                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.3                        Ross Burton <ross.burton@intel.com>               
hicolor-icon-theme            0.12                          0.13                          Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.41.3                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.37.2                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.11                          2.12                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.7.4                         1.8.0                         Ross Burton <ross.burton@intel.com>               
libxi                         1.7.2                         1.7.3                         Ross Burton <ross.burton@intel.com>               
xf86-input-evdev              2.8.2                         2.9.0                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.4.4                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+1ae74bd       Ross Burton <ross.burton@intel.com>               
fontsproto                    2.1.2                         2.1.3                         Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
shared-mime-info              1.2                           1.3                           Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.3                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
inputproto                    2.3                           2.3.1                         Ross Burton <ross.burton@intel.com>               2.2.99.1 is unstable          
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.1                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.11                       Robert Yang <liezhi.yang@windriver.com>           
python-docutils               0.11                          0.12                          Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
gccmakedep                    1.0.2                         1.0.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
powertop                      2.5                           2.6.1                         Richard Purdie <richard.purdie@linuxfoundation.org>Do not upgrade to version 1.9...
libconvert-asn1-perl          0.26                          0.27                          Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7                           7.7.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.0                         2.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+67705f3        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.2+gitAUTOINC+24cf4d8     Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3                           3.3.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.3                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.53                        2.4.54                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.7.10                        1.8.9                         Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3                        7.19.3.1                      Richard Purdie <richard.purdie@linuxfoundation.org>
nasm                          2.11.02                       2.11.05                       Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.11                        10.2                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+a5831aa      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
dbus-test                     1.8.2                         1.8.6                         No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.27                        1.0.28                        Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.0                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.21                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
alsa-lib                      1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.29                        0.9.30                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.21                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.2.3                         1.3.91                        Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.14                          1.15                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+7f388b4        Cristian Iorga <cristian.iorga@intel.com>         
diffstat                      1.58                          1.59                          Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.6                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140527                      Chong Lu <Chong.Lu@windriver.com>                 
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.0.0                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.15.5                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 130
Upgrade Total Count: 152
The based commit merge time is:
Fri Jul 11 23:20:04 2014 +0100
The based commit is:
commit 9e99bcffec594cb5b4c3533200e8eb56d32e6a77
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Jul 11 23:17:40 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--LZvS9be/3tNcYl/X
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
CwtCiKenZ1JSkq+vb1lZGZOqT58+raurS09PZ3eQdXV1mSFDfn5+nz59duzYwbTz+XyBQMAcpxKJ
RPPmzWtsbGxzH9nFxUVfX//atWuTJk06d+5ccHBwm1NjryU7wnV1dd23bx8hpKioaPLkyWz74MGD
ZXcDXVxcmAuqqqozZ87MycnJysrKyMi4fPky04fHjx+rqakNHTqUvRt7yC4/P18sFrPLW11d3dTU
9PLlyxYpRgjR09NbvXo1c1kikVy8eDE2Ntbf39/Kyio/P19NTY0NMkKIjo7Os2fP2KWQXSJmYFhQ
UCC7pE5OTjwe7+XLlxoaGrJL1EkFBQUjRoyQrXbixAn2s6Hjav7+/uvXr8/NzbW1tb18+fJrs6Oo
qEgkEqWkpGRlZTEt+vr6zMKOGTMmMjLy448/9vX19ff3bz2OKywslEgk7H60oqKivb09e3DJwsKC
nUfW19dn+p+fn6+hobF37162iJqa2rNnz7qwJ8Q6f/68o6Mjs3W0R1lZ2d/f/9KlS+7u7rdv39bS
0nJ0dLxy5UqXn/Qf4i0cq3I4HEdHx7S0NGb3n2n08vJKTk5++PChkpIS815kdqDU1dXV/sfPzy8o
KIgQIhKJVFVV2faBAwdGREQw+0HNzc3h4eGrVq06fPhwXl5e62cPCgq6fPlydXX1nTt32ty3Yg41
tDjPpsVV2XkuDofD4/GYrUtNTY1tV1dXb/MhAoEgLCzs008/zcnJcXV1ZU+CYXbcZA90sPOhTU1N
HA6HXV4TE5OIiIg2j6IwR6sYvr6+69evV1RUvHPnDrPSVFRU1GRMmzbN1taWeSAz5cI+L5/PF4lE
ssfW2CViz4Voc7KvA62rNTQ0sB9+HVdTU1Pz8vK6ePEin89PTk5+baoyZTU0NNiFDQ4OZvZLJk2a
dPjw4WHDhiUmJk6bNm358uUtRv1NTU2Kiorsyme6yi51m4fmWq/b2bNndzyafq0zZ86wUzcd4HK5
V69elUgkly5danFUENrzFo5VCSHu7u4XL17k8XjsDo6np6dQKIyNjbWzs2OyydLSUktLa8iQIf7+
/sx97t69y2yWzs7OAoGAPTBaVlaWnp7ObJaqqqqTJk0ihJw+fXr9+vX79++XnWYihHC53GPHjsXH
xxsaGrY5PmLO0cnKypKd9S8oKLC0tFRUVGTiNT8/nz3U/ujRI3NzcwUFBW9v78LCQnZKoaioqM1l
v379eklJSXx8PNPhs2fPMu2Ojo51dXWlpaVmZmZMS2ZmJvOpM2TIkKKiInZ5y8vLk5OTOzk3Z2Fh
wRyVYlba1KlT2bj/9ddfBwwYwFzOz89nj6Q/evTIxMRERUXFzs5O9hhRXl4eszvfesawM5hqzHQE
84ympqad31cICQnZsWOHubm5tbW1qalpx3e2tbVVVVV1c3MbNmwY03Lr1i1mRuXSpUvOzs4RERER
EREXLlxYvXr13bt3PT09ZR9LCCksLLS3t2e72vFQ2tnZOTY2dvbs2cyHolgsPnv2bCcPSbXp8ePH
RUVFnUlJ5h1y48aNxMTEnTt3dvkZ/1HewrEqIcTNza24uLi2tpZ90+vo6NjZ2aWnp8ueU+Xh4XHg
wAFm1z49PX3x4sXV1dWEEE9Pz5s3bzInEvD5/FWrVt28ebPFU6xYsaKwsPDIkSMt2p2dnfX09Pbu
3dveQQBzc3Nzc/OtW7cyMw9NTU3nz59nDvuy9zlw4EB+fj4hJDMz8/Tp08y7PzAwMDY2tqSkhOnt
lStXWgQ6QywWCwQCJq3y8/NjY2Obm5ubmpr09PQsLS03btzI5/MJIQcPHmQnEDw9PZOTk5mj2EKh
8Msvv7x69Wpn1jMhRE1NrbKykhBia2uro6MTExMjlUolEsmBAwc2bNjAJuzRo0czMjIIIYWFhUeP
HmWWyMPD4+rVq8zpGXw+PyYmxsfHp71Tu1qcI9mah4fH0aNHmQV/+vTpwYMH2c/LzvDx8eHxeLt2
7erM1KGSkpKrq+vevXvr6+sJIffu3VuyZAnz7YATJ058++23tbW1YrGY+TYKO5HC3EFdXd3e3j46
Opo5bf7s2bOZmZm+vr4dPN2QIUMIIcwMQHNz886dO7dt29b5sbxUKt26davse/jMmTO+vr6yuz6E
kNu3b2/dulX2GzSEEEVFxcDAwC1btmhra7MfA9Cxt3Os6uzsrKqqamFhwR6QIYQMHz48KytLNlVX
r179ySefcLlcXV3dFy9ezJgxw8fHhxASEBCQk5Mzd+7c/v37V1ZW2tnZMYduZZmams6ZM2fnzp2B
gYEtbgoODo6Nje3g0OoPP/zw+eefT548WUtLSygUamtrT5s2TfZ8SS6XO2vWLC0trcrKysDAwJkz
ZxJCvLy8goKCZsyYoaWlpaCgMGbMGCZ5WwgMDDx8+PCnn37av3//6urqjz76KC4u7pNPPtm1a1d0
dDRzcElTU1NTU3PSpEnMnqyHh0dYWNj8+fMNDAx4PJ6lpWWLc5g6YG1tnZCQUFFR0b9//x07dkRE
RJw+fVpZWbmpqWnt2rXa2trM3UJCQiIiItTV1SsrKz09PcPDwwkhQUFBubm5ixYtYtbz4MGD16xZ
0+azmJmZHTx48NWrV5999ll7PZk1a1Z+fv706dMNDQ0rKiq8vb1bfAWoY3379vX29u7MpCpj3bp1
8+bNCwoK0tHRqays/Oijj5iP8PDw8GXLlnG5XDU1NWaPx8rKihAycODAI0eO1NTUrFy5cvPmzXPn
zg0MDNTU1GS+HtbxWFVNTW3btm2LFy8+dOiQVCpVUFBYv35954fhUqk0Li6uT58+zA6QRCI5f/78
rFmzWtwtIyMjLi7u//7v/1qcZsvlchMSEj788MNOPh0o4PdVS0pKysrKrKysjIyMZNv5fH5mZqau
ru4777zT3nnXbdq6dWtWVtbu3bs7vltFRUVhYaGRkZGlpSXbKJFIhg0btmfPnoEDB2ZnZxsaGrKH
rfl8voqKikgkyszMdHNz+/LLL8Vi8ZYtW1pXbmpqysnJEYvFDg4OHA6HGboyx6kkEklWVlZDQ8O7
777bYqEEAkFmZqa2traNjU2Xv/vQ3Nyck5NTV1dna2vLDqZ8fX03btzo7OzMrE92spV93qysLEtL
y9YHx1j19fVpaWnMDkfHHaiqqsrPz7e3t/+r07JdU1RU9Pz580GDBrXofH5+Pp/Pt7OzY0frjY2N
qampmpqa7Ijv8ePH1dXVzs7Or/2yAEMkEmVnZ4vFYnYWC/6mpEBVTk5OUFDQqVOnuvbw5uZmV1fX
1NTU1jd9/fXXM2fOrK2tlUql9+/f53K5x48fl6uv3cXHx+fGjRs93QuAbvJ2zgD0lJiYmL1797q7
u48dO5Z68YULFy5atCgoKMjAwEAikUydOrUzx3ABoJthBoAmPp9fUVExaNAgeYrcu3fPwcGhxYlT
rIqKihcvXjg4OPylSYme9eDBA2tra3aOFeDthlQFAKCp14x3AAB6BaQqAABNSFUAAJqQqgAANCFV
AQBoQqoCAND0x7cAcnNzr1y5oqio+N577zG/iCwUCpk//xo5cqS+vn7PdRIAoNf4faz66tWruLi4
wMDAgICAH3/8kfk1++joaA6H4+TktHnz5q79Wy8AwD/N72PV8vLykJAQ5qcrLCwsKisra2pqRCIR
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
efXq1dmzZzkcTkhIiJaWFt3ihJDGxsb4+PgPPvhAnsptFs/Jybl+/Tqzzn4bszUAAAfLSURBVM3M
zOgWz87O/u233xQVFb29vR0dHekWZ9y9e1coFAYGBtItHhMT8+rVK+bWWbNmmZiYUCwuEonOnDlT
Wlo6fPhwd3d3ij2nu4W27jnFLbR1cYpb6F/Vrd9YTUpK2rVrV0VFBXPV1dX14/8xMTFhT+SiUlws
FsfHxw8ZMsTNzW3Dhg01NTUUi9fX1x89etTd3d3BweHrr78Wi8VdrvzkyZNffvnF39/fw8Pjv//9
b2FhYVNTU1RUlJmZmYmJiZzfv2hdnBDy8OHDn376qaSkpMtl2yv+6tWr/fv3u7u7c7ncHTt23L9/
n2JxHo935MiRoKAgPz8/2ZCiUpxpr6ioOHTokDyV2ywulUqLiorYt7o8e35t9nzTpk0DBgwYPXp0
bGzskydPKBanuIW2Lk5xC21dnOIW2gXtzqu+1r59+0xNTdXU1I4dO1ZeXm5lZZWTk3P79u1r167Z
2tpyOJyDBw/y+fyBAwempaWlp6dbW1vn5+crKio2Nja6ubkRQvr06aOhoaGhocHn81NSUqZOnUqx
eF5eXlZW1tSpU/X09PLy8szMzHR1dWkVT0xMNDMz8/T01NPTe/78uba2dpeL19bWDhw4cNiwYf36
9ausrJRKpdXV1a9evZo6daqZmVlOTo6RkRH7dWH5i1taWhYVFSkrK1dWVvr4+MjzgrYu3tjYqKam
FhgYqKmp2djYyOPxBg8eTKs4IcTU1NTFxcXAwCAjI8PCwoLiOre0tGxubv7pp58cHBwUFRXt7e0p
rhZtbe3s7Gwul9u3b18tLS1FRUWKxfv16/f48ePx48fr6uq6urpqaGhwOBxaxW1sbGhtoa2Li0Qi
Wlto6+IlJSXtbaHdoOtjVTU1tezsbKlUmpqaeu/ePUJIenq6jo4Oh8PJzc0ViUTp6ekpKSmEkIcP
HzKLFBgY6OLi0rrU4cOHp02bRre4ra1t//79d+/e/e233xJCrK2tKRbv27fvgwcPCCFSqVQoFLKD
nS4U9/PzY/Y3a2pq8vLybG1tZb9/YWxsLPv9C/mLE0K8vLyGDRsm/wvauriLiwszQ1JfX5+RkcFG
KpXi9vb2w4cPz87O3rt3r6qqqoWFBd3VcvLkSQ8PD9nZAFrFX758WVVVFRUVFR0dfe7cOdlxk/zF
CwsLdXV1z549GxMTU1NTIztfRGW1MOTfQlsXp7iFti7ewRbaDbqeqo6Ojjk5OaWlpYMGDWpsbGxo
aMjNzXV0dGTamd2HysrK5ubmgoIC2Q//FoqLi7W0tFrsXMhfnMfjPXv2TENDw9HRsaamprKykmJx
FxcXTU3NXbt2RUdHC4VC+XuelJS0ZcuWKVOmmJiYMCM+pl1bW7uuro5iceovaOviqampkZGRfn5+
sqlKq7iKigozHJNIJBSLZ2dnV1ZWent7v4nVoq2tPXXq1BUrVixdujQxMTE9PZ1i8RcvXqSkpBga
Gk6bNi0mJiY7O5v6Oqe4hcoWp76FyhbvYAvtBl2fAejXr9+JEyc0NTWNjY2VlJTq6+uLi4tHjBih
o6Nz6tQpVVVVS0vL+vr6pqamyspKPz8/5lEvX7588uQJsx/NOH/+vJubm4GBAd3iV69eNTMzmzBh
gpWVVUVFRXl5OfvZK39xFRUVNzc3U1NTf3//qqoqOzs7dv/irxZvbm4+cOBAeXn5vHnzmMM7z549
Kysre/fddwkhDx8+NDY2Zk8Wlr84QyAQpKWltZgBoFL8+PHjGRkZ4eHhLb7EIn/x58+fE0KMjY0d
HBweP35cWlrKPoX8xY8dO1ZTU3P//v2cnJyysjKhUNjld0vr4hoaGiYmJgoKCoqKihKJpLKy0s7O
jlbx+vp6ZWXlkJAQVVVVkUhUUVFBsTjFLbR1cYpbaOviHWyh3aDrY1VlZeUBAwZcv37dxsbG1tb2
7NmzzGFZNTU1TU3Ne/fuse1OTk7tFWlubs7Pz5cd1NAqrqury+w7MzM4sjuM8hcvKCjYs2ePvr6+
srLygwcPzM3Nu1z80aNHCgoKc+fO1dDQYCq4uLg8ffpUJBIRQtLT0wcMGECxeAfkL15SUvLs2bMF
Cxb069ePevFHjx5dvHiRECISiXg8nuxPU8pffObMmWFhYTNnzmSObwQEBFAsfuPGjePHjxNCmpqa
ioqKZKdf5C9ubW396NEjiUQilUorKipkT42g8m6htYW2Lk5xC21dvIMttBt09Puqr+Xk5FRWVqav
r8/hcKqqqthX1NHRMTk5WV1d3c7OLjY2toOTYDIyMszMzBQUFKgXd3V1LSoq+uGHHyoqKvT09Frk
o5zFzc3NeTzeN998IxaLR48eraKi0uXiGRkZKSkpzBwQIWTSpEl+fn7Ozs6RkZFKSkru7u4tzk+S
v3ibS0SleG1tbW5u7pIlS5iWwMDA8ePH0yru7++/efPmHTt2PH361NDQsMXUMK3Voq6u3tDQ0OJE
HDmLu7q6Hjhw4Ntvv62oqLC1tW0xDyN/z318fLZv3y4QCPT19QcNGkS3OK0ttHVxT09PWlto6+Je
Xl4dbKFvWnefr9rN6urqRCLRm/jJbalU+vz5c01NzTd0KpxQKKyrq2ux2wU8Hk9ZWVnOc3h7BJ/P
V1JSUldXfxPFmcnH3vjT8r13C+3AW56qAADdDP9bBQBAE1IVAIAmpCoAAE1IVQAAmv4fmSoGli8q
4I8AAAAASUVORK5CYII=

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--LZvS9be/3tNcYl/X--
