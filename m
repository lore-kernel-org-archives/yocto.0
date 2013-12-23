Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 373A1E0044A
	for <yocto@yoctoproject.org>; Sun, 22 Dec 2013 18:03:20 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 34F39A415B; Mon, 23 Dec 2013 02:03:20 +0000 (UTC)
Date: Mon, 23 Dec 2013 02:03:20 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131223020319.GA25242@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 23 Dec 2013 02:03:20 -0000
X-Groupsio-MsgNum: 17612
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline

--bg08WKrSYDhXBjb5
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
gtk+3                         3.8.2                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
libtasn1                      3.3                           3.4                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.3                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.1                        Valentin Popa <valentin.popa@intel.com>           
pciutils                      3.2.0                         3.2.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.44.1                        2.45.3                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.32                        1.4.33                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
libpng                        1.6.7                         1.6.8                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.3                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.2                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+2436ada        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17.1                        1.18.0                        Saul Wold <sgw@linux.intel.com>                   
boost                         1.54.0                        1.55.0                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+9d1d740        Saul Wold <sgw@linux.intel.com>                   
nspr                          4.10.1                        4.10.2                        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.1                        1.17.5                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.3                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.0                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.3.1                         0.3.2                         Saul Wold <sgw@linux.intel.com>                   
cracklib                      2.9.0                         2.9.1                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
tzcode-native                 2013h                         2013i                         Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.54                          3.55                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
file                          5.15                          5.16                          Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.22.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.0                        1.16.2                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.0                        2.40.1                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.1                        2.30.2                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.30.2                        0.32.4                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.0.1                       2.5.2                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.3.91                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.0                         1.3.91                        Ross Burton <ross.burton@intel.com>               
glproto                       1.4.16                        1.4.17                        Ross Burton <ross.burton@intel.com>               
logrotate                     3.8.1                         3.8.7                         Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.60                       2013.62                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.1                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a19                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
xf86-video-modesetting        0.8.0                         0.8.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
bjam-native                   1.54.0                        1.55.0                        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.13.4                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.14.99.905                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.0.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.906                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.2.99.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
fstests                       0.1+gitAUTOINC+218b99d82b     0.1+gitAUTOINC+e5939ff        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
quilt                         0.60                          0.61                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
libpcre                       8.33                          8.34                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+a954325        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   0.20+gitAUTOINC+e9ac73b4      3.12+gitAUTOINC+8cae184       Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.47                        2.4.50                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
binutils                      2.23.2                        2.24                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.4.4                       1.8.5.2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnrN/A                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
elfutils                      0.148                         0.157                         Cristiana Voicu <cristiana.voicu@intel.com>       
apr                           1.4.8                         1.5.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.14.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
tzdata                        2013h                         2013i                         Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.1                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnrN/A                 Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+fef2      Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+0f6a67b      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      15+gitAUTOINC+d96ca9c         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+2436ada        Cristiana Voicu <cristiana.voicu@intel.com>       
valgrind                      3.8.1                         3.9.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
coreutils                     8.21                          8.22                          Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+3af4fc4      Cristiana Voicu <cristiana.voicu@intel.com>       
apr-util                      1.5.2                         1.5.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.33.0                        7.34.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.6.1                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.12                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.10                          5.12                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+8ae4be0       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.19                          1.20                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.22                        0.9.25                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.38.1                        2.39.2                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.23.0                        0.99.5                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.11.0                        3.12.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
libtirpc                      0.2.3                         0.2.4                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
iptables                      1.4.19.1                      1.4.21                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.12                          Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.25                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.4.0                         1.5.2                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.76                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+76b366d        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers            3.10                          3.12.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.69+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 135
Upgrade Total Count: 158
The based commit merge time is:
Sun Dec 22 14:29:13 2013 +0000
The based commit is:
commit 005af45191ded6185c618c708181b31281e43092
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Fri Dec 20 14:48:45 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--bg08WKrSYDhXBjb5--
