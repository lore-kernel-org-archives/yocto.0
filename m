Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75BDEE006B5
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 03:00:38 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 6CD23408A8; Mon,  2 Sep 2013 10:00:38 +0000 (UTC)
Date: Mon, 2 Sep 2013 10:00:38 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130902100038.GA1102@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 02 Sep 2013 10:00:38 -0000
X-Groupsio-MsgNum: 15782
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.8                         3.1.9                         Wenzong Fan <wenzong.fan@windriver.com>           
gettext                       0.18.2                        0.18.3.1                      Wenzong Fan <wenzong.fan@windriver.com>           
puzzles                       r9765                         9976                          Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.18                       3.9.10                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libx11                        1.5.0                         1.6.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.42.1                        2.43.5                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
gnome-icon-theme              2.31.0                        3.9.5                         Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          1.05.2.20091019               Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
gtk+3                         3.8.2                         3.9.10                        Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+bd69c21        Valentin Popa <valentin.popa@intel.com>           
pcmanfm                       1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.1.4                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
libfm                         1.1.0                         1.1.2                         Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+b38f24036c     0.0+gitAUTOINC+a17b113        Valentin Popa <valentin.popa@intel.com>           
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+3f873e5        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+4159a80        Saul Wold <sgw@linux.intel.com>                   
kbd                           1.15.2                        2.0.0                         Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.36.2                        2.37.5                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
guilt-native                  0.33                          0.35                          Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.20                        2.0.21                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.34.7                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a43d10     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
attr                          2.4.46                        2.4.47                        Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.26                        3.5.27                        Saul Wold <sgw@linux.intel.com>                   
librsvg                       2.32.1                        2.39.0                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.28.2                        2.29.3                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.30.0                        0.30.2                        Ross Burton <ross.burton@intel.com>               
freetype                      2.4.12                        2.5.0                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.6                         Ross Burton <ross.burton@intel.com>               
wayland                       1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.2                         1.4.4                         Ross Burton <ross.burton@intel.com>               
mtdev                         1.1.2                         1.1.4                         Ross Burton <ross.burton@intel.com>               
weston                        1.1.0                         1.2.0                         Ross Burton <ross.burton@intel.com>               
gpgme                         1.4.2                         1.4.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.8                           Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+f0c1c53      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.9.9                         Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
clutter-1.0                   1.14.4                        1.15.2                        No Maintainer info                                
cogl-1.0                      1.14.0                        1.15.4                        No Maintainer info                                
bluez5                        5.7                           5.8                           No Maintainer info                                
gsettings-desktop-schemas     3.7.3                         3.9.5                         No Maintainer info                                
at-spi2-core                  2.8.0                         2.9.5                         No Maintainer info                                
libbsd                        0.5.2                         0.6.0                         No Maintainer info                                
at-spi2-atk                   2.8.1                         2.9.5                         No Maintainer info                                
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      No Maintainer info                                
rpm                           5.4.9                         5.4.13-0.20130819             Mark Hatle <mark.hatle@windriver.com>             
xserver-xorg                  1.14.0                        1.14.99.1                     Laurentiu Palcu <laurentiu.palcu@intel.com>       
xset                          1.2.2                         1.2.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
lttng-modules                 2.2.0+gitAUTOINC+1b26381      2.3.0+gitAUTOINC+a8da488      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.13                       2.21.14                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0a1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xprop                         1.2.1                         1.2.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+f78457d        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.10.93                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.9.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.12.6                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
bind                          9.8.1                         9.9.3-P2                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.1                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
libx11-diet                   1.5.0                         1.6.1                         Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.1                         1.6.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnr677                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+07f0eee      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
elfutils                      0.148                         1.7.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.10                        Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.35.0                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnr677                 Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-fw-utils               2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                2011.06                       2013.07                       Cristiana Voicu <cristiana.voicu@intel.com>       
imake                         1.0.5                         1.0.6                         Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          9+gitAUTOINC+62081c0f68       14+gitAUTOINC+493dc65         Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.3+gitAUTOINC+e58138572e     2.3+gitAUTOINC+3f873e5        Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+cf7be03      Cristiana Voicu <cristiana.voicu@intel.com>       
shadow                        4.1.4.3                       4.1.5.1                       Cristiana Voicu <cristiana.voicu@intel.com>       
curl                          7.31.0                        7.32.0                        Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+b1f      Cristiana Voicu <cristiana.voicu@intel.com>       
tremor                        20120314                      18906                         Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.5.0                         1.6.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.8                           Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
iptables                      1.4.19.1                      1.4.20                        Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.12+gitAUTOINC+e5147f4       Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
harfbuzz                      0.9.17                        0.9.19                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.36.3                        2.37.5                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.20.4                        0.21.1                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.8                           Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.22                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+c530a75c1e     0.0+gitAUTOINC+600caef        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.4                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.52+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.8                           3.10.7                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 93
Upgrade Total Count: 113
The based commit merge time is:
Mon Sep 2 09:16:24 2013 +0100
The based commit is:
commit c7994f83baa678a4670472e1f037bfc16cb1e3be
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon Sep 2 08:15:19 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--VbJkn9YxBvnuCH5J
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAANIAAAEsCAIAAAA5FHrIAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO2deVwU15bHD9hNQyPNLoKtbAIigiAoShDZjRFRTKI+E2PUieTjMzpqJsb44jPO08EFHUcT
iRifC66oZNS4oQYXFHBjlX2xAQN020Cz2Bvd88d1KgS6mq2Q6Dvfv6ouVaduVR/OrXt/de7VUavV
gCCvF92BrgDyrwi6HTIAoNshAwC6HTIAaHC7LVu2bN26tZvnX716NSgoSKVSdVnY3+zYsaP71QaA
uLi4oHaEh4evWLHi3Llz/VdDCron09raumrVqoCAgN9++613lmfNmhUUFFRRUdGhfO3atUFBQVev
XgWA77///ptvvgGAoqKioKCglpaWXlyojz8uq3ORVCodNGhQN89XKBRNTU3dKexvpFJpW1tb94+X
yWT6+vrr168nuw0NDXfu3NmyZQuXy3333Xf7p46v+PTTT6dNm/aXv/ylQ/m9e/fS09M3bdpkZWXV
O8vNzc0tLS3Xrl1bunQpVdjU1HT79u22tjaFQgEADg4OJiYmANDW1tbU1NS7oYylS5dOnjx54cKF
vaunBrfrJ5RKJYul4XJtbW0avVylUsnlcn19fbKrVqvVarWubsfwTFeuxTKFvr6+v78/tTt9+vQZ
M2YkJSV1cDs6Oz29I7VaLZVKDQwM6OojFouHDx8eGhraHWsqlUqpVOrp6XUoHzNmTHJycnu3S0lJ
sbOzq66uJrvTpk2jqwDQ3xRdee+q+urXKi8vnz9//v/+7/+2P3rp0qXnz5+ndrdv396jVoxcLyoq
6uHDh4sWLXrnnXdmzZp19uxZ6q+XL19esmSJv7//F198cePGjS+++AIAxGJxVFRUYWHhhx9++Pe/
/x0ASktLd+7c+d577wUGBi5dupRqQRobG3fs2DFt2rTAwMBNmzbJ5XLKck5OzjfffBMUFBQSErJt
2zbyX94lOjo6o0eP5nA4ZFcikfzP//xPZGTk5MmTly5dWllZScrnz59///79pUuX+vv7R0ZGHj16
lLKQmppKymfOnLlnzx5SKJPJoqKi8vLy5s+fv2bNmujo6JKSkoMHD27cuLH91c+dOxcfH19ZWRkV
FVVbWwsA58+f/+STTyZNmjRnzpyTJ0+SwyoqKubMmZOfnz9z5szY2NjOdxEUFFRVVVVSUkKVJCcn
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

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--VbJkn9YxBvnuCH5J--
