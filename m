Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F1F5E00547; Sun, 22 Jun 2014 19:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A656E00524
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 19:20:18 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 726DCA4048; Mon, 23 Jun 2014 02:20:18 +0000 (UTC)
Date: Mon, 23 Jun 2014 02:20:18 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140623022018.GA3434@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 23 Jun 2014 02:20:20 -0000
X-Groupsio-MsgNum: 20255
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline

--LZvS9be/3tNcYl/X
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
systemtap-uprobes             2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+c69af88        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
squashfs-tools                4.2                           4.3                           Saul Wold <sgw@linux.intel.com>                   
libusb1                       1.0.18                        1.0.19                        Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.5                         Saul Wold <sgw@linux.intel.com>                   
xcb-util-renderutil           0.3.8                         0.3.9                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+a173a62        Saul Wold <sgw@linux.intel.com>                   
opkg-utils                    0.1.8+gitAUTOINC+d144584      0.1.8+gitAUTOINC+eae0d8f      Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+39b6      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.10                       Saul Wold <sgw@linux.intel.com>                   
kmod                          17+gitAUTOINC+49d8e0b590      18+gitAUTOINC+74c2694         Saul Wold <sgw@linux.intel.com>                   
ubootchart                    0.0+r12                       N/A                           Saul Wold <sgw@linux.intel.com>                   
systemtap                     2.5+gitAUTOINC+8f0fcd995f     2.5+gitAUTOINC+c69af88        Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.22                        2.0.23                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.4.3                       3080500                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
liburcu                       0.8.1                         0.8.4                         Saul Wold <sgw@linux.intel.com>                   
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+92757c3      Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.68                          3.69                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
curl                          7.36.0                        7.37.0                        Saul Wold <sgw@linux.intel.com>                   
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+bb5      Saul Wold <sgw@linux.intel.com>                   
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
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+5fe479b       Ross Burton <ross.burton@intel.com>               
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
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.10                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
gccmakedep                    1.0.2                         1.0.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
powertop                      2.5                           2.6.1                         Richard Purdie <richard.purdie@linuxfoundation.org>Do not upgrade to version 1.9...
kexec-tools                   2.0.6                         2.0.7                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7                           7.7.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.0                         2.3.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+8309872        Richard Purdie <richard.purdie@linuxfoundation.org>
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
lz4                           r112                          N/A                           No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.27                        1.0.28                        Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+0517388        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+0517388        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.20                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.19                          5.20                          Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.28                        0.9.29                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.14.0                        3.15.0                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.20                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.28                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.2.3                         1.3.3                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+7f388b4        Cristian Iorga <cristian.iorga@intel.com>         
diffstat                      1.58                          1.59                          Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.4                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140527                      Chong Lu <Chong.Lu@windriver.com>                 
sudo                          1.8.10p2                      1.8.10p3                      Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.0.0                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.15.1                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 127
Upgrade Total Count: 149
The based commit merge time is:
Fri Jun 20 14:03:58 2014 +0100
The based commit is:
commit 7c1a975a1c2fd884aa9f6f4736656d854a6c5edb
Author: Belen Barros <belen.barros.pena@intel.com>
Date:   Wed Jun 11 10:58:55 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--LZvS9be/3tNcYl/X
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAV4AAAEsCAIAAAAEo0yHAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3dd1xTV/8H8MMyyJYhQzYWkCUWEKTs5eMeVfRltdr6CP6os7bO1lof9QEVa6uttI6XWsGF
aNW6tYqKA1SGbBAEVESIkBBWQvL74/a5TeGASCLU9vP+i5wk33vuDfnknJPLRUEikRAAgD9T7O0O
AMBfEaIBACgQDQBAgWgAAAo5RMOOHTvCwsJEIhHbsnjx4uHDh7e0tLAtn3/++Zw5c7pRPDU1deTI
ke3bN2zYEBMT08Ui58+fDwwMFIvFr2x80zZv3tz1bhNC4uLiAqWEhYUtWLAgKSnpzfWQ1dGRaWho
WLx4sZ+f37Nnz7pXefz48YGBgaWlpW3aly1bFhgYeP78eULI999/v3LlSkJIQUFBYGCgQCDoxoZ6
8sW9fv36xYsXqXfduHFjdTvHjh1r87A9e/YEBgZ+9913bdpv3rwZGBj4ySefSDdKJJLo6Ojm5mY5
7kIbcogGR0dHLpebl5fH3Gxqarpz505NTc2DBw+YFolEkpqaam9v343iIpGovr6+fXtTU1NTU1MX
iwiFQj6f35XGN+21uk0IaW5uVlVV/c//LFiwoG/fvhs2bDh37tyb6yRj1qxZBw8ebN+ekpJy586d
1atXGxoadq9yfX29QCC4cOGCdCOfz09OThYIBEKhkBBibW3t6OhICGltbeXz+d37Hi0iImLfvn3d
6+RraWlp2bhxY35+PvXe1tbW5j9LTk4uLy9v87Dm5maBQHD27Nk2O3v+/HmBQNDQ0CDdeOrUqcTE
ROZYvSHKspdwc3NTUlLKyMhwcnIihKSlpSkrK9vb26ekpHh6ehJCiouL6+vr3d3dpZ8lEomUlSlb
b21tVVJSkr1X3fO6vRKLxS0tLaqqqsxNiUQikUgUFdsGbkftnVRmqaqq+vj4sDdHjRo1ZsyY48eP
/+tf/+pKndfdI4lE0tTU1Ldv3476w+VyzczMQkJCulJNLBaLRKI+ffq0aXdycrp48WJERATbcvXq
VUtLyydPnjA3R4wY0VEHSMc71VG7LF1l7qK+doQQHo8XGxubmppaVVXV0Rb9/f39/f3Zm/fv33/w
4MHHH3/c/pFWVlaVlZUPHjx49913mRahUJicnOzk5MTmxYULF06cOJGWltbxLsqHHEYN6urq9vb2
GRkZzM3bt2+7ubn5+vreunWLacnMzFRUVGT39uDBgzNnzvT29p40adL169fZOvfv31+2bJm/v39o
aOjWrVtbW1vbbKikpGTatGm//PKLdGNERMTJkyfZm5s2bXqtETshRCwWT5gwIS0t7aOPPnrvvffG
jx8vPdg7e/bs7NmzfXx85s+ff/ny5fnz5xNCuFzuhAkT8vPzJ0+e/NVXXxFCiouLt2zZMnLkyICA
gIiICHa0XFdXt3nz5hEjRgQEBKxdu1Z6kpWVlbVy5crAwMDg4OCNGzd28RNAQUHBwcGBw+EwN3k8
3nfffTd27FhfX9+IiAj2s2jatGm3bt2KiIjw8fEZO3bszz//zFa4efMm0z5u3Lht27Yxjc3NzRMm
TMjOzp42bdqSJUsiIyOLior27NmzZs0a6a0nJSXt3LmzvLx8woQJz58/J4ScPHnyww8/HDZsWHh4
+KFDh5iHlZaWhoeH5+bmjhs3LjY2tv1eBAYGVlRUFBUVsS0XL14MDQ1lb+7bt2/Dhg1tniWRSPbv
3z99+nRvb+/w8PC7d+8y7Xw+f+XKlcHBwX5+fjNnznz8+DEhZP78+bm5uT///DMzMRGJRBs3bhwz
ZgxzoDIzM5nnJiYmbtq0KTExMTQ01MfHZ9asWZWVlcxdL168iI2NHTlypJ+f3/z586lvfiUlJUdH
x1mzZpmYmNBfsD8TCoXr169fuHChlpZW+3s5HI6/v7/0xOTWrVsaGhouLi5si56eXkBAwJQpU7qy
OVnIZxnSw8MjPT2d+fn27duenp7e3t6PHj1ijmZGRoatra2mpiYhJCEhYffu3XPmzElMTPT29l6y
ZAmTf2VlZYsWLbKxsTl8+PDSpUuTkpLavMNLSkoiIyOZX2jp9nfeeef06dPMz01NTadOnWIzqOvK
y8uXLl06atSoI0eOjBkzJiYm5urVq4SQlJSUNWvWjB079tixY05OTmvWrGEm2CKRqLy8/Msvvxw5
cuSsWbMIIUuXLq2urv7hhx8SEhLU1NTWr1/PVP7Pf/6TnJy8du3aXbt21dbWshOBysrKhQsXmpiY
JCQkrFq16ty5c2vXrn1lP0Ui0Y0bN65fvz569GimZfXq1enp6dHR0bt27VJWVv7444+ZWVJFRcWK
FSv8/PwOHz48derUbdu2MUepoKBg+fLlrq6uR48eXbJkydGjR3fu3EkIEYvFzB4FBATMnTt39erV
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
ZdXma8JO2NjYJCUlVVVV9e/ff/v27VFRUadOnVJWVm5paVmzZo22tjbzsLCwsKioKHV19erqai8v
r8jISEJIcHBwfn7+woULmeM8aNCg1atXU7diZmZ24MCBly9ffvbZZx31ZObMmYWFhdOmTTM0NKyq
qvLx8Wlz0l7n+vbt6+Pj05WFBsbatWvnzp0bHByso6NTXV390UcfMZ9DkZGRS5cuDQ0NVVNTY8ae
1tbWhBBzc/PDhw/X1dWtWLFi06ZNc+bMCQoK0tTUZE7o7HzUoKamtnXr1kWLFh08eFAikSgoKKxb
t67rAyKJRJKQkNCnTx9mKCoWi8+dOzdz5sw2D8vKykpISPi///u/NqdjhIaGJiUlffjhh13c3Jug
0CvXaygrK6uoqLC2tjYyMpJu5/F42dnZurq677zzTkcnmVBt2bIlJydn165dnT+sqqqquLjYyMjI
ysqKbRSLxUOHDt29e7e5uXlubq6hoSG7qM7j8VRUVIRCYXZ2tru7+5dffikSiTZv3ty+cktLS15e
nkgkcnR05HA4zCCCWYAUi8U5OTlNTU3vvvtum53i8/nZ2dna2tq2trbdPtGrtbU1Ly+voaHBzs6O
/Vjz8/PbsGGDi4sLczzZBQh2uzk5OVZWVu1XPVmNjY0ZGRnM0K/zDtTU1BQWFjo4OLzuUkX3lJSU
PHv2bODAgW06X1hYyOPx7O3t2XFTc3Nzenq6pqYm+9n76NGj2tpaFxeXV54ZxRAKhbm5uSKRiJ0U
/4NI3n55eXnBwcEnT57s3tNbW1vd3NzS09Pb3/X111/PmDGjvr5eIpHcu3cvNDT02LFjMvW1p/j6
+l6/fr23ewFvMblNKHpLXFzcnj17PDw8xowZI/fiCxYsWLhwYXBwsIGBgVgsnjJlSldWmAH+Bnpn
QiFHPB6vqqpq4MCBshS5e/euo6Njm+8mWVVVVc+fP3d0dHytOU7vun//vo2NDbvuAPC63vpoAIA3
4a35GASAnoRoAAAKRAMAUCAaAIAC0QAAFIgGAKD445Sn/Pz8y5cvKyoqvvfee8w1SwQCAXPJyhEj
Rujr6/deJwGgp/0+anj58mVCQkJQUFBgYOCPP/7IXDQpNjaWw+E4Oztv2rSpe1f7BoC31O+jhsrK
yrCwMOYPaSwtLaurq+vq6oRCIfO3jHl5eQUFBezVigDgb+/3aBg0aBAhJD8/PyUlRVlZ2crKKiMj
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
cHCwv7+/9DtNLsWZ9qqqqoMHD8pSmVpcIpGUlJSwv+qyjMGpPd+4ceOAAVcBwDAAAAY/SURBVANG
jRoVHx//+PFjWTovrcO1hlfau3evqampmpra0aNHKysrra2t8/Lybt26dfXqVTs7Ow6Hc+DAAR6P
Z25unpGRkZmZaWNjU1hYqKio2Nzc7O7uTgjp06ePhoaGhoYGj8dLS0ubMmWKHIsXFBTk5ORMmTJF
T0+voKDAzMxMV1dXXsWTk5PNzMy8vLz09PSePXumra3d7eL19fXm5uZDhw7t169fdXW1RCKpra19
+fLllClTzMzM8vLyjIyM2LPUZS9uZWVVUlKirKxcXV3t6+srywvavnhzc7OamlpQUJCmpmZzczOX
yx00aJC8ihNCTE1NXV1dDQwMsrKyLC0t5XjMraysWltbf/rpJ0dHR0VFRQcHBzkeFm1t7dzc3NDQ
0L59+2ppaSkqKsqxeL9+/R49ejRu3DhdXV03NzcNDQ0Oh9O9d3Qb3R81qKmp5ebmSiSS9PT0u3fv
EkIyMzN1dHQ4HE5+fr5QKMzMzExLSyOEPHjwgHkVg4KCXF1d25c6dOjQ1KlT5Vvczs6uf//+u3bt
+vbbbwkhNjY2cizet2/f+/fvE0IkEolAIGA/drpR3N/fnxm+1tXVFRQU2NnZSZ9sZmxsLH2ymezF
CSHe3t5Dhw6V/QVtX9zV1ZWZcDU2NmZlZbG5IJfiDg4Ow4YNy83N3bNnj6qqqqWlpXwPy4kTJzw9
PaUnF/Iq/uLFi5qampiYmNjY2LNnz0qPMWUvXlxcrKure+bMmbi4uLq6Ohmnn9K6Hw1OTk55eXnl
5eUDBw5sbm5uamrKz893cnJi2ouLi93c3Kqrq1tbW4uKiqRjuI3S0lItLa02swnZi3O53KdPn2po
aDg5OdXV1VVXV8uxuKurq6am5s6dO2NjYwUCgew9T0lJ2bx58+TJk01MTJjPXqZdW1u7oaFBjsXl
/oK2L56enh4dHe3v7y8dDfIqrqKiwnwwisViORbPzc2trq728fF5E4dFW1t7ypQpy5cvX7JkSXJy
cmZmphyLP3/+PC0tzdDQcOrUqXFxcbm5uZ28xK+l+xOKfv36HT9+XFNT09jYWElJqbGxsbS0dPjw
4To6OidPnlRVVbWysmpsbGxpaamurvb392ee9eLFi8ePHzPDcsa5c+fc3d0NDAzkW/zKlStmZmbj
x4+3trauqqqqrKxkPhzkUlxFRcXd3d3U1DQgIKCmpsbe3p4d3L5u8dbW1v3791dWVs6dO5dZt3v6
9GlFRcW7775LCHnw4IGxsTF7UonsxRl8Pj8jI6PNhEIuxY8dO5aVlRUZGdnmbDzZiz979owQYmxs
7Ojo+OjRo/LycnYTshc/evRoXV3dvXv38vLyKioqBAJBt39b2hfX0NAwMTFRUFBQVFQUi8XV1dX2
9vbyKt7Y2KisrBwWFqaqqioUCquqqtjiMur+qEFZWXnAgAHXrl2ztbW1s7M7c+YMs2ispqamqal5
9+5dtt3Z2bmjIq2trYWFhdIfL/IqrqurywzFJRKJUCiUHn/KXryoqGj37t36+vrKysr379+3sLDo
dvGHDx8qKCjMmTNHQ0ODqeDq6vrkyROhUEgIyczMHDBggByLd0L24mVlZU+fPp0/f36/fv3kXvzh
w4cXLlwghAiFQi6XK32VANmLz5gxIyIiYsaMGczScmBgoByLX79+/dixY4SQlpaWkpIS6dmc7MVt
bGwePnwoFoslEklVVZWMX9z86SWT5cnOzs4VFRX6+vocDqempobtlpOTU2pqqrq6ur29fXx8fCfd
zcrKMjMzU1BQkHtxNze3kpKSH374oaqqSk9Pr82bXMbiFhYWXC73m2++EYlEo0aNUlFR6XbxrKys
tLQ0ZuWCEDJx4kR/f38XF5fo6GglJSUPD482XwHKXpy6R3IpXl9fn5+fv3jxYqYlKCho3Lhx8ioe
EBCwadOm7du3P3nyxNDQsM1yibwOi7q6elNTU5tvo2Us7ubmtn///m+//baqqsrOzq7NtE72nvv6
+m7bto3P5+vr6w8cOLCT1/e19PR5DT2soaFBKBS+ievQSCSSZ8+eaWpqynhSQ0cEAkFDQ0ObeRZw
uVxlZWU5Lrb1GB6Pp6SkpK6u/iaKM+sU8v09/5tHAwB0D64NCQAUiAYAoEA0AAAFogEAKP4fVa2Y
r/7tFJcAAAAASUVORK5CYII=

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--LZvS9be/3tNcYl/X--
