Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FAD4E00849; Sun,  7 Sep 2014 19:19:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FC6E00847
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 19:18:52 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id A7877A42D9; Mon,  8 Sep 2014 02:18:52 +0000 (UTC)
Date: Mon, 8 Sep 2014 02:18:52 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140908021852.GA32160@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 08 Sep 2014 02:19:01 -0000
X-Groupsio-MsgNum: 21375
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline

--82I3+IH0IqGh5yIs
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+e454243        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
apt                           0.9.9.4                       1.0.7                         Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.12                        4.8.13                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+34e7615        Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+0b70      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.13                       Saul Wold <sgw@linux.intel.com>                   
kmod                          18+gitAUTOINC+ae58de0fcb      18+gitAUTOINC+1a4aa7e         Saul Wold <sgw@linux.intel.com>                   
help2man-native               1.46.1                        1.46.2                        Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.6+gitAUTOINC+e454243        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.6.1                         1.6.2                         Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.6.0                       3080600                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.2+gitAUTOINC+9213bd4      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.71                          3.72                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+989      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.36                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.16.0                        Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.8                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
gnutls                        3.3.5                         3.3.7                         Ross Burton <ross.burton@intel.com>               
libxext                       1.3.2                         1.3.3                         Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.25.3                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.8                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.8                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      4.0                           4.1                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.92                       Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.2                        2.40.3                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.4                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.47.4                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.8                        2.31.1                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.32.4                        0.32.6                        Ross Burton <ross.burton@intel.com>               
pango                         1.36.5                        1.36.7                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
xcb-proto                     1.10                          1.11                          Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.90                       Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.8                        Ross Burton <ross.burton@intel.com>               
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
wayland                       1.5.0                         1.5.92                        Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.5.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+5b9d744       Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.91                       Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
weston                        1.5.0                         1.5.92                        Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.4                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.39                        0.1.40                        Robert Yang <liezhi.yang@windriver.com>           
gmp                           6.0.0                         6.0.0a                        Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.12                       Robert Yang <liezhi.yang@windriver.com>           
libunistring                  0.9.3                         0.9.4                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7.1                         7.8                           Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.2                         2.3.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+809d063        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.14.2+gitAUTOINC+24cf4d      3.16+gitAUTOINC+ea7c181       Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3.1                         3.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.91                       Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.54                        2.4.56                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.8.9                         1.8.10                        Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3.1                      7.19.5                        Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.1                         Paul Eggleton <paul.eggleton@linux.intel.com>     
dropbear                      2014.63                       2014.65                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.15                        10.4                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+dd79a61      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
yasm                          1.2.0                         1.3.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.4                         No Maintainer info                                
xmlto                         0.0.25                        0.0.26                        No Maintainer info                                
libevdev                      1.2.2                         1.2.99.902                    No Maintainer info                                
dbus-test                     1.8.2                         1.8.6                         No Maintainer info                                
serf                          1.3.6                         1.3.7                         No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.9.0                         No Maintainer info                                
bootchart2                    0.14.6+gitAUTOINC+b65ed4      2.0.0.3+gitAUTOINC+94c32      No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.14                        5.4.15-0.20140824             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
parted                        3.1                           3.2                           Hongxu Jia <hongxu.jia@windriver.com>             
elfutils                      0.148                         0.160                         Hongxu Jia <hongxu.jia@windriver.com>             
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
bluez4                        4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            6.0.30                        6.1.19                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.22                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.6.1                         1.6.2                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+365e80c        Cristian Iorga <cristian.iorga@intel.com>         
tcl                           8.6.1                         8.6.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.6                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
strace                        4.8                           4.9                           Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140715                      Chong Lu <Chong.Lu@windriver.com>                 
tar                           1.27.1                        1.28                          Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.1.1                        Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.22                          8.23                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.16                          3.16.2                        Bruce Ashfield <bruce.ashfield@windriver.com>     
lz4                           r122                          N/A                           Armin Kuster <akuster@mvista.com>                 
Upgradable Count: 126
Upgrade Total Count: 146
The based commit merge time is:
Fri Sep 5 10:14:25 2014 +0100
The based commit is:
commit 1894522f357fdf0b6adb2dcc14f12817628596bd
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Wed Sep 3 17:06:42 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--82I3+IH0IqGh5yIs
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAt8AAAEsCAIAAACUhki5AAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3de1xUdeL/8Y9cGuSqoCIIIugCchNDBV1FLqLrNbVSH26l1Vfsa6WVbaltl23T1ZQuW5uW
6a/MS15r0/Wuq+QdUwGVmwjiDRFGGBwEZmB+fxy/08SAknOEo7yefzFnhvd85sAH3nzOOUMrg8Eg
AAAAFMOquQcAAADwG7QTAACgLLQTAACgLLQTAACgLLQTWGrx4sWDBw/W6/XGLa+++uqQIUOqq6uN
W/7yl79MmTLlHsJTUlKGDRtmvn3evHkLFixoZMiOHTtiY2Nra2vvuvF+W7RoUeOHLYRYsmRJrInB
gwdPnz5906ZN92+ERg3tmYqKildffTU6Ovrq1av3ljx69OjY2Nj8/Pw62998883Y2NgdO3YIIf71
r3/NmTNHCJGdnR0bG6vVau/hiZryi/vzzz/v2rWr3rsOHDjwjpmNGzfWedjy5ctjY2P/+c9/1tl+
8ODB2NjYF1980XSjwWCYP39+VVWVjC8BUBTaCSwVHBysVqszMzOlm5WVlUePHi0pKTl58qS0xWAw
pKSkBAYG3kO4Xq+/efOm+fbKysrKyspGhuh0uvLy8sZsvN9+17CFEFVVVXZ2dn//P9OnT2/duvW8
efO2b99+/wYpmTx58po1a8y3Hzp06OjRo++88467u/u9Jd+8eVOr1e7cudN0Y3l5eXJyslar1el0
Qgg/P7/g4GAhRE1NTXl5+b1dWpiYmPjtt9/e2yB/l+rq6g8//DArK6vee2tqaqp+Kzk5+eLFi3Ue
VlVVpdVqt23bVufF7tixQ6vVVlRUmG7cvHnzhg0bpH0FPJRsmnsAeOBFRERYW1unpqaGhIQIIY4f
P25jYxMYGHjo0KHIyEghRG5u7s2bN3v16mX6WXq93samnm+/mpoaa2vrphm5ud87qtra2urqajs7
O+mmwWAwGAxWVnVLf0Pb75BsZGdn179/f+PN4cOHjxw58ocffvjTn/7UmJzf+4oMBkNlZWXr1q0b
Go9arfb29h40aFBj0mpra/V6/SOPPFJne0hIyK5duxITE41b9u3b16VLl8uXL0s3hw4d2tAARMMv
qqHtlgxVuqver50QQqPRJCUlpaSkFBUVNfSMAwcOHDhwoPHmiRMnTp48+dxzz5k/0tfXt7Cw8OTJ
k48++qi0RafTJScnh4SEGCvLzp07f/zxx+PHjzf8EoGHAWsnsJSDg0NgYGBqaqp088iRIxEREQMG
DDh8+LC0JS0tzcrKyvgDd82aNZMmTerXr98TTzzx888/G3NOnDjx5ptvDhw4MCEh4ZNPPqmpqanz
RHl5eRMnTvz3v/9tujExMfGnn34y3ly4cOHvOnQihKitrR0zZszx48efffbZP/7xj6NHjzZddd+2
bdvzzz/fv3//l19+ec+ePS+//LIQQq1WjxkzJisr68knn3z33XeFELm5uR999NGwYcNiYmISExON
hy3KysoWLVo0dOjQmJiY999/3/RoV3p6+pw5c2JjY+Pj4z/88MNG/h3cqlWroKAglUol3dRoNP/8
5z9HjRo1YMCAxMRE41/kEydOPHz4cGJiYv/+/UeNGvXdd98ZEw4ePChtf+yxxz777DNpY1VV1Zgx
Y86cOTNx4sSZM2dOnTr13Llzy5cvf++990yffdOmTUuXLr148eKYMWOuXbsmhPjpp5+eeeaZvn37
jhs37vvvv5celp+fP27cuIyMjMceeywpKcn8VcTGxl66dOncuXPGLbt27UpISDDe/Pbbb+fNm1fn
swwGw4oVK5566ql+/fqNGzfu2LFj0vby8vI5c+bEx8dHR0dPmjTpwoULQoiXX345IyPju+++k44Q
6fX6Dz/8cOTIkdKOSktLkz53w4YNCxcu3LBhQ0JCQv/+/SdPnlxYWCjddf369aSkpGHDhkVHR7/8
8sv19g9ra+vg4ODJkyd7enrW/wX7LZ1ON3fu3BkzZjg7O5vfq1KpBg4caHqE6PDhw46OjmFhYcYt
bm5uMTEx48ePb8zTAQ8u2glk0Lt371OnTkkfHzlyJDIysl+/fufPn5d+oKempvr7+zs5OQkhVq9e
vWzZsilTpmzYsKFfv34zZ86U/gosKCh45ZVXunbtunbt2jfeeGPTpk11SkZeXt7UqVOl36mm2//w
hz9s2bJF+riysnLz5s3GGtR4Fy9efOONN4YPH75u3bqRI0cuWLBg3759QohDhw699957o0aN2rhx
Y0hIyHvvvSedbKHX6y9evPj2228PGzZs8uTJQog33nijuLj4iy++WL16tb29/dy5c6Xkv//978nJ
ye+///7XX39dWlpqPCJTWFg4Y8YMT0/P1atXv/XWW9u3b3///ffvOk69Xn/gwIGff/55xIgR0pZ3
3nnn1KlT8+fP//rrr21sbJ577jnpcNWlS5dmz54dHR29du3aCRMmfPbZZ9Jeys7OnjVrVnh4+Pr1
62fOnLl+/fqlS5cKIWpra6VXFBMT88ILL7zzzjve3t5jxoyZNm2a6QAGDRr0+OOPd+zY8ZNPPmnX
rt2BAwfmzp07YsSIH3/8ceLEiR9//LH0AqurqwsKCv72t789+eST48aNM38hzs7OUVFRxoM75eXl
KSkppusxpaWl169fr/NZy5YtW7169UsvvbR+/fqePXu+9NJLZ86cEUJ8/PHHGRkZr7/++sqVK52c
nGbPni2EmD17tp+f34gRI2bMmCGE+PDDD/fv3//Xv/517dq1nTp1mjlzpvSl1Gg0u3btOn78+MqV
K7/55pvs7Owvv/xS2iFvvvlmfn7+J5988q9//au8vPx//ud/TMulxMHBYdy4cePGjXNzc7vrl096
Ce3btx8+fHhDDxg8ePCePXuMZ8zs3r07Pj6+VatWxgdERESMGzcuNja2MU8HPLhoJ5BB79691Wr1
pUuXCgsL8/Pzo6KiAgICXF1dDx06JIRITU01HtZZsmTJK6+80r9//86dO8+YMcPd3V36S/Hbb78N
Dw9PTEzs1KlTQkLC6NGjTf+ClKrJqFGj6vyyFEIkJCScOnVKrVYLIfbv329tbW26it54cXFxTzzx
hI+Pz/PPPz9kyJDdu3cLIZYtWzZ69OjHHnvM09Nz6tSpoaGhpp8ycuTI559/vnv37pWVlaNGjZo1
a5avr6+Xl9ewYcNyc3OFEAUFBfv27Xv33Xf79Onj7+8/b968Nm3aSJ+7atUqPz+/l156ycvLKy4u
bty4cXv27Kn37IrLly8bz4odMGDAK6+8MmXKlMGDBwsh0tPTDxw4MH/+/KCgoKCgoNdff72srCwl
JUX6xMjIyKeeesrHx2fixIlPPPGEtD83bdoUFBQ0bdo0Ly+v6Ojo6dOnr1+/3vhcgwYNmjp1alhY
WKdOnVQqVdu2bTt06GA6GGdnZ1dXV1tbWx8fH2tr6zVr1owcOXLcuHGenp6jR4+eMGHCunXrpEfq
9fo///nPzzzzTNeuXevd4QkJCdJOFkL897//9fX17dy58x2+QHq9ftmyZW+88UZUVJSPj8/MmTPb
tGkjJeTn53t5eQ0ZMsTPz++vf/2rdP61p6en9BLc3d1v3br1448/zp49OzIy0tvb++2333ZycjJ+
g2k0mnfffdfDwyMoKOjxxx+Xll4OHjyYmZm5YMECf3//Hj16TJ8+/cqVK6dPn77DCO+qrKxsxYoV
s2bNusNjoqKi9Hr9L7/8IoTQ6XT79+83XVICWg7OO4EMwsPDbW1tU1NTdTqdu7t7ly5dhBBRUVGH
Dh2Kjo6+dOmS1E4uX75cUVGRlpZmPPDh6uoq/Qmbk5PzyCOPfP7559J2jUZTXl4unQ+r0+leeOGF
qqqqeo99hIeHt2vXbt++fWPHjt22bdugQYPqPXXgrkxXXCIiIr755hshRF5e3hNPPGHc3r17d9Pl
/fDwcOkDOzu7p59+OjMz8+zZs+np6bt375bGcP78eXt7+549exofZjw1OCcnR6/XG19vaWlpdXX1
9evX67QBIYSbm9tbb70lfVxbW7tz585Vq1bFxMT4+fnl5OTY29sbC4EQok2bNleuXDG+CtNXJC1U
nDt3zvSVhoaGqtXq69evOzo6mr6iRjp37tyQIUNM03744Qdjx7pzWkxMzAcffJCVlRUQELB79+67
/g7Oy8vT6XTHjx8/e/astKVdu3bSix0xYsT8+fOfe+656OjomJgY83WF3Nzc2tpa4/ERKyuroKAg
40msXbp0MZ5n065dO2n8OTk5jo6Oy5cvN4bY29tfuXLlHlbmjLZv3x4SEiLNjobY2NjExMTs2rWr
d+/ehw8fdnZ2DgkJ2bNnzz0/KfCAYu0EMlCpVCEhIampqdJhHWljv379UlJSTp48aW1tLf1MlxbG
HRwc7P/PwIED4+PjhRA6nc7Ozs64vXPnztOmTZPWt2tqaqZOnTpnzpzvv/8+Ozvb/Nnj4+N3795d
Wlp65MiRetfMpVMa61xfWuem6XkAKpVKrVZLv6Xs7e2N2x0cHOr9lPLy8sTExNdeey0zMzMiIsJ4
8ae0IG96QqXxfJHq6mqVSmV8vZ6entOmTav3bE3prFhJdHT0Bx98YGVldeTIEWmn2dra2puYMGFC
QECA9InSoTTj82o0Gp1OZ3oOr/EVGa9dqvdkiDswT6usrDSWyDun2dvb9+vXb+fOnRqNJiUl5a7t
RIp1dHQ0vthBgwZJ62Rjx479/vvv+/Tpk5ycPGHChDfffLPOKlR1dbWVlZVx50tDNb7qek8BNt+3
kydPvvPqzl1t2bLFeEjuDhISEvbu3VtbW7tr1646Zx8DLQdrJ5BH7969d+7cqVarjQvXUVFRWq12
1apVgYGB0u94X19fZ2fnHj16xMTESI85evSo9OstLCysvLzceCHDpUuX0tLSpF9vdnZ2Y8eOFUJs
3rz5gw8++Pbbb00PwwshEhIS1q9fv2HDBnd393r/XpeuTT179qzp2YXnzp3z9fW1srKSakpOTo7x
0pjTp0/7+Pi0atWqf//+ubm5xkNFeXl59b72/fv3FxQUbNiwQRrw1q1bpe0hISEVFRUXL1709vaW
tpw5c0Zqbz169MjLyzO+3sLCwpSUlEaeu9ClSxfp7Fdpp40fP95Ym/7zn/906tRJ+jgnJ8d45cvp
06c9PT1tbW0DAwNNz0XNzs6WDtOYn1HRGFKadJhJekYvL6/Gr10NHjz4888/9/Hx6dq1q5eX150f
HBAQYGdn16tXrz59+khbDh48KB0p27VrV1hY2LRp06ZNm7Zjx4633nrr6NGjUVFRpp8rhMjNzQ0K
CjIO9c5LO2FhYatWrZo8ebJULvV6/datWxt56mu9zp8/n5eX15i2IX2H/Pzzz8nJyYsXL77nZwQe
aKydQB69evXKz8+/efOm8ZdHmzZtAgMD09LSTK8ljoyMXLFihXTIJi0t7ZVXXiktLRVCREVFHThw
QLrwR6PRzJkz58CBA3WeYtasWbm5uWvXrq2zPSwszM3Nbfny5Q2dbOjj4+Pj4/PRRx9JR5Sqq6u3
b98uXaZhfMyKFStycnKEEGfOnNm8ebP0WyQuLm7VqlUFBQXSaPfs2VOnGEn0en15ebn0Wz8nJ2fV
qlU1NTXV1dVubm6+vr7z5s3TaDRCiJUrVxoPDEVFRaWkpEhXnWi12rfffnvv3r2N2c9CCHt7++Li
YiFEQEBAmzZtlixZYjAYamtrV6xYMXfuXGNTWbduXXp6uhAiNzd33bp10iuKjIzcu3evdDmVRqNZ
smTJgAEDGrqkuc57bJiLjIxct26d9MIvX768cuVKY+9sjAEDBqjV6qVLlzbm1Apra+uIiIjly5ff
unVLCHHs2LFXX31Vepe2H3744dNPP71586Zer5feFdB4gEx6gIODQ1BQUFJSkvT2ZVu3bj1z5kx0
dPQdnq5Hjx5CCOnITk1NzeLFiz/55JPGry0ZDIaPPvrI9Ht4y5Yt0dHRpktxQojDhw9/9NFHpu9k
KISwsrKKi4tbtGiRi4uLsU4BLQ1rJ5BHWFiYnZ1dly5djCd+CiH69u179uxZ03by1ltvvfjiiwkJ
Ca6urteuXXvqqacGDBgghIiNjc3MzJwyZUqHDh2Ki4sDAwOlSy1MeXl5Pf/884sXL46Li6tz16BB
g1atWnWHSyG++OKLv/zlL0888YSzs7NWq3VxcZkwYYLp+20kJCRMmjTJ2dm5uLg4Li7u6aefFkL0
69cvPj7+qaeecnZ2btWq1YgRI6QGU0dcXNz333//2muvdejQobS09Nlnn129evWLL764dOnSpKQk
6SRWJycnJyensWPHSkcoIiMjExMTX3rppfbt26vVal9f3zrX7t5B165dN23aVFRU1KFDh88//3za
tGmbN2+2sbGprq5+7733XFxcpIcNHjx42rRpDg4OxcXFUVFRU6dOFULEx8dnZWXNmDFD2s/du3d/
55136n0Wb2/vlStX3rhx4/XXX29oJJMmTcrJyZk4caK7u3tRUVH//v3rvKXpnbVu3bp///6NOelE
8v7777/wwgvx8fFt2rQpLi5+9tlnpSo8derUN954IyEhwd7eXlqB8/PzE0J07tx57dq1ZWVls2fP
Xrhw4ZQpU+Li4pycnKS3u73z2om9vf0nn3zyyiuvrFmzxmAwtGrV6oMPPmj8spDBYFi9evUjjzwi
LcjV1tZu37590qRJdR6Wnp6+evXq//3f/63zNi0JCQmbNm165plnGvl0wMOn1b29CSNgiYKCgkuX
Lvn5+XXs2NF0u0ajOXPmjKur6x/+8IeG3v+qXh999NHZs2e//vrrOz+sqKgoNze3Y8eOvr6+xo21
tbV9+vRZtmxZ586dMzIy3N3djZeZaDQaW1tbnU535syZXr16vf3223q9ftGiRebJ1dXVmZmZer0+
ODhYpVJJSynS+bC1tbVnz56trKx89NFH67yo8vLyM2fOuLi4+Pv73/N70NXU1GRmZlZUVAQEBBj/
uI+Ojp43b15YWJi0P40noxif9+zZs76+vuYn4RrdunUrNTVVWgC78wBKSkpycnKCgoJ+72kr9yYv
L+/q1avdunWrM/icnByNRhMYGGhcPaqqqjp16pSTk5NxBeL8+fOlpaVhYWF3fdM2iU6ny8jI0Ov1
xqOTAJoG7QQPvKysrBdffHHGjBkjR468h083thNpMd/U+++/f+7cucWLFzs4OJw4cWLWrFkvvPCC
dBKMwkntxPRNZgHgAcKRHTzYlixZsnz58t69e99bNbmz6dOnz5gxIz4+vn379rW1tePHj2/MNRcA
AAuxdoIHm0ajKSoq6tatmyUhx44dCw4OrnPBsFFRUdG1a9eCg4N/18Gm5nXixImuXbsaz0EBgAcL
7QQAACjLA/O3IAAAaCFoJwAAQFloJwAAQFloJwAAQFloJwAAQFloJwAAQFnqvhtbSkqKRqOR/qm9
VqvdsWOHVqsdOnRou3btmmN4AACgxfnN2sn169fXrFmjVqulm0lJSSqVKjQ0dOHChdK/+gQAALjf
fl07qa2t/e6776KioqSbeXl5Op1O+qevmZmZ2dnZ0r80AwAAuK9+XTv56aefevXq5eHhId0sKSkx
fuzh4ZGVldUMowMAAC3P7XaSlZVVWFgYHR1tvKOystL4b0dcXFwqKiqys7O3bNmyZcuWvXv3NsNI
AQBAy3D7yM6+ffvUavWnn35648aN6upqW1tbPz+/a9euSfeWlpa6u7v7+/v7+/sLIbZs2dJs4wUA
AA+72+1k4sSJOp1OCHH06NHr16/Hx8c/8sgj69atq6iosLe3T01NjYmJac5hAgCAFuN2O3FycpI+
cHR0vHnzpnRz0KBBCxYscHFxcXNz69GjR7ONEQAAtCStDAbDHe6uqqpSq9UdO3Zs1aqVceOWLVtG
jBhx/8cGAABaorrvxlaHSqUyXrkDAADQBHgnewAAoCx3WTsBgObyz9NFlodMD+lgeQiAJkY7AaBQ
Mw5dtDyEdgI8iDiyAwAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAA
lIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2AgAAlIV2
AgAAlIV2AgAAlIV2AgAAlIV2AgAAlMXG8og/bc2xPGT7sD9YHgIAAB4CMrSTHZc0locAAABIOLID
AACUhXYCAACUhXYCAACUhXYCAACUhXYCAACURYZrdu6r7LJKy0P8XewsDwEAAE1D6e0kYO0Zy0MM
iRGWhwAAgKbBkR0AAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAs
tBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMA
AKAstBMAAKAstBMAAKAsNsaPsrKy9uzZY2Vl9cc//jE0NFQIodVqd+zYodVqhw4d2q5du+YbJAAA
aEFur53cuHFj9erVcXFxsbGxX375pVqtFkIkJSWpVKrQ0NCFCxdqtdpmHScAAGgpbq+dFBYWDh48
ODAwUAjRpUuX4uLisrIynU43fPhwIURmZmZ2dnbPnj2bc6QAAKBluN1OunfvLoTIyso6dOiQjY2N
r69vamqqh4eHdK+Hh0dWVlbnzp1LSkqEELdu3Wqu4QIAgIfeb86KtbGxcXBwUKlUtbW1lZWVDg4O
0nYXF5eKiormGB4AAGhxfj2yY29v37Vr165du27YsGHnzp0+Pj7Xrl2T7i0tLXV3d3dzc3NzcxNC
ZGdnN9t4AQDAw+722snZs2e3b98uhNDpdGq12tnZOSAgQKPRSEsmqampXl5ezTlMAADQYtxeO4mO
jl60aNFnn3129erV9u3bR0VFqVSqQYMGLViwwMXFxc3NrUePHs07UAAA0ELcbic2NjazZs1Sq9U2
NjbOzs7SxpiYmL59+6rV6o4dOzbfCAEAQMtiY3rD1dW1zt0qlcp45Q4AAC1Qz40ZloecfLy75SEt
h83dHwIAQAt2qoSrVpsa/2cHAAAoC+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAo
C+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAoC+0EAAAoC/+jGE3qyd3nLQ9ZP8jP8hAAgGLR
TtCkNpy/0dxDAAAoHUd2AACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBO
AACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACA
stBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBOAACAstBO
AACAstBOAACAstg09wAeWssyiy0PeT6wneUhAMwxQwElo53cL/+TfMHyEH72AfcJMxRQMo7sAAAA
ZaGdAAAAZaGdAAAAZaGdAAAAZaGdAAAAZaGdAAAAZfn1iuKsrKz9+/erVKrY2NjOnTsLIbRa7Y4d
O7Ra7dChQ9u148I5AADQFG6vnWg0mm+++SYiImLIkCGLFy8+duyYECIpKUmlUoWGhi5cuFCr1Tbr
OAEAQEtxe+0kPz+/V69eERERQojo6OiCgoL27dvrdLrhw4cLITIzM7Ozs3v27NmcIwUAAC3D7bWT
sLCwxx9/XAhRWVmZlpbWvXv3kpISDw8P6V4PD4+srKxmGyMAAGhJfvNO9mlpaRs3bkxISAgODj5w
4ICDg4O03cXFJTc3Nzs7Ozs7WwhRUlLSDCMFAAAtw6/t5IcffsjPz58xY4arq6sQwtnZ+dq1a9Jd
paWl7u7u/v7+/v7+QogtW7Y0y1gBAEBLcPvIzqVLlwoKCqZPny5VEyFEQECARqOpqKgQQqSmpnp5
eTXbGAEAQEtye+0kPT09Jyfntddek27GxMSMGTNm0KBBCxYscHFxcXNz69GjR/MNEgAAtCC328nQ
oUOHDh1a576YmJi+ffuq1eqOHTs2+cAAAEALZXPnu1UqlfHKHQAAgCbAO9kDAABloZ0AAABloZ0A
AABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABl
uct/AQQA/F5afa3lIQ42/PWIlot2AgAyc1x+0vIQQ2KE5SHAA4puDgAAlIV2AgAAlIV2AgAAlIV2
AgAAlIV2AgAAlIV2AgAAlIUrioHm949ThZaHzA7vaHkIACgB7QRofnOOXbY8hHYC4KHBkR0AAKAs
tBMAAKAstBMAAKAstBMAAKAstBMAAKAstBMAAKAsLfqKYo+VaZaHXH0qzPIQAFACfipCIVp0Oyms
0DX3EABAQfipCIXgyA4AAFAW2gkAAFAW2gkAAFAW2gkAAFAW2gkAAFCWFn3NDgDg4bD+/A3LQ570
a2t5CGRBOwEAPPDG7T5veYghMcLyEMiCIzsAAEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcA
AEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcAAEBZaCcAAEBZ+B/FQKOcLK6wPKRn
O3vLQwDgoUc7ARrl0U0Zlofw/9kBoDE4sgMAAJTlN+2kqqpq5cqVxptarXbTpk3fffddcXFxkw8M
AAC0UL+2k1OnTi1duvTChQvGLUlJSSqVKjQ0dOHChVqttjmGBwAAWpxf20lFRYW3t7fxZl5enk6n
Gz58eHh4eM+ePbOzs5tjeAAAoMX59azYfv36Xbt27fTp09LNkpISDw8P6WMPD4+srKzOnTuXlJQI
IW7dutX0AwUAAC1Eg2fFVlZWOjg4SB+7uLhUVMhwOSUAAMBdNXhFsbOz87Vr16SPS0tL3d3d3dzc
3NzchBAc5QEgeXZfvuUh/y+mi+UhAB4mDbaTgICAdevWVVRU2Nvbp6amxgLuGZAAAA3xSURBVMTE
NOGoADwYvskusTyEdgKgjgbbiUqlGjRo0IIFC1xcXNzc3Hr06NGUwwIAAC3Wb9qJu7v7W2+9ZbwZ
ExPTt29ftVrdsWPHJh8YAABooe7yTvYqlcp45Q4AAEAT4J3sAQCAstBOAACAsvA/ih9I5boay0Oc
bK0tDwGARuIHFxqPdvJAcv5/pywPMSRGWB4CAI3EDy40Hkd2AACAstBOAACAstBOAACAstBOAACA
stBOAACAstBOAACAsnBFMeqae/Kq5SFv9eQfIAAA7hHtBHX9NeWK5SG0EwDAPePIDgAAUBbaCQAA
UBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBba
CQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAAUBbaCQAA
UBab5h4AIJth285ZHrJ1aDfLQwAAlqCd4OGx7WJZcw8BACADjuwAAABloZ0AAABloZ0AAABloZ0A
AABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABloZ0AAABl
4X8UA8CDZPqhi5aH/LOft+UhwP1DOwGAB8lnp4ssD6GdQOE4sgMAAJSFdgIAAJTlTkd2ysrK/vOf
/9ja2g4ePNjFxaXJxgQAAFqyBtdOdDrd/PnzPT09vby85s+fbzAYmnJYAACgxWpw7eT06dPt27eP
iYkRQpw6dSo/P9/X17fpxgUAAFqqBtdOiouLPTw8pI89PT2zsrKaakgAAKBFa9XQIZstW7bU1taO
GjVKCLFv374bN24EBwdnZ2cLIUpKStzc3Br/HL/38b8L4U0cfl+HfV/zGXnT5zPyps9/cEdOuCzh
/v7+/v7+92kkTcrQgH379n311VfSx5s2bTp48GBDj7yrzZs33/PnEq608Ps67Puaz8ibPp+RN33+
gztywpslXLEaPLITFhZ2+fLl6upqIURaWpqXl1cTViYAANByWb/33nv13tG6devy8vKNGzceOnQo
NDQ0MjLSkqe5ryuNhDdx+H0d9n3NZ+RNn8/Imz7/wR054c0SrkwNnnci0Wq1Wq22Q4cOTTYgAADQ
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

--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--82I3+IH0IqGh5yIs--
