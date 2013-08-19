Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FFB3E003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 10:53:21 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 92140408A8; Mon, 19 Aug 2013 17:53:21 +0000 (UTC)
Date: Mon, 19 Aug 2013 17:53:21 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130819175321.GA16821@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 19 Aug 2013 17:53:21 -0000
X-Groupsio-MsgNum: 15531
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3.1                      Wenzong Fan <wenzong.fan@windriver.com>           
puzzles                       r9765                         9976                          Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.18                       3.9.10                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libx11                        1.5.0                         1.6.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.43.5                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.1.4                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+3f873e5        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+4159a80        Saul Wold <sgw@linux.intel.com>                   
kbd                           1.15.2                        2.0.0                         Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.2                        2.37.5                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.20                        2.0.21                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a43d10     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.26                        3.5.27                        Saul Wold <sgw@linux.intel.com>                   
librsvg                       2.32.1                        2.39.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.29.3                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.30.0                        0.30.2                        Ross Burton <ross.burton@intel.com>               
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
gpgme                         1.4.2                         1.4.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.8                           Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+f0c1c53      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.9.9                         Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
clutter-1.0                   1.14.4                        1.15.2                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.15.4                        No Maintainer info                                
bluez5                        5.7                           5.8                           No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.5                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.5                         No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.5                         No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
rpm                           5.4.9                         5.4.13-0.20130819             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xset                          1.2.2                         1.2.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.0+gitAUTOINC+1b26381      2.3.0+gitAUTOINC+a8da488      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.21.14                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xprop                         1.2.1                         1.2.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+f78457d        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.9.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.12.6                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
bind                          9.8.1                         9.9.3-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.1                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr677                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
gawk                          4.0.2                         4.1.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.10                        Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.35.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
opkg                          0.1.8+svnr653                 0.1.8+svnr677                 Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-fw-utils               2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
imake                         1.0.5                         1.0.6                         Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          9+gitAUTOINC+62081c0f68       14+gitAUTOINC+493dc65         Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+3f873e5        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+cf7be03      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.31.0                        7.32.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+b1f      Cristiana Voicu <cristiana.voicu@intel.com>       
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.8                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.19.1                      1.4.20                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.12+gitAUTOINC+e5147f4       Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
harfbuzz                      0.9.17                        0.9.19                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.3                        2.37.5                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.20.4                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.8                           Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75c1e     0.0+gitAUTOINC+600caef        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.52+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10.7                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 95
Upgrade Total Count: 114
The based commit merge time is:
Mon Aug 19 11:25:23 2013 +0100
The based commit is:
commit 6382979cca1d1c57467f983ba9611f91555b20a9
Author: Saul Wold <sgw@linux.intel.com>
Date:   Fri Aug 16 14:34:44 2013 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--M9NhX3UHpAaciwkO
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--M9NhX3UHpAaciwkO--
