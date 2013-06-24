Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFCDFE01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 00:00:33 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 9F1E9407F0; Mon, 24 Jun 2013 07:00:33 +0000 (UTC)
Date: Mon, 24 Jun 2013 07:00:33 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130624070033.GA15264@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 24 Jun 2013 07:00:33 -0000
X-Groupsio-MsgNum: 14571
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
Sat Jun 22 07:27:35 2013 -0700
The based commit is:
commit 9e2ee14fa5498b130f87cda091a3a17c462e11bd
Author: Saul Wold <sgw@linux.intel.com>
Date:   Wed Apr 3 09:08:38 2013 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--M9NhX3UHpAaciwkO
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
TkSuQmCC

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--M9NhX3UHpAaciwkO--
