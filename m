Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63312E013EC
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 09:54:44 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 56A86422E0; Mon,  8 Jul 2013 16:54:44 +0000 (UTC)
Date: Mon, 8 Jul 2013 16:54:44 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130708165444.GA20478@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 08 Jul 2013 16:54:44 -0000
X-Groupsio-MsgNum: 14872
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
lsb                           4.1                           1.4                           Yi Zhao <yi.zhao@windriver.com>                   
chkconfig-alternatives-native 1.3.59+AUTOINC+cd437ecbd8     6                             Wenzong Fan <wenzong.fan@windriver.com>           
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3                        Wenzong Fan <wenzong.fan@windriver.com>           
systemtap-uprobes             2.1+gitAUTOINC+addec81        2.2.1+gitAUTOINC+b1c0ba9      Tom Zanussi <tom.zanussi@intel.com>               
swabber-native                0.0+gitAUTOINC+2d1fe36        0.0+gitAUTOINC+2d1fe36        Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.9.0                         3.10.0.0                      Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
glib-networking               2.36.2                        2.37.2                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
gtk-doc-stub                  0.0+gitAUTOINC+3dfd0a0        0.0+gitAUTOINC+3dfd0a0        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
oprofileui-server             0.0+gitAUTOINC+f168b8b        0.0+gitAUTOINC+f168b8b        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
build-appliance-image         8.0                           9.0.1.                        Saul Wold <sgw@linux.intel.com>                   
tzcode-native                 2013c                         2013d                         Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.50                          3.52                          Saul Wold <sgw@linux.intel.com>                   
sato-screenshot               0.1+gitAUTOINC+3a9688e        0.1+gitAUTOINC+3a9688e        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
docbook-sgml-dtd-4.5-native   1.0                           4.5                           Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a5a7ff     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
cmake                         2.8.11.1                      2.8.11.2                      Saul Wold <sgw@linux.intel.com>                   
clutter-gst-1.0               1.6.0                         2.0.4                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.1.1                         Ross Burton <ross.burton@intel.com>               
iputils                       s20101006                     s20121221                     Radu Moisan <radu.moisan@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
rxvt-unicode                  9.17                          9.18                          Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
apr                           1.4.6                         1.4.8                         Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013d                         Radu Moisan <radu.moisan@intel.com>               
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+757a166      Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.35.0                        Radu Moisan <radu.moisan@intel.com>               
opkg                          0.1.8+svnr649                 650                           Radu Moisan <radu.moisan@intel.com>               
ed                            1.7                           1.9                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
atk                           2.8.0                         2.9.3                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
kmod                          9                             14                            Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec81        2.2.1+gitAUTOINC+b1c0ba9      Radu Moisan <radu.moisan@intel.com>               
zaurusd                       0.1+gitAUTOINC+85d941d        0.1+gitAUTOINC+85d941d        Radu Moisan <radu.moisan@intel.com>               SVN rev 426 is last Stable re...
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
liburcu                       0.7.6                         0.7.7                         Radu Moisan <radu.moisan@intel.com>               
libdmx                        1.1.2                         1.1.3                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    1.1+gitAUTOINC+a386e24        1.1.1+gitAUTOINC+ea68b18      Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.5.1                         1.5.2                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.30.0                        7.31.0                        Radu Moisan <radu.moisan@intel.com>               
diffutils                     3.2                           3.3                           Radu Moisan <radu.moisan@intel.com>               
usbutils                      006                           007                           Radu Moisan <radu.moisan@intel.com>               
gsettings-desktop-schemas     3.7.3                         3.9.3                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.3                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.10-0.20120706             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.9                        2.21.11                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.45                        2.4.46                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bind                          9.8.1                         9.9.3-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.0                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 650                           Jessica Zhang <jessica.zhang@intel.com>           
trace-cmd                     1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27.1                      Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf       0.12+gitAUTOINC+a8f3380       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.8                         1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
alsa-utils-alsaconf           1.0.26                        1.0.27.1                      Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-good              0.10.31                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
harfbuzz                      0.9.17                        0.9.18                        Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
gaku                          0.1+gitAUTOINC+a0be2fe        0.1+gitAUTOINC+a0be2fe        Cristian Iorga <cristian.iorga@intel.com>         
xvideo-tests                  0.1+gitAUTOINC+f8f320d        0.1+gitAUTOINC+f8f320d        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.0.7                         1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         
dbus-wait                     0.1+gitAUTOINC+6cc6077        0.1+gitAUTOINC+6cc6077        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75        0.0+gitAUTOINC+e982abf        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.8                         1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
libogg                        1.3.0                         1.3.1                         Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.2                        2.37.3                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
gst-plugins-base              0.10.36                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           4.0                           Cristian Iorga <cristian.iorga@intel.com>         
puzzles                       r9765                         9893                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.18                       3.9.6                         Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
libgpg-error                  1.11                          1.12                          Constantin Musca <constantinx.musca@intel.com>    
libowl-av                     0.1+gitAUTOINC+03030c4        0.1+gitAUTOINC+03030c4        Constantin Musca <constantinx.musca@intel.com>    
oh-puzzles                    0.2+gitAUTOINC+92f1a20        0.2+gitAUTOINC+92f1a20        Constantin Musca <constantinx.musca@intel.com>    
apt                           0.9.8.2                       0.9.9                         Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.5.0                         1.5.1                         Constantin Musca <constantinx.musca@intel.com>    
libxrandr                     1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
libxvmc                       1.0.7                         1.0.8                         Constantin Musca <constantinx.musca@intel.com>    
calibrateproto                0.0+gitAUTOINC+1da6fd1        0.0+gitAUTOINC+1da6fd1        Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
owl-video                     0.1+gitAUTOINC+07ab48f        0.1+gitAUTOINC+07ab48f        Constantin Musca <constantinx.musca@intel.com>    
mesa                          9.1.3                         9.1.4                         Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.6.0                         Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.42.1                        2.43.2                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.28.1                        2.29.2                        Constantin Musca <constantinx.musca@intel.com>    2.27.2 is unstable            
augeas                        1.0.0                         1.1.0                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-wm                   1.2+gitAUTOINC+6861783        1.2+gitAUTOINC+6861783        Constantin Musca <constantinx.musca@intel.com>    
matchbox-terminal             0.0+gitAUTOINC+452bca2        0.0+gitAUTOINC+452bca2        Constantin Musca <constantinx.musca@intel.com>    
gtk-sato-engine               0.3.3+gitAUTOINC+4740ad8      0.3.3+gitAUTOINC+4740ad8      Constantin Musca <constantinx.musca@intel.com>    
gtk-theme-torturer            0.0.0+gitAUTOINC+99962ae      0.0.0+gitAUTOINC+99962ae      Constantin Musca <constantinx.musca@intel.com>    
gtk-update-icon-cache-native  3.4.4                         3.9.6                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-desktop-sato         0.1+gitAUTOINC+810b0b0        0.1+gitAUTOINC+810b0b0        Constantin Musca <constantinx.musca@intel.com>    
libowl                        0.1+gitAUTOINC+6ebc8ac        0.1+gitAUTOINC+6ebc8ac        Constantin Musca <constantinx.musca@intel.com>    
libfakekey                    0.0+gitAUTOINC+e327ff0        0.0+gitAUTOINC+e327ff0        Constantin Musca <constantinx.musca@intel.com>    
web-webkit                    0.1+gitAUTOINC+b0676c1        0.1+gitAUTOINC+b0676c1        Constantin Musca <constantinx.musca@intel.com>    
libxxf86dga                   1.1.3                         1.1.4                         Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.9.1.1                       Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
ethtool                       3.9                           3.10                          Constantin Musca <constantinx.musca@intel.com>    
freetype                      2.4.12                        2.5.0                         Constantin Musca <constantinx.musca@intel.com>    
gnome-icon-theme              2.31.0                        3.8.2                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
libxcalibrate                 0.0+gitAUTOINC+209d83a        0.0+gitAUTOINC+209d83a        Constantin Musca <constantinx.musca@intel.com>    
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
gtk+3                         3.8.2                         3.9.6                         Constantin Musca <constantinx.musca@intel.com>    
libassuan                     2.1.0                         2.1.1                         Constantin Musca <constantinx.musca@intel.com>    
webkit-gtk                    1.8.3                         2.1.2                         Constantin Musca <constantinx.musca@intel.com>    >= 1.10.2 needs ruby          
libxi                         1.7.1                         1.7.2                         Constantin Musca <constantinx.musca@intel.com>    
libxv                         1.0.8                         1.0.9                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-config-gtk           0.0+gitAUTOINC+3ed74df        0.0+gitAUTOINC+3ed74df        Constantin Musca <constantinx.musca@intel.com>    
libxrender                    0.9.7                         0.9.8                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-keyboard             0.0+gitAUTOINC+b38f240        0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
settings-daemon               0.0+gitAUTOINC+9a99528        0.0+gitAUTOINC+9a99528        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb60       65311+git-AUTOINC+0d8e847     Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10                          Bruce Ashfield <bruce.ashfield@windriver.com>     
fstests                       0.1+gitAUTOINC+218b99d        0.1+gitAUTOINC+218b99d        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.3.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e4aa70f        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
btrfs-tools                   0.19+gitAUTOINC+fdb6c04       0.20-rc1+gitAUTOINC+89fe      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.17.4                        5.17.4-5                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.9.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Newer versions of python-pygo...
subversion                    1.7.10                        1.8.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.14                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.3                         1.8.3.2                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
oprofileui                    0.0+gitAUTOINC+f168b8b        0.0+gitAUTOINC+f168b8b        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
sudo                          1.8.6p8                       1.8.7                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
psplash                       0.1+gitAUTOINC+afd4e22        0.1+gitAUTOINC+afd4e22        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
e2fsprogs                     1.42.7                        1.42.8                        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 139
Upgrade Total Count: 172
The based commit merge time is:
Fri Jul 5 15:52:48 2013 +0100
The based commit is:
commit dc86293f0444384e8ae5131fdd10b6cb077164b0
Author: Valentin Popa <valentin.popa@intel.com>
Date:   Wed Jul 3 11:31:44 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--Q68bSM7Ycu6FN28Q
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
X1paGp/Pf+p3L3OU99atWx3X9m7fvu3o6Kivr8+EUVFRkebwU15enoODg56eXkhISHFxsWZyV1JS
8tRtP3fuXFlZWVpaGtPho0ePMu2enp5yufzevXua9cj8/Hwmo318fEpKSjTbW1FRkZWV9Yw1hY76
9+/PrD0zO238+PGacPzll19sbW2Z20VFRZqjS3l5eTY2NkZGRm5ubh1XgsViMTOxeurR4udiqjET
Q+Yd7ezsXnwcGhsbu379egcHB2dnZzs7u2c/2dXV1djYOCAgYPDgwUzLxYsXmbntyZMnvb29Z86c
OXPmzPT09CVLlly5ciUoKKjjawkhxcXF7u7umq4+e5jm7e29Y8eOqVOnMl8hSqXy6NGjz1547kpG
RkZeXp5mGUGtVtfX11tbW3f1fOY35Pz58xkZGRs2bOjGO9JF7TzpgICA0tLSpqYmza+ImZmZm5tb
Tk5Ox6PygYGB27ZtYyZZOTk5c+fOra+vJ4QEBQVduHCBObgmlUoXL1584cKFTm+xcOHC4uLiPXv2
dGr39va2sLDYsmXLUwdBhBAHBwcHB4fVq1czc8DW1tbjx48zh0I0z9m2bVtRUREhJD8///Dhw8z3
T2Rk5I4dO8rKypjenj59ulP8MZRKZWNjI/PZLioq2rFjR1tbW2trq4WFhaOj44oVK6RSKSFk+/bt
mqlcUFBQVlYWc2RHJpN9+umnZ86ceZH9TAhhs9nMoqarq6uZmdnGjRvVarVKpdq2bduXX36pyaO9
e/fm5uYSQoqLi/fu3ctsUWBg4JkzZ5hDllKpdOPGjaGhoV2dHNDpnJQnBQYG7t27l9nw+/fvb9++
XfPt8iJCQ0MlEsmmTZteZMnDwMDA399/y5Ytjx49IoRcvXr1ww8/ZM5dPHjw4Nq1a5uampRKJXOu
rGZKyzyBw+G4u7unpqYyJ/UdPXo0Pz8/LCzsGW/n4+NDCGHmYm1tbRs2bFizZs2LjxPVavXq1auZ
3+G+fftu2bJl//79KpWqra1t3bp1xsbGgwYNIoRcunRp9erVHc/vJYTo6+tHRkauWrWKx+NpQvMv
hNo4yNvb29jYuH///pplV0JIcHDwrVu3OmbQkiVL3n///ZiYGHNz88rKyrfffjs0NJQQEhERIRKJ
pk2bZmVlVVNT4+bmxhzO6MjOzu69997bsGFDZGRkp4eio6N37NjRVQYRQr755ptPPvlk3LhxXC5X
JpPxeLwJEyZ0PD8lJiZmypQpXC63pqYmMjJy0qRJhJAhQ4ZERUW9/fbbXC5XT09v+PDhTE51EhkZ
uXv37o8++sjKyqq+vv6dd97ZuXPn+++/v2nTptTUVGYJ2dTU1NTUdOzYscycIjAwMDEx8YMPPujb
t69EInF0dHzqubNP5ezsfODAgaqqKisrq/Xr18+cOfPw4cOGhoatra3Lli3j8XjM02JjY2fOnMnh
cGpqaoKCgqZPn04IiYqKKiwsnDNnDrOfBw4cuHTp0qe+i729/fbt2+vq6j7++OOuejJlypSioqKJ
Eyfy+fyqqqqQkJBOp/M+W+/evUNCQl5kMYixfPnyGTNmREVFmZmZ1dTUvPPOO8wX3vTp0+fPnx8T
E8Nms5nRtJOTEyGkX79+e/bsaWhoWLRoUUpKyrRp0yIjI01NTZlTvZ89DmKz2WvWrJk7d+6uXbvU
arWent4XX3zx4kM8tVq9c+fOXr16hYSEDBw4cMGCBWlpaV9//bVCoXB0dExKSurTpw8hJDc3d+fO
nf/3f//X6bSmmJiYAwcOTJ48+QXf7k9F7y9x/aCysrLy8nInJ6dOI1KpVJqfn29ubv7aa691dVbY
U61evfrWrVvff//9s59WVVVVXFxsbW3t6OioaVSpVIMHD968eXO/fv0KCgr4fL7mUI5UKjUyMlIo
FPn5+QEBAZ9++qlSqVy1atWTlVtbW0UikVKp9PDwYLFYzLCIWY1WqVS3bt1qbm5+/fXXO21UY2Nj
fn4+j8dzcXHp9pmZbW1tIpFILpe7urpqvqjDwsJWrFjh7e3N7E/NIpHmfW/duuXo6PjkErjGo0eP
srOzmcHssztQW1tbVFTk7u7+e5eTuqekpOThw4cDBgzo1PmioiKpVOrm5qYZCba0tNy8edPU1FQz
mrhz5059fb23t/dzT2VkKBSKgoICpVKpWU/Qhlgs5nA4mslyj6V+9YhEoqioqEOHDnXv5W1tbf7+
/jdv3nzyoc8//3zSpElNTU1qtfrXX3+NiYnZv3+/Vn19WUJDQ8+fP0+7F/AqojYXo2Xjxo1btmwZ
NGjQiBEjdF589uzZc+bMiYqK6tu3r0qlGj9+vObkQAB4qr/GXEyHpFJpVVXVgAEDtCly9epVDw+P
TofeNaqqqiorKz08PH7X9JCu69evOzs7a9aGAF6aVy6DAOBP5S/zRQ0APRIyCABoQgYBAE3IIACg
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

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--Q68bSM7Ycu6FN28Q--
