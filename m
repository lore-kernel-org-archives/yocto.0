Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A955E01482
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2013 19:00:37 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 68913407F1; Mon, 22 Jul 2013 02:00:37 +0000 (UTC)
Date: Mon, 22 Jul 2013 02:00:37 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130722020037.GA9224@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Jul 2013 02:00:37 -0000
X-Groupsio-MsgNum: 15062
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline

--envbJBWh7q8WU6mo
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
Thu Jul 18 21:26:58 2013 +0100
The based commit is:
commit 31e6eee860b5f9f4ac9ef0889bcff5648de6e3f9
Author: Cristiana Voicu <cristiana.voicu@intel.com>
Date:   Wed Jul 17 16:50:32 2013 +0300
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--envbJBWh7q8WU6mo--
