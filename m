Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56079E01432
	for <yocto@yoctoproject.org>; Sat, 15 Jun 2013 17:00:37 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 43B0940D18; Sun, 16 Jun 2013 00:00:37 +0000 (UTC)
Date: Sun, 16 Jun 2013 00:00:37 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130616000037.GA20312@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 16 Jun 2013 00:00:37 -0000
X-Groupsio-MsgNum: 14398
Content-Type: multipart/mixed; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline

--OXfL5xGRrasGEqWY
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
gettext                       0.18.2                        0.18.2.1                      Wenzong Fan <wenzong.fan@windriver.com>           
systemtap-uprobes             2.1+gitAUTOINC+addec81        2.2.1+gitAUTOINC+b1c0ba9      Tom Zanussi <tom.zanussi@intel.com>               
swabber-native                0.0+gitAUTOINC+a079239        0.0+gitAUTOINC+2d1fe36        Saul Wold <sgw@linux.intel.com>                   
libusb-compat                 0.1.4                         0.1.5                         Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.46                          9.47                          Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    1.0.0+svn6637                 5914                          Saul Wold <sgw@linux.intel.com>                   
libidn                        1.26                          1.27                          Saul Wold <sgw@linux.intel.com>                   
nspr                          4.9.6                         4.10                          Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.9.0                         3.9.0.0                       Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.2                        2.37.2                        Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
gtk-doc-stub                  0.0+gitAUTOINC+3dfd0a0        0.0+gitAUTOINC+3dfd0a0        Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.41.2                        1.43.2                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.6                        Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.3.0                         0.3.1                         Saul Wold <sgw@linux.intel.com>                   
sysstat                       10.1.5                        10.1.6                        Saul Wold <sgw@linux.intel.com>                   
cracklib                      2.8.22                        2.9.0                         Saul Wold <sgw@linux.intel.com>                   
oprofileui-server             0.0+gitAUTOINC+f168b8b        0.0+gitAUTOINC+f168b8b        Saul Wold <sgw@linux.intel.com>                   
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
build-appliance-image         8.0                           9.0.0                         Saul Wold <sgw@linux.intel.com>                   
socat                         1.7.2.1                       1.7.2.2                       Saul Wold <sgw@linux.intel.com>                   http://www.dest-unreach.org/socat/download/socat-1.7.2.1.tar.bz2;name=src
sato-screenshot               0.1+gitAUTOINC+c792e4e        0.1+gitAUTOINC+c792e4e        Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.5-native   1.0                           4.5                           Saul Wold <sgw@linux.intel.com>                   
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
cmake                         2.8.11                        2.8.11.1                      Saul Wold <sgw@linux.intel.com>                   
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
busybox                       1.20.2                        1.21.0                        Radu Moisan <radu.moisan@intel.com>               
iputils                       s20101006                     s20121221                     Radu Moisan <radu.moisan@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
rxvt-unicode                  9.17                          9.18                          Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013c                         Radu Moisan <radu.moisan@intel.com>               
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+757a166      Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.34.1                        Radu Moisan <radu.moisan@intel.com>               
ed                            1.7                           1.8                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
atk                           2.8.0                         2.9.2                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
kmod                          9                             13                            Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec81        2.2.1+gitAUTOINC+b1c0ba9      Radu Moisan <radu.moisan@intel.com>               
zaurusd                       0.1+gitAUTOINC+85d941d        0.1+gitAUTOINC+85d941d        Radu Moisan <radu.moisan@intel.com>               SVN rev 426 is last Stable re...
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
libdmx                        1.1.2                         1.1.3                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    1.1+gitAUTOINC+c99b191        1.1.0+gitAUTOINC+2859bff      Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.5.1                         1.5.2                         Radu Moisan <radu.moisan@intel.com>               
diffutils                     3.2                           3.3                           Radu Moisan <radu.moisan@intel.com>               
usbutils                      006                           007                           Radu Moisan <radu.moisan@intel.com>               
gstreamer1.0-plugins-good     1.0.7                         1.1.1                         No Maintainer info                                
gstreamer1.0-libav            1.0.7                         1.1.1                         No Maintainer info                                
chkconfig-alternatives-native 1.3.59+AUTOINC+cd437ecbd8     6                             No Maintainer info                                
gstreamer1.0-plugins-bad      1.0.7                         1.1.1                         No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.2                         No Maintainer info                                
harfbuzz                      0.9.17                        0.9.18                        No Maintainer info                                
gtk-update-icon-cache-native  3.4.4                         3.9.2                         No Maintainer info                                
gstreamer1.0                  1.0.7                         1.1.1                         No Maintainer info                                
gstreamer1.0-plugins-base     1.0.7                         1.1.1                         No Maintainer info                                
gstreamer1.0-plugins-ugly     1.0.7                         1.1.1                         No Maintainer info                                
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     No Maintainer info                                
gtk+3                         3.4.4                         3.9.2                         No Maintainer info                                
clutter-gst-1.0               1.6.0                         2.0.4                         No Maintainer info                                
dbus-ptest                    1.6.8                         1.7.2                         No Maintainer info                                
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a5a7ff     No Maintainer info                                
clutter-gtk-1.0               1.4.2                         1.4.4                         No Maintainer info                                
weston                        1.1.0                         1.1.1                         No Maintainer info                                
ltp                           20130109                      20130503                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.10-0.20120706             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.6                        2.21.9                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xdpyinfo                      1.3.0                         1.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.8                           2.9                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.0                         1.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xwininfo                      1.1.2                         1.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.44                        2.4.45                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
libxt                         1.1.3                         1.1.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.07                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.3-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.0                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 649                           Jessica Zhang <jessica.zhang@intel.com>           
trace-cmd                     1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27.1                      Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.5                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf       0.11+gitAUTOINC+77415f5       Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27.1                      Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.8                         1.7.2                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
alsa-utils-alsaconf           1.0.26                        1.0.27.1                      Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-good              0.10.31                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.0                        Cristian Iorga <cristian.iorga@intel.com>         
gaku                          0.1+gitAUTOINC+a0be2fe        0.1+gitAUTOINC+a0be2fe        Cristian Iorga <cristian.iorga@intel.com>         
xvideo-tests                  0.1+gitAUTOINC+f8f320d        0.1+gitAUTOINC+f8f320d        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.19                        Cristian Iorga <cristian.iorga@intel.com>         http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz
gst-plugin-bluetooth          4.101                         5.5                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.21                       Cristian Iorga <cristian.iorga@intel.com>         
dbus-wait                     0.1+gitAUTOINC+1a3e134        0.1+gitAUTOINC+1a3e134        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75        0.0+gitAUTOINC+2892af0        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
libogg                        1.3.0                         1.3.1                         Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.2                        2.37.1                        Cristian Iorga <cristian.iorga@intel.com>         http://ftp.gnome.org/pub/GNOME/sources/glib/2.36/glib-2.36.2.tar.xz
gst-plugins-base              0.10.36                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.1.1                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           4.0                           Cristian Iorga <cristian.iorga@intel.com>         
gpgme                         1.4.1                         1.4.2                         Constantin Musca <constantinx.musca@intel.com>    
puzzles                       r9765                         9861                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.18                       3.9.2                         Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
libowl-av                     0.1+gitAUTOINC+03030c4        0.1+gitAUTOINC+03030c4        Constantin Musca <constantinx.musca@intel.com>    
libxext                       1.3.1                         1.3.2                         Constantin Musca <constantinx.musca@intel.com>    
oh-puzzles                    0.2+gitAUTOINC+92f1a20        0.2+gitAUTOINC+92f1a20        Constantin Musca <constantinx.musca@intel.com>    
apt                           0.9.8.1                       0.9.8.2                       Constantin Musca <constantinx.musca@intel.com>    
libxcb                        1.9                           1.9.1                         Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.4.1                         1.5.0                         Constantin Musca <constantinx.musca@intel.com>    
libxrandr                     1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
calibrateproto                0.0+gitAUTOINC+1da6fd1        0.0+gitAUTOINC+1da6fd1        Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
owl-video                     0.1+gitAUTOINC+07ab48f        0.1+gitAUTOINC+07ab48f        Constantin Musca <constantinx.musca@intel.com>    
libxfixes                     5.0                           5.0.1                         Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.6.0                         Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.42.1                        2.43.2                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.28.1                        2.29.0                        Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.28/gdk-pixbuf-2.28.1.tar.xz
matchbox-wm                   1.2+gitAUTOINC+6861783        1.2+gitAUTOINC+6861783        Constantin Musca <constantinx.musca@intel.com>    
matchbox-terminal             0.0+gitAUTOINC+452bca2        0.0+gitAUTOINC+452bca2        Constantin Musca <constantinx.musca@intel.com>    
gtk-sato-engine               0.3.3+gitAUTOINC+4740ad8      0.3.3+gitAUTOINC+4740ad8      Constantin Musca <constantinx.musca@intel.com>    
gtk-theme-torturer            0.0.0+gitAUTOINC+99962ae      0.0.0+gitAUTOINC+99962ae      Constantin Musca <constantinx.musca@intel.com>    
matchbox-desktop-sato         0.1+gitAUTOINC+810b0b0        0.1+gitAUTOINC+810b0b0        Constantin Musca <constantinx.musca@intel.com>    
libowl                        0.1+gitAUTOINC+6ebc8ac        0.1+gitAUTOINC+6ebc8ac        Constantin Musca <constantinx.musca@intel.com>    
libfakekey                    0.0+gitAUTOINC+e327ff0        0.0+gitAUTOINC+e327ff0        Constantin Musca <constantinx.musca@intel.com>    
web-webkit                    0.1+gitAUTOINC+b0676c1        0.1+gitAUTOINC+b0676c1        Constantin Musca <constantinx.musca@intel.com>    
libxxf86dga                   1.1.3                         1.1.4                         Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.9.1.1                       Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=archive
gnome-icon-theme              2.31.0                        3.8.2                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2
libxcalibrate                 0.0+gitAUTOINC+209d83a        0.0+gitAUTOINC+209d83a        Constantin Musca <constantinx.musca@intel.com>    
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
libxau                        1.0.7                         1.0.8                         Constantin Musca <constantinx.musca@intel.com>    
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
libxxf86vm                    1.1.2                         1.1.3                         Constantin Musca <constantinx.musca@intel.com>    
webkit-gtk                    1.8.3                         2.1.1                         Constantin Musca <constantinx.musca@intel.com>    http://www.webkitgtk.org/releases/webkit-1.8.3.tar.xz
libxtst                       1.2.1                         1.2.2                         Constantin Musca <constantinx.musca@intel.com>    
libxv                         1.0.7                         1.0.8                         Constantin Musca <constantinx.musca@intel.com>    
libxres                       1.0.6                         1.0.7                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-config-gtk           0.0+gitAUTOINC+3ed74df        0.0+gitAUTOINC+3ed74df        Constantin Musca <constantinx.musca@intel.com>    
libxcursor                    1.1.13                        1.1.14                        Constantin Musca <constantinx.musca@intel.com>    
libxinerama                   1.1.2                         1.1.3                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-keyboard             0.0+gitAUTOINC+b38f240        0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
settings-daemon               0.0+gitAUTOINC+9a99528        0.0+gitAUTOINC+9a99528        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb60       65311+git-AUTOINC+0d8e847     Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.9.5                         Bruce Ashfield <bruce.ashfield@windriver.com>     
python-setuptools             0.6c11                        0.7.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-modules                 2.1.1                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
fstests                       0.1+gitAUTOINC+218b99d        0.1+gitAUTOINC+218b99d        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.3.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
strace                        4.7                           4.8                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e4aa70f        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
btrfs-tools                   0.19+gitAUTOINC+fdb6c04       0.20-rc1+gitAUTOINC+89fe      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-ust                     2.1.2                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.17.4                        5.17.4-5                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.9.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Newer versions of python-pygo...
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.13.3                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.3                         1.8.3.1                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
oprofileui                    0.0+gitAUTOINC+f168b8b        0.0+gitAUTOINC+f168b8b        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
psplash                       0.1+gitAUTOINC+afd4e22        0.1+gitAUTOINC+afd4e22        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
gzip                          1.5                           1.6                           Andrei Dinu <andrei.adrianx.dinu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 161
Upgrade Total Count: 185
The based commit merge time is:
Fri Jun 14 17:21:40 2013 -0700
The based commit is:
commit 7c5ed70e70207943d1c94b944c7bb75b3c7d119a
Author: Martin Jansa <martin.jansa@gmail.com>
Date:   Wed Jun 12 00:31:16 2013 +0200
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--OXfL5xGRrasGEqWY
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAPUAAAEsCAIAAACUlWJhAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3daVhT19YH8MVkMEBAmWQWaEGZxIKCFiGMXhWp2Ba9Xm2tXsGHOtTaq1Vbam21KGL1auuA
+qgVFVC0Yq1TLVpEBaUyQxhlUIQYICERkpC8Hw73iGGQSZH9rt+nZCdZZ5/DPztnINlKcrkcECKU
8mB3AKFXCPONSIb5RiTDfCOSdZ7v9PT06dOnd2zfsmXL1q1be1j68uXL3t7eMpnspY2v2vbt23ve
bQDYt2+fdzsBAQErVqxITEx8dT2kdbVlRCLRqlWrPD09Hz9+3LfKs2bN8vb2Li8vV2hfu3att7f3
5cuXAeCnn35av349AHA4HG9vb6FQ2IcFvc4/7l9//XX16tWuHr1y5Urn+ZZKpU1NTR3bm5ubm5ub
e7hsiUQiEAh60viq9arbANDS0qKurv7d/6xYsWL48OFbtmy5dOnSq+skZeHChSdPnuzYnpqaevfu
3YiICENDw75VbmpqEgqFV65cad8oEAhu3rwpFAolEgkAWFlZ2dvbA0Bra6tAIOjbubXQ0NCjR4/2
rZO9IhaLt23bVlhY2NUTkpOTValbra2tKioqr6FPnZJKpaqqqh3bu+qVTCYTi8Xq6urUXblcLpfL
lZUV36tdtXdTmaauru7h4UHfnTFjxsyZM8+ePfuPf/yjJ3V6u0Zyuby5uXn48OFd9YfH45mZmfn5
+fWkmkwmk0qlw4YNU2h3cHC4evVqaGgo3ZKcnDx69Ojq6mrq7rRp07rqAHS9Ul2196er1EOd/u0A
gM/nR0dHp6en19bWdrPQqqoq5YyMjLVr13p5efn7++/cubO1tVXhSWVlZfPmzfv111/bN4aGhp4/
f56+GxUV1asdAKr3wcHB9+7d++STT959991Zs2adOXOGfvT3339fvHixh4fH8uXL//jjj+XLlwMA
j8cLDg4uLCz88MMPv/nmGwAoKSnZsWPH9OnT2Wx2aGgo/eHb2Ni4ffv2adOmsdnsTZs2icViunJ2
dvb69eu9vb19fX23bdtGjVsvpaSkZGdnx2AwqLt8Pv+///1vUFDQlClTQkNDKysrqfZ58+bdvn07
NDTUw8MjKCjol19+oSvcunWLan/vvfd2795NNba0tAQHB+fm5s6bN2/16tVhYWHFxcWHDx/euHFj
+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
ocuWLdPX1+fxeJaWlgpn4rphbW2dmJhYW1trYGCwZ8+e8PDwpKQkVVVVsVi8ceNGbW1t6mkBAQHh
4eEaGhpcLtfd3Z06cPT19S0sLFy5ciW1nceOHRsREdHpUszMzI4fP15fX//FF1901ZOPP/64qKho
3rx5hoaGtbW1Hh4en376aQ/XAgCGDx/u4eHRk51vyqZNm5YuXerr66ujo8Plcj/55BNqLA8LC1uz
Zo2/vz+TyRQIBIsWLbKysgIAc3PzuLi4xsbGdevWRUVFLVmyxMfHR0tLi7oE2/34zWQyd+7c+dln
n508eVIulyspKX3//fc9/2iSy+UnTpwYNmyYh4fH2LFj165dC3K5vLGxMTU1taCgoLW1Vd4b0dHR
ixcvfunTnjx5kpqaWlpa2r6xtbXVxcXlwYMHPB7v1q1bxcXF9EONjY0ikYjqlVgsXrt27erVqzut
3NLSkpmZef/+/ebmZrlczufzMzIy6PrZ2dnp6ekdV4rP59++fTsvL08qlfZqfduTSqU5OTlpaWmN
jY1045QpU/766y96e3Zc7p07d548edJNWZFIdPv27fz8/Jd2gMvl3r59u/3SX6nS0tJbt2517DyH
w7l3715TUxPd0tzcfOfOndzcXLqlpKTk/v37Eomkh8sSi8XUn1UoFPaz29DnVxYUFPj6+p4/f75v
L6fz3fGhb7/9dsGCBdQmu3//vr+//5kzZ/rcz9eJyvdg9wI995LLql3Zt2/f4cOHJ0yY0M2p1j5b
sWLFypUrfX199fX1ZTLZnDlz6AsrCPWKkrxP/0PD5/Nra2vfeuut/iw7LS3N3t5e4fQfrba29smT
J/b29l39E8IbKCMjw9ramt4XR4Ouj/lGaEgYMkMjQn2A+UYkw3wjkmG+Eckw34hkmG9EsrbrO9T3
U+hWa2vrkJAQoVB4+fJloVA4bdo0PT29QeohQn3Xdv5bKBTSX5i/fPmyhYWFl5fXpk2bXFxcTExM
Tp48GRER0dWFGITeWG37JxoaGoaGhoaGhnK5nMvlenp6Ul/cmDFjhrOz8/jx4zkczuB2FKE+UNz/
PnXq1Jw5c5SUlJ4+fWpkZEQ1GhkZdfMrEwi9sV74/6rKykomk0l9FaW5uZneIdHW1i4pKeFwONQo
zmQyO/4vOEJvoBfyfefOnUmTJlG3WSwW9VMbANDQ0GBoaGhjY0N9C5P+ZQiE3nAvfPO3oKCA+tIk
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
6sBBTpuPAAAAAElFTkSuQmCC

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--OXfL5xGRrasGEqWY--
