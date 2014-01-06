Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC5B5E006CA
	for <yocto@yoctoproject.org>; Sun,  5 Jan 2014 18:03:42 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id B446CA415C; Mon,  6 Jan 2014 02:03:42 +0000 (UTC)
Date: Mon, 6 Jan 2014 02:03:42 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140106020342.GA2721@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 06 Jan 2014 02:03:42 -0000
X-Groupsio-MsgNum: 17668
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
gnome-common                  3.7.4                         3.10.0                        Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9765                         N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.2                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gtk+3                         3.8.2                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
libtasn1                      3.3                           3.4                           Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.3                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.1                        Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.44.2                        2.45.3                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
libpng                        1.6.7                         1.6.8                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.3                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.2                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+19ae853        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
gdbm                          1.10                          1.11                          Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+503e4fe        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.5                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.3                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.0                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.28                        3.5.29                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.1                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.9.3                         1.10                          Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.1                        2.30.2                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.3.91                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.1                         1.3.91                        Ross Burton <ross.burton@intel.com>               
glproto                       1.4.16                        1.4.17                        Ross Burton <ross.burton@intel.com>               
automake                      1.13.4                        1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
logrotate                     3.8.1                         3.8.7                         Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.17.4                        5.17.4-5                      Robert Yang <liezhi.yang@windriver.com>           
make                          3.82                          4.0                           Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.23.2                        2.24                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.8                        1.42.9                        Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.60                       2013.62                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.9                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.1                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a21                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
xf86-video-modesetting        0.8.0                         0.8.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.15.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.907                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.3.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-proto                     1.9                           1.10                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+e7becc8        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.49                        2.4.50                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0.2                      7.19.0.3                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.10.09                       2.11                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.4                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.157                         Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.14.2                      Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+fef2      Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+0f6a67b      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      16+gitAUTOINC+2726da5         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+19ae853        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.1.1+gitAUTOINC+3af4fc4      Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.33.0                        7.34.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.6.1                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.12                          5.13                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+3a81626       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.5                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.25                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.2.0                         1.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.13                          1.14                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.76                       Cristian Iorga <cristian.iorga@intel.com>         
minicom                       2.6.2                         2.7                           Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+52d77db        Cristian Iorga <cristian.iorga@intel.com>         
netbase                       5.1                           5.2                           Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.18                        1.7.8                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
libpcre                       8.33                          8.34                          Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.7.8                         Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.21.1                        1.22.0                        Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.15                          2.16                          Chen Qi <Qi.Chen@windriver.com>                   
coreutils                     8.21                          8.22                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.12.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 114
Upgrade Total Count: 135
The based commit merge time is:
Fri Jan 3 15:16:42 2014 +0000
The based commit is:
commit f33c990db392c6b208efecea0f941449c4d25cec
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Sat Jan 4 01:52:38 2014 +0800
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--BXVAT5kNtrzKuDFl
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
M4czDLm5uX3yySdr166Njo5u8lBsbOz27dubyyBCyI8//vj3v/99+PDhtra2KpWKx+ONGjXK8PyU
uLi4cePG2dralpeXR0dHjxkzhhASHh4eExPz4Ycf2trampiYDBw4kMmpJqKjo3ft2jV79mwnJ6eq
qqqPPvpox44dU6dOXb9+fWpqKjOFbGNjY2NjM2zYMGafIiQkZOLEidOmTXN0dFQoFO7u7k2Ogr+E
p6fngQMHSktLnZycfvjhhylTphw5csTc3Ly+vn7x4sU8Ho95Wr9+/aZMmcLlcsvLy0NDQydNmkQI
iYmJkUqlM2fOZLZzjx49mJNWntepU6dt27ZVVlZ+9tlnzfVk3LhxeXl5o0ePFggEpaWlffr0aXI6
78tZWVn16dPnVSaDGF9//fXkyZNjYmLs7OzKy8s/+ugj5gNv0qRJc+fOjYuLs7a2ZkbTHh4ehJDO
nTvv3r37yZMn8+fPT0lJmTBhQnR0tI2NDXOq98vHQdbW1qtWrZo1a9bOnTv1er2JicmSJUtefYin
1+t37NjRrl07ZnC9dOnSmTNnxsbGmpqaCgSCb775xsXFhRCSnZ29Y8eO//mf/2lyWlNcXNyBAwfG
jh37iov7j2Lyl/j9oMLCwqKiIg8PD2dnZ8N2pVKZk5Njb2/fvXv35s4Ke6GVK1fm5uZu2LDh5U8r
LS2Vy+XOzs7u7u5so06n692798aNGzt37nznzh2BQMAeylEqlRYWFhqNJicnJzg4+IsvvtBqtStW
rHi+cn19vUQi0Wq1PXv25HA4zLCImY3W6XS5ublqtfqdd95pslLV1dU5OTk8Hk8oFLb4zMyGhgaJ
RFJTU+Pl5cV+UEdGRi5btszf35/ZnuwkEbvc3Nxcd3f356fAWbW1tZmZmcxg9uUdqKioyMvL8/Hx
ed3ppJbJz89//Phxt27dmnQ+Ly9PqVR6e3uzI8G6urpbt27Z2Niwo4l79+5VVVX5+/v/4amMDI1G
c+fOHa1Wy84ntBjzDrG0tBQKha2p8xegf/tIJJKYmJjDhw+37OUNDQ0ikejWrVvPP/TVV1+NGTPm
6dOner3+t99+i4uL279/f6v6+qZERERcuHCBdi/gbURtX4yWdevWbdq0qVevXoMGDTJ68RkzZsyc
OTMmJsbR0VGn040cOZI9ORAAXuivsS9mREqlsrS0tFu3bq0pcu3atZ49ezY59M4qLS0tKSnp2bPn
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
Wbl58+YRI0a4uLisWrUqMTFRJBK1cimEkPT09EuXLrUy6F/o/v37//rXv0aOHGllZfXtt99Onz7d
09PT6Ethtfz7Yj///HN5eTkhZO/evWfOnCGESCSSI0eO/PTTT9XV1YSQbdu2Xbx4kRCSmZl58uRJ
Qohard67d2/v3r3ZIg0NDVu3bg0LCzN68crKSnt7e0dHRz6fLxAIDP8ZWl+8qqqKz+f37t3b09Nz
4cKFHTp0MGJxLpcrEAgEAkFDQ4NCoejTp48Ri9+9e1en04lEou7du3t6ejLVjFU8PT09PDzc19e3
e/fufn5+9+/fb3HxsrIyZ2dnPp/v6OgoEAhMTU2zsrJcXFwiIyPDw8M7duz44MEDIxYnhNTW1r5w
hNL64vfv3+/Vq9c777zj4uISERFhuFlaufE7duz4fKnWFy8oKOjbt6+Pj4+7u3twcHBhYeGrLKXF
Wp5B1tbWd+7c0ev1t27dunbtGiEkKyvLzs6Ow+FIpVKNRpOVlXX9+nVCyM2bN+3t7QkhO3bsSEhI
MBxFHzp0KCQk5PnBXuuLl5WVVVRUJCcnp6amHj9+nB0bG6W4XC63t7c/duzYunXrnjx5YrhGRtks
jF27do0aNcq4m8XLy8vJyWnDhg2rV68mhBh+vrW+uJWV1Y0bNwgher1epVLJ5fIWFy8rK8vPz1+x
YsWKFSvOnj2r1+sNT5p1cXExPGm29cUJIeHh4YafjkYsHhgYyI4Ts7Oze/To0fqlEEKio6MDAwOf
L9X64n379mUmRp48eSKTydhR+Z+k5Rnk6+srkUgePHjQrVu3uro6tVotlUp9fX2ZdrlcLhKJysvL
Gxoa7t696+Pjc/nyZS6X6+vry1a4c+dOeXm54ee8EYvzeLyRI0fOmzdvzpw558+fz8rKMmLxkpKS
69evCwSCUaNGrVu37s6dO0YszigoKLC1tW2yI9b64gqF4tGjR+3bt/f19X3y5InhOKj1xQMDA21s
bNavX5+amqpSqVrTc2dn5w8++GDevHlTp049dOhQQUFBXV2dtbU1+8etqakxYvHn34FGL37r1q2k
pKS+ffu+MINedykv6bCxiqenp69YsWLEiBGtn0h9uWaPzf+hDh06HDx40MbGxsXFxczMrLa2tqCg
oH///nZ2docPH7a0tHR3d6+tra2vry8vL+/bt+/WrVtVKlVGRkZeXt6DBw/0ev3169efPHny22+/
SSSSoqIilUrFJm7ri/v5+bm6upqYmJiamup0uvLycm9vb2MVd3Z2Njc379evn6WlpUajKS0tNWJx
5nt5J06cCA4OdnR0NO42z8/P79Sp05AhQzw8PEpLS4uLi424zYVCYXBwsJubm1gsrqio8Pb2Zj6x
W1Dczs6OORrbrl27J0+eNDQ0WFhYFBUVvfPOO4SQmzdvuri4sOestb54165dCSHV1dWZmZlNpiaN
Unz//v3Z2dmTJk1q7gzj110K86qysrL79+8bHt4xSvGGhoYtW7YUFxdPnjzZiDPozWn5nLS5uXnH
jh3PnTs3a9YsDodz8OBBZltYW1vb2Nhcu3YtOjr66dOnx44di4yMJIRMnTq1oaGBEJKWlta+ffuQ
kJBevXppNBpCyOXLl6uqqqKiooxY/MKFC6Wlpe+//359fX1+fv6gQYOMWJwQsmfPHp1OZ2JiUlpa
aviuNUrxhoaGvLy8kSNHGn2bZ2ZmZmRk/O1vf9Pr9RqNxvAzufXF7969e+7cufHjx5uYmNy4cWPg
wIEtLn7kyBErK6vY2Niampri4uIBAwZoNJqLFy9qNBoLC4usrCzD/abWFzfi+/z54oWFhY8ePZo+
fToz8WSUpbyW1y1++/ZtExOTCRMmvO6CWqZVx8X8/PyKioocHBw4HE5FRQU7LPf19c3IyOByud7e
3tu3b2fa2eMvVlZWXC6XORjB4HK5arW6yQx/K4sHBQVt2bJl9erVpaWlXl5eTcaTre95RETEmjVr
qqurHRwcunXrZtzi2dnZnTp1euFxn1YWF4lE+fn5P/74Y2lpKZ/P9/PzM2LxLl26KBSK7777TqvV
JiQkWFhYtLh4aGjozp0779y5U1RUFBYWxrw3/P39k5KSzMzMevXq1eTzufXFX6KVxc+fPy+VSj/9
9FPmVdHR0e+9914rl/K6Xqt4dnb29evXmak9QsiwYcPYkdefgcL5QW+SUqk0MzMzzDsjYnat/4q/
7lZTU6PRaP6Mnuv1+sePH9vY2BjlmHFlZaWVlZWlpSXbolKpampqmuyiGqu4Ef2pxduYNp5BAPAf
Dr8nDQA0IYMAgCZkEADQhAwCAJr+H7GUgUVatd2qAAAAAElFTkSuQmCC

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--BXVAT5kNtrzKuDFl--
