Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A30E007A8
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 18:02:34 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id F1E02A415B; Mon,  9 Dec 2013 02:02:33 +0000 (UTC)
Date: Mon, 9 Dec 2013 02:02:33 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131209020233.GA1833@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Dec 2013 02:02:34 -0000
X-Groupsio-MsgNum: 17482
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline

--Qxx1br4bt0+wmkIi
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
gsettings-desktop-schemas     3.7.3                         3.10.1                        Valentin Popa <valentin.popa@intel.com>           
mesa                          9.2.2                         10.0                          Valentin Popa <valentin.popa@intel.com>           
pciutils                      3.2.0                         3.2.1                         Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.44.1                        2.44.2                        Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.32                        1.4.33                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.2                        Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.10.0                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.2                         Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Valentin Popa <valentin.popa@intel.com>           
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+0899b02        Valentin Popa <valentin.popa@intel.com>           
gnome-desktop                 2.32.1                        3.11.2                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+3726f66      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+a7dd945        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
util-macros                   1.17.1                        1.18.0                        Saul Wold <sgw@linux.intel.com>                   
boost                         1.54.0                        1.55.0                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+4eb4a1f        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
nspr                          4.10.1                        4.10.2                        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.1                        1.17.4                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libxkbcommon                  0.3.1                         0.3.2                         Saul Wold <sgw@linux.intel.com>                   
cracklib                      2.9.0                         2.9.1                         Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.23                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
texinfo                       5.1                           5.2                           Saul Wold <sgw@linux.intel.com>                   Checking script parses direct...
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
acl                           2.2.51                        2.2.52                        Saul Wold <sgw@linux.intel.com>                   
file                          5.15                          5.16                          Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.22.1                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.0                        1.16.2                        Ross Burton <ross.burton@intel.com>               
librsvg                       2.40.0                        2.40.1                        Ross Burton <ross.burton@intel.com>               
pixman                        0.30.2                        0.32.4                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.0.1                       2.5.1                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.0                        Ross Burton <ross.burton@intel.com>               
weston                        1.3.0                         1.3.1                         Ross Burton <ross.burton@intel.com>               
logrotate                     3.8.1                         3.8.7                         Robert Yang <liezhi.yang@windriver.com>           
dropbear                      2013.60                       2013.62                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.1                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a19                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
xf86-video-modesetting        0.8.0                         0.8.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
bjam-native                   1.54.0                        1.55.0                        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.13.4                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.14.99.903                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           2.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.906                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.2.99.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
fstests                       0.1+gitAUTOINC+218b99d82b     0.1+gitAUTOINC+e5939ff        Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+3628044        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   0.20+gitAUTOINC+e9ac73b4      3.12+gitAUTOINC+8cae184       Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.47                        2.4.50                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
binutils                      2.23.2                        2.24                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.4.4                       1.8.5.1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+c8ba270      Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
bind                          9.8.1                         9.9.4-P1                      Kai Kang <kai.kang@windriver.com>                 
libarchive                    2.8.5                         3.1.2                         Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.16                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.3                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
adt-installer                 0.1.8+svnr596                 0.1.8+svnrN/A                 Jessica Zhang <jessica.zhang@intel.com>           
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.2.1+gitAUTOINC+0f2c2fb      Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
elfutils                      0.148                         0.157                         Cristiana Voicu <cristiana.voicu@intel.com>       
apr                           1.4.8                         1.5.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
apt                           0.9.9.4                       0.9.14                        Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.1                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnrN/A                 Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+f444      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      15+gitAUTOINC+9f02561         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+a7dd945        Cristiana Voicu <cristiana.voicu@intel.com>       
valgrind                      3.8.1                         3.9.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+34d9941      Cristiana Voicu <cristiana.voicu@intel.com>       
apr-util                      1.5.2                         1.5.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.6.1                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.11                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.10                          5.11                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.13+gitAUTOINC+401d5cf       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
connman                       1.19                          1.20                          Cristian Iorga <cristian.iorga@intel.com>         
harfbuzz                      0.9.22                        0.9.25                        Cristian Iorga <cristian.iorga@intel.com>         
glib-2.0                      2.38.1                        2.39.1                        Cristian Iorga <cristian.iorga@intel.com>         2.35.8 is unstable            
telepathy-glib                0.23.0                        0.99.5                        Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.11.0                        3.12.0                        Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0                  1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-base     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
iptables                      1.4.19.1                      1.4.21                        Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.20                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.11                          Cristian Iorga <cristian.iorga@intel.com>         
rpcbind                       0.2.0                         0.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.24                       Cristian Iorga <cristian.iorga@intel.com>         
js                            1.7.0+1.8.0rc1                185-1.0.0                     Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-ugly     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
libpcap                       1.4.0                         1.5.2                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.74                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+7d0c7a8        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.69+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers            3.10                          3.12.3                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 118
Upgrade Total Count: 140
The based commit merge time is:
Fri Dec 6 14:10:15 2013 +0000
The based commit is:
commit 184038bedb20f74ba4dcad6ef2d92e87a9ba5f9a
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Dec 6 14:08:46 2013 +0000
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--Qxx1br4bt0+wmkIi
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAPUAAAEsCAIAAACUlWJhAAAABmJLR0QA/wD/AP+gvaeTAAAgAElE
QVR4nO3dd1yT1/4H8MMykEhEA0SWCshQhtCgoEUkLKuiVduipUOrV/SFq629ztZaW704sFpbi9X6
sioOUPSKxQG2oAwFtLJkxlDAFiEESAgj8/fH4T7GIIiA2pzf9/1XcpKc5zwPn5xnhHyjo1KpEACE
0n3VAwDgBYJ8A5JBvgHJIN+AZE/Pd05OzvTp07u2b9++fceOHb3s+urVq1wuV6lUPrPxRdu9e3fv
h40QiomJ4aoJCQlZtWpVQkLCixshpbst09ra+sknn/j5+f39999963n27NlcLreyslKjfd26dVwu
9+rVqwihH374YePGjQihsrIyLpcrkUj6sKCX+ce9efNmcnJyD094er7lcnlLS0vX9vb29vb29l4u
WyaTicXi3jS+aM81bIRQR0eHoaHh1/+zatUqIyOj7du3X7ly5cUNElu4cOGpU6e6tmdmZt6+fXvz
5s1sNrtvPbe0tEgkkmvXrqk3isXiGzduSCQSmUyGELKzs3NxcUEIKRQKsVjct2trERERv/zyS98G
+VykUunOnTtLS0u7e0JhYaE+vqVQKPT09F7CmJ5KLpfr6+t3be9uVEqlUiqVGhoa4rsqlUqlUunq
ar5Xu2vvoWeKoaGhr68vdXfGjBkzZ848f/78G2+80Zt+nneNVCpVe3u7kZFRd+MRCoU2NjZBQUG9
6U2pVMrl8kGDBmm0u7q6JicnR0REUC2pqamjRo16+PAhvjtt2rTuBoC6X6nu2vszVPzQU/92CCGR
SBQdHZ2Tk1NXV9fDQnfu3Kl79+7ddevWTZkyJTg4eO/evQqFQuNJfD4/PDz8v//9r3pjRETExYsX
qbu7du16rgMAPPo5c+bk5uZ+9NFHr7/++uzZs8+dO0c9evny5cWLF/v6+q5cufL69esrV65ECAmF
wjlz5pSWlr7zzjtffvklQojH4+3Zs2f69On+/v4RERHUzre5uXn37t3Tpk3z9/ffunWrVCqlei4o
KNi4cSOXyw0MDNy5cyeet55JR0dn7NixNBoN3xWJRN99992sWbMmT54cERFRXV2N28PDw7OysiIi
Inx9fWfNmnX8+HGqh4yMDNz+5ptv7t+/Hzd2dHTMmTOnqKgoPDx8zZo1S5curaioOHLkyJYtW9SX
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

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--Qxx1br4bt0+wmkIi--
