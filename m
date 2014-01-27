Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB19E004E0
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 18:23:22 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id E2BA9A415C; Mon, 27 Jan 2014 02:23:22 +0000 (UTC)
Date: Mon, 27 Jan 2014 02:23:22 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140127022322.GA30312@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 27 Jan 2014 02:23:23 -0000
X-Groupsio-MsgNum: 17906
Content-Type: multipart/mixed; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gettext                       0.18.3.1                      0.18.3.2                      Wenzong Fan <wenzong.fan@windriver.com>           
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.4                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.2                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.33                        1.4.34                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.8.2                         3.11.4                        Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
libpng                        1.6.7                         1.6.8                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
webkit-gtk                    1.8.3                         2.3.4                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.4                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+bafd76f        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
lsbinitscripts                9.50                          9.52                          Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+5b5f834        Saul Wold <sgw@linux.intel.com>                   
libcheck                      0.9.11                        0.9.12                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.35.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
dpkg                          1.17.4                        1.17.6                        Saul Wold <sgw@linux.intel.com>                   
libgcrypt                     1.5.3                         1.6.0                         Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.3                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libnl                         3.2.22                        3.2.24                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.56                          3.57                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
libcgroup                     0.38                          0.41                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.32                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.17.2                        Ross Burton <ross.burton@intel.com>               
cogl-1.0                      1.16.0                        1.17.2                        Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.4.0                         Ross Burton <ross.burton@intel.com>               
weston                        1.3.1                         1.4.0                         Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.38.2                        2.39.3                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.23.2                        2.24                          Robert Yang <liezhi.yang@windriver.com>           
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
wget                          1.14                          1.15                          Robert Yang <liezhi.yang@windriver.com>           
git                           1.8.5.2                       1.8.5.3                       Robert Yang <liezhi.yang@windriver.com>           
libav                         0.8.9                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+956c8d8      Paul Eggleton <paul.eggleton@linux.intel.com>     
docbook-sgml-dtd-3.1-native   31                            41                            Paul Eggleton <paul.eggleton@linux.intel.com>     PRS Reports Incorrectly       
createrepo                    0.4.11                        0.10.2                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cmake                         2.8.12.1                      2.8.12.2                      Paul Eggleton <paul.eggleton@linux.intel.com>     
cdrtools-native               3.01a20                       3.01a22                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+cab1b7b       No Maintainer info                                
python-nose                   1.2.1                         1.3.0                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.4                        1.15.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.1                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.907                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e499045        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.4                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
libdrm                        2.4.49                        2.4.52                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.3.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0.2                      7.19.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
libmpc                        1.0.1                         1.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.10.09                       2.11                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P2                      Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.4                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.1+gitAUTOINC+50e80fc      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.1+gitAUTOINC+50e80fc      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.15                        Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+f28b      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-atk                   2.10.0                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+fd4a3a4      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          16+gitAUTOINC+36c4bb928a      16+gitAUTOINC+3d51a2f         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+bafd76f        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.1.1+gitAUTOINC+57b9d84      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
telepathy-mission-control     5.16.0                        5.99.6                        Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+d7f8a7c        Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.14                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.13                          5.14                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+97ce506       Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.20                          1.21                          Cristian Iorga <cristian.iorga@intel.com>         
sbc                           1.1                           1.2                           Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.6                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.14                          Cristian Iorga <cristian.iorga@intel.com>         
libvorbis                     1.3.3                         1.3.4                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.25                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.76                       Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.5.2                         1.5.3                         Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    4.0                           4.99.2                        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-ptest                    1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.21.1                        1.22.1                        Chen Qi <Qi.Chen@windriver.com>                   
sudo                          1.8.9p1                       1.8.9p4                       Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.0                        10.2.1                        Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.13                          Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 111
Upgrade Total Count: 133
The based commit merge time is:
Thu Jan 23 12:18:05 2014 +0000
The based commit is:
commit 1a9226f140f578f11696abf1a3c989fae1d4c14a
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu Jan 23 12:10:01 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--3V7upXqbjpZ4EhLz
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAeoAAAEsCAIAAACDvmfEAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3daVxT17oG8MVkgAhBAoQgioAGiowNylDBMGkRtdoqem0d2l6H61ztaR1OrbbVgoi1tae1
19ZfneehalUcegUVB6wKCCaBCIJtGQMEw5SQ3A+bs41MKkTiPn3+X0xWwps32/Bk7bV3iJFWqyUA
AMA0xoZuAAAAugLxDQDASIhvAABGQnwDADDS3zq+v//++xEjRqjVanrkgw8+GDlyZFNTEz3yj3/8
Y+bMmV0onpGRMWrUqLbj69atS0xMfMYiKSkpERERGo3mqYMv2oYNG569bULIli1bInSMGDFi4cKF
R44ceXEd0jraMnV1dR988EF4ePhff/3Vtcrjxo2LiIgoLCxsNf7xxx9HRESkpKQQQv71r3+tWLGC
ECKVSiMiIpRKZRceqCf/cy9dunTu3LlO7vDXX39t3bp1/fr1Hd1t27ZtERER33zzTavxK1euRERE
zJs3T3dQq9UmJCQ0NjZ2s20gf/P4Hjx4sFwuF4vF1NWGhobr169XVlbevn2bGtFqtRkZGZ6enl0o
rlarHz161Ha8oaGhoaHhGYuoVKra2tpnGXzRnqttQkhjY6O5ufnn/7Zw4UILC4t169adOXPmxTVJ
mTFjxt69e9uOp6enX79+fdWqVTwer2uVHz16pFQqz549qztYW1ublpamVCpVKhUhxM3NbfDgwYSQ
5ubm2trarp3ZNWvWrO3bt3etyefS1NS0fv16iUTS0R3u3r07efLk1NRUlUq1Zs2ajRs3tr1PY2Oj
Uqk8ffp0qyebkpKiVCrr6up0B0+cOHHo0CFqW0E3mRq6AUMSCoUmJiaZmZne3t6EkJs3b5qamnp6
eqanpwcFBRFCZDLZo0ePAgMDdX9KrVabmraz3Zqbm01MTHqm87aetyuNRtPU1GRubk5d1Wq1Wq3W
2Lj123lH451Uppmbmw8bNoy+GhcXN2bMmKNHj77++uvPUud5n5FWq21oaLCwsOioH7lc3q9fv+jo
6GepptFo1Gp1r169Wo17e3ufO3du1qxZ9MjFixcHDBjwxx9/UFdjY2M7aoB0/KQ6Gu9Oq9RN7f7f
EUIUCkVycnJGRkZZWVknD7p+/fqoqKhVq1YRQoYPH75kyZLp06dzudxWd3N1dS0pKbl9+/arr75K
jahUqrS0NG9vbzrTz549e+zYsZs3b3b+NOHZ/a1n32w229PTMzMzk7p67do1oVAYFhZ29epVaiQr
K8vY2Jh+Re7du3f69OmhoaETJky4dOkSXefWrVsff/zx8OHDY2JiNm3a1Nzc3OqBCgoKpkyZ8ssv
v+gOzpo16/jx4/TVpKSk51qdIIRoNJrx48ffvHnz3Xfffe2118aNG3f48GH61tOnT7///vvDhg1b
sGDBhQsXFixYQAiRy+Xjx4+XSCQTJ0789NNPCSEymWzjxo2jRo0SiUSzZs2iVwZqamo2bNgQGxsr
Eok+++wz3QWl7OzsFStWREREREVFrV+//hlnUkZGRl5eXiwWi7qqUCi++eabsWPHhoWFzZo1q7i4
mBqfMmXK1atXZ82aNWzYsLFjx+7cuZOucOXKFWr8jTfe2Lx5MzXY2Ng4fvz4nJycKVOmLF26dPbs
2fn5+du2bVu9erXuox85cmTr1q3FxcXjx48vLS0lhBw/fnzatGkhISHx8fH79u2j7lZYWBgfH3/v
3r033ngjOTm57bOIiIh4+PBhfn4+PXLu3LmYmBj66vbt29etW9fqp7Ra7Y4dO955553Q0ND4+Pgb
N25Q47W1tStWrIiKigoPD58+ffqDBw8IIQsWLLh3797OnTupRRi1Wr1+/foxY8ZQGyorK4v62UOH
DiUlJR06dCgmJmbYsGEzZswoKSmhbiovL09OTh41alR4ePiCBQvaDWgTE5PBgwfPmDHDycmp/f8w
QvLz83Nzc9977z3q6rBhw44cOdK7d++292SxWMOHD9ddXbl69Wrv3r19fX3pES6XKxKJJk2a1NHD
wfP6W8c3IWTIkCF37tyhLl+7di0oKCg0NPT+/fvUKz4zM1MgEFhZWRFC9uzZ89NPP82cOfPQoUOh
oaFLly6l5hFFRUWLFy92d3ffv3//Rx99dOTIkVYpXFBQMHv2bCp0dMcHDRp08uRJ6nJDQ8OJEyfo
94lnV1xc/NFHH8XFxR04cGDMmDGJiYkXL14khKSnp69evXrs2LGHDx/29vZevXo1teCrVquLi4s/
+eSTUaNGzZgxgxDy0UcfVVRUfPfdd3v27LG0tFy7di1V+fPPP09LS/vss89+/PHH6upqetGjpKRk
0aJFTk5Oe/bsWbly5ZkzZz777LOn9qlWqy9fvnzp0qXRo0dTI6tWrbpz505CQsKPP/5oamr63nvv
UStCDx8+XL58eXh4+P79+ydPnrx582ZqK0ml0mXLlvn7+x88eHDp0qUHDx7cunUrIUSj0VDPSCQS
zZkzZ9WqVf369Rs/fvzcuXN1G4iOjn7rrbccHR03bdpkZ2d3+fLltWvXjh49+tixY1OmTPnqq6+o
J9jU1FRUVLRmzZqJEyfGx8e3fSLW1tbBwcH0+kltbW1GRobujL66urq8vLzVT/3000979uyZP3/+
wYMHAwIC5s+fn5OTQwj56quv7t279+GHH+7atcvKymr58uWEkOXLl7u5uY0ePXrRokWEkPXr16em
pv7zn//cv39/3759ly5dSv1XKhSKc+fO3bx5c9euXT///LNUKv3hhx+oDfLxxx8XFhZu2rTpX//6
V21t7X//93/rvvtS2Gx2fHx8fHx826k0TSaTWVpaWlhY7Nmz55tvvjl//ryzszP9BtzKiBEjLly4
QK/anz9/PioqysjIiL6DUCiMj4+PiIjo6OHgeSG+h8jl8ocPH5aUlBQWFgYHB3t4eNja2qanpxNC
MjMz6ZWTLVu2LF68eNiwYf3791+0aBGPx6PmGtu3b/f39581a1bfvn1jYmLGjRunOwehsnvs2LGt
0oQQEhMTc+fOHblcTghJTU01MTEZPnx4F55CZGTkhAkTXFxc3n///ZEjR54/f54Q8tNPP40bN+6N
N95wcnKaPXu2j4+P7o+MGTPm/ffff+WVVxoaGsaOHbts2TJXV1dnZ+dRo0bJZDJCSFFR0cWLFz/9
9NOhQ4cKBIJ169bZ2NhQP7t79243N7f58+c7OztHRkbGx8dfuHCh3RXeP/74gz50GRYWtnjx4pkz
Z44YMYIQkp2dffny5YSEBC8vLy8vrw8//LCmpiYjI4P6waCgoHfeecfFxWXKlCkTJkygtueRI0e8
vLzmzp3r7OwcHh6+cOHCgwcP0o8VHR09e/ZsX1/fvn37slisPn36ODg46DZjbW1ta2trZmbm4uJi
YmKyd+/eMWPGxMfHOzk5jRs3bvLkyQcOHKDuqVar33777WnTprm7u7e7wWNiYqiNTAj5v//7P1dX
1/79+3fyH6RWq3/66aePPvooODjYxcVl6dKlNjY2VIXCwkJnZ+eRI0e6ubn985//pA6SOzk5UU+B
x+PV19cfO3Zs+fLlQUFB/fr1++STT6ysrOgXmEKh+PTTT/l8vpeX11tvvUVN3q9cuSIWixMTEwUC
gZ+f38KFC//888+7d+920mFHysvLTUxMpk2btn///rKyss8//5zaIWhXcHCwWq3+/fffCSEqlSo1
NVV3pwRehL/12jchxN/f38zMLDMzU6VS8Xi8AQMGEEKCg4PT09PDw8MfPnxIxfcff/xRV1eXlZVF
ry3Y2tpSk6C8vLxevXp9++231LhCoaitraUOWqpUqjlz5jQ2Nra7vODv729nZ3fx4sU333zz9OnT
0dHR7S5fPpXunF0oFP7888+EkIKCggkTJtDjr7zyiu4etL+/P3XB3Nx86tSpYrE4Nzc3Ozv7/Pnz
VA/379+3tLQMCAig70Yfv83Ly1Or1fTzra6ubmpqKi8vbxWXhBAul7ty5UrqskajOXv27O7du0Ui
kZubW15enqWlJZ2YhBAbG5s///yTfha6z4ia6ubn5+s+Ux8fH7lcXl5eTu3L08/oGeXn548cOVK3
2tGjR+k3oc6riUSiL774QiKReHh4nD9//qkhVVBQoFKpbt68mZubS43Y2dlRT3b06NEJCQnvvfde
eHi4SCRqOzOVyWQajYZegjA2Nvby8qKPNA4YMIBe67ezs6P6z8vL692797Zt2+gilpaWf/75Zxf2
7aiD5FOnTp0+fbqJiUl2dva7775LvYO2vbOpqalIJDp37tyQIUOuXr1qbW3t7e194cKF531QeHZ/
99k3i8Xy9vbOzMykVk6owdDQ0IyMjNu3b5uYmFAvemrfk81mW/7b8OHDo6KiCCEqlcrc3Jwe79+/
/9y5c6ldyObm5tmzZ69YsWLfvn1SqbTto0dFRZ0/f766uvratWtxcXFt70Add2p1Glmrq9bW1rpP
Ry6XU7/GlpaW9DibzW73R2pra2fNmrVkyRKxWCwUCulzvKh9Xt2jXvQuc1NTE4vFop+vk5PT3Llz
2z2kRh26pISHh3/xxRfGxsbXrl2jNpqZmZmljsmTJ3t4eFA/SK1W0Y+rUChUKpXugVb6GdFn4Ohu
hGfRtlpDQwP9Ltt5NUtLy9DQ0LNnzyoUioyMjKfGN1W2d+/e9JONjo6m9rTefPPNffv2DR06NC0t
bfLkyR9//HGr/ZimpiZjY2Pd9Qo2m00/63aP07bdtjNmzOh8/6AjXC63V69eU6dOpf5/fXx8HBwc
Ll++3NH9Y2JifvvtN41Gc+7cuVaHiOFF+LvPvgkhQ4YMOXv2rFwuX7ZsGTUSHBysVCp3797t6elJ
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
Wq1WqVTKZLIuFy8vLy8oKNiwYcOGDRsuXryo1Wp1P0fG5/N1P0fW/eKEkNDQ0HZ/57tf3N/fn947
yc7OfuWVV7r/KISQyMhIf3//tqW6X3z48OHUSmZNTY1UKqX3BfVSfOjQoT4+Prdv3/7hhx/c3Nw6
3y3W429T94u3+7IxrK7Ht7e3t1gsLi4uHjhwYGNjY0NDg0Qi8fb2psZlMplQKKyoqGhubs7Pz/fy
8rp69Sqbzfb29qYr3Lt3r6KiQnd2qcfiHA5n0qRJy5YtW7p0aVpaWlZWlh6Ll5aW3rx5k8fjTZ48
ecuWLffu3dNjcUphYaG1tXWrlZPuF5fL5X/++Wfv3r29vb1ramp0Z9/dL+7v729lZbV169bk5GSl
Utmdzh0dHd9+++1ly5bNmzfv2LFjhYWFjY2NlpaW9H9uXV2dHou3fQXqvfidO3cSEhKGDx/ebnw/
76N00rC+iqenp2/YsGHixImdHzTqWvFevXr17t3bzMxMo9HosXhHv016Kf5cL5ue0eGJg0/Vp0+f
o0ePWllZ8fl8ExOT+vr6wsLCkSNH2tjYHD9+3Nzc3NXVtb6+vqmpqaKiYvjw4Tt37lQqlRkZGXl5
ecXFxVqt9ubNmzU1Nb///rtYLH748KFSqaTf57tf3MfHx8nJycjIyNjYWKPRVFRUeHp66qu4o6Oj
qanpiBEjzM3NVSpVWVmZHotTf1vmzJkzgYGB9vb2+t3mBQUF/fr1GzdunJubW1lZWUlJiR63uUAg
CAwMdHZ2FolElZWVnp6e1ISoC8VtbGyo85169epVU1PT3NxsZmb28OHDV199lRBy+/ZtPp9Pfxah
+8UHDBhACKmtrc3MzGx1GEYvxQ8fPpydnT179uyOPpj3vI9C/VR5efmDBw+eeoDueYs3Nzfv2LGj
pKRkzpw5Tz3Q+rzFi4qKWCyWk5OTr6/v9evXVSpVJw+hr98mvRTv6GVjQF0/aGBqatq3b9/U1NTF
ixezWKyjR49SLyNLS0srK6sbN25ERkY+evTo1KlT4eHhhJB58+Y1NzcTQlJSUnr37h0UFDRkyBCV
SkUIuXr1anV1dUREhB6LX7p0qays7K233mpqaiooKBgzZoweixNCDhw4oNFojIyMysrKdH/h9VK8
ubk5Ly9v0qRJet/mmZmZGRkZr7/+ularValUujPB7hfPz89PTU2dMWOGkZHRrVu3Ro8e3eXiJ06c
sLCwiI6OrqurKykpGTVqlEqlunz5skqlMjMzy8rK0l3o6H5xPb7O2xYvKir6888/FyxY0Mlq6fM+
ynN53uJ37941MjKaOXPmiyh+/fp1W1vbqKiouro6hULR+SqHXn6b9FX8uV42PaNbq+8+Pj7Nzc12
dnYCgaCyspLeZ/H29u7Vqxebzfb09KyoqKDGORyOra2tra2thYUFm81ms9lWVlbUCJvNNjc3b3UM
vZvFAwICqEPba9assbCwaLUD2M3ibDY7LCxs8+bNa9eubWxsHDhwoB6LE0Kys7P79evX7pkV3Swu
FArt7Oy+++67NWvWyOVyHx8fPRZ3cXGRy+VfffXV+vXr4+LizMzMulw8ODg4Nzd38+bNa9ascXFx
oV4qvr6+CQkJ69atGzJkSKspWzeLt93OeiyenZ0tkUg++OCDRYsWLVq06Jdffun+ozyv5yqenZ19
8+bNRf+Wmpqqx+Kvv/56Wlrali1bPv300z59+jx1Iaj7v036Kv68L5seYIDzvnuSQqEwMTF5Qaf4
UOtlTPwii7q6OpVK9SI612q1f/31l5WVlV5e3FVVVRYWFubm5vSIUqmsq6trtaakr+J69EKL/wco
Kyt7lnh9Cb1U/7P/4fENAPCfyvCnLgIAQBcgvgEAGAnxDQDASIhvAABG+n9j1D4VZfJRuwAAAABJ
RU5ErkJggg==

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--3V7upXqbjpZ4EhLz--
