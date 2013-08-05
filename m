Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 055D4E003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 00:24:27 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id ED4C940B24; Mon,  5 Aug 2013 07:24:26 +0000 (UTC)
Date: Mon, 5 Aug 2013 07:24:26 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130805072426.GA599@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Aug 2013 07:24:27 -0000
X-Groupsio-MsgNum: 15342
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3                        Wenzong Fan <wenzong.fan@windriver.com>           
puzzles                       r9765                         9976                          Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.18                       3.9.10                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
mesa                          9.1.5                         9.1.6                         Valentin Popa <valentin.popa@intel.com>           
libx11                        1.5.0                         1.6.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.43.5                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.1                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.1.3                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.1                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.1+gitAUTOINC+addec813fe     2.3+gitAUTOINC+03207fd        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
mc                            4.8.9                         4.8.10                        Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+affe85f        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.2                        2.37.5                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
util-linux                    2.23.1                        2.23.2                        Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.52                          3.53                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a43d10     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
clutter-gst-1.0               1.6.0                         2.0.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013d                         Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.35.0                        Radu Moisan <radu.moisan@intel.com>               
opkg                          0.1.8+svnr650                 0.1.8+svnr651                 Radu Moisan <radu.moisan@intel.com>               
ed                            1.8                           1.9                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
mkfontscale                   1.1.0                         1.1.1                         Radu Moisan <radu.moisan@intel.com>               
atk                           2.8.0                         2.9.3                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
imake                         1.0.5                         1.0.6                         Radu Moisan <radu.moisan@intel.com>               
kmod                          9+gitAUTOINC+62081c0f68       14+gitAUTOINC+48a4096         Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec813fe     2.3+gitAUTOINC+03207fd        Radu Moisan <radu.moisan@intel.com>               
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
liburcu                       0.7.6                         0.7.7                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+91ce4fc      Radu Moisan <radu.moisan@intel.com>               
curl                          7.30.0                        7.31.0                        Radu Moisan <radu.moisan@intel.com>               
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+b1f      Radu Moisan <radu.moisan@intel.com>               
clutter-1.0                   1.14.4                        1.15.2                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.15.4                        No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.5                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.5                         No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.5                         No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
rpm                           5.4.9                         5.4.12-0.20130725             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.0+gitAUTOINC+1b26381      2.3.0+gitAUTOINC+5420784      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.21.14                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e76f240        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   0.19+gitAUTOINC+fdb6c040      0.20-rc1+gitAUTOINC+194a      Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.9.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
intltool                      0.50.2                        0.51.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
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
adt-installer                 0.1.8+svnr596                 0.1.8+svnr651                 Jessica Zhang <jessica.zhang@intel.com>           
qemu                          1.5.0                         1.5.2                         Ionut Radu <ionutx.radu@intel.com>                
librsvg                       2.32.1                        2.37.0                        Ionut Radu <ionutx.radu@intel.com>                
gdk-pixbuf                    2.28.1                        2.29.3                        Ionut Radu <ionutx.radu@intel.com>                2.27.2 is unstable            
freetype                      2.4.12                        2.5.0                         Ionut Radu <ionutx.radu@intel.com>                
js                            1.7.0+1.8.0rc1                185-1.0.0                     Ionut Radu <ionutx.radu@intel.com>                
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf3      0.12+gitAUTOINC+595d951       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
gst-plugins-good              0.10.31                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
harfbuzz                      0.9.17                        0.9.19                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.3                        2.37.5                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.7                         1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75c1e     0.0+gitAUTOINC+931e446        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.29.6                        0.30.0                        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-base              0.10.36                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.52+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10.5                        Bruce Ashfield <bruce.ashfield@windriver.com>     
sudo                          1.8.6p8                       1.8.7                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 105
Upgrade Total Count: 130
The based commit merge time is:
Sat Aug 3 10:33:14 2013 +0100
The based commit is:
commit 4cff3defb545643132b7233fcffb3fedc1bf182b
Author: Saul Wold <sgw@linux.intel.com>
Date:   Thu Aug 1 18:30:59 2013 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--fdj2RfSjLxBAspz7
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
4/IAAAAASUVORK5CYII=

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--fdj2RfSjLxBAspz7--
