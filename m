Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97245E00751; Sun, 28 Dec 2014 18:01:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NAME_EMAIL_DIFF autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.1 NAME_EMAIL_DIFF Sender NAME is an unrelated email address
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5019EE00751
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:01:10 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 4E2A5A409E; Mon, 29 Dec 2014 02:01:10 +0000 (UTC)
Date: Mon, 29 Dec 2014 02:01:10 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141229020110.GA21645@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Mon, 29 Dec 2014 02:01:12 -0000
X-Groupsio-MsgNum: 22740
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
chkconfig-alternatives-native 1.3.59+AUTOINC+cd437ecbd8     1.3.59+gitAUTOINC+cd437e      Wenzong Fan <wenzong.fan@windriver.com>           
ccache                        3.1.9                         3.2.1                         Wenzong Fan <wenzong.fan@windriver.com>           
chkconfig                     1.3.58                        1.3.63                        Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.3.2                      0.19.4                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.1.0+gitAUTOINC+2cf87e6      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+7c98bd6624     Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
lsbinitscripts                9.56.1                        9.60                          Saul Wold <sgw@linux.intel.com>                   
lame                          3.99.5                        3.99                          Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+72a9beb3f4     Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+92686f2      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2014.07+gitAUTOINC+5241      2014.10+gitAUTOINC+d8bec      Saul Wold <sgw@linux.intel.com>                   
dtc                           1.4.0+gitAUTOINC+65cc4d2      1.4.1+gitAUTOINC+302fca9      Saul Wold <sgw@linux.intel.com>                   
libaio                        0.3.109                       0.3.110                       Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.6+gitAUTOINC+7682e51d2e     2.6+gitAUTOINC+7c98bd6624     Saul Wold <sgw@linux.intel.com>                   
cross-localedef-native        2.20                          28+gitAUTOINC+f80af76648      Saul Wold <sgw@linux.intel.com>                   
libassuan                     2.1.2                         2.2.0                         Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
build-appliance-image         8.0                           12.0.0+gitAUTOINC+02627a      Saul Wold <sgw@linux.intel.com>                   
liburcu                       0.8.5                         0.8.6                         Saul Wold <sgw@linux.intel.com>                   
rgb                           1.0.5                         1.0.6                         Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.4+gitAUTOINC+9039582      1.2.4+gitAUTOINC+a53ed92      Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+24efb0      Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
update-rc.d                   0.7                           0.7+gitAUTOINC+eca680ddf2     Saul Wold <sgw@linux.intel.com>                   
usbutils                      007                           008                           Saul Wold <sgw@linux.intel.com>                   
libffi                        3.1                           3.2.1                         Saul Wold <sgw@linux.intel.com>                   
libksba                       1.3.1                         1.3.2                         Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.37                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.16.2                        1.16.99.901                   Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.24                       3.15.3                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
xcb-util-image                0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.21.2                        Ross Burton <ross.burton@intel.com>               
xkbcomp                       1.2.4                         1.3.0                         Ross Burton <ross.burton@intel.com>               
xcb-util                      0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.2                           Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.6                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.6.0                         Ross Burton <ross.burton@intel.com>               
libsoup-2.4                   2.46.0                        2.49.1                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.2                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pango                         1.36.6                        1.36.8                        Ross Burton <ross.burton@intel.com>               
xf86-video-omapfb             0.1.1+gitrAUTOINC+28c006      0.1.1+gitAUTOINC+             Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.15.3                        Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.15.3                        Ross Burton <ross.burton@intel.com>               
mesa                          10.3.4                        10.4.0                        Ross Burton <ross.burton@intel.com>               
hicolor-icon-theme            0.13                          0.14                          Ross Burton <ross.burton@intel.com>               
xf86-video-modesetting        0.8.1                         0.9.0                         Ross Burton <ross.burton@intel.com>               
gtk+3                         3.12.2                        3.15.3                        Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitAUTOINC+5d3d49b      Ross Burton <ross.burton@intel.com>               
xinit                         1.3.3                         1.3.4                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.917                      Ross Burton <ross.burton@intel.com>               
fontconfig                    2.11.1                        2.11.91                       Ross Burton <ross.burton@intel.com>               
freetype                      2.5.3                         2.5.4                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.43.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
libpng                        1.6.13                        1.6.16                        Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.39.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.15.3                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.12                          2.13                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.8.0                         1.8.1                         Ross Burton <ross.burton@intel.com>               
libpng12                      1.2.51                        1.2.52                        Ross Burton <ross.burton@intel.com>               
xtrans                        1.3.4                         1.3.5                         Ross Burton <ross.burton@intel.com>               
xf86-input-evdev              2.9.0                         2.9.1                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d6e9     Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.7.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitAUTOINC+42ffd36eb3     Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f41ab     Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         3.0.0                         Ross Burton <ross.burton@intel.com>               
icu                           53.1                          55                            Ross Burton <ross.burton@intel.com>               
xcb-util-keysyms              0.3.9                         0.4.0                         Ross Burton <ross.burton@intel.com>               
cairo                         1.12.16                       5c-1.5                        Ross Burton <ross.burton@intel.com>               
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.4.1+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
libfm                         1.1.2.2                       1.2.3                         Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007fc4     Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.43.2                        Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.24                          2.25                          Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
nativesdk-libtool             2.4.2                         2.4.4                         Robert Yang <liezhi.yang@windriver.com>           
libtool                       2.4.2                         2.4.4                         Robert Yang <liezhi.yang@windriver.com>           
git                           2.2.0                         2.2.1                         Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
lttng-modules                 2.5.0                         2.5.2+gitAUTOINC+16d7431      Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.4.0                         Richard Purdie <richard.purdie@linuxfoundation.org>
glibc-initial                 2.20                          28+gitAUTOINC+f80af76648      Richard Purdie <richard.purdie@linuxfoundation.org>
lttng-tools                   v2.5.0                        2.5.3+gitAUTOINC+75d9667      Richard Purdie <richard.purdie@linuxfoundation.org>
gcc                           4.9.1                         4.9.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+3d62e44b7c     Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+44cdb6      3.17.3+gitAUTOINC+e4c122      Richard Purdie <richard.purdie@linuxfoundation.org>
lttng-ust                     2.5.0                         2.5.2+gitAUTOINC+85d1d27      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.14.0                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
subversion                    1.8.10                        1.8.11                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.2rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
glibc                         2.20                          2.20+gitAUTOINC+f80af766      Richard Purdie <richard.purdie@linuxfoundation.org>two glibc plugins are based o...
gpgme                         1.4.3                         1.5.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.66                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libevdev                      1.2.2                         1.3.2                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.17                          Paul Eggleton <paul.eggleton@linux.intel.com>     
qt-mobility-embedded          1.2.0                         1.2.2-20120224                Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        11.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
augeas                        1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
openssh                       6.6p1                         6.7p1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dosfstools                    2.11                          3.0.26                        Paul Eggleton <paul.eggleton@linux.intel.com>     
docbook-sgml-dtd-4.1-native   4.1                           41                            Paul Eggleton <paul.eggleton@linux.intel.com>     PRS Reports Incorrectly       
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+40bb568      Paul Eggleton <paul.eggleton@linux.intel.com>     
docbook-sgml-dtd-3.1-native   3.1                           31                            Paul Eggleton <paul.eggleton@linux.intel.com>     PRS Reports Incorrectly       
ethtool                       3.16                          3.18                          Paul Eggleton <paul.eggleton@linux.intel.com>     
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
qt-mobility-x11               1.2.0                         1.2.2-20120224                Paul Eggleton <paul.eggleton@linux.intel.com>     
cmake                         2.8.12.2                      3.1.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
mmc-utils                     0.1                           0.1+gitAUTOINC+f4eb241519     No Maintainer info                                
libinput                      0.6.0                         0.7.0                         No Maintainer info                                
dbus-test                     1.8.10                        1.9.4                         No Maintainer info                                
eglinfo-fb                    1.0                           1.0+gitAUTOINC+223817ee37     No Maintainer info                                
mesa-gl                       10.3.4                        10.4.0                        No Maintainer info                                
python-smmap                  0.8.2                         0.8.3                         No Maintainer info                                
python-gitdb                  0.5.4                         0.6.0                         No Maintainer info                                
waffle                        1.3.0                         1.5.0                         No Maintainer info                                
gnu-efi                       3.0u                          3.0w                          No Maintainer info                                
json-c                        0.11                          0.12                          No Maintainer info                                
eglinfo-x11                   1.0                           1.0+gitAUTOINC+223817ee37     No Maintainer info                                
python-async                  0.6.1                         0.6.2                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      0.14.6+gitAUTOINC+3ab811      No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
prelink                       1.0+gitAUTOINC+faa069deec     1.0+gitAUTOINC+3ceadf992d     Mark Hatle <mark.hatle@windriver.com>             
python-nose                   1.2.1                         1.3.4                         Khem Raj <raj.khem@gmail.com>                     
python-mako                   0.9.1                         1.0.0                         Khem Raj <raj.khem@gmail.com>                     
python-numpy                  1.7.0                         1.9.1                         Khem Raj <raj.khem@gmail.com>                     
python3-distribute            0.6.32                        0.7.3                         Khem Raj <raj.khem@gmail.com>                     
bind                          9.9.5                         21                            Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
xmlto                         0.0.25                        0.0.26                        Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.160                         0.161                         Hongxu Jia <hongxu.jia@windriver.com>             
man                           1.6g                          2.5a6                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
bash                          4.3                           4.3.30                        Hongxu Jia <hongxu.jia@windriver.com>             
createrepo                    0.4.11                        0.10.3                        Hongxu Jia <hongxu.jia@windriver.com>             Versions after 0.9.* use YUM,...
rpcbind                       0.2.1                         0.2.2                         Hongxu Jia <hongxu.jia@windriver.com>             
gnupg                         2.0.26                        2.1.1                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.2                         Hongxu Jia <hongxu.jia@windriver.com>             
dhcp                          4.3.0                         4.3.1                         Hongxu Jia <hongxu.jia@windriver.com>             
libxml-parser-perl            2.41                          2.43                          Hongxu Jia <hongxu.jia@windriver.com>             
groff                         1.22.2                        1.22.3                        Hongxu Jia <hongxu.jia@windriver.com>             1.18.1.4 is latest GPLv2 Vers...
gummiboot                     43+gitAUTOINC+4062c51075      43+gitAUTOINC+f4ba9b33fd      Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+79e08f8edb     Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f62596a     Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
rt-tests                      0.89                          0.89+gitAUTOINC+c5f2a443      Darren Hart <dvhart@linux.intel.com>              
hwlatdetect                   0.89                          0.89+gitAUTOINC+c5f2a443      Darren Hart <dvhart@linux.intel.com>              
syslinux                      6.01                          6.03                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-good     1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
connman-gnome                 0.7                           0.7+gitAUTOINC+fe1a60aa30     Cristian Iorga <cristian.iorga@intel.com>         
qemu                          2.1.2                         2.2.0                         Cristian Iorga <cristian.iorga@intel.com>         
flac                          1.3.0                         1.3.1                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.27                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.25                          5.27                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.14                          0.15                          Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.26                          1.27                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.35                        0.9.37                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
quota                         4.01                          4.02                          Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.17.0                        3.18.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.27                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.31                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
libatomics-ops                7.2                           7.4.0                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.4.1                         1.4.5                         Cristian Iorga <cristian.iorga@intel.com>         
libical                       1.0.0                         1.0.1                         Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.15                          1.16                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.85                       Cristian Iorga <cristian.iorga@intel.com>         
speex                         1.2rc1                        1.2rc2                        Cristian Iorga <cristian.iorga@intel.com>         
neon                          0.30.0                        0.30.1                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+0e5f63771d     0.0+gitAUTOINC+78535e88bf     Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    5.0                           5.99.2                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.8.10                        1.9.4                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.22.1                        1.23.0                        Chen Qi <Qi.Chen@windriver.com>                   
zip                           3.0                           30                            Chen Qi <Qi.Chen@windriver.com>                   
sudo                          1.8.11p2                      1.8.11                        Chen Qi <Qi.Chen@windriver.com>                   
util-linux                    2.24.2                        2.25.2                        Chen Qi <Qi.Chen@windriver.com>                   
console-tools                 0.3.2                         1999.03.02                    Chen Qi <Qi.Chen@windriver.com>                   
kmod                          19+gitAUTOINC+fd56638aed      19+gitAUTOINC+dea2dfee9b      Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.2                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
curl                          7.38.0                        7.39.0                        Chen Qi <Qi.Chen@windriver.com>                   
sysklogd                      1.5                           1.5.1                         Chen Qi <Qi.Chen@windriver.com>                   
guilt-native                  git                           0.35+gitrAUTOINC+6fe15cb      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.17.7                        3.18.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+23345b8846     0.2+gitAUTOINC+f36581291d     Bruce Ashfield <bruce.ashfield@windriver.com>     
sqlite3                       3.8.6.0                       3080704                       An?bal Lim?n <anibal.limon@linux.intel.com>       
unzip                         6.0                           60                            Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
gnome-icon-theme              2.31.0                        3.12.0                        Alejandro Hernandez <alejandro.hernandez@linux.intel.com>waiting for the sato gtk3 port
midori                        0.5.8                         0.5.9                         Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Upgradable Count: 188
Upgrade Total Count: 209
The based commit merge time is:
Sat Dec 27 22:53:40 2014 +0000
The based commit is:
commit 6dde745bf90d9f9e52af3779df28879d91cbc64c
Author: Armin Kuster <akuster808@gmail.com>
Date:   Fri Dec 26 08:51:53 2014 -0800
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--lrZ03NoBR/3+SXJZ--
