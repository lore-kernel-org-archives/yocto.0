Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1102FE00B4C; Sun, 15 Jun 2014 19:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD205E00AEE
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 19:21:06 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id C3DF7A4048; Mon, 16 Jun 2014 02:21:06 +0000 (UTC)
Date: Mon, 16 Jun 2014 02:21:06 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140616022106.GA17050@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 16 Jun 2014 02:21:09 -0000
X-Groupsio-MsgNum: 20173
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.2                      0.19.1                        Wenzong Fan <wenzong.fan@windriver.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+ce9ded7      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+aa2eaf7        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
squashfs-tools                4.2                           4.3                           Saul Wold <sgw@linux.intel.com>                   
libusb1                       1.0.18                        1.0.19                        Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.4                         Saul Wold <sgw@linux.intel.com>                   
xcb-util-renderutil           0.3.8                         0.3.9                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+f7d8f09        Saul Wold <sgw@linux.intel.com>                   
opkg-utils                    0.1.8+gitAUTOINC+d144584      0.1.8+gitAUTOINC+eae0d8f      Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+d8a9      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.10                       Saul Wold <sgw@linux.intel.com>                   
kmod                          17+gitAUTOINC+49d8e0b590      18+gitAUTOINC+a5a41f8         Saul Wold <sgw@linux.intel.com>                   
ubootchart                    0.0+r12                       N/A                           Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+aa2eaf7        Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.22                        2.0.23                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.4.3                       3080500                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+92757c3      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.68                          3.69                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
curl                          7.36.0                        7.37.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+d06      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.15.99.903                   Ross Burton <ross.burton@intel.com>               
libice                        1.0.8                         1.0.9                         Ross Burton <ross.burton@intel.com>               
gnome-common                  3.7.4                         3.12.0                        Ross Burton <ross.burton@intel.com>               
libxfont                      1.4.7                         1.4.8                         Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.2                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
xf86-video-vmware             13.0.1                        13.0.2                        Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.910                      2.99.912                      Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.2                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.2                        Ross Burton <ross.burton@intel.com>               
xcb-util-wm                   0.4.0                         0.4.1                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      3.5                           3.6                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
gdk-pixbuf                    2.30.7                        2.30.8                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
at-spi2-core                  2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
libxft                        2.3.1                         2.3.2                         Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.2                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.2                        Ross Burton <ross.burton@intel.com>               
hicolor-icon-theme            0.12                          0.13                          Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.40.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.37.1                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.11                          2.12                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.7.4                         1.8.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-evdev              2.8.2                         2.9.0                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.4.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+8ec919f       Ross Burton <ross.burton@intel.com>               
fontsproto                    2.1.2                         2.1.3                         Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.2                        Ross Burton <ross.burton@intel.com>               
shared-mime-info              1.2                           1.3                           Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.2                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
inputproto                    2.3                           2.3.1                         Ross Burton <ross.burton@intel.com>               2.2.99.1 is unstable          
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.0                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.10                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
gccmakedep                    1.0.2                         1.0.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
powertop                      2.5                           2.6.1                         Richard Purdie <richard.purdie@linuxfoundation.org>Do not upgrade to version 1.9...
kexec-tools                   2.0.6                         2.0.7                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7                           7.7.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.0                         2.3.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+04509a3        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.2+gitAUTOINC+24cf4d8     Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3                           3.3.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.2                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.53                        2.4.54                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.7.10                        1.8.9                         Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3                        7.19.3.1                      Richard Purdie <richard.purdie@linuxfoundation.org>
nasm                          2.11.02                       2.11.05                       Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.11                        10.1                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+a5831aa      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
dbus-test                     1.8.2                         1.8.4                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
ghostscript                   9.07                          9.14                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.7.5                         0.7.7                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
directfb                      1.7.1                         1.7.4                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.2+gitAUTOINC+8435f51      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
connman                       1.23                          1.24                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.28                        0.9.29                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.14.0                        3.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
wpa-supplicant                2.1                           2.2                           Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.19                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.27                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.2.3                         1.3.2                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.80                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+7f388b4        Cristian Iorga <cristian.iorga@intel.com>         
diffstat                      1.58                          1.59                          Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.4                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140527                      Chong Lu <Chong.Lu@windriver.com>                 
sudo                          1.8.10p2                      1.8.10p3                      Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        10.3.1                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.15                          Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 128
Upgrade Total Count: 150
The based commit merge time is:
Sat Jun 14 08:46:02 2014 +0100
The based commit is:
commit 3a88df915831f2fd5e46ed71b21190398d1de0f1
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sat Jun 14 08:45:33 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--Dxnq1zWXvFF0Q93v
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAATsAAAEsCAIAAAAzbYOzAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3daVwT1/4G8MNmMKyyiCDI1gvIJhYUpCwJm9d9qaIfq9XWK/inrrV1ba31qhdUrG1ttbX6
USu4IVq17lpFARVcAJVdEFERY4RAEJKQ/F+Md5qyS6J4ep/vq+Qk+c2ZSZ6ZMydh0FAoFAQAKKHZ
1R0AgFeAxALQBIkFoAkSC0CTlhO7efPmiIgImUzGtsyfP3/w4MESiYRt+fzzz2fMmNGJRWZkZAwd
OrR5+5o1a+Li4jpY5NSpU3w+Xy6Xt9v4uq1fv77j3SaEbNmyha8kIiJizpw5ycnJr6+HrNa2TF1d
3fz584OCgh4/fty5yqNHj+bz+aWlpU3aFy1axOfzT506RQj54Ycfli5dSggpKCjg8/lisbgTC3qT
b+6lS5fOnDnT4kOXL19e3szBgwebPG379u18Pv+7775r0p6amsrn8z/55BPlRoVCERsb29DQ0Hav
Wk6sm5ubUCjMy8tj7tbX11+9evXZs2c3b95kq2dkZLi4uLRdvUUymay2trZ5e319fX19fQeLSKXS
mpqajjS+bq/UbUJIQ0ODrq7uv/9rzpw53bt3X7NmzcmTJ19fJxnTpk3bs2dP8/a0tLSrV68uX77c
wsKic5Vra2vFYvHp06eVG2tqalJSUsRisVQqJYQ4ODi4ubkRQhobG2tqajr3JUVUVNTOnTs718lX
IpFI1q5dm5+f3+KjjY2NDX+VkpLy4MGDJk9raGgQi8UnTpxosrKnTp0Si8V1dXXKjUePHk1KSmK2
VRu0W2z19vbW0tLKyspyd3cnhGRmZmpra7u4uKSlpfn6+hJCiouLa2trfXx8lF8lk8m0tVso2NjY
qKWl1XY/Xp9X7ZVcLpdIJLq6usxdhUKhUCg0NZvu2lprb6MyS1dXNyAggL07bNiwESNGHDp06J//
/GdH6rzqGikUivr6+u7du7fWH6FQaGNjExYW1pFqcrlcJpN169atSbu7u/uZM2eioqLYlgsXLtjZ
2T18+JC5O2TIkNY6QFpfqdbaVekq81CL7x0hRCQSxcfHZ2RkVFZWtrbE4ODg4OBg9u6NGzdu3rz5
8ccfN3+mvb19RUXFzZs33333XaZFKpWmpKS4u7uzMT59+vThw4czMzNbX8U/tdxpPT09FxeXrKws
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

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--Dxnq1zWXvFF0Q93v--
