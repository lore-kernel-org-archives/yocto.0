Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C5BFE00769; Sun, 24 Aug 2014 19:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	DC_PNG_UNO_LARGO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 DC_PNG_UNO_LARGO Message contains a single large inline gif
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E45B3E00576
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 19:01:08 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id D6901A42D9; Mon, 25 Aug 2014 02:01:08 +0000 (UTC)
Date: Mon, 25 Aug 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140825020108.GA20371@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 25 Aug 2014 02:01:10 -0000
X-Groupsio-MsgNum: 21232
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
chkconfig                     1.3.58                        1.3.62                        Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.3.2                      0.19.2                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+6c14086        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
apt                           0.9.9.4                       1.0.6                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+6ccc346        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+7f6b      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.13                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+74c2694         Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+6c14086        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
libxkbcommon                  0.4.2                         0.4.3                         Saul Wold <sgw@linux.intel.com>                   
libassuan                     2.1.1                         2.1.2                         Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080600                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
less                          458                           466                           Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.2+gitAUTOINC+9213bd4      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.70                          3.71                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
at                            3.1.14                        3.1.15                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+03d      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.7                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.6                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.25.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.8                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.7                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.1                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.91                       Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.3                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.4                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.47.4                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.0                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.32.4                        0.32.6                        Ross Burton <ross.burton@intel.com>               
pango                         1.36.5                        1.36.6                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.7                        Ross Burton <ross.burton@intel.com>               
xf86-input-mouse              1.9.0                         1.9.1                         Ross Burton <ross.burton@intel.com>               
hicolor-icon-theme            0.12                          0.13                          Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
xrandr                        1.4.2                         1.4.3                         Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.912                      2.99.914                      Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.41.4                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.37.90                       Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.1                        2.13.4                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.11                          2.12                          Ross Burton <ross.burton@intel.com>               
wayland                       1.5.0                         1.5.91                        Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.7.4                         1.8.0                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.5.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+25a322c       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.90                       Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.5.91                        Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.3                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.11                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8                           Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+1ddf090        Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.90                       Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.56                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.8.9                         1.8.10                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3.1                      7.19.5                        Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.65                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        10.4                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+ea0ca51      Paul Eggleton <paul.eggleton@linux.intel.com>     
ethtool                       3.14                          3.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.2.99.901                    No Maintainer info                                
dbus-test                     1.8.2                         1.8.6                         No Maintainer info                                
serf                          1.3.6                         1.3.7                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+2090a      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.27                        1.0.28                        Kai Kang <kai.kang@windriver.com>                 
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.1                         Hongxu Jia <hongxu.jia@windriver.com>             
directfb                      1.7.4                         1.7.6                         Hongxu Jia <hongxu.jia@windriver.com>             
ppp                           2.4.6                         2.4.7                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     2.3.2+gitAUTOINC+79e08f8      2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.21                          5.22                          Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.24                          1.25                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.29                        0.9.35                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.15.0                        3.16.0                        Cristian Iorga <cristian.iorga@intel.com>         
libtirpc                      0.2.4                         0.2.5                         Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.5.3                         1.6.1                         Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.14                          1.15                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+83b97f5        Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.6                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140715                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.0.0                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.16.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r120                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 139
Upgrade Total Count: 159
The based commit merge time is:
Sat Aug 23 23:02:00 2014 +0100
The based commit is:
commit be8a7abb19e4f72430e1ec3413aae787b6626535
Author: Armin Kuster <akuster808@gmail.com>
Date:   Thu Aug 21 15:16:44 2014 -0700
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--4Ckj6UjgE2iN1+kY
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
MPDxxx+XNusPHjyYnZ29YMECPz+/nj17Tps27fLly6dOnbpND++ooqJixYoVM2fOvM1zIiMj9Xr9
zz//LITQ6XT79+83nq4AWgX7yx8WYWFh1tbW6enpOp3Ozc2ta9euQojIyMjU1NTo6OiLFy9KWX7p
0qWqqqqMjAzDFLSzs7O0eZSXl/fII4989tlnUrtGo6msrJSOetPpdC+88EJNTU2Ts9BhYWGurq77
9u0bM2bMtm3bEhISmtzleUfGW/Ph4eFff/21EKKgoOCJJ54wtPfo0cN4ojUsLEy6YWNj8/TTT2dn
Z585cyYzM3P37t1SH86dO2dra9urVy/D0wwHAObl5en1esPylpeX19bWXrt2rVF2CiFcXFzmzJkj
3a6vr9+5c+eqVatiYmJ8fX3z8vJsbW0N8SmEaNeu3eXLlw1LYbxE0kbw2bNnjZc0JCRErVZfu3bN
3t7eeIla6OzZs4MHDzau9v333xu+kdy+WkxMzPvvv5+Tk+Pv77979+47JlZBQYFOpzt27NiZM2ek
FldXV2lhhw8fPn/+/Oeeey46OjomJsZ0mzU/P7++vt4wU21hYREYGGg4VK1r166G4wNcXV2l/ufl
5dnb2y9fvtxQxNbW9vLly3cx62Owffv24OBgaXQ0x8rKKiYmZteuXX369Dl06JCjo2NwcPCePXvu
+k0B87Fd/rBQqVTBwcHp6enSBLvUGBUVlZaWduLECUtLS+kTUJqitLOzs/0/AwcOjI+PF0LodDob
GxtDe5cuXaZOnSrNNNbV1U2ZMmX27Nnfffddbm6u6bvHx8fv3r27vLz88OHDTc5eSgcuNTpDqdFd
4/2XKpVKrVZLn+m2traGdjs7uyZfUllZmZSU9Nprr2VnZ4eHhxtOH5KmRo0PmzLs566trVWpVIbl
9fDwmDp1apPHZEnHvkmio6Pff/99CwuLw4cPSyvN2tra1sj48eP9/f2lF0o7NQzvq9FodDqd8ZF6
hiUyHM/f5E7c2zCtVl1dbfjKdftqtra2UVFRO3fu1Gg0aWlpd8xyqay9vb1hYRMSEqQ5mDFjxnz3
3Xd9+/ZNSUkZP378m2++2WiGo7a21sLCwrDypa4alrrJA/1M1+2kSZNuP3NwR1u2bDHsHLmNxMTE
vXv31tfX79q1q9ExhkCrYLv8IdKnT5+dO3eq1WrDFGJkZKRWq121alVAQICUiD4+Po6Ojj179oyJ
iZGec+TIESkMQkNDKysrDQf3Xrx4MSMjQwoDGxubMWPGCCE2b978/vvvf/PNN8a7D4UQiYmJ69ev
37Bhg5ubW5PbgtLZTWfOnDE+hujs2bM+Pj4WFhZSqOfl5RkOFz916pS3t3ebNm369++fn59vmLQv
KChoctn3799fVFS0YcMGqcNbt26V2oODg6uqqi5cuODl5SW1nD59Wvqu07Nnz4KCAsPyFhcXp6Wl
tXCfa9euXaVj3KSVNm7cOMOXjP/85z+dO3eWbufl5RmOBj916pSHh4e1tXVAQIDxEWe5ubnShLnp
nuCWkKpJE/7SO3p6erZ8XmTQoEGfffaZt7d3t27dPD09b/9kf39/Gxub3r179+3bV2o5ePCgtM9i
165doaGhU6dOnTp16o4dO+bMmXPkyJHIyEjj1woh8vPzAwMDDV29/bRBaGjoqlWrJk2aJH0V0+v1
W7dubeEBbk06d+5cQUFBS7JZ+g/56aefUlJSFi9efNfvCMiF7fKHSO/evQsLC2/cuGH4qG3Xrl1A
QEBGRobx2WgRERErVqyQJs8zMjJeeeWV8vJyIURkZOSBAwekg+E1Gs3s2bMPHDjQ6C1mzpyZn5+/
du3aRu2hoaEuLi7Lly9v7pAib29vb2/vDz/8UJrbr62t3b59u3TosuE5K1asyMvLE0KcPn168+bN
0mduXFzcqlWrioqKpN7u2bOn0dcIiV6vr6yslDIyLy9v1apVdXV1tbW1Li4uPj4+8+bN02g0QoiV
K1capugjIyPT0tKkI7G1Wu1bb721d+/elqxnIYStrW1paakQwt/fv127dkuWLGloaKivr1+xYsXc
uXMNub5u3brMzEwhRH5+/rp166QlioiI2Lt3r3SKgUajWbJkyYABA5o7Ka7ROc2mIiIi1q1bJy34
pUuXVq5cafiW1hIDBgxQq9VLly5tyS5hS0vL8PDw5cuX37x5Uwhx9OjRV199VbqGzPfff//JJ5/c
uHFDr9dL1ywy7KqQnmBnZxcYGJicnCxdXGXr1q2nT5+Ojo6+zdv17NlTCCHNsdfV1S1evPjjjz9u
+bxFQ0PDhx9+aPw/vGXLlujoaONpHiHEoUOHPvzwQ+PrLAkhLCws4uLiFi1a5OTkZPjyAbQitssf
IqGhoTY2Nl27djUc3iWE6Nev35kzZ4yzfM6cOS+++GJiYqKzs/PVq1efeuqpAQMGCCFiY2Ozs7Mn
T57csWPH0tLSgIAA6fBjY56ens8///zixYvj4uIaPZSQkLBq1arbHB78+eef/+Uvf3niiSccHR21
Wq2Tk9P48eONz29OTEycOHGio6NjaWlpXFzc008/LYSIioqKj49/6qmnHB0d27RpM3z4cCnvG4mL
i/vuu+9ee+21jh07lpeXP/vss6tXr37xxReXLl2anJwsHarm4ODg4OAwZswYaa44IiIiKSnppZde
6tChg1qt9vHxaXT2121069Zt06ZNJSUlHTt2/Oyzz6ZOnbp582YrK6va2tp3333XyclJetqgQYOm
Tp1qZ2dXWloaGRk5ZcoUIUR8fHxOTs706dOl9dyjR4+33367yXfx8vJauXLl9evXX3/99eZ6MnHi
xLy8vAkTJri5uZWUlPTv37/R5clur23btv3792/JznLJe++998ILL8THx7dr1660tPTZZ5+VvjhO
mTLljTfeSExMtLW1lWZ3fH19hRBdunRZu3ZtRUXFrFmzFi5cOHny5Li4OAcHB+nSdbffLre1tf34
449feeWVNWvWNDQ0tGnT5v3332/5lENDQ8Pq1asfeeQRabKnvr5++/btEydObPS0zMzM1atX/+//
/m+j0+ITExM3bdr0zDPPtPDtgHuqDb9fjiYVFRVdvHjR19e3U6dOxu0ajeb06dPOzs5/+MMfmrs6
R5M+/PDDM2fOfPXVV7d/WklJSX5+fqdOnXx8fAyN9fX1ffv2XbZsWZcuXbKystzc3AyHXms0Gmtr
a51Od/r06d69e7/11lt6vX7RokWmlWtra7Ozs/V6fVBQkEqlkjbTpaPe6uvrz5w5U11d/eijjzZa
qMrKytOnTzs5Ofn5+d31FXLq6uqys7Orqqr8/f0NG47R0dHz5s0LDQ2V1qdhJ7rhfc+cOePj42N6
qJ3BzZs309PTpcmV23egrKwsLy8vMDDwt+5uvzsFBQVXrlzp3r17o87n5eVpNJqAgADDzERNTc3J
kycdHBwMW7fnzp0rLy8PDQ294yVlJDqdLisrS6/XG/YTAQ8hshz3Q05Ozosvvjh9+vQRI0bcxcsN
WS5Nqxp77733zp49u3jxYjs7u+PHj8+cOfOFF16Qdt4/4KQsN75gHADcHebYcc8tWbJk+fLlffr0
ubsgv71p06ZNnz49Pj6+Q4cO9fX148aNa8lxyADwe8J2Oe45jUZTUlLSvXt3c4ocPXo0KCio0Sln
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
00fGnss7Qk17LuMINS0u4wg9efJkSkqKra1tXFycr6+vkHWEmhYX8o1Q0+IyjlDT4jKO0CZXi5Bp
hJoWl3GEtpb7eg3X1NTUpUuXlpTc+mGA8PDw5/6Ph4eH4RQ4WYrr9foNGzb07Nmzd+/ec+fOraio
kLH4zZs3161b16dPn6CgoL/97W96vf6uK58/f/7f//53TExMRETEP/7xj/z8/Nra2gULFnh5eXl4
eJh5lR7T4kKIEydOfPnll0VFRXddtrni169f/+abb/r06ZOYmPjZZ5/9/PPPMhZXq9Vr166Nj48f
OHCg8cCTpbjUXlJSsmbNGnMqN1m8oaGhoKDA8K9uzixXkz3/4IMPOnfuPGzYsFWrVp0/f17G4jKO
UNPiMo5Q0+IyjtD8/PwdO3aMHDkyJCTkk08+0ev1Mo5Q0+JCvhFqWlzGEWpaXMYR2uRqETKNUNPi
Mo7QVtTs/vI7+vrrrz09PW1tbdevX19cXOzr65udnX3o0KF9+/b5+/urVKqVK1dqNJouXbqkp6dn
ZGR069YtLy/PwsKipqamd+/eQohHHnnE3t7e3t5eo9EcO3Zs3LhxMhbPzc09c+bMuHHjXFxccnNz
vby8nJ2d5SqekpLi5eUVGRnp4uJy5coVJyenuy5+48aNLl269O3bt3379qWlpQ0NDeXl5devXx83
bpyXl1d2dnanTp0MF9A1v7iPj09BQYGVlVVpaemAAQPM+YOaFq+pqZG+6jo4ONTU1KjV6h49eshV
XAjh6ekZFhbWoUOHzMzMrl27yrjOfXx86urqvvzyy6CgIAsLi8DAQBlXi5OTU1ZWVmJiYtu2bR0d
HS0sLGQs3r59+3Pnzj322GPOzs7h4eH29vYqlUqu4n5+fnKNUNPiOp1OrhFqWryoqEiuEdrQ0BAY
GOjv7+/p6ZmSkhIeHp6TkyPXCDUtbmtrK9cINS1eVFQk1wg1LX716lW5RmiTq0WuEWpavLq6urkR
qiB332lbW9usrKyGhoaTJ08ePXpUCJGRkdGuXTuVSpWTk6PT6TIyMo4dOyaEOHHihPRHjYuLCwsL
My313XffjR8/Xt7i/v7+HTt2/Oqrrz755BMhRLdu3WQs3rZt2+PHjwshGhoatFqtYcPuLooPHDhQ
mi+qqKjIzc319/c3vkqPu7u78VV6zC8uhIiKiurbt6/5f1DT4mFhYdI+iJs3b2ZmZho+JmQpHhgY
2K9fv6ysrOXLl9vY2HTt2lXe1fLDDz9EREQYz7fLVfzatWtlZWULFixITk7etm2b8Tai+cXz8/Od
nZ23bt26ZMmSiooK4/leWVaLxPwRalpcxhFqWlzGEdq3b9+QkJATJ0588cUXvr6+Li4uMo5Q0+JC
vhFqWlzGEWpaXMYR2uRqkWuEmha/zQhVkLvP8uDg4Ozs7AsXLnTv3r2mpqa6ujonJyc4OFhqlybo
SktL6+rqzp49a/w1qpHCwkJHR8dG03fmF1er1ZcvX7a3tw8ODq6oqCgtLZWxeFhYmIODw9KlS5OT
k7Varfk9T01NXbRo0ZNPPunh4SFt3UrtTk5OVVVVMhaX/Q9qWvzkyZPz588fOHCg8SeFXMWtra2l
Tc/6+noZi2dlZZWWlvbv3/9erBYnJ6dx48bNnDlzxowZKSkpGRkZMha/evXqsWPH3Nzcxo8fv2TJ
kqysLNnXuYwj1Li47CPUuLjsI1SaRLS2tq6vr5d9hBoXN/0PlL24jCPUtLiMI9S4uOwj1Lj4bUao
gtz9HHv79u2///57BwcHd3d3S0vLmzdvFhYWDh48uF27dj/++KONjY2Pj8/Nmzdra2tLS0sHDhwo
veratWvnz5+XZqol27dv7927d4cOHeQtvnfvXi8vr1GjRvn6+paUlBQXFxu2M8wvbm1t3bt3b09P
z5iYmLKysoCAAMNs0m8tXldXt2LFiuLi4hdeeEE6FOXy5csXL1589NFHhRAnTpxwd3c3nNxvfnFJ
ZWVlenp6oxk8WYpv3LgxMzNzypQpjS6ZZH7xK1euCCHc3d2DgoLOnTt34cIFw1uYX3z9+vUVFRU/
//xzdnb2xYsXtVrtXf+3mBa3t7f38PBo06aNhYVFfX19aWlpQECAXMVv3rxpZWU1aNAgGxsbnU5X
UlIiY3EZR6hpcRlHqGlxGUdoUVGRSqXy8PAIDQ09cuSITqeztLSUa4SaFpf6L8sIbbK4XCPUtLiV
lZVcI9S0+OHDh+UaoabFe/To0dwIVZC73y63srLq3Lnz/v37/fz8/P39t27dKh24aGtr6+DgcPTo
UUN7SEhIc0Xq6ury8vKMvx7KVdzZ2Vma+5L2zBlP+Jhf/OzZs8uWLXN1dbWysjp+/Li3t/ddFz91
6lSbNm0mT55sb28vVQgLC7t06ZJOpxNCZGRkdO7cWcbit2F+8aKiosuXL7/88svt27eXvfipU6d2
7twphNDpdGq12vhHeM0v/vTTTyclJT399NPS0VKxsbEyFv/pp582btwohKitrS0oKDCePjW/eLdu
3U6dOlVfX9/Q0FBSUmJ88LAs/y1yjVDT4jKOUNPiMo7QI0eOSAfzV1VVaTQaR0dHGUeoaXHRPPOL
yzhCTYvLOEJNi8s4Qk2L32aEKsjtfr/8jkJCQi5evOjq6qpSqcrKygyfI8HBwWlpaXZ2dgEBAatW
rbrNyQmZmZleXl5t2rSRvXh4eHhBQcHnn39eUlLi4uLSKJXNLO7t7a1Wqz/66CO9Xj9s2DBra+u7
Lp6ZmXns2DFp354QYsyYMQMHDgwNDZ0/f76lpWWfPn0anTdifvEml0iW4jdu3MjJyXn11Vellri4
uMcee0yu4jExMQsXLvzss88uXbrk5ubWaLzJtVrs7Oyqq6sbncJkZvHw8PAVK1Z88sknJSUl/v7+
jfZ0mN/zAQMGfPrpp5WVla6urt27d5e3uFwj1LR4ZGSkXCPUtHhUVJRcI/RPf/rTokWL8vLy8vPz
peM2LCws5BqhpsVN17OMxbdt2ybXCDUt7u/vL9cIbXKdS883f4SaFq+qqrrNCFWK+31++X1WVVWl
0+mMvyHKpaGh4cqVKw4ODmaeutocrVZbVVXVaGITarXaysrKzDN6W4VGo7G0tLSzs7sXxaXdhPfi
//xeU8oILSkpsbOzM/7zyThCTYvL6D4Xl3GE3uee39MReh/8zrMcAIDfPUWeSAcAAAzIcgAAlI0s
BwBA2chyAACU7f8DkZfZbn4/IXIAAAAASUVORK5CYII=

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--4Ckj6UjgE2iN1+kY--
