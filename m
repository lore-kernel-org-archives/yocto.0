Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE93E013DF
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 19:00:39 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id C129840801; Mon, 12 Aug 2013 02:00:39 +0000 (UTC)
Date: Mon, 12 Aug 2013 02:00:39 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130812020039.GA3371@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 12 Aug 2013 02:00:39 -0000
X-Groupsio-MsgNum: 15426
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
lsb                           4.1                           1.4                           Yi Zhao <yi.zhao@windriver.com>                   
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3                        Wenzong Fan <wenzong.fan@windriver.com>           
systemtap-uprobes             2.1+gitAUTOINC+addec81        2.3+gitAUTOINC+0f5d747        Tom Zanussi <tom.zanussi@intel.com>               
swabber-native                0.0+gitAUTOINC+a079239        0.0+gitAUTOINC+2d1fe36        Saul Wold <sgw@linux.intel.com>                   
libusb-compat                 0.1.4                         0.1.5                         Saul Wold <sgw@linux.intel.com>                   
boost                         1.53.0                        1.54.0                        Saul Wold <sgw@linux.intel.com>                   
lsbinitscripts                9.46                          9.48                          Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.7                         4.8.10                        Saul Wold <sgw@linux.intel.com>                   
xorg-cf-files                 1.0.4                         1.0.5                         Saul Wold <sgw@linux.intel.com>                   
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    1.0.0+svn6637                 5914                          Saul Wold <sgw@linux.intel.com>                   
libcheck                      0.9.9                         0.9.10                        Saul Wold <sgw@linux.intel.com>                   
consolekit                    0.4.5                         0.4.6                         Saul Wold <sgw@linux.intel.com>                   
glew                          1.9.0                         1.10.0                        Saul Wold <sgw@linux.intel.com>                   
libidn                        1.26                          1.28                          Saul Wold <sgw@linux.intel.com>                   
nspr                          4.9.6                         4.10                          Saul Wold <sgw@linux.intel.com>                   
pkgconfig                     0.25                          0.28                          Saul Wold <sgw@linux.intel.com>                   removes glib-conf, adds circu...
kconfig-frontends             3.8.0                         3.10.0.0                      Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
dpkg                          1.16.10                       1.17.1                        Saul Wold <sgw@linux.intel.com>                   
dtc                           1.3.0+gitAUTOINC+033089f      1.4.0+gitAUTOINC+6d109a2      Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.0                        2.37.5                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
docbook-sgml-dtd-4.1-native   1.0                           41                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
docbook-sgml-dtd-3.1-native   1.0                           31                            Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.40.13                       1.43.3                        Saul Wold <sgw@linux.intel.com>                   
msmtp                         1.4.30                        1.4.31                        Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.19                        2.0.20                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.1                         1.5.3                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.3.0                         0.3.1                         Saul Wold <sgw@linux.intel.com>                   
sysstat                       10.1.5                        10.1.6                        Saul Wold <sgw@linux.intel.com>                   
cracklib                      2.8.22                        2.9.0                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.21                        3.2.22                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
resolvconf                    1.71                          1.74                          Saul Wold <sgw@linux.intel.com>                   
libxml2                       2.9.0                         2.9.1                         Saul Wold <sgw@linux.intel.com>                   
oprofileui-server             0.0+gitAUTOINC+82ecf8c        0.0+gitAUTOINC+f168b8b        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
texinfo                       4.13a                         5.1                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
sqlite3                       3071602                       3071700                       Saul Wold <sgw@linux.intel.com>                   
mklibs-native                 0.1.34                        0.1.38                        Saul Wold <sgw@linux.intel.com>                   
build-appliance-image         8.0                           9.0.1.                        Saul Wold <sgw@linux.intel.com>                   
tzcode-native                 2013b                         2013d                         Saul Wold <sgw@linux.intel.com>                   
socat                         1.7.2.1                       1.7.2.2                       Saul Wold <sgw@linux.intel.com>                   2.0.0 is beta                 
desktop-file-utils-native     0.15                          0.21                          Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.50                          3.53                          Saul Wold <sgw@linux.intel.com>                   
sato-screenshot               0.1+gitAUTOINC+c792e4e        0.1+gitAUTOINC+3a9688e        Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
docbook-sgml-dtd-4.5-native   1.0                           4.5                           Saul Wold <sgw@linux.intel.com>                   PRS Reports Incorrectly       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
cmake                         2.8.10.2                      2.8.11.2                      Saul Wold <sgw@linux.intel.com>                   
clutter-1.8                   1.8.4                         1.14.4                        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.8               1.4.6                         1.6.0                         Ross Burton <ross.burton@intel.com>               
cogl                          1.8.2                         1.14.0                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.8               0.11.4                        1.4.2                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
busybox                       1.20.2                        1.21.1                        Radu Moisan <radu.moisan@intel.com>               
iputils                       s20101006                     s20121221                     Radu Moisan <radu.moisan@intel.com>               
unzip                         6.0                           60                            Radu Moisan <radu.moisan@intel.com>               
elfutils                      0.148                         1.7.4                         Radu Moisan <radu.moisan@intel.com>               
rxvt-unicode                  9.17                          9.18                          Radu Moisan <radu.moisan@intel.com>               
gawk                          4.0.2                         4.1.0                         Radu Moisan <radu.moisan@intel.com>               
apr                           1.4.6                         1.4.8                         Radu Moisan <radu.moisan@intel.com>               
zip                           3.0                           30                            Radu Moisan <radu.moisan@intel.com>               
tzdata                        2013b                         2013d                         Radu Moisan <radu.moisan@intel.com>               
pango                         1.32.5                        1.35.0                        Radu Moisan <radu.moisan@intel.com>               
opkg                          0.1.8+svnr649                 653                           Radu Moisan <radu.moisan@intel.com>               
ed                            1.7                           1.9                           Radu Moisan <radu.moisan@intel.com>               
u-boot-fw-utils               2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
mkfontscale                   1.1.0                         1.1.1                         Radu Moisan <radu.moisan@intel.com>               
atk                           2.6.0                         2.9.3                         Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2013.07                       Radu Moisan <radu.moisan@intel.com>               
imake                         1.0.5                         1.0.6                         Radu Moisan <radu.moisan@intel.com>               
kmod                          9                             14                            Radu Moisan <radu.moisan@intel.com>               
systemtap                     2.1+gitAUTOINC+addec81        2.3+gitAUTOINC+0f5d747        Radu Moisan <radu.moisan@intel.com>               
libunique                     1.1.6                         3.0.2                         Radu Moisan <radu.moisan@intel.com>               Do not upgrade to version: 2....
liburcu                       0.7.6                         0.7.7                         Radu Moisan <radu.moisan@intel.com>               
libdmx                        1.1.2                         1.1.3                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    1.1+gitAUTOINC+c99b191        1.1.1+gitAUTOINC+ea68b18      Radu Moisan <radu.moisan@intel.com>               
apr-util                      1.5.1                         1.5.2                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.29.0                        7.31.0                        Radu Moisan <radu.moisan@intel.com>               
diffutils                     3.2                           3.3                           Radu Moisan <radu.moisan@intel.com>               
usbutils                      006                           007                           Radu Moisan <radu.moisan@intel.com>               
neard                         0.10+gitAUTOINC+eb486bf       0.12+gitAUTOINC+a8f3380       No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.5                         No Maintainer info                                
alsa-utils-alsaconf           1.0.26                        1.0.27.2                      No Maintainer info                                
sbc                           1.0                           1.1                           No Maintainer info                                
harfbuzz                      0.9.12                        0.9.19                        No Maintainer info                                
gtk-update-icon-cache-native  3.4.4                         3.9.10                        No Maintainer info                                
xf86-video-modesetting        0.6.0                         0.8.0                         No Maintainer info                                
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     No Maintainer info                                
gtk+3                         3.4.4                         3.9.10                        No Maintainer info                                
dbus-ptest                    1.6.8                         1.7.4                         No Maintainer info                                
wayland                       1.0.6                         1.2.0                         No Maintainer info                                
bjam-native                   1.53.0                        1.54.0                        No Maintainer info                                
weston                        1.0.6                         1.2.0                         No Maintainer info                                
ltp                           20130109                      20130503                      Mihai Lindner <mihaix.lindner@linux.intel.com>    
rpm                           5.4.9                         5.4.12-0.20130725             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vmware             13.0.0                        13.0.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.3                        2.21.14                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-keyboard           1.6.2                         1.7.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xdpyinfo                      1.3.0                         1.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-mouse              1.8.1                         1.9.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xrandr                        1.4.0                         1.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
libpciaccess                  0.13.1                        0.13.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.8                           2.9                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.6.3                         1.7.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.7.3                         2.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xwininfo                      1.1.2                         1.1.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xproto                        7.0.23                        7.0.24                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.42                        2.4.46                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
libxt                         1.1.3                         1.1.4                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xhost                         1.0.5                         1.0.6                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.07                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.3-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.1                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 653                           Jessica Zhang <jessica.zhang@intel.com>           
trace-cmd                     1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd        2.2.1+gitAUTOINC+8e13c90      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      4.03                          4.07                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.14.0                        5.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-idle                0.1.14                        0.1.16                        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.17                        1.4.19.1                      Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.26                        1.0.27.2                      Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.8                         1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
gst-plugins-good              0.10.31                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
connman                       1.13                          1.16                          Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
telepathy-glib                0.20.1                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.8.0                         3.10.0                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.7                           Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-24.2                     1.60-25                       Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.3.0                         1.4.0                         Cristian Iorga <cristian.iorga@intel.com>         
dbus-wait                     0.1+gitAUTOINC+1a3e134        0.1+gitAUTOINC+6cc6077        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75        0.0+gitAUTOINC+931e446        Cristian Iorga <cristian.iorga@intel.com>         
netbase                       5.0                           5.1                           Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.71                       0.10.72                       Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.29.6                        0.30.0                        Cristian Iorga <cristian.iorga@intel.com>         
libogg                        1.3.0                         1.3.1                         Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.0                        2.37.5                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
gst-plugins-base              0.10.36                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       1.1.3                         Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
pulseaudio                    3.0                           4.0                           Cristian Iorga <cristian.iorga@intel.com>         
gpgme                         1.4.0                         1.4.2                         Constantin Musca <constantinx.musca@intel.com>    
libxfont                      1.4.5                         1.4.6                         Constantin Musca <constantinx.musca@intel.com>    
puzzles                       r9765                         9976                          Constantin Musca <constantinx.musca@intel.com>    
gtk+                          2.24.15                       3.9.10                        Constantin Musca <constantinx.musca@intel.com>    Do not upgrade to version: 2....
gnutls                        2.12.21                       3.1.5                         Constantin Musca <constantinx.musca@intel.com>    
libgpg-error                  1.11                          1.12                          Constantin Musca <constantinx.musca@intel.com>    
libxext                       1.3.1                         1.3.2                         Constantin Musca <constantinx.musca@intel.com>    
apt                           0.9.7.8                       0.9.9.4                       Constantin Musca <constantinx.musca@intel.com>    
libxcb                        1.9                           1.9.1                         Constantin Musca <constantinx.musca@intel.com>    
qemu                          1.4.0                         1.5.2                         Constantin Musca <constantinx.musca@intel.com>    
libxrandr                     1.4.0                         1.4.1                         Constantin Musca <constantinx.musca@intel.com>    
settings-daemon               0.0+gitAUTOINC+0f174f4        0.0+gitAUTOINC+9a99528        Constantin Musca <constantinx.musca@intel.com>    
libtasn1                      2.14                          3.3                           Constantin Musca <constantinx.musca@intel.com>    
libxvmc                       1.0.7                         1.0.8                         Constantin Musca <constantinx.musca@intel.com>    
librsvg                       2.32.1                        2.37.0                        Constantin Musca <constantinx.musca@intel.com>    
mesa                          9.0.2                         9.1.6                         Constantin Musca <constantinx.musca@intel.com>    
libxfixes                     5.0                           5.0.1                         Constantin Musca <constantinx.musca@intel.com>    
libx11                        1.5.0                         1.6.1                         Constantin Musca <constantinx.musca@intel.com>    
pciutils                      3.1.10                        3.2.0                         Constantin Musca <constantinx.musca@intel.com>    
libuser                       0.58                          0.59                          Constantin Musca <constantinx.musca@intel.com>    
libsoup-2.4                   2.40.2                        2.43.5                        Constantin Musca <constantinx.musca@intel.com>    
gdk-pixbuf                    2.26.5                        2.29.3                        Constantin Musca <constantinx.musca@intel.com>    2.27.2 is unstable            
pixman                        0.29.2                        0.30.0                        Constantin Musca <constantinx.musca@intel.com>    
augeas                        1.0.0                         1.1.0                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-terminal             0.0+gitAUTOINC+3fc25cb        0.0+gitAUTOINC+452bca2        Constantin Musca <constantinx.musca@intel.com>    
libxxf86dga                   1.1.3                         1.1.4                         Constantin Musca <constantinx.musca@intel.com>    
gnome-desktop                 2.32.1                        3.9.5                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
ethtool                       3.8                           3.10                          Constantin Musca <constantinx.musca@intel.com>    
freetype                      2.4.11                        2.5.0                         Constantin Musca <constantinx.musca@intel.com>    
gnome-icon-theme              2.31.0                        3.9.5                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Constantin Musca <constantinx.musca@intel.com>    2.00.0 - fontforge package re...
libxau                        1.0.7                         1.0.8                         Constantin Musca <constantinx.musca@intel.com>    
js                            1.7.0+1.8.0rc1                185-1.0.0                     Constantin Musca <constantinx.musca@intel.com>    
libxxf86vm                    1.1.2                         1.1.3                         Constantin Musca <constantinx.musca@intel.com>    
gnome-keyring                 2.32.1                        3.9.1                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
libassuan                     2.1.0                         2.1.1                         Constantin Musca <constantinx.musca@intel.com>    
libgnome-keyring              2.32.0                        3.9.1                         Constantin Musca <constantinx.musca@intel.com>    waiting for the sato gtk3 port
pcmanfm                       1.1.0                         1.1.1                         Constantin Musca <constantinx.musca@intel.com>    
webkit-gtk                    1.8.3                         2.1.3                         Constantin Musca <constantinx.musca@intel.com>    >= 1.10.2 needs ruby          
libxtst                       1.2.1                         1.2.2                         Constantin Musca <constantinx.musca@intel.com>    
libfontenc                    1.1.1                         1.1.2                         Constantin Musca <constantinx.musca@intel.com>    
libxi                         1.7                           1.7.2                         Constantin Musca <constantinx.musca@intel.com>    
libxv                         1.0.7                         1.0.9                         Constantin Musca <constantinx.musca@intel.com>    
videoproto                    2.3.1                         2.3.2                         Constantin Musca <constantinx.musca@intel.com>    
libxres                       1.0.6                         1.0.7                         Constantin Musca <constantinx.musca@intel.com>    
libxcursor                    1.1.13                        1.1.14                        Constantin Musca <constantinx.musca@intel.com>    
libxinerama                   1.1.2                         1.1.3                         Constantin Musca <constantinx.musca@intel.com>    
libfm                         1.1.0                         1.1.1                         Constantin Musca <constantinx.musca@intel.com>    
libxrender                    0.9.7                         0.9.8                         Constantin Musca <constantinx.musca@intel.com>    
matchbox-keyboard             0.0+gitAUTOINC+b38f240        0.0+gitAUTOINC+a17b113        Constantin Musca <constantinx.musca@intel.com>    
json-glib                     0.15.2                        0.16.0                        Constantin Musca <constantinx.musca@intel.com>    
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb60       65311+git-AUTOINC+0d8e847     Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10.5                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lttng-modules                 2.1.1                         2.3.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
diffstat                      1.55                          1.57                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-dbus                   1.1.1                         1.2.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
kexec-tools                   2.0.3                         2.0.4                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcl                           8.5.13                        8.6.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
flex                          2.5.35                        2.5.37                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python                        2.7.3                         3.4.0a1                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gdb                           7.5.1                         7.6                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
libpcre                       8.32                          8.33                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
guile                         2.0.7                         2.0.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-scons                  2.2.0                         2.3.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
powertop                      2.3                           2.4                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Do not upgrade to version 1.9...
strace                        4.7                           4.8                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e4aa70f        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
btrfs-tools                   0.19+gitAUTOINC+fdb6c04       0.20-rc1+gitAUTOINC+89fe      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-ust                     2.1.2                         2.3.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
autogen-native                5.12                          5.12-5                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.7                           3.0                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
byacc                         20121003                      20130304                      Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
python-pygobject              2.27.91                       3.9.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   Newer versions of python-pygo...
binutils                      2.23.1                        2.23.2                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bdwgc                         7.2                           7.2d                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
subversion                    1.7.8                         1.8.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gmp                           5.1.0                         5.1.0a                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
makedepend                    1.0.4                         1.0.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
intltool                      0.50.2                        0.51.0                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.6                        1.14                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
git                           1.8.1.4                       1.8.3.4                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
libmpc                        0.8.2                         1.0.1                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
oprofileui                    0.0+gitAUTOINC+82ecf8c        0.0+gitAUTOINC+f168b8b        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
nasm                          2.10.07                       2.10.09                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
oprofile                      0.9.8                         0.9.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
mpfr                          3.1.1                         3.1.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
sudo                          1.8.6p7                       1.8.7                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openjade-native               1.3.2                         1.3.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
openssh                       6.2p1                         6.2p2                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
linuxdoc-tools-native         0.9.66                        0.9.69                        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
libpng                        1.6.1                         1.6.3                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       1.4.3 and later changes the A...
nfs-utils                     1.2.7                         1.2.8                         Andrei Dinu <andrei.adrianx.dinu@intel.com>       
gzip                          1.5                           1.6                           Andrei Dinu <andrei.adrianx.dinu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Andrei Dinu <andrei.adrianx.dinu@intel.com>       
cdrtools-native               2.01                          3.00                          Andrei Dinu <andrei.adrianx.dinu@intel.com>       
e2fsprogs                     1.42.7                        1.42.8                        Andrei Dinu <andrei.adrianx.dinu@intel.com>       
Upgradable Count: 215
Upgrade Total Count: 253
The based commit merge time is:
Wed Aug 7 07:43:47 2013 +0100
The based commit is:
commit f63e7f4323368c0d6fe7a1d44393a7e15652d4f2
Author: Saul Wold <sgw@linux.intel.com>
Date:   Tue Aug 6 13:55:28 2013 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--LQksG6bCIzRHxTLp
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--LQksG6bCIzRHxTLp--
