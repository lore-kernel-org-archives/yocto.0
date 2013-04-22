Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCA6E014ED
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 20:39:41 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id AD1DF428B9; Mon, 22 Apr 2013 03:39:41 +0000 (UTC)
Date: Mon, 22 Apr 2013 03:39:41 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130422033941.GA8966@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Apr 2013 03:39:41 -0000
X-Groupsio-MsgNum: 13318
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline

--Kj7319i9nmIyA2yE
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
swabber-native                0.0+gitAUTOINC+a079239        0.0+gitAUTOINC+2d1fe36        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.45                          9.46                          Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    1.0.0+svn6637                 5914                          Saul Wold <sgw@linux.intel.com>                   
libcheck                      0.9.9                         0.9.10                        Saul Wold <sgw@linux.intel.com>                   
mesa-demos                    8.0.1                         8.1.0                         Saul Wold <sgw@linux.intel.com>                   
nspr                          4.9.5                         4.9.6                         Saul Wold <sgw@linux.intel.com>                   
cups                          1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
pkgconfig                     0.25                          0.28                          Saul Wold <sgw@linux.intel.com>                   removes glib-conf, adds circu...
kconfig-frontends             3.8.0                         3.8.0.0                       Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.16.9                        1.16.10                       Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.28.7                        2.36.1                        Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.40.13                       1.41.2                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.4                        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.5.0                         1.5.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.2.0                         0.3.0                         Saul Wold <sgw@linux.intel.com>                   
sysstat                       10.1.4                        10.1.5                        Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.70                          1.71                          Saul Wold <sgw@linux.intel.com>                   
libxml2                       2.9.0                         2.9.1                         Saul Wold <sgw@linux.intel.com>                   
oprofileui-server             0.0+gitAUTOINC+82ecf8c        0.0+gitAUTOINC+f168b8b        Saul Wold <sgw@linux.intel.com>                   
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
sqlite3                       3071502                       3071602                       Saul Wold <sgw@linux.intel.com>                   
mklibs-native                 0.1.34                        0.1.35                        Saul Wold <sgw@linux.intel.com>                   
build-appliance-image         1.0                           8.0.1                         Saul Wold <sgw@linux.intel.com>                   
dhcp                          4.2.5                         4.2.5-P1                      Saul Wold <sgw@linux.intel.com>                   
less                          457                           458                           Saul Wold <sgw@linux.intel.com>                   
tzcode-native                 2013b                         2013c                         Saul Wold <sgw@linux.intel.com>                   
desktop-file-utils-native     0.15                          0.21                          Saul Wold <sgw@linux.intel.com>                   
docbook-sgml-dtd-4.5-native   1.0                           4.5                           Saul Wold <sgw@linux.intel.com>                   
file                          5.13                          5.14                          Saul Wold <sgw@linux.intel.com>                   
libffi                        3.0.11                        3.0.13                        Saul Wold <sgw@linux.intel.com>                   
mtdev                         1.1.2                         1.1.3                         Ross Burton <ross.burton@intel.com>               
busybox                       1.20.2                        1.21.0                        Radu Moisan <radu.moisan@intel.com>               
iputils                       s20101006                     s20121221                     Radu Moisan <radu.moisan@intel.com>               
dropbear                      2012.55                       2013.58                       Radu Moisan <radu.moisan@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
rxvt-unicode                  9.17                          9.18                          Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013c                         Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.34.0                        Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
atk                           2.6.0                         2.8.0                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.04                       Radu Moisan <radu.moisan@intel.com>               
kmod                          9                             13                            Radu Moisan <radu.moisan@intel.com>               
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
babeltrace                    1.1+gitAUTOINC+c99b191        1.1.0+gitAUTOINC+2859bff      Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.5.1                         1.5.2                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.29.0                        7.30.0                        Radu Moisan <radu.moisan@intel.com>               
diffutils                     3.2                           3.3                           Radu Moisan <radu.moisan@intel.com>               
bluez5                        5.3                           5.4                           No Maintainer info                                
neard                         0.10+gitAUTOINC+eb486bf       0.11+gitAUTOINC+77415f5       No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.8.0                         No Maintainer info                                
harfbuzz                      0.9.12                        0.9.16                        No Maintainer info                                
gtk-update-icon-cache-native  3.4.4                         3.8.1                         No Maintainer info                                
xf86-video-modesetting        0.6.0                         0.7.0                         No Maintainer info                                
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     No Maintainer info                                
gtk+3                         3.4.4                         3.8.1                         No Maintainer info                                
dbus-ptest                    1.6.8                         1.7.0                         No Maintainer info                                
wayland                       1.0.6                         1.1.0                         No Maintainer info                                
weston                        1.0.6                         1.1.0                         No Maintainer info                                
ltp                           20120903                      20130109                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.10-0.20120706             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.0                        13.0.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.3                        2.21.6                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-keyboard           1.6.2                         1.7.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-mouse              1.8.1                         1.9.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.92                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.6.3                         1.7.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.7.3                         2.8.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xproto                        7.0.23                        7.0.24                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.42                        2.4.44                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
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
gst-plugins-bad               0.10.23                       1.0.6                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.4                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.17                        1.4.18                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.8                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
gst-plugins-good              0.10.31                       1.0.6                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
connman                       1.12                          1.13                          Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.0                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugin-bluetooth          4.101                         5.4                           Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.21                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75        0.0+gitAUTOINC+9549081        Cristian Iorga <cristian.iorga@intel.com>         
netbase                       5.0                           5.1                           Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.34.3                        2.36.1                        Cristian Iorga <cristian.iorga@intel.com>         http://ftp.gnome.org/pub/GNOME/sources/glib/2.34/glib-2.34.3.tar.xz
gst-plugins-base              0.10.36                       1.0.6                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.0.6                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.0.6                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           3.99.1                        Cristian Iorga <cristian.iorga@intel.com>         
puzzles                       r9765                         9835                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.15                       3.8.1                         Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
gnutls                        2.12.21                       3.1.5                         Constantin Musca <constantinx.musca@intel.com>    
apt                           0.9.7.7                       0.9.7.8                       Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
settings-daemon               0.0+gitAUTOINC+0f174f4        0.0+gitAUTOINC+9a99528        Constantin Musca <constantinx.musca@intel.com>    
libtasn1                      2.14                          3.3                           Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
mesa                          9.0.2                         9.1.1                         Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.5.99.901                    Constantin Musca <constantinx.musca@intel.com>    
pciutils                      3.1.10                        3.2.0                         Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.40.2                        2.42.1                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.26.5                        2.28.1                        Constantin Musca <constantinx.musca@intel.com>    http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.26/gdk-pixbuf-2.26.5.tar.xz
matchbox-terminal             0.0+gitAUTOINC+3fc25cb        0.0+gitAUTOINC+452bca2        Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.8.1                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=archive
gnome-icon-theme              2.31.0                        3.8.0                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
gnome-keyring                 2.32.1                        3.8.1                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/gnome-keyring/2.32/gnome-keyring-2.32.1.tar.bz2;name=archive
libgnome-keyring              2.32.0                        3.8.0                         Constantin Musca <constantinx.musca@intel.com>    http://ftp.gnome.org/pub/GNOME/sources/libgnome-keyring/2.32/libgnome-keyring-2.32.0.tar.bz2;name=archive
webkit-gtk                    1.8.3                         2.0.1                         Constantin Musca <constantinx.musca@intel.com>    http://www.webkitgtk.org/releases/webkit-1.8.3.tar.xz
libxi                         1.7                           1.7.1                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-keyboard             0.0+gitAUTOINC+b38f240        0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
json-glib                     0.15.2                        0.16.0                        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb60       36+git-AUTOINC+329d52e        Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.8.8                         Bruce Ashfield <bruce.ashfield@windriver.com>     
lttng-modules                 2.1.1                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
diffstat                      1.55                          1.57                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
kexec-tools                   2.0.3                         2.0.4                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcl                           8.5.13                        8.6.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.3.1rc1                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
guile                         2.0.7                         2.0.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-scons                  2.2.0                         2.3.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e4aa70f        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
btrfs-tools                   0.19+gitAUTOINC+fdb6c04       0.20-rc1+gitAUTOINC+89fe      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-ust                     2.1.2                         2.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.12                          5.12-5                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.7                           2.7.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
byacc                         20121003                      20130304                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.8.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
binutils                      2.23.1                        2.23.2                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bdwgc                         7.2                           7.2d                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
subversion                    1.7.8                         1.7.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gmp                           5.1.0                         5.1.0a                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.13.1                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.1.4                       1.8.2.1                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
libmpc                        0.8.2                         1.0.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
oprofileui                    0.0+gitAUTOINC+82ecf8c        0.0+gitAUTOINC+f168b8b        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
mpfr                          3.1.1                         3.1.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
sudo                          1.8.6p7                       1.8.6p8                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openssh                       6.1p1                         6.2p1                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
linuxdoc-tools-native         0.9.66                        0.9.69                        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
pax-utils                     0.6                           0.7                           Andrei Dinu <andrei.adrianx.dinu@intel.com>       
cdrtools-native               2.01                          3.00                          Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 146
Upgrade Total Count: 169
The based commit merge time is:
Fri Apr 19 16:46:02 2013 -0700
The based commit is:
commit 995ae554b1a9708cc687a9167de0a791caf705f0
Author: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
Date:   Fri Apr 19 16:12:56 2013 +0300
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--Kj7319i9nmIyA2yE--
