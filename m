Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C564FE007AC
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2013 03:29:58 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id BBBA1A415B; Mon,  2 Dec 2013 11:29:58 +0000 (UTC)
Date: Mon, 2 Dec 2013 11:29:58 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20131202112958.GA1545@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Mon, 02 Dec 2013 08:28:16 -0800
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
X-List-Received-Date: Mon, 02 Dec 2013 11:29:58 -0000
X-Groupsio-MsgNum: 17412
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline

--tThc/1wpZn/ma/RB
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
blktrace                      1.0.5+gitAUTOINC+d6918c8      1.0.5+gitAUTOINC+0a915aa      Tom Zanussi <tom.zanussi@intel.com>               
systemtap-uprobes             2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+2200b70        Tom Zanussi <tom.zanussi@intel.com>               
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
boost                         1.54.0                        1.55.0                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+38ad491        Saul Wold <sgw@linux.intel.com>                   
nspr                          4.10.1                        4.10.2                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.1                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
vte                           0.28.2                        0.35.0                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libxkbcommon                  0.3.1                         0.3.2                         Saul Wold <sgw@linux.intel.com>                   
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
libav                         0.8.8                         9.10                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
chrpath                       0.14                          0.15                          Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+585324f      r2265+gitAUTOINC+1ca7bb9      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.1                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a17                       3.01a19                       Paul Eggleton <paul.eggleton@linux.intel.com>     
libsdl2                       2.0.0                         2.0.1                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.16                       No Maintainer info                                
bjam-native                   1.54.0                        1.55.0                        No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Laurentiu Palcu <laurentiu.palcu@intel.com>       
automake                      1.13.4                        1.14                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.14.4                        1.14.99.903                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-setuptools             1.4                           1.4.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.21.15                       2.99.906                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
xextproto                     7.2.1                         7.2.99.901                    Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0b1                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+422a4ca        Laurentiu Palcu <laurentiu.palcu@intel.com>       
btrfs-tools                   0.20+gitAUTOINC+e9ac73b4      3.12+gitAUTOINC+8cae184       Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.10.2                        2.11.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
autogen-native                5.17.4                        5.17.4-5                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
bison                         2.7.1                         3.0.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
make                          3.82                          4.0                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.2                        Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
libdrm                        2.4.47                        2.4.49                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
bdwgc                         7.2d                          7.4.0                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
subversion                    1.7.10                        1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
binutils                      2.23.2                        2.24                          Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
git                           1.8.4.4                       1.8.5                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
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
apt                           0.9.9.4                       0.9.13.1                      Cristiana Voicu <cristiana.voicu@intel.com>       
pango                         1.32.5                        1.36.1                        Cristiana Voicu <cristiana.voicu@intel.com>       Version 1.35.2 requires fontc...
opkg                          0.1.8+svnr653                 0.1.8+svnrN/A                 Cristiana Voicu <cristiana.voicu@intel.com>       
at-spi2-core                  2.10.2                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+d19a      Cristiana Voicu <cristiana.voicu@intel.com>       
kmod                          15+gitAUTOINC+18811d22e9      15+gitAUTOINC+9f02561         Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
systemtap                     2.4+gitAUTOINC+aa7b1e00e6     2.4+gitAUTOINC+2200b70        Cristiana Voicu <cristiana.voicu@intel.com>       
valgrind                      3.8.1                         3.9.0                         Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.2                        Cristiana Voicu <cristiana.voicu@intel.com>       
babeltrace                    1.1+gitAUTOINC+a386e24609     1.1.1+gitAUTOINC+3a092c0      Cristiana Voicu <cristiana.voicu@intel.com>       
apr-util                      1.5.2                         1.5.3                         Cristiana Voicu <cristiana.voicu@intel.com>       
mobile-broadband-provider-info20120614+gitrAUTOINC+4ed      20120614+gitrAUTOINC+f7b      Cristiana Voicu <cristiana.voicu@intel.com>       
gstreamer1.0-plugins-good     1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-libav            1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
qemu                          1.6.1                         1.7.0                         Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.11                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.10                          5.11                          Cristian Iorga <cristian.iorga@intel.com>         
neard                         0.10+gitAUTOINC+eb486bf3      0.13+gitAUTOINC+3ce73c1       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-plugins-bad      1.2.0                         1.2.1                         Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         D-BUS 1.7.x is the developmen...
harfbuzz                      0.9.22                        0.9.24                        Cristian Iorga <cristian.iorga@intel.com>         
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
libpcap                       1.4.0                         1.5.1                         Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.74                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+600caefd83     0.0+gitAUTOINC+7d0c7a8        Cristian Iorga <cristian.iorga@intel.com>         
dbus-ptest                    1.6.10                        1.7.8                         Cristian Iorga <cristian.iorga@intel.com>         
linux-libc-headers            3.10                          3.12.2                        Bruce Ashfield <bruce.ashfield@windriver.com>     
linux-libc-headers-yocto      3.4+git-AUTOINC+a1cdb607      3.4.69+git-AUTOINC+7eb5f      Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 111
Upgrade Total Count: 133
The based commit merge time is:
Sat Nov 30 22:26:30 2013 +0000
The based commit is:
commit fabdf2f57a8e0ebe8ab7e82f92f3b298e113fcc0
Author: Cristiana Voicu <cristiana.voicu@intel.com>
Date:   Fri Nov 29 16:10:39 2013 +0200
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--tThc/1wpZn/ma/RB
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--tThc/1wpZn/ma/RB--
