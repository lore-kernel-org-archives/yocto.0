Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21381E009BA
	for <yocto@yoctoproject.org>; Sun,  9 Mar 2014 19:21:27 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 1F897A421E; Mon, 10 Mar 2014 02:21:27 +0000 (UTC)
Date: Mon, 10 Mar 2014 02:21:27 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140310022126.GA8140@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Mar 2014 02:21:27 -0000
X-Groupsio-MsgNum: 18463
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline

--FL5UXtIhxfXey3p5
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
puzzles                       r10116                        N/A                           Valentin Popa <valentin.popa@intel.com>           
gtk+                          2.24.22                       3.11.8                        Valentin Popa <valentin.popa@intel.com>           Do not upgrade to version: 2....
libpam                        1.1.6                         1.1.8                         Valentin Popa <valentin.popa@intel.com>           
gsettings-desktop-schemas     3.7.3                         3.11.90                       Valentin Popa <valentin.popa@intel.com>           
libsoup-2.4                   2.45.3                        2.45.90                       Valentin Popa <valentin.popa@intel.com>           
lighttpd                      1.4.33                        1.4.34                        Valentin Popa <valentin.popa@intel.com>           
gtk-update-icon-cache-native  3.4.4                         3.11.8                        Valentin Popa <valentin.popa@intel.com>           
hicolor-icon-theme            0.12                          0.13                          Valentin Popa <valentin.popa@intel.com>           
gtk+3                         3.10.7                        3.11.8                        Valentin Popa <valentin.popa@intel.com>           
gnome-icon-theme              2.31.0                        3.11.5                        Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Valentin Popa <valentin.popa@intel.com>           2.00.0 - fontforge package re...
libpng                        1.6.8                         1.6.9                         Valentin Popa <valentin.popa@intel.com>           
xdg-utils                     1.1.0-rc1                     1.0.2                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libpng12                      1.2.50                        1.2.51                        Valentin Popa <valentin.popa@intel.com>           
webkit-gtk                    1.8.3                         2.3.91                        Valentin Popa <valentin.popa@intel.com>           >= 1.10.2 needs ruby          
gnome-desktop                 2.32.1                        3.11.90                       Valentin Popa <valentin.popa@intel.com>           waiting for the sato gtk3 port
libusb1                       1.0.9                         1.0.18                        Saul Wold <sgw@linux.intel.com>                   
mc                            4.8.10                        4.8.11                        Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.6                        Saul Wold <sgw@linux.intel.com>                   
glib-networking               2.38.0                        2.39.90                       Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
msmtp                         1.4.31                        1.4.32                        Saul Wold <sgw@linux.intel.com>                   
vte                           0.28.2                        0.35.2                        Saul Wold <sgw@linux.intel.com>                   Pending Glib-2.0 Update       
libgcrypt                     1.5.3                         1.6.1                         Saul Wold <sgw@linux.intel.com>                   
util-linux                    2.23.2                        2.24.1                        Saul Wold <sgw@linux.intel.com>                   
libnl                         3.2.22                        3.2.24                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
sqlite3                       3.8.3.1                       3080301                       Saul Wold <sgw@linux.intel.com>                   
man-pages                     3.60                          3.61                          Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.32                        Saul Wold <sgw@linux.intel.com>                   
vala                          0.16.0                        0.23.3                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.16.2                        1.17.6                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
gdk-pixbuf                    2.30.3                        2.30.6                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
cogl-1.0                      1.16.0                        1.17.4                        Ross Burton <ross.burton@intel.com>               
freetype                      2.5.2                         2.5.3                         Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.0.10                        Ross Burton <ross.burton@intel.com>               
automake                      1.14                          1.14.1                        Robert Yang <liezhi.yang@windriver.com>           
glib-2.0                      2.38.2                        2.39.91                       Robert Yang <liezhi.yang@windriver.com>           
mklibs-native                 0.1.38                        0.1.39                        Robert Yang <liezhi.yang@windriver.com>           
wget                          1.14                          1.15                          Robert Yang <liezhi.yang@windriver.com>           
libav                         0.8.9                         9.11                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
cdrtools-native               3.01a20                       3.01a23                       Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.0                         No Maintainer info                                
libsdl2                       2.0.1                         2.0.2                         No Maintainer info                                
libnewt-python                0.52.14                       0.52.17                       No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
python-distribute             0.6.32                        0.7.3                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.0                         No Maintainer info                                
python3                       3.3.3                         3.4.0rc2                      No Maintainer info                                
unfs3                         0.9.22.r490                   N/A                           No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
python-gst                    0.10.22                       1.1.90                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xcb-util-wm                   0.4.0                         0.4.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
kexec-tools                   2.0.4                         2.0.6                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python                        2.7.3                         3.4.0rc2                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
gdb                           7.6.2                         7.7                           Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-scons                  2.3.0                         2.3.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pygobject              2.27.91                       3.11.91                       Laurentiu Palcu <laurentiu.palcu@intel.com>       Newer versions of python-pygo...
subversion                    1.7.10                        1.8.8                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
python-pycurl                 7.19.3                        7.19.3.1                      Laurentiu Palcu <laurentiu.palcu@intel.com>       
nasm                          2.11                          2.11.02                       Laurentiu Palcu <laurentiu.palcu@intel.com>       
oprofile                      0.9.8                         0.9.9                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.07                          9.10                          Kai Kang <kai.kang@windriver.com>                 
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.6                         0.7.5                         Kai Kang <kai.kang@windriver.com>                 
libnewt                       0.52.14                       0.52.17                       Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.26.1                      1.0.27                        Kai Kang <kai.kang@windriver.com>                 
directfb                      1.6.3                         1.7.2                         Kai Kang <kai.kang@windriver.com>                 
directfb-examples             1.6.0                         1.7.0                         Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.158                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
apr                           1.4.8                         1.5.0                         Hongxu Jia <hongxu.jia@windriver.com>             
socat                         1.7.2.3                       1.7.2.4                       Hongxu Jia <hongxu.jia@windriver.com>             2.0.0 is beta                 
apr-util                      1.5.2                         1.5.3                         Hongxu Jia <hongxu.jia@windriver.com>             
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
apt                           0.9.9.4                       0.9.15.5                      Cristiana Voicu <cristiana.voicu@intel.com>       
openssl                       1.0.1e                        1.0.1f                        Cristiana Voicu <cristiana.voicu@intel.com>       1.0.1 is beta 1.0.0c is latest
at-spi2-core                  2.10.2                        2.11.91                       Cristiana Voicu <cristiana.voicu@intel.com>       
atk                           2.10.0                        2.11.90                       Cristiana Voicu <cristiana.voicu@intel.com>       
ubootchart                    0.0+r12                       N/A                           Cristiana Voicu <cristiana.voicu@intel.com>       
libunique                     1.1.6                         3.0.2                         Cristiana Voicu <cristiana.voicu@intel.com>       Do not upgrade to version: 2....
at-spi2-atk                   2.10.0                        2.11.91                       Cristiana Voicu <cristiana.voicu@intel.com>       
liburcu                       0.8.1                         0.8.4                         Cristiana Voicu <cristiana.voicu@intel.com>       
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
bluez4                        4.101                         5.15                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.15                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.77                       Cristian Iorga <cristian.iorga@intel.com>         
taglib                        1.8                           1.9.1                         Cristian Iorga <cristian.iorga@intel.com>         
pulseaudio                    4.0                           5.0                           Cristian Iorga <cristian.iorga@intel.com>         
dbus                          1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
dbus-ptest                    1.6.18                        1.8.0                         Chong Lu <Chong.Lu@windriver.com>                 
sudo                          1.8.9p1                       1.8.9p5                       Chen Qi <Qi.Chen@windriver.com>                   
grep                          2.16                          2.18                          Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.10                          3.13.6                        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 85
Upgrade Total Count: 106
The based commit merge time is:
Sat Mar 8 02:00:02 2014 +0000
The based commit is:
commit 8b0e3a840a9fe5536ceacecf73666e687b569684
Merge: d42eed6 abe417e
Author: package-report@yoctoproject.org <packages@packages.i.yoctoproject.org>
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--FL5UXtIhxfXey3p5--
