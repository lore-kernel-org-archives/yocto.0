Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E932E01539
	for <yocto@yoctoproject.org>; Sat, 18 May 2013 17:17:55 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 6CEC141A18; Sun, 19 May 2013 00:17:55 +0000 (UTC)
Date: Sun, 19 May 2013 00:17:55 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130519001755.GA30232@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 19 May 2013 00:17:55 -0000
X-Groupsio-MsgNum: 13823
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline

--J2SCkAp4GZ/dPZZf
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
mc                            4.8.7                         4.8.8                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    1.0.0+svn6637                 5914                          Saul Wold <sgw@linux.intel.com>                   
kconfig-frontends             3.9.0                         3.9.0.0                       Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.0                        2.37.1                        Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.19                        2.0.20                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.5                        Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.21                        3.2.22                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
resolvconf                    1.71                          1.72                          Saul Wold <sgw@linux.intel.com>                   
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
mklibs-native                 0.1.35                        0.1.37                        Saul Wold <sgw@linux.intel.com>                   
build-appliance-image         8.0                           9.0.0                         Saul Wold <sgw@linux.intel.com>                   
desktop-file-utils-native     0.15                          0.21                          Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.5-native   1.0                           4.5                           Saul Wold <sgw@linux.intel.com>                   
cmake                         2.8.10.2                      2.8.11                        Saul Wold <sgw@linux.intel.com>                   
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
busybox                       1.20.2                        1.21.0                        Radu Moisan <radu.moisan@intel.com>               
iputils                       s20101006                     s20121221                     Radu Moisan <radu.moisan@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
rxvt-unicode                  9.17                          9.18                          Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013c                         Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.34.1                        Radu Moisan <radu.moisan@intel.com>               
ed                            1.7                           1.8                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
atk                           2.6.0                         2.8.0                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
kmod                          9                             13                            Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec81        2.2.1+gitAUTOINC+b1c0ba9      Radu Moisan <radu.moisan@intel.com>               
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
babeltrace                    1.1+gitAUTOINC+c99b191        1.1.0+gitAUTOINC+2859bff      Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.5.1                         1.5.2                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.29.0                        7.30.0                        Radu Moisan <radu.moisan@intel.com>               
diffutils                     3.2                           3.3                           Radu Moisan <radu.moisan@intel.com>               
gsettings-desktop-schemas     3.7.3                         3.8.2                         No Maintainer info                                
harfbuzz                      0.9.12                        0.9.16                        No Maintainer info                                
gtk-update-icon-cache-native  3.4.4                         3.9.0                         No Maintainer info                                
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     No Maintainer info                                
gtk+3                         3.4.4                         3.9.0                         No Maintainer info                                
dbus-ptest                    1.6.8                         1.7.2                         No Maintainer info                                
wayland                       1.0.6                         1.1.0                         No Maintainer info                                
weston                        1.0.6                         1.1.0                         No Maintainer info                                
ltp                           20130109                      20130503                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.10-0.20120706             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.92                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.0                         1.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xwininfo                      1.1.2                         1.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.44                        2.4.45                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.07                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.2-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.0                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.5.99.901                    Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 649                           Jessica Zhang <jessica.zhang@intel.com>           
trace-cmd                     1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.0.7                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.5                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf       0.11+gitAUTOINC+77415f5       Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.8                         1.7.2                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
alsa-utils-alsaconf           1.0.26                        1.0.27                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-good              0.10.31                       1.0.7                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
connman                       1.13                          1.14                          Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.0                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugin-bluetooth          4.101                         5.5                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.21                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.3.0                         1.4.0                         Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75        0.0+gitAUTOINC+07ea598        Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.1                        2.37.0                        Cristian Iorga <cristian.iorga@intel.com>         http://ftp.gnome.org/pub/GNOME/sources/glib/2.36/glib-2.36.1.tar.xz
gst-plugins-base              0.10.36                       1.0.7                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.0.7                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.0.7                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           3.99.1                        Cristian Iorga <cristian.iorga@intel.com>         
puzzles                       r9765                         9840                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.15                       3.9.0                         Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
apt                           0.9.7.8                       0.9.8.1                       Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
settings-daemon               0.0+gitAUTOINC+0f174f4        0.0+gitAUTOINC+9a99528        Constantin Musca <constantinx.musca@intel.com>    
libtasn1                      2.14                          3.3                           Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
mesa                          9.0.2                         9.1.2                         Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.5.99.901                    Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.42.1                        2.43.1                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.26.5                        2.29.0                        Constantin Musca <constantinx.musca@intel.com>    http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.26/gdk-pixbuf-2.26.5.tar.xz
pixman                        0.29.4                        0.30.0                        Constantin Musca <constantinx.musca@intel.com>    
matchbox-terminal             0.0+gitAUTOINC+3fc25cb        0.0+gitAUTOINC+452bca2        Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.8.2                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=archive
freetype                      2.4.11                        2.4.12                        Constantin Musca <constantinx.musca@intel.com>    
gnome-icon-theme              2.31.0                        3.8.2                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
webkit-gtk                    1.8.3                         2.0.2                         Constantin Musca <constantinx.musca@intel.com>    http://www.webkitgtk.org/releases/webkit-1.8.3.tar.xz
matchbox-keyboard             0.0+gitAUTOINC+b38f240        0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb60       65311+git-AUTOINC+0d8e847     Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.9.2                         Bruce Ashfield <bruce.ashfield@windriver.com>     
lttng-modules                 2.1.1                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
diffstat                      1.55                          1.57                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-dbus                   1.1.1                         1.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.3.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e4aa70f        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
btrfs-tools                   0.19+gitAUTOINC+fdb6c04       0.20-rc1+gitAUTOINC+89fe      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-ust                     2.1.2                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.17.3                        5.17.3-5                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.9.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bdwgc                         7.2                           7.2d                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.13.2                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.2.2                       1.8.2.3                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
sudo                          1.8.6p7                       1.8.6p8                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openssh                       6.2p1                         6.2p2                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
linuxdoc-tools-native         0.9.66                        0.9.69                        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
libpng                        1.6.1                         1.6.2                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       1.4.3 and later changes the A...
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 115
Upgrade Total Count: 137
The based commit merge time is:
Sat May 18 11:37:55 2013 +0300
The based commit is:
commit 1ba7d338abfa0516f545880ed0ccf7e7d7b2bbfc
Author: Ross Burton <ross.burton@intel.com>
Date:   Thu May 16 17:57:13 2013 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--J2SCkAp4GZ/dPZZf--
