Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A70E013DE
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 04:34:36 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 749ED40B22; Mon, 29 Jul 2013 11:34:36 +0000 (UTC)
Date: Mon, 29 Jul 2013 11:34:36 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130729113436.GA15186@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Jul 2013 11:34:36 -0000
X-Groupsio-MsgNum: 15215
Content-Type: multipart/mixed; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline

--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
lsb                           4.1                           1.4                           Yi Zhao <yi.zhao@windriver.com>                   
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+cd0ae0f      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.1+gitAUTOINC+addec813fe     2.3+gitAUTOINC+eada930        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
xorg-cf-files                 1.0.4                         1.0.5                         Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+933b5df        Saul Wold <sgw@linux.intel.com>                   
consolekit                    0.4.5                         0.4.6                         Saul Wold <sgw@linux.intel.com>                   
glew                          1.9.0                         1.10.0                        Saul Wold <sgw@linux.intel.com>                   
cups                          1.6.2                         1.6.3                         Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.16.10                       1.17.1                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.2                        2.37.4                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.2                         1.5.3                         Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.73                          1.74                          Saul Wold <sgw@linux.intel.com>                   
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
mklibs-native                 0.1.37                        0.1.38                        Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a43d10     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
clutter-gst-1.0               1.6.0                         2.0.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013d                         Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.35.0                        Radu Moisan <radu.moisan@intel.com>               
opkg                          0.1.8+svnr649                 0.1.8+svnr650                 Radu Moisan <radu.moisan@intel.com>               
ed                            1.8                           1.9                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
mkfontscale                   1.1.0                         1.1.1                         Radu Moisan <radu.moisan@intel.com>               
atk                           2.8.0                         2.9.3                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
imake                         1.0.5                         1.0.6                         Radu Moisan <radu.moisan@intel.com>               
kmod                          9+gitAUTOINC+62081c0f68       14+gitAUTOINC+b3e19ce         Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec813fe     2.3+gitAUTOINC+eada930        Radu Moisan <radu.moisan@intel.com>               
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
liburcu                       0.7.6                         0.7.7                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+91ce4fc      Radu Moisan <radu.moisan@intel.com>               
curl                          7.30.0                        7.31.0                        Radu Moisan <radu.moisan@intel.com>               
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+b1f      Radu Moisan <radu.moisan@intel.com>               
clutter-1.0                   1.14.4                        1.15.2                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.15.2                        No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.3                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.4                         No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.4                         No Maintainer info                                
rpm                           5.4.9                         5.4.12-0.20130725             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.9                        2.21.13                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xrandr                        1.4.0                         1.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
libpciaccess                  0.13.1                        0.13.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.8.0                         2.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.45                        2.4.46                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xhost                         1.0.5                         1.0.6                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
bind                          9.8.1                         9.9.3-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.0                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr650                 Jessica Zhang <jessica.zhang@intel.com>           
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      4.06                          4.07                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf3      0.12+gitAUTOINC+3c92a37       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-good              0.10.31                       1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
connman                       1.15                          1.16                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.17                        0.9.19                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.3                        2.37.4                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.9.0                         3.10.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.7                         1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75c1e     0.0+gitAUTOINC+931e446        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-base              0.10.36                       1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.1.2                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.1.2                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           4.0                           Cristian Iorga <cristian.iorga@intel.com>         
libxfont                      1.4.5                         1.4.6                         Constantin Musca <constantinx.musca@intel.com>    
puzzles                       r9765                         9893                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.18                       3.9.8                         Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
apt                           0.9.8.2                       0.9.9.4                       Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.5.0                         1.5.2                         Constantin Musca <constantinx.musca@intel.com>    
libxrandr                     1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.6.0                         Constantin Musca <constantinx.musca@intel.com>    
libuser                       0.58                          0.59                          Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.42.1                        2.43.4                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.28.1                        2.29.2                        Constantin Musca <constantinx.musca@intel.com>    2.27.2 is unstable            
gtk-update-icon-cache-native  3.4.4                         3.9.8                         Constantin Musca <constantinx.musca@intel.com>    
libxxf86dga                   1.1.3                         1.1.4                         Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.9.1.1                       Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
freetype                      2.4.12                        2.5.0                         Constantin Musca <constantinx.musca@intel.com>    
gnome-icon-theme              2.31.0                        3.8.2                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Constantin Musca <constantinx.musca@intel.com>    only release candidates avail...
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
gtk+3                         3.8.2                         3.9.8                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Constantin Musca <constantinx.musca@intel.com>    
pcmanfm                       1.1.0                         1.1.1                         Constantin Musca <constantinx.musca@intel.com>    
webkit-gtk                    1.8.3                         2.1.3                         Constantin Musca <constantinx.musca@intel.com>    >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Constantin Musca <constantinx.musca@intel.com>    
videoproto                    2.3.1                         2.3.2                         Constantin Musca <constantinx.musca@intel.com>    
libfm                         1.1.0                         1.1.1                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.52+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10.4                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lttng-modules                 2.2.0+gitAUTOINC+1b26381      2.3.0+gitAUTOINC+5420784      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.3.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
powertop                      2.3                           2.4                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Do not upgrade to version 1.9...
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e76f240        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.17.4                        5.17.4-5                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.7.1                         3.0                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.9.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Newer versions of python-pygo...
subversion                    1.7.10                        1.8.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
makedepend                    1.0.4                         1.0.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.14                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.3                         1.8.3.4                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
nasm                          2.10.07                       2.10.09                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
sudo                          1.8.6p8                       1.8.7                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
libpng                        1.6.2                         1.6.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       1.4.3 and later changes the A...
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 127
Upgrade Total Count: 157
The based commit merge time is:
Wed Jul 24 11:35:39 2013 +0100
The based commit is:
commit 67864ca79da08df752487a3a4e1a975546da123d
Author: Muhammad Shakeel <muhammad_shakeel@mentor.com>
Date:   Fri Jul 19 16:53:25 2013 +0500
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--cWoXeonUoKmBZSoM
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
vXXrVnNzc3q1sLCw2NhYExMTqVQaEBCwbt06QkhwcLBIJIqLi7OxsZFKpTNmzPjkk0/uuxVHR8f0
9PSOjo533nlnqExefvnl2tra6OhoW1vbtra2wMDA9evXj97dpEmTCEVRKpWqvLz88uXLPT09FEXJ
5fLS0lL6tNLb21tRUVFSUtLb2zvgjCOXywsLC69evarVau97ShoNWq22srKyuLhYf6KnKCooKOj8
+fNdXV0FBQXV1dWDt3vx4sUB1x8DUCqVhYWF165dGzEBqVRaWFjYf+ujhwBe829DuxvrLEYGn6PA
MaDG3zP30tJSV1dX/bFv3DIe3T0p4D4LB93BQXdw0B0cdAcH3cEZ+FlPSUmJXC4PDg4mhCgUiry8
PIVCER4ePnny5LFIb1xzT93dunXrp59+kslk9GxSUhKTyfTy8vrqq68UCsVYpDeuuVt3Op0uLS0t
ICCAnq2rq9NoNEuXLiWEVFdX19TU6J8hIzR36y4nJ2fu3Ln6T3zb29v103Z2diKRaAyyG9/0uROJ
RK2trQsWLNAv6Onp0T+JNDc3VyqVNTU1ubm5ubm5o3/S+b9N3z575swZmUy2a9eujo4OtVptZGTk
4uJCf4hJCOns7LS1tXVzc3NzcyOE5Obmjlm+44k+d9HR0fQz4aKiolu3bgUHB0+cODErK0upVLJY
rPLy8gd6Hv0foc+d/nMpU1PTO3fu0LMhISEJCQnm5uYcDmfWrFljluN4ZYRnUCqVSiaTTZkyhf7I
kSY3N3fZsmX/fm7jnRG+B8VkMmHftfovgPdkcB7g+3djwv8drnz4ILUveD58kMGMd3diuWqsUxgS
3GfhoDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu
4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCg
OzjoDg66g4Pu4KA7OOgODrqDg+7goDs4d//nXSQSnTp1asKECU8//bSXlxfBHm4j0Vd3HR0dhw4d
WrRokUAg2LdvH93GDXu4DU9f3bW2toaFhdG/7jF9+nSpVNrV1YU93Ianz92MGTMIISKRqKCggMFg
ODs7l5eXD+jh5uTk1N7eTggZ/reY/jvcc65gMBgmJiZMJlOn0w3u4TYW6Y1r7u6zLBbL1dXV1dX1
6NGj+fn506ZNG9DDjcPh0D+OUlNTM2b5jif66u7q1au///47IUSj0chkMjMzMy6XK5fL6XIrLy93
cHAYyzTHJX11t2DBgsTExN27d7e0tFhbWwcEBDCZTOzhNjx97hgMxvvvvy+TyRgMhv4nkvh8/rx5
8+gebmOX4fjlnn5QVlZWAxZjD7dhwHsyOOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7
OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjo
Dg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7g3NOH7OzZ
s0wmUyAQODk5EexDNhJ9dSeXyw8cOMDj8RYvXrx3797i4mKCfchGoq/u6uvr586dy+PxCCELFixo
aGiwtrbGPmTD01d33t7ezz33HCGkp6dHKBTOmDGjvb19QB+yMctxvHJPbxmhUPjzzz+HhobOnDnz
r7/+6t+HTCKR1NTU0F206E5uyF132dnZ9fX1cXFxdHceMzOzAX3I3Nzc3NzcCCG5ubljkut4o2+f
bWpqamho2LBhg76tEfYhG5G+uquoqKitrd20aRM9y+fzIyIisA/Z8BhQFDXMYpVKRfchMzAw0A/m
5uYuW7bs38+NEEIMvrv88EGoGN7DBxkMY/jF2IdsGPCeDA66g4Pu4KA7OOgODrqDg+7goDs46A4O
uoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqD
g+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu
4KA7OOgOzj3uVCpVenq6flahUBw7diwtLU0qlT72xJ4A7rorKytLTU29ceOGfgR7uA3PXXdKpdLR
0VE/W1dXR/dw8/HxmT17Nt1FC+nP3d4y8+fPv3nzZmVlJT07uIebk5MT3YGsu7v78Sc6DhnyXNHT
09O/hxvdVAvpz5A9jQb3cONwOBwOhxCC+y/NkHWHPdxGZMi6YzKZ2MNteLCHGxzs4QYH78ngoDs4
6A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgO
DrqDg+7goDs46A4OuoOD7uCgOzjoDg66g4Pu4KA7OOgODrqDg+7goDs46A4OuoOD7uCgOzjoDg66
g4Pu4KA7OOgODrqDg+7goDs46A4OuoMzXK+Frq6uEydOGBkZhYWFmZubP7acnhSGrDuNRhMfH29v
b+/g4BAfHz98K5D/JkPWXWVlpbW1NZ/PJ4SUlZXV19c7Ozs/vryeBIasO6lUqu+MYm9vLxKJHldK
TwxD1p1Kperfh6yjo6OmpobuotXe3p6bmzv6bbS3t9NNuAAct38EwR8o29EHH9Idm83W9xvr6Oiw
tbV1c3Nzc3MDZPCv9kAaw+BD7rPe3t7Nzc1qtZoQIhQKsQ/ZYIasO0tLSx6Pl5CQwGAwfHx8nJyc
wNuAVev4Dz5CHzKFQqFQKGxsbB51Vv8LjODu0VJaWnrx4kUrKyuBQGBra0sIEYlEBQUFlpaWwcHB
bDb7YYKXlZWdO3eOxWItWrTIxcWFENLR0XHy5EkmkxkWFmZmZvZog5PHeU9248aNX3/9lc/n+/v7
79ixQyKRdHd3Z2Vl+fr6zpw589NPP9VqteDgEokkLy9v+fLlXl5eu3bt0mq1arU6ISHB0dHR3t7+
Ia/tBwcnhFy5csVw69atsIgHDhxwcHBgsVhHjhxpbW11cXGprq4uLCw8c+YMl8tlMpnp6elyudzJ
yam8vFwoFN65c8fJycnPz8/S0lIqlVIU1dDQ4OjoGBAQwOFwWlpazM3NraysYMEpivLw8OByuQ4O
DufOnePxeCKRqKOjY9WqVY6OjtXV1VOmTNHfVj58cBaLVVdXB687Fot17do1iqLKysqKi4sJIUKh
0MLCgslkikQijUYjFAovXbpE/4msrKwWLly4aNEiQkhXV1dNTQ2Xy500aVJpaSkhhKIohUIhkUjA
wf38/Ly8vK5cubJv3z4XFxcOh9P/2p7uMfwIgxNC5s+fD3fn6elZXV3d2Nj41FNPqVSqnp4ekUjk
6elJj0skEh6PJ5VKe3t7xWKxh4cH/aqCgoLExMTnn3/e3t7ex8eHzWanpqYmJSUN6NsNCz5x4kRT
U1MjIyOdTqdSqVgsFj0+oMfwwwenR+D7rKWlZXZ2NpvNtrOzMzQ07O7urq+vX7x4sYWFRU5OjrGx
sbOzc3d3t1qtlkqlCxcu7O3tPXjwYGtr6xtvvEE38DYyMpo7d66DgwOfz29vb3d3d9fvsw8avKGh
gclk2tvbe3t7FxUVaTQaQ0PDpqamOXPmEEKuXLliZ2env0R9+OB0/vC6YzAYU6dOPXv2rJubG5fL
PXnypKenJyGExWKx2ezi4mL9uJeXFyGksrLSwMBg7dq1pqamdASxWLx///7JkyczGIzS0tJp06aB
gxcVFV24cIEQolQq5XK5mZmZj49Pc3OzRqMhhAiFwqlTpz7C4H1xwO4IIV5eXk1NTZMnT2Yyme3t
7XQGhBBPT8+SkhITExN3d/eMjAx6vKKi4tKlS/QBjhASGRk5f/58mUz29ddfa7XapUuXGhkZgYMv
WbIkMTGxtrZWIpFwuVwPD48JEyZ4e3vHx8cbGhr6+vr2b1X/8MHplR/r9d1gKIpqaWlhs9kPeXFH
09bWZmJion+EQQhRKBRKpdLa2vrfCD7G7p5o8PMKOOgODrqDg+7g/D9I56fUssVpDwAAAABJRU5E
rkJggg==

--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--cWoXeonUoKmBZSoM--
