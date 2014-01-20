Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4045E007EC
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 18:03:49 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id E2507A415C; Mon, 20 Jan 2014 02:03:49 +0000 (UTC)
Date: Mon, 20 Jan 2014 02:03:49 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140120020349.GA5914@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Jan 2014 02:03:50 -0000
X-Groupsio-MsgNum: 17827
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline

--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.1                      0.18.3.2                      Wenzong Fan <wenzong.fan@windriver.com>           
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.4                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gtk+3                         3.8.2                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.2                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
libpng                        1.6.7                         1.6.8                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.4                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.4                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+6ded984        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
libcgroup                     0.38                          0.41                          Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.50                          9.52                          Saul Wold <sgw@linux.intel.com>                   
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+13cd490        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.6                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.3                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.0                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.32                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.1                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.9.3                         1.10                          Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.1                        2.30.3                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.3.91                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.1                         1.3.91                        Ross Burton <ross.burton@intel.com>               
glproto                       1.4.16                        1.4.17                        Ross Burton <ross.burton@intel.com>               
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
glib-2.0                      2.38.2                        2.39.3                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.23.2                        2.24                          Robert Yang <liezhi.yang@windriver.com>           
git                           1.8.5.2                       1.8.5.3                       Robert Yang <liezhi.yang@windriver.com>           
libav                         0.8.9                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.15                          0.16                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.2                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cmake                         2.8.12.1                      2.8.12.2                      Paul Eggleton <paul.eggleton@linux.intel.com>     
cdrtools-native               3.01a20                       3.01a21                       Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.0                         No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+1fa5ddf       No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.15.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.1                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.907                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.3.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-proto                     1.9                           1.10                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+d89a80d        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.4                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.49                        2.4.51                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0.2                      7.19.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
libmpc                        1.0.1                         1.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.10.09                       2.11                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P2                      Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.4                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.0+gitAUTOINC+13a5c43      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.0+gitAUTOINC+13a5c43      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.14.2                      Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
at-spi2-core                  2.10.2                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+5c90      Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+fd4a3a4      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          16+gitAUTOINC+36c4bb928a      16+gitAUTOINC+2726da5         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+6ded984        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.1.1+gitAUTOINC+57b9d84      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.0                        5.99.6                        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+69e36b1       Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.6                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.25                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.5.2                         1.5.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.76                       Cristian Iorga <cristian.iorga@intel.com>         
minicom                       2.6.2                         2.7                           Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+52d77db        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.18                        1.7.10                        Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.7.10                        Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.21.1                        1.22.0                        Chen Qi <Qi.Chen@windriver.com>                   
sudo                          1.8.9p1                       1.8.9p4                       Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.12.8                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 104
Upgrade Total Count: 125
The based commit merge time is:
Sun Jan 19 17:18:04 2014 +0000
The based commit is:
commit b908caca1af1d4150eafd3d3001ea19599657270
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Jan 17 11:40:29 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--+HP7ph2BbKc20aGI--
