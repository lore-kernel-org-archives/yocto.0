Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00D1E00841
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 18:03:54 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id B9652A415C; Mon, 13 Jan 2014 02:03:54 +0000 (UTC)
Date: Mon, 13 Jan 2014 02:03:54 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140113020354.GA20363@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 13 Jan 2014 02:03:54 -0000
X-Groupsio-MsgNum: 17755
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline

--PNTmBPCT7hxwcZjr
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
gtk+                          2.24.22                       3.11.2                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
gtk+3                         3.8.2                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.3                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0.2                        Valentin Popa <valentin.popa@intel.com>           
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
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+c60517c        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+8ebc72c        Saul Wold <sgw@linux.intel.com>                   
cups                          1.7.0                         1.7.1                         Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.5                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.3                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.0                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
man-pages                     3.55                          3.56                          Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
base-passwd                   3.5.29                        3.5.31                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.1                        Ross Burton <ross.burton@intel.com>               
libxcb                        1.9.3                         1.10                          Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.1                        2.30.2                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
wayland                       1.3.0                         1.3.91                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.1                         1.3.91                        Ross Burton <ross.burton@intel.com>               
glproto                       1.4.16                        1.4.17                        Ross Burton <ross.burton@intel.com>               
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
glib-2.0                      2.38.2                        2.39.2                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.2                        5.18.2-5                      Robert Yang <liezhi.yang@windriver.com>           
binutils                      2.23.2                        2.24                          Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.60                       2013.62                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.9                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.1                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a21                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.15.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.1                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.907                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.3.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b2                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.1                         7.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-proto                     1.9                           1.10                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+01039d8        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.49                        2.4.51                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.0.2                      7.19.3                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-synaptics          1.7.1                         1.7.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.10.09                       2.11                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P1                      Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.4                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.3.0+gitAUTOINC+13a5c43      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.3.0+gitAUTOINC+13a5c43      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.14.2                      Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
at-spi2-core                  2.10.2                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+7f67      Cristiana Voicu <cristiana.voicu@intel.com>       
opkg-utils                    0.1.8+gitAUTOINC+757a166      0.1.8+gitAUTOINC+0f6a67b      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          16+gitAUTOINC+36c4bb928a      16+gitAUTOINC+2726da5         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+c60517c        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.3                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1.1+gitAUTOINC+a386e24      1.1.1+gitAUTOINC+cf5d433      Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
neard                         0.10+gitAUTOINC+eb486bf3      0.14+gitAUTOINC+69e36b1       Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.23.0                        0.99.5                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.13                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.25                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.76                       Cristian Iorga <cristian.iorga@intel.com>         
minicom                       2.6.2                         2.7                           Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+52d77db        Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.18                        1.7.10                        Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.7.10                        Chong Lu <Chong.Lu@windriver.com>                 
busybox                       1.21.1                        1.22.0                        Chen Qi <Qi.Chen@windriver.com>                   
sudo                          1.8.8                         1.8.9p1                       Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.12.7                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 98
Upgrade Total Count: 119
The based commit merge time is:
Fri Jan 10 15:20:26 2014 +0000
The based commit is:
commit 1b636173ca88e5ccca1992f9a12367a1189fa674
Author: Alexandru DAMIAN <alexandru.damian@intel.com>
Date:   Tue Jan 7 13:10:42 2014 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--PNTmBPCT7hxwcZjr
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
58+PjIzcs2fPqFGj1qxZQ60liUQyb968gICAffv2zZkzZ9++fRs2bCCEaDQaaomEQuHkyZMXLVrk
6uo6bNiwKVOm6DYQFxf3wQcfODg4rFq1ys7O7uLFi0uWLBk0aNDhw4dHjx79448/UgvY1NRUVFT0
zTfffPjhh0lJSU8viLW1dWhoKL0lW1dXl5mZqTtbrKmpqaioaPWoTZs27dy5c9q0afv27QsMDJw2
bVpubi4h5Mcff7xz584XX3yxfft2Kyur+fPnE0Lmz5/v7u4+aNCgmTNnEkKWL19+/vz5f/7zn3v2
7HF2dp4zZw71p5TL5adPn75+/fr27dt//fVXiUSyfv16aoV8+eWXhYWFq1at+te//lVXV/ff//3f
uu9VFDabnZSUlJSU9PQ0jSaVSi0tLS0sLHbu3PnTTz+dOXPGxcWFfrtqpX///mfPnqX3Np45cyY2
NtbIyIi+g0AgSEpKio6Obuvp3mhvRtjJZLKSkpLS0tLCwsLQ0FBPT09bW9uMjAxCSFZWFr0Nu27d
ulmzZvXr169bt24zZ87k8XjU+9iWLVsCAgImTpzo7OwcHx8/dOhQ3fc3KumGDBnS6n+PEBIfH3/r
1i2ZTEYIOX/+vImJSVRUVDsWISYmZsSIEd27d//ss88GDBhw5swZQsimTZuGDh36/vvvOzk5TZo0
ydfXV/chgwcP/uyzz3r37q1UKocMGTJv3jw3NzcXF5eBAwdKpVJCSFFR0blz577++uu+ffvy+fyl
S5fa2NhQj92xY4e7u/u0adNcXFxiYmKSkpLOnj37zD1TDx48oA9QREREzJo1a8KECf379yeE5OTk
XLx4cdmyZd7e3t7e3l988UVtbW1mZib1wJCQkI8//rh79+6jR48eMWIEtT4PHjzo7e09ZcoUFxeX
yMjIGTNm7Nu3j36uuLi4SZMm+fn5OTs7s1isLl26dO3aVbcZa2trW1tbMzOz7t27m5iY7Nq1a/Dg
wUlJSU5OTkOHDh01atTevXupe6rV6o8++mjs2LEeHh7PXOHx8fHUSiaE/O///q+bm1u3bt2e8wdS
q9WbNm2aO3duaGho9+7d58yZY2NjQ1UoLCx0cXEZMGCAu7v7P//5T+pQmJOTE7UIPB6voaHh8OHD
8+fPDwkJcXV1/eqrr6ysrOgXmFwu//rrrx0dHb29vT/44ANqYnjp0iWRSJScnMzn8/39/WfMmPHw
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
6Nq1a2VlpZeXF3UQTZeLi8tnn322du3amJiYVjfFxcXt2LGjrbAjhPzyyy//+Mc/RowYYW1trVAo
OBzOqFGjdM/zio+PHzdunLW1dWVlZUxMzJgxYwgh4eHhsbGxH3/8sbW1tZGR0aBBg6hAbCUmJmb3
7t2zZ8/u2rVrTU3NJ598snPnzqlTp27YsCE1NZU6nmBlZWVlZTV8+HBqcywkJGTixInTpk2zt7eX
yWRubm6tTvJ4Dg8Pj4MHD5aXl3ft2vXnn3+eMmXK0aNHTU1Nm5qaFi9ezOFwqLv1799/ypQpbDa7
srIyNDR00qRJhJDY2FixWDxz5kxqPffu3Zs6+etprq6u27dvr66u/uKLL9rqZNy4cfn5+aNHj+bx
eOXl5f369Wt1ov/zWVhY9OvX70V22FG+/fbbyZMnx8bG2tjYVFZWfvLJJ9Q766RJk+bOnRsfH29p
aUltH7i7uxNCunXrtmfPntra2vnz56ekpEyYMCEmJsbKyor6EMjzZ3aWlparVq2aNWvWrl27tFqt
kZHR999//+KTVq1Wu3Pnzk6dOlGbC0uWLJk5c2ZcXJyxsTGPx/vuu+8cHR0JITk5OTt37vyf//mf
VqcHxsfHHzx4cOzYsS/4dG8No7fv++yKiopKSkrc3d0dHBx0x+VyeW5urq2tba9evdo6jfOZVq5c
mZeXt3Hjxuffrby8XCqVOjg4uLm50YMajaZv376bNm3q1q3bnTt3eDwefQBRLpebmZmpVKrc3Nyg
oKCvvvpKrVavWLHi6cpNTU0ikUitVvfp04fFYlETPerQhEajycvLUyqV77zzTquFqqury83N5XA4
fD6/3adSNzc3i0Si+vp6T09PeuoRGRm5dOlSPz8/an3SO/Lo583Ly3Nzc3v6eAitoaEhKyuLmp4/
v4Gqqqr8/Hxvb++X3eXXPgUFBY8ePerZs2er5vPz8+VyuZeXFz23bWxsvHXrlpWVFT0/unfvXk1N
jZ+f31+ee0xRqVR37txRq9X0rph2o14h5ubmfD5fnzpvOS08l0gkio2NPXLkSPse3tzcLBAIbt26
9fRN33zzzZgxYx4/fqzVav/444/4+PgDBw7o1evrEhERceHChY7uAuDlvBmbsR1l3bp1mzdvDg4O
Hjx4sMGLz5gxY+bMmbGxsfb29hqNZuTIkfTZvABgcG/hZqwByeXy8vLynj176lPk2rVrffr0aXVm
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

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--PNTmBPCT7hxwcZjr--
