Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E78C6E00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 03:00:36 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id DF35840D17; Mon, 26 Aug 2013 10:00:36 +0000 (UTC)
Date: Mon, 26 Aug 2013 10:00:36 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130826100036.GA25650@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 26 Aug 2013 10:00:37 -0000
X-Groupsio-MsgNum: 15667
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline

--oyUTqETQ0mS9luUI
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
Sat Aug 24 09:37:49 2013 +0100
The based commit is:
commit b467b99a5d25efe5eadfb07dbecba608575256ac
Author: Ross Burton <ross.burton@intel.com>
Date:   Thu Aug 22 16:59:10 2013 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--oyUTqETQ0mS9luUI
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAK8AAAEsCAIAAAA6o3TgAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO2deVwT1/r/n2BCIEjYBASjbAIigiAoSpFVoCqi2Fat1Vr1VvqyLtflaltv/Vrv1Yt1u161
LqB1wRWFvuqOu4KyKLLKvhhAgcQEAokJCcnvj+NvQiETpALq9Lz/mjnMPDkzPHPmnM885zk0lUoF
GAwAAOi86wpg3iOwN2DUYG/AqMHegFGjwRuuXbsWFBSkVCq7LOxttm3btmXLljc/fv/+/UHtCAsL
W7ZsWWJiYu/VkIDszkgkkhUrVvj7+7948eLPWZ42bVpQUFBVVVWH8rVr1wYFBV27dg0A9u7d+8MP
PwBASUlJUFCQWCz+Ez+kVCrpnUvlcnlzc/ObFPY2Uqm0ra3tzY+XyWR6enrr1q1Du42Njffv39+8
eTOLxfr44497p46v+eqrryZOnPj55593KH/w4EF6evrGjRstLS3/nOWWlhaxWJycnLxo0SKisLm5
+d69e21tbXK5HADs7e2NjY0BoK2trbm5+c+NExctWqTBG94chUJBp2uw0NbW1q9fv87lSqWytbVV
T08P7apUKpVKpaPTsX0iK9dimUBPT8/Pz4/YnTx58pQpU5KSkjp4A5md7l6RSqWSSqX6+vpk9REI
BIMHD54wYcKbWFMqlQqFQldXt0P5iBEjrl+/3t4b7ty5Y2trW1tbi3YnTpxIVgEgv6jO5TrdaopR
jaOioh49ejR//vyPPvpo2rRp58+fJ/565cqVhQsX+vn5LV269ObNm0uXLgUAgUAQFRVVXFz82Wef
/d///R8AlJeX79ixY9KkSYGBgYsWLSKawaampm3btk2cODEwMHDjxo2tra2E5by8vB9++CEoKCgk
JOTnn39Gz0SX0Gi04cOHM5lMtCsSif73v/9FRkaOHz9+0aJF1dXVqHz27NkPHz5ctGiRn59fZGTk
8ePHCQupqamofOrUqbt370aFMpksKiqqoKBg9uzZq1atio6OLisrO3z48IYNG9r/emJiYmxsbHV1
dVRUVH19PQD8/vvvX3755bhx42bMmHH69Gl0WFVV1YwZMwoLC6dOnbp9+/bOVxEUFFRTU1NWVkaU
XL9+PTQ0lNg9evTo5s2bO5ylUqmOHTs2Z84cX1/fGTNmZGRkoPLm5uYffvghJCTE399/3rx5z549
A4ClS5cWFhbqjBo16k1ua3uqq6vXrFkzefLks2fPTpkyZcuWLXfu3AGABw8ebNiwITIy8vz58yNG
jNiwYQN6WSoUiurq6h9//HHSpElfffUVAKxZs4bP5//yyy8nT55ksVibNm1Clv/1r3/du3dv48aN
cXFxjY2NV69eReV1dXXLly+3trY+efLkunXrrl69unHjxi7rqVAoUlJS7t+/HxERgUrWr1+fnZ0d
ExMTFxdHp9MXLFiAXn81NTXff/+9v7//mTNnZs2atXv37osXLwJASUnJd9995+HhkZCQsGrVqoSE
hNjYWABQKpXoigIDA7/55pv169cPHjw4Kipq8eLF7SswYcKETz75ZODAgf/9738HDBiQkpKyadOm
iIiI3377bfbs2Tt37kQX2NrayuVyf/rpp88++2zGjBmdL4TNZo8dOzY5ORntNjc3Z2Zmtm9vGhsb
eTxeh7MOHTp08uTJJUuWJCQkeHp6LlmypKCgAAB27txZWFi4evXq+Ph4Q0PD77//HgC+//57e3t7
ekBAQJe3tTPBwcGffvopACxcuLCqqurGjRuBgYGHDh2aNm3a1KlTASA6OjonJ6ehoYE4ZcqUKXPn
zgUAqVQaGRkZFRXFZrMBYNKkSTExMQDA5XLv3Llz4MABLy8vANi8eXNkZCQ698SJE/b29kuWLAEA
DodTUlJy7NixjRs30mi0DhWrra0NCgpC21KpVC6XL168OCwsDADy8vJSUlIuX75sYWEBAKtXr541
a1ZmZmZwcDAA+Pj4zJkzBwBsbGxqamquX78eERGRmJg4fPhw9D/mcDjLli07ePDg119/jexPmDAh
OjoabTOZTBMTE2SZgM1mm5qaMhgMGxsbADh16tSUKVPQ/3vatGmVlZVnz55FrzCFQvHFF19MmTKF
7IaHhobGxcWhmty+fdvOzm7IkCFa/kEKheLQoUObNm0aO3YsAKxater27ds3btxwdXWtqqricDjh
4eE6Ojr//Oc/CwsLAcDa2prJZNI7v6XehPYtipeX15EjRwCgsrISuQjCxcWlvTd4eHigDT09vblz
5xYVFT19+jQvL+/GjRuoDhUVFSwWy9PTkzhs2LBhaLu0tFShUOzZswftNjY2tra28ni8DncfAMzM
zIhepFKpTE5OPnHiRGBgoL29fWlpKYvFOnv2LHGwsbHx8+fPiatof0XoQSwrK2t/pW5ubgKBgMfj
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
yqUWAAAAAElFTkSuQmCC

--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--oyUTqETQ0mS9luUI--
