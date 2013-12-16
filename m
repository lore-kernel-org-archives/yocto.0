Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 330F9E00802
	for <yocto@yoctoproject.org>; Sun, 15 Dec 2013 18:24:25 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 2ABBBA415B; Mon, 16 Dec 2013 02:24:25 +0000 (UTC)
Date: Mon, 16 Dec 2013 02:24:25 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131216022424.GA3686@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 16 Dec 2013 02:24:25 -0000
X-Groupsio-MsgNum: 17555
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.2                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
libtasn1                      3.3                           3.4                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.10.1                        Valentin Popa <valentin.popa@intel.com>           
pciutils                      3.2.0                         3.2.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.44.1                        2.44.2                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.1                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.32                        1.4.33                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.8.2                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
webkit-gtk                    1.8.3                         2.3.2                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.2                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+540c750        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17.1                        1.18.0                        Saul Wold <sgw@linux.intel.com>                   
boost                         1.54.0                        1.55.0                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+9bf05de        Saul Wold <sgw@linux.intel.com>                   
nspr                          4.10.1                        4.10.2                        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.1                        1.17.5                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libxkbcommon                  0.3.1                         0.3.2                         Saul Wold <sgw@linux.intel.com>                   
cracklib                      2.9.0                         2.9.1                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
man-pages                     3.54                          3.55                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
file                          5.15                          5.16                          Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.22.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.0                        1.16.2                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.0                        2.40.1                        Ross Burton <ross.burton@intel.com>               
pixman                        0.30.2                        0.32.4                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.0.1                       2.5.2                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.0                         1.3.1                         Ross Burton <ross.burton@intel.com>               
glproto                       1.4.16                        1.4.17                        Ross Burton <ross.burton@intel.com>               
logrotate                     3.8.1                         3.8.7                         Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.60                       2013.62                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.9.9                         Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a19                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
xf86-video-modesetting        0.8.0                         0.8.1                         No Maintainer info                                
bjam-native                   1.54.0                        1.55.0                        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.4                        1.14.99.904                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
quilt                         0.60                          0.61                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.906                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fstests                       0.1+gitAUTOINC+218b99d82b     0.1+gitAUTOINC+e5939ff        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
libpcre                       8.33                          8.34                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   0.20+gitAUTOINC+e9ac73b4      3.12+gitAUTOINC+8cae184       Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+090d3ef        Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
binutils                      2.23.2                        2.24                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.47                        2.4.50                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.2.99.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.13.4                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.4.4                       1.8.5.1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.3                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnrN/A                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
elfutils                      0.148                         0.157                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.14.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.1                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnrN/A                 Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+e03c      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.10.0                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      15+gitAUTOINC+9f02561         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+540c750        Cristiana Voicu <cristiana.voicu@intel.com>       
valgrind                      3.8.1                         3.9.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
coreutils                     8.21                          8.22                          Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+3af4fc4      Cristiana Voicu <cristiana.voicu@intel.com>       
apr-util                      1.5.2                         1.5.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
apr                           1.4.8                         1.5.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+7d0c7a8        Cristian Iorga <cristian.iorga@intel.com>         
libtirpc                      0.2.3                         0.2.4                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
glib-2.0                      2.38.1                        2.39.1                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
bluez4                        4.101                         5.12                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.10                          5.12                          Cristian Iorga <cristian.iorga@intel.com>         
iptables                      1.4.19.1                      1.4.21                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+8ae4be0       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.19                          1.20                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.22                        0.9.25                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.5                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.11.0                        3.12.0                        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.12                          Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.24                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.75                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.4.0                         1.5.2                         Cristian Iorga <cristian.iorga@intel.com>         
qemu                          1.6.1                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.69+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.12.5                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 126
Upgrade Total Count: 148
The based commit merge time is:
Sat Dec 14 09:16:38 2013 +0000
The based commit is:
commit 36fe775672d66e3d83575eb532eb6ab5109343b4
Author: Chen Qi <Qi.Chen@windriver.com>
Date:   Tue Dec 10 17:40:37 2013 +0800
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--qMm9M+Fa2AknHoGS
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
h6ysrBYvXsy8lFKp9MKFCykpKfv379+9e3dOTs6vv/7K7JClS5cWFBRs2bLlp59+qq6u/uc//6n5
Ocjg8XihoaGhoaFNhxeWWCzmcrkmJiZRUVE//PDDxYsXra2t2Y9CLSEhIZcuXWK/3V28eDEwMFA/
MTGREJKamsrO67Zv375w4UIfH59u3botWLBAKBQy+duzZ0+/fv3Cw8OtrKyCg4NHjx6tmUsmRaNG
jdJ6XQkhwcHBt2/flkgkhJDY2FgDA4PBgwe3tEnPERAQMG7cuO7du0+fPn3IkCEXL14khOzcuXP0
6NHvv/++paXlzJkzXV1dNR8ycuTI6dOn9+7du66ubtSoUcuWLbO1tbW2th42bJhYLCaEFBYWXr58
+csvvxw4cKCDg8PatWvNzMyYx0ZGRtrZ2c2dO9fa2jogICA0NPTSpUvNfhN48OABe7DB19d34cKF
M2bMCAkJIYSkp6fHx8evW7fO2dnZ2dn5008/raqqSk5OZh7o6ek5ceLE7t27h4WFjRs3jtmfMTEx
zs7Os2fPtra29vPzmz9/fnR0NPtcQUFBM2fOdHNzs7Ky4nA4HTt2tLCw0OwMn8/v1KmTkZFR9+7d
DQwMDhw4MHLkyNDQUEtLy9GjR0+YMOHw4cPMPZVK5UcffTR58mR7e/tmd3hwcDCzkwkh//73v21t
bbt16/acF0ipVO7cuXPJkiVeXl7du3dfvHixmZkZU6GgoMDa2nrIkCF2dnaff/45c1jL0tKS2QSh
UFhbW3v8+PHly5d7enra2Nh88cUXpqam7BtMKpV++eWXXbt2dXZ2/uCDD5gBLSEhISsra/369Q4O
Dn379p0/f/7Dhw/v3LnznB62pKyszMDAYPLkyYcOHSotLf3mm2+YQbJZXl5eSqXyxo0bhBCFQhEb
GxscHGyYmJjo5+dXXFzMBOnBgwc1NTVpaWnszKdTp07MB0Nubm67du1+/PFHdtuqq6uZwwwKhWLW
rFn19fXNTn769evXuXPny5cvjx079syZM0FBQc1Oc19Icxxzd3ffvXs3ISQ/P3/cuHFse+/evTXH
9379+jEXjI2NJ02alJWVlZmZmZ6efvHiRaYP9+7d43K5/fv3Z+/GHnHJzc1VKpXs9lZWVsrl8rKy
Mq03LiFEIBCsXLmSuaxSqc6fPx8ZGenv729nZ5ebm8vlctn3LiHEzMzs4cOH7FZobhHz8Z+Xl6e5
pa6urhKJpKysjJlpsFuko7y8vCFDhmhWO3bsGPtx8Pxq/v7+3377bXZ2tqOj48WLFzXndc3Kz89X
KBQpKSmZmZlMS+fOnZmNHTFixLp16z7++GM/Pz9/f3+RSKT1WLFYrFKp3NzcmKv6+vrOzs7ssYEe
PXqw3wk7d+7M9D83N7d9+/a7du1ii3C53IcPH7ZivsMc1po0adKUKVMMDAzS09OnTZvGfJY1vbOh
oaG/v/+FCxcGDBiQlJTE5/NdXFz0k5OTb926ZWBgwDw9MzLyeDzufwwePDgwMJB5MmNjY7a9W7du
s2fPZga4hoaGmTNnrlix4uDBgzk5OU2fOzAw8OLFi5WVlVevXh0+fHjTOzDfFLUOhmpd5fP57GUO
hyORSJgdyuVy2XYej9fsQ6qrq8PDwxctWpSVleXu7j5nzhymXU9Pj312tjJzQS6XczgcdnstLS1n
z57d7Jdg5mADw8/P79tvv9XX17969Sqz04yMjLgaJkyY4OjoyDyQmUuzzyuVShUKheahEXaL2KOX
mjtBF02r1dXVsZ93z6/G5XK9vb3Pnz8vlUqTk5NfGCSmbPv27dmNDQoKYmYfY8eOPXjw4MCBA+Pi
4iZMmLB06VKtsV0ul+vr62vOpng8HrvVzR5Zabpvp06d+vwxsyUCgaBdu3aTJk1iXl9XV1cLC4v4
+PiW7h8cHPznn3+qVKoLFy4w011DmUwWGRnp5OTEvB1tbW35fH7fvn39/f2Zx1y7do15Jdzc3Kqr
q9kvZMXFxWlpacwrYWxsPHbsWELIyZMnv/322z179jBvUM0njo6OPnLkiFAobPZTkDmQmpmZyX4m
EULy8vJsbW319fWZROXm5rIHx+7cudO9e3c9PT0fHx+xWMzOFfPz85vd8tjY2MLCwiNHjjAdPn36
NNPu4uJSU1NTVFRkY2PDtGRkZHh6ehJC+vbtm5+fz25vSUlJcnLyc+bZmnr06MEcVGB22vjx49mE
//HHH1ZWVszl3Nxc9tjXnTt3LC0tjYyMnJycNL/i5+TkMPO0prN/XTDVmHkm84zW1ta6zwhCQkJ+
/PHH7t2729vbN/vxrMnR0dHY2NjDw2PgwIFMS0JCAjNVvnDhgpub2+zZs2fPnn3u3LmVK1deu3bN
y8tL87GEELFY7OzszHb1+QOmm5tbZGTk1KlTmc9BpVJ5+vTp5xxReA5m92ZmZvbt25f8Z4DS/IDW
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
AEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAA
QQKgAEECoABBAqAAQQKgoPF0XPHx8VeuXGFb7e3tQ0NDsT4SgI4ag9S/f/9evXoxl8+dOycUCgkh
ERER7u7udnZ2GzduXLVqFXtOfQDQ0ji14/F4QqFQKBSq1ery8nI/P7/8/HxmfaR+/fr179+fOTM4
ADTLUOv6wYMHx48fr6en9+TJE631kXg8HhOnJ0+evO5uAvy9/SVIRUVFXC7XysqKENJ0fSQs6wLQ
kr8ctbt69eqgQYOYy3w+X2t9pNfdNYC3x7MgqVSqrKysPn36MFexPhKA7p5N7TIyMqysrPT1G6PF
4XB0XB8JAJ4FydXV1dXVVfM2HddHAgDto3ZasD4SgC7wEyEAChAkAAoQJAAKECQAChAkAAoQJAAK
ECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQ
JAAKnp1FSKFQ/PHHH/fv3/fy8vL09CSEYFkXAB09C9KmTZsCAgL69u37ww8/WFhY2NraYlmX/033
pPVtL2LH57S9yFukMUhSqZTP5zMD0cqVK42MjNhlXQghWVlZOTk5/fv3f5M9hdfF/uCdthdRh7u3
vchbpDFI9+7dEwgEZ86cKSgoCAoK6tWrV25urtayLt26dWMWdKmtrX1j/QX4W2o82FBSUnLz5k1z
c/OwsLAdO3ZkZGRoLevCnE0fAJrVOCJZW1v37dvXw8ODECISibKysnr16qW1rItAIBAIBIQQrN4H
oKVxRLKzs8vIyFCpVISQ0tJSV1dXLOsCoLvGEYnL5YpEom3btj19+rRjx47MynxY1gVAR88OfwcH
Bw8ePLimpsbMzIxpwbIuADr6y7Iu7dq1a9eunWYLlnUB0AV+IgRAAYIEQAGCBEABggRAAYIEQAGC
BEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIE
QAGCBEDBs7MI/frrrxKJhLk8efJkKysrLOsCoKNnQbp3796iRYuYy506dSKEYFkXAB01BqmystLM
zMzCwkKpVBoZGRFCsKwLgO4ag1RWViaRSNatW6evr+/q6hocHPzkyROtZV0QJICWNAaJz+ePHz/e
3d1dpVKtWrXKwsJCa1kXsVick5PDrEPBrJIEAKzGIAmFQqFQSAgxMDAQiUSFhYU9e/bUWtbFwcGB
Obn+qVOn3lR3Af6eGg9/x8fHR0dHE0IUCkV+fv7AgQOxrAuA7hpHpP79+9+5c2fr1q1lZWX29vZM
bLCsC4COGoPE4/FmzZpVXV1NCDE1NWUasawLgI7+sqwLGyEWlnUB0AV+IgRAAYIEQAGCBEABggRA
AYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEAB
ggRAAYIEQAGCBECBodb15ORkqVQaGBhICMGyLgA6+suIVFZWduDAAXaVpIiICA6H4+rqunHjRplM
9ia6B/B2eDYiqVSqffv2eXl5MVexrAuA7p6NSCdOnPDw8GBPB9l0WZc30DuAt0TjiJSdnV1SUjJ6
9OgrV64wLVjWBUB3jUG6fPmyRCLZunVrRUWFXC43MjKys7PDsi4AOmoMUlhYmEKhIIRcu3atrKws
MDCwXbt2hw8frqmp4XK5qamp/v7+b7KbAH9vjUFiT5/fvn37p0+fMlexrAuAjrT/juTr68texrIu
ADrSDpIWLOsCoAv8RAiAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIE
CYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAgmen48rOzr506ZK+vv67
777r6upKsD4SgM4aR6SKioqoqKiAgACRSPTrr78ySyRhfSQAHTWOSCUlJSEhIU5OToSQHj16lJeX
V1VVYX0kAB01Bql3796EkOzs7MTERENDQ1tb29TUVK31kXg8HpZ1AWjWX05ZbGhoyOPx6urqVCpV
0/WRsKwLQEsavyOVlJRIpVJ7e/vQ0FBzc/Pz58/z+Xyt9ZHeXCcB/u4ag5SZmXn27FlCiEKhkEgk
fD7f0dFRKpXW1NQQQlJTU62trd9kNwH+3hqndn5+fps2bdq2bdujR4/Mzc29vLw4HA7WRwLQUWOQ
DA0Nly1bJpFIDA0N+Xw+04j1kQB09JeDDZ06ddK6GesjAegCPxECoABBAqAAQQKgAEECoABBAqAA
QQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABB
AqAAQQKg4C/LusTGxnI4HJFI1K1bN4JlXQB01jgiSaXS3bt3u7u7Dxky5Jdffrl+/TrBsi4AOmsc
kQoKCjw8PNzd3Qkhfn5+hYWF5ubmWNYFQEeNQXJzc3NzcyOE1NXVpaWljRgx4smTJ1rLunTr1o1Z
0KW2tvZNdRfg7+kvBxvS0tK+++67d999t0+fPlrLujBn0weAZj072HDs2LGCgoIFCxYwJy5uuqyL
QCAQCASEEGa5MQBgNY5IxcXFhYWF8+fPZ0//jWVdAHTXOCKlp6fn5uYuWrSIuerv7z9mzBgs6wKg
o8YgDR06dOjQoVq3YVkXAB0ZPv9mLOsCoAv8RAiAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJ
gAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYCCvwSp
vr5+//797FWZTBYTE7Nv377y8vLX3jGAt8mzIN2+fXvHjh33799nW7CsC4COngWppqbGxsaGvZqf
n88s69KvX7/+/fvjfN8Az/EsSN7e3l5eXuzVpsu6vO6uAbw9WjzTqtayLmKxOCcnhxmXmFWSAIDV
YpCaLuvi4ODg4OBACDl16tRr6h3AW6LFw99Y1gVAdy2OSBwOB8u6AOjoL0ESCoUrV65kr2JZFwAd
YVkXAArwEyEAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQA
ChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKnncWoaqqqj/++MPIyCgkJKRDhw6vrU8A
b50WRySFQrFu3TpLS0tra+t169ap1erX2S2At0uLI9KdO3fMzc39/f0JIbdv3y4oKLC1tX19/QJ4
q7Q4IpWXl7OnhrS0tMSyLgDPodfSnO3UqVMqlWrUqFGEkMuXL1dUVPTp04dd1kUgEOj+HC97/5eC
4ij+ioqzy6/oRN2Cy5cv//bbb8zlmJiYhISElu75QidPnmz1Y1Ecxd+K4i1O7dzc3B48eCCXywkh
aWlpWNYF4DkMVq9e3ewNJiYm1dXVR48eTUxMdHV19fT0bMvTvLrBGsVR/O9QvMXvSAyZTCaTySws
LF7FcwP813hBkF6FixcvmpmZeXh4sC3Xrl2TyWQBAQF0i2/fvr2iooJpnzJliqWlJcXiCoXi1KlT
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

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--qMm9M+Fa2AknHoGS--
