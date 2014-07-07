Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D869E0053E; Sun,  6 Jul 2014 19:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E781EE0030B
	for <yocto@yoctoproject.org>; Sun,  6 Jul 2014 19:01:08 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id CE485A427D; Mon,  7 Jul 2014 02:01:08 +0000 (UTC)
Date: Mon, 7 Jul 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140707020108.GA13139@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 07 Jul 2014 02:01:10 -0000
X-Groupsio-MsgNum: 20376
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
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
sysprof                       1.2.0+gitAUTOINC+cd44ee6      1.2.0+gitAUTOINC+6901897      Tom Zanussi <tom.zanussi@intel.com>               
squashfs-tools                4.2                           4.3                           Saul Wold <sgw@linux.intel.com>                   
libpod-plainer-perl           1.03                          1.04                          Saul Wold <sgw@linux.intel.com>                   
apt                           0.9.9.4                       1.0.5                         Saul Wold <sgw@linux.intel.com>                   
mkelfimage                    4.0+gitAUTOINC+686a48a339     4.0+gitAUTOINC+577573f        Saul Wold <sgw@linux.intel.com>                   
opkg-utils                    0.1.8+gitAUTOINC+d144584      0.1.8+gitAUTOINC+eae0d8f      Saul Wold <sgw@linux.intel.com>                   
lzo                           2.06                          2.08                          Saul Wold <sgw@linux.intel.com>                   
mtd-utils                     1.5.1+gitAUTOINC+9f10713      1.5.1+gitAUTOINC+b7455d8      Saul Wold <sgw@linux.intel.com>                   
u-boot-mkimage                v2013.07+gitAUTOINC+62c1      v2013.07+gitAUTOINC+23f2      Saul Wold <sgw@linux.intel.com>                   
dpkg                          1.17.4                        1.17.10                       Saul Wold <sgw@linux.intel.com>                   
kmod                          17+gitAUTOINC+49d8e0b590      18+gitAUTOINC+74c2694         Saul Wold <sgw@linux.intel.com>                   
ubootchart                    0.0+r12                       N/A                           Saul Wold <sgw@linux.intel.com>                   
gnupg                         2.0.23                        2.0.25                        Saul Wold <sgw@linux.intel.com>                   
sqlite3                       3.8.5.0                       3080500                       Saul Wold <sgw@linux.intel.com>                   
libunique                     1.1.6                         3.0.2                         Saul Wold <sgw@linux.intel.com>                   Do not upgrade to version: 2....
babeltrace                    1.2.1+gitAUTOINC+66c2a20      1.2.1+gitAUTOINC+3fb312c      Saul Wold <sgw@linux.intel.com>                   
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+63da1f2     Saul Wold <sgw@linux.intel.com>                   PRS 1.99 is dev version       
mobile-broadband-provider-info20140618+gitrAUTOINC+d06      20140618+gitrAUTOINC+d84      Saul Wold <sgw@linux.intel.com>                   
base-passwd                   3.5.29                        3.5.33                        Saul Wold <sgw@linux.intel.com>                   
xserver-xorg                  1.15.1                        1.15.99.903                   Ross Burton <ross.burton@intel.com>               
libice                        1.0.8                         1.0.9                         Ross Burton <ross.burton@intel.com>               
gnome-common                  3.7.4                         3.12.0                        Ross Burton <ross.burton@intel.com>               
libxfont                      1.4.7                         1.4.8                         Ross Burton <ross.burton@intel.com>               
puzzles                       r10116                        N/A                           Ross Burton <ross.burton@intel.com>               
gtk+                          2.24.22                       3.13.3                        Ross Burton <ross.burton@intel.com>               Do not upgrade to version: 2....
xf86-video-vmware             13.0.1                        13.0.2                        Ross Burton <ross.burton@intel.com>               
xf86-video-intel              2.99.910                      2.99.912                      Ross Burton <ross.burton@intel.com>               
vala                          0.16.0                        0.24.0                        Ross Burton <ross.burton@intel.com>               
clutter-1.0                   1.18.2                        1.19.4                        Ross Burton <ross.burton@intel.com>               
gtk+3                         3.10.7                        3.13.3                        Ross Burton <ross.burton@intel.com>               
xcb-util-wm                   0.4.0                         0.4.1                         Ross Burton <ross.burton@intel.com>               
libpam                        1.1.6                         1.1.8                         Ross Burton <ross.burton@intel.com>               
libtasn1                      3.5                           4.0                           Ross Burton <ross.burton@intel.com>               
gsettings-desktop-schemas     3.10.1                        3.13.2                        Ross Burton <ross.burton@intel.com>               
clutter-gtk-1.0               1.4.4                         1.5.2                         Ross Burton <ross.burton@intel.com>               
jpeg                          8d                            9a                            Ross Burton <ross.burton@intel.com>               webkit-gtk 1.8.3 doesn't work...
libsoup-2.4                   2.46.0                        2.47.3                        Ross Burton <ross.burton@intel.com>               
gdk-pixbuf                    2.30.7                        2.30.8                        Ross Burton <ross.burton@intel.com>               2.27.2 is unstable            
pixman                        0.32.4                        0.32.6                        Ross Burton <ross.burton@intel.com>               
pango                         1.36.3                        1.36.5                        Ross Burton <ross.burton@intel.com>               
at-spi2-core                  2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
libxft                        2.3.1                         2.3.2                         Ross Burton <ross.burton@intel.com>               
atk                           2.12.0                        2.13.2                        Ross Burton <ross.burton@intel.com>               
gtk-update-icon-cache-native  3.4.4                         3.13.3                        Ross Burton <ross.burton@intel.com>               
hicolor-icon-theme            0.12                          0.13                          Ross Burton <ross.burton@intel.com>               
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394      0.4.3+gitrAUTOINC+d48d09c     Ross Burton <ross.burton@intel.com>               
cogl-1.0                      1.18.0                        1.18.2                        Ross Burton <ross.burton@intel.com>               
libnotify                     0.6.0                         0.7.6                         Ross Burton <ross.burton@intel.com>               
gnome-icon-theme              2.31.0                        3.12.0                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
liberation-fonts              1.04                          2.00.1                        Ross Burton <ross.burton@intel.com>               2.00.0 - fontforge package re...
glib-networking               2.38.0                        2.41.3                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
screen                        4.0.3                         4.2.1                         Ross Burton <ross.burton@intel.com>               
xdg-utils                     1.1.0-rc1                     1.0.2                         Ross Burton <ross.burton@intel.com>               only release candidates avail...
vte                           0.28.2                        0.37.2                        Ross Burton <ross.burton@intel.com>               Pending Glib-2.0 Update       
at-spi2-atk                   2.12.0                        2.13.1                        Ross Burton <ross.burton@intel.com>               
xkeyboard-config              2.11                          2.12                          Ross Burton <ross.burton@intel.com>               
xf86-input-synaptics          1.7.4                         1.8.0                         Ross Burton <ross.burton@intel.com>               
xf86-input-evdev              2.8.2                         2.9.0                         Ross Burton <ross.burton@intel.com>               
matchbox-panel-2              2.0+gitAUTOINC+26a3a67b41     2.0+gitAUTOINC+1a7304d        Ross Burton <ross.burton@intel.com>               
webkit-gtk                    1.8.3                         2.4.3                         Ross Burton <ross.burton@intel.com>               >= 1.10.2 needs ruby          
piglit                        1.0+gitrAUTOINC+bbeff5d2      1.0+gitrAUTOINC+2f85641       Ross Burton <ross.burton@intel.com>               
fontsproto                    2.1.2                         2.1.3                         Ross Burton <ross.burton@intel.com>               
matchbox-desktop              2.0+gitAUTOINC+71e3e6e042     2.0+gitAUTOINC+09170f4        Ross Burton <ross.burton@intel.com>               
clutter-gst-1.0               1.6.0                         2.99.4                        Ross Burton <ross.burton@intel.com>               
shared-mime-info              1.2                           1.3                           Ross Burton <ross.burton@intel.com>               
gnome-desktop                 2.32.1                        3.13.3                        Ross Burton <ross.burton@intel.com>               waiting for the sato gtk3 port
xinput-calibrator             0.7.5+gitAUTOINC+c01c5af      0.7.5+gitAUTOINC+03dadf5      Ross Burton <ross.burton@intel.com>               
json-glib                     1.0.0                         1.0.2                         Ross Burton <ross.burton@intel.com>               
matchbox-keyboard             0.0+gitAUTOINC+217f1bfe14     0.0+gitAUTOINC+c818436        Ross Burton <ross.burton@intel.com>               
inputproto                    2.3                           2.3.1                         Ross Burton <ross.burton@intel.com>               2.2.99.1 is unstable          
presentproto                  1.0+gitAUTOINC+24f3a56e54     1.0+gitAUTOINC+ef84007        Ross Burton <ross.burton@intel.com>               
glib-2.0                      2.40.0                        2.41.1                        Robert Yang <liezhi.yang@windriver.com>           
autogen-native                5.18.3                        5.18.3-5                      Robert Yang <liezhi.yang@windriver.com>           
rsync                         3.1.0                         3.1.1                         Robert Yang <liezhi.yang@windriver.com>           
file                          5.18                          5.19                          Robert Yang <liezhi.yang@windriver.com>           
e2fsprogs                     1.42.9                        1.42.10                       Robert Yang <liezhi.yang@windriver.com>           
python-gst                    0.10.22                       1.2.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
gccmakedep                    1.0.2                         1.0.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
powertop                      2.5                           2.6.1                         Richard Purdie <richard.purdie@linuxfoundation.org>Do not upgrade to version 1.9...
libconvert-asn1-perl          0.26                          0.27                          Richard Purdie <richard.purdie@linuxfoundation.org>
kexec-tools                   2.0.6                         2.0.7                         Richard Purdie <richard.purdie@linuxfoundation.org>
python                        2.7.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
gdb                           7.7                           7.7.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-scons                  2.3.0                         2.3.2                         Richard Purdie <richard.purdie@linuxfoundation.org>
tcf-agent                     0.4.0+gitAUTOINC+4ef94ec      8.0+gitAUTOINC+ed8b521        Richard Purdie <richard.purdie@linuxfoundation.org>
btrfs-tools                   3.12+gitAUTOINC+8cae1840      3.14.2+gitAUTOINC+24cf4d8     Richard Purdie <richard.purdie@linuxfoundation.org>
mdadm                         3.3                           3.3.1                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-distribute             0.6.32                        0.7.3                         Richard Purdie <richard.purdie@linuxfoundation.org>
python-pygobject              2.28.3                        3.13.3                        Richard Purdie <richard.purdie@linuxfoundation.org>Newer versions of python-pygo...
libdrm                        2.4.53                        2.4.54                        Richard Purdie <richard.purdie@linuxfoundation.org>
subversion                    1.7.10                        1.8.9                         Richard Purdie <richard.purdie@linuxfoundation.org>
python3                       3.3.3                         3.4.1rc1                      Richard Purdie <richard.purdie@linuxfoundation.org>
python-pycurl                 7.19.3                        7.19.3.1                      Richard Purdie <richard.purdie@linuxfoundation.org>
nasm                          2.11.02                       2.11.05                       Richard Purdie <richard.purdie@linuxfoundation.org>
gpgme                         1.4.3                         1.5.0                         Paul Eggleton <paul.eggleton@linux.intel.com>     
libgpg-error                  1.12                          1.13                          Paul Eggleton <paul.eggleton@linux.intel.com>     
libav                         0.8.11                        10.2                          Paul Eggleton <paul.eggleton@linux.intel.com>     
openjade-native               1.3.2                         1.3.3                         Paul Eggleton <paul.eggleton@linux.intel.com>     
x264                          r2265+gitAUTOINC+ffc3ad4      r2265+gitAUTOINC+a5831aa      Paul Eggleton <paul.eggleton@linux.intel.com>     
createrepo                    0.4.11                        0.10.3                        Paul Eggleton <paul.eggleton@linux.intel.com>     Versions after 0.9.* use YUM,...
unfs3                         0.9.22.r490                   N/A                           Paul Eggleton <paul.eggleton@linux.intel.com>     
python-nose                   1.2.1                         1.3.3                         No Maintainer info                                
dbus-test                     1.8.2                         1.8.6                         No Maintainer info                                
lz4                           r112                          N/A                           No Maintainer info                                
python-mako                   0.9.1                         1.0.0                         No Maintainer info                                
xf86-video-modesetting        0.8.1                         0.9.0                         No Maintainer info                                
python-numpy                  1.7.0                         1.8.1                         No Maintainer info                                
python3-distribute            0.6.32                        0.7.3                         No Maintainer info                                
rpm                           5.4.9                         5.4.14-0.20131024             Mark Hatle <mark.hatle@windriver.com>             
libsdl                        1.2.15                        1.2.15-1                      Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.27                        1.0.28                        Kai Kang <kai.kang@windriver.com>                 
elfutils                      0.148                         0.159                         Hongxu Jia <hongxu.jia@windriver.com>             
lsb                           4.1                           1.4                           Hongxu Jia <hongxu.jia@windriver.com>             
qmmp                          0.7.7                         0.8.0                         Hongxu Jia <hongxu.jia@windriver.com>             
gummiboot                     43+gitAUTOINC+4062c51075      45+gitAUTOINC+eb3daf2         Darren Hart <dvhart@linux.intel.com>              
trace-cmd                     1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              
kernelshark                   1.2+gitAUTOINC+7055ffd37b     2.4+gitAUTOINC+293f625        Darren Hart <dvhart@linux.intel.com>              0.2 is the latest version.    
syslinux                      6.01                          6.02                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
telepathy-mission-control     5.16.1                        5.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
apmd                          3.2.2-14                      3.2.2                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-idle                0.2.0                         0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
tremor                        20120314                      N/A                           Cristian Iorga <cristian.iorga@intel.com>         Same revision on different SV...
alsa-utils                    1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
bluez4                        4.101                         5.21                          Cristian Iorga <cristian.iorga@intel.com>         BlueZ 5.x is not backward-com...
bluez5                        5.20                          5.21                          Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils-alsaconf           1.0.27.2                      1.0.28                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.24.0                        0.99.11                       Cristian Iorga <cristian.iorga@intel.com>         
wireless-tools                30.pre9                       29                            Cristian Iorga <cristian.iorga@intel.com>         
db                            5.3.21                        6.0.30                        Cristian Iorga <cristian.iorga@intel.com>         API compatibility issue       
gst-plugin-bluetooth          4.101                         5.21                          Cristian Iorga <cristian.iorga@intel.com>         
net-tools                     1.60-25                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mp3               0.10.19                       0.10.29                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer1.0-rtsp-server      1.2.3                         1.3.90                        Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.14                          1.15                          Cristian Iorga <cristian.iorga@intel.com>         
gst-fluendo-mpegdemux         0.10.72                       0.10.81                       Cristian Iorga <cristian.iorga@intel.com>         
linux-firmware                0.0+gitAUTOINC+dec41bce44     0.0+gitAUTOINC+7f388b4        Cristian Iorga <cristian.iorga@intel.com>         
diffstat                      1.58                          1.59                          Chong Lu <Chong.Lu@windriver.com>                 
dbus                          1.8.2                         1.8.6                         Chong Lu <Chong.Lu@windriver.com>                 D-BUS 1.7.x is the developmen...
dbus-glib                     0.100.2                       0.102                         Chong Lu <Chong.Lu@windriver.com>                 
bison                         2.7.1                         3.0.2                         Chong Lu <Chong.Lu@windriver.com>                 
byacc                         20140422                      20140527                      Chong Lu <Chong.Lu@windriver.com>                 
grep                          2.19                          2.20                          Chen Qi <Qi.Chen@windriver.com>                   
sysstat                       10.2.1                        11.0.0                        Chen Qi <Qi.Chen@windriver.com>                   
shadow                        4.1.4.3                       4.2.1                         Chen Qi <Qi.Chen@windriver.com>                   
linux-libc-headers            3.14                          3.15.3                        Bruce Ashfield <bruce.ashfield@windriver.com>     
kern-tools-native             0.2+gitAUTOINC+a42509b01c     0.2+gitAUTOINC+a212a4a        Bruce Ashfield <bruce.ashfield@windriver.com>     
Upgradable Count: 127
Upgrade Total Count: 149
The based commit merge time is:
Fri Jul 4 09:28:36 2014 +0100
The based commit is:
commit a5531a2b8983318b99c119a87b78a92cf84160b8
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu Jul 3 11:39:34 2014 +0100
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--4Ckj6UjgE2iN1+kY
Content-Type: image/png
Content-Disposition: attachment; filename="weekly_upgrde_history_chart.png"
Content-Transfer-Encoding: base64

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
qVNNTU2VWFwsFp85c6aoqGjQoEEeHh5K7Lly99DGPVfuHvpab/XfxeLj42fGlSQAAAdQSURBVHfs
2FFaWsrcdXNz+/x/TE1N2StdlFJcIpHExsb279/f3d19zZo1lZWVSixeU1Nz5MgRDw8PJyen7777
TiKRtLnykydPfv/9dy6X6+np+d///jcvL08kEq1bt87c3NzU1FTBy7kbFyeEPHz48Ndffy0sLGxz
2eaKv3r1au/evR4eHiEhIVu3br1//74Si/N4vMOHDwcFBfn7+8tnh1KKM+2lpaUHDx5UpHKTxWUy
WX5+PvtWV2Se1GTP169f37t372HDhsXExDx58kSJxZW4hzYurtw9tDWaPWb3Wnv27DEzM9PS0jp6
9GhJSYmNjU1mZubt27evXbtmb2/P4XD279/P5/MtLCySk5NTUlJsbW1zcnJUVVXr6urc3d0JIV26
dNHR0dHR0eHz+YmJiRMmTFBi8ezs7PT09AkTJhgaGmZnZ5ubmxsYGCireFxcnLm5uZeXl6Gh4fPn
z/X19dtcvKqqysLCYuDAgd27dy8rK5PJZBUVFa9evZowYYK5uXlmZmavXr3Y/9VTvLi1tXV+fr66
unpZWZmvr68if9DGxevq6rS0tAIDA3V1devq6ng8Xt++fZVVnBBiZmbm6urao0eP1NRUKysrJW5z
a2vr+vr6X3/91cnJSVVV1dHRUYmbRV9fPyMjIyQkpGvXrnp6eqqqqkos3r1798ePH48aNcrAwMDN
zU1HR4fD4SiruJ2dnbL20MbFxWJxc3toO2n7yE5LSysjI0MmkyUlJd27d48QkpKS0q1bNw6Hk5WV
JRaLU1JSEhMTCSEPHz5kViMwMNDV1bVxqUOHDk2cOFG5xe3t7Xv27Llz584ffviBEGJra6vE4l27
dn3w4AEhRCaTCYVCdmjQhuL+/v7MpKmysjI7O9ve3l7+cm4TExP5y7kVL04I8fb2HjhwoOJ/0MbF
XV1dmWl+TU1Namoqm3RKKe7o6Dho0KCMjIzdu3drampaWVkpd7OcPHnS09NTfkqrrOIvX74sLy9f
t25ddHT0uXPn5OcBihfPy8szMDA4e/bs9u3bKysr5Q96KGWzMBTfQxsXb2EPbSdtDztnZ+fMzMyi
oqI+ffrU1dXV1tZmZWU5Ozsz7cwYuKysrL6+Pjc3V/6jsoGCggI9Pb0GI2TFi/N4vGfPnuno6Dg7
O1dWVpaVlSmxuKurq66u7o4dO6Kjo4VCoeI9j4+P37hx4/jx401NTZnxEdOur69fXV2txOJK/4M2
Lp6UlBQVFeXv7y8fdsoqrqGhwQxepFKpEotnZGSUlZX5+Pi0x2bR19efMGHC4sWLFyxYEBcXl5KS
osTiL168SExMNDY2njhx4vbt2zMyMpS+zZW4h8oXb2EPbSdtn8Z27979xIkTurq6JiYmampqNTU1
BQUFgwcP7tat26lTpzQ1Na2trWtqakQiUVlZmb+/P/Oqly9fPnnyhJkMMs6fP+/u7t6jRw/lFr96
9aq5ufno0aNtbGxKS0tLSkrYTyrFi2toaLi7u5uZmXG53PLycgcHB3YE/qbF6+vr9+3bV1JSMnPm
TOaI/rNnz4qLiz/88ENCyMOHD01MTNiLHBUvzhAIBMnJyQ2msUopfuzYsdTU1IiIiAbXwSte/Pnz
54QQExMTJyenx48fFxUVsYtQvPjRo0crKyvv37+fmZlZXFwsFArb/G5pXFxHR8fU1FRFRUVVVVUq
lZaVlTk4OCireE1Njbq6emhoqKamplgsLi0tVWJxJe6hjYu3sIe2k7aP7NTV1Xv37n39+nU7Ozt7
e/uzZ88yJ8i0tLR0dXXv3bvHtvfr16+5IvX19Tk5OfJDAGUVNzAwYCaAzNEB+VmP4sVzc3N37dpl
ZGSkrq7+4MEDS0vLNhd/9OiRiorKjBkzdHR0mAqurq5Pnz4Vi8WEkJSUlN69eyuxeAsUL15YWPjs
2bPZs2d3795d6cUfPXp08eJFQohYLObxePLfOaZ48SlTpoSHh0+ZMoU56RQQEKDE4jdu3Dh27Bgh
RCQS5efnyx9DULy4ra3to0ePpFKpTCYrLS2VP0mtlHeLsvbQxsVb2EPbSUvfZ/da/fr1Ky4uNjIy
4nA45eXl7IZ2dnZOSEjQ1tZ2cHCIiYlp4SqB1NRUc3NzFRUVpRd3c3PLz8//+eefS0tLDQ0NG8SW
gsUtLS15PN73338vkUiGDRumoaHR5uKpqamJiYnMEUBCyNixY/39/V1cXKKiotTU1Dw8PBpcwKF4
8SbXSCnFq6qqsrKy5s+fz7QEBgaOGjVKWcW5XO6GDRu2bt369OlTY2PjBocdlbVZtLW1a2trG1xL
pGBxNze3ffv2/fDDD6Wlpfb29g0OJijec19f3y1btggEAiMjoz59+ii3uLL20MbFvby8WthD28Pb
vs7uLauurhaLxe3xzaMymez58+e6uroKXmTXHKFQWF1d3WDuADweT11dXcFrDzsEn89XU1PT1tZu
j+LMUbPO+A277beHNvaehx0AAAO/QQEAVEDYAQAVEHYAQAWEHQBQ4f8BQtQs1ErBfh4AAAAASUVO
RK5CYII=

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--4Ckj6UjgE2iN1+kY--
