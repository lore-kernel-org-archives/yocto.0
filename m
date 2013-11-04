Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17494E0178A
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 18:00:39 -0800 (PST)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 160A540CCD; Mon,  4 Nov 2013 02:00:39 +0000 (UTC)
Date: Mon, 4 Nov 2013 02:00:39 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131104020039.GA3472@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
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
X-List-Received-Date: Mon, 04 Nov 2013 02:00:39 -0000
X-Groupsio-MsgNum: 16926
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         10051                         Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.0                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.10.1                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.1.6                         9.2.2                         Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.32                        1.4.33                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.0                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.1                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.11.0                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.1                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+437a6d7        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+d0299e4        Saul Wold <sgw@linux.intel.com>                   
nspr                          4.10                          4.10.1                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.38.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.34.9                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
vala                          0.16.0                        0.22.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.14.4                        1.16.0                        Ross Burton <ross.burton@intel.com>               
libxrandr                     1.4.1                         1.4.2                         Ross Burton <ross.burton@intel.com>               
cogl-1.0                      1.14.0                        1.16.0                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.32.1                        2.40.0                        Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.30.0                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.8                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.3.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.3.1                         Ross Burton <ross.burton@intel.com>               
json-glib                     0.16.0                        0.16.2                        Ross Burton <ross.burton@intel.com>               
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a18                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.3                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.3.0+gitAUTOINC+78c8710      2.3.2+gitAUTOINC+8e62131      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.905                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
diffstat                      1.57                          1.58                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a4                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xz                            5.1.2alpha                    5.1.3alpha                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+93c6d9b        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.13.4                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.3.4                       1.8.4.2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0                        7.19.0.2                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4                         Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.3                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr739                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
rxvt-unicode                  9.18                          9.19                          Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.12.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.0                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnr739                 Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.0                        2.11.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+509d      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      15+gitAUTOINC+b3e0a07         Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+437a6d7        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.1                        Cristiana Voicu <cristiana.voicu@intel.com>       
liburcu                       0.7.7                         0.8.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+e1d776c      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+c74      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.1.16                        0.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.1                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.10                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.19.1                      1.4.20                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.13+gitAUTOINC+b2e1b68       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.6                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
harfbuzz                      0.9.22                        0.9.23                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.38.1                        2.39.0                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.23.0                        0.99.2                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.10                          Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.23                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.9                         1.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+7d0c7a8        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.73                       Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.6                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.59+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.11.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 99
Upgrade Total Count: 122
The based commit merge time is:
Fri Nov 1 17:59:31 2013 +0000
The based commit is:
commit f3541226b8b1187e79dec0f6f9f3c58cedf9ac9b
Author: Cristiana Voicu <cristiana.voicu@intel.com>
Date:   Mon Oct 28 15:30:21 2013 +0200
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--LQksG6bCIzRHxTLp--
