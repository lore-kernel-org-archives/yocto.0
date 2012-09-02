Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39872E01450
	for <yocto@yoctoproject.org>; Sat,  1 Sep 2012 17:17:14 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 205D04389E; Sun,  2 Sep 2012 00:17:14 +0000 (UTC)
Date: Sun, 2 Sep 2012 00:17:14 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120902001714.GA18204@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: [Package Report System]Upgrade recipes name list
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 02 Sep 2012 00:17:14 -0000
X-Groupsio-MsgNum: 9040
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.7                         3.1.8                         Wenzong Fan <wenzong.fan@windriver.com>           
xdg-utils                     1.0.2                         1.1.0                         Valentin Popa <valentin.popa@intel.com>           
liberation-fonts              1.04                          2.00.0                        Valentin Popa <valentin.popa@intel.com>           
qemu                          0.15.1                        1.2.0                         Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              0.0+git1+cdf7a22716b8746      2.0                           Valentin Popa <valentin.popa@intel.com>           
evolution-data-server         2.30+git1+3ca578d968d097      6.0                           Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9561                         9606                          Valentin Popa <valentin.popa@intel.com>           
lttng-viewer                  0.12.38                       0.12.38.21032011              Valentin Popa <valentin.popa@intel.com>           
shadow                        4.1.4.3                       4.1.5.1                       Scott Garman <scott.a.garman@intel.com>           
blktool                       4-6                           4                             Scott Garman <scott.a.garman@intel.com>           
apmd                          3.2.2-14                      3.2.2                         Scott Garman <scott.a.garman@intel.com>           
openssh                       6.0p1                         6.1p1                         Scott Garman <scott.a.garman@intel.com>           
libnl                         2.0                           3.2.12                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
apt                           0.7.14                        0.9.7.4                       Saul Wold <sgw@linux.intel.com>                   
pkgconfig                     0.25                          0.27.1                        Saul Wold <sgw@linux.intel.com>                   0.26 removes glib-conf, adds ...
build-appliance-image         1.0                           3.2.1                         Saul Wold <sgw@linux.intel.com>                   
util-linux                    2.21.2                        2.22                          Saul Wold <sgw@linux.intel.com>                   
libxml2                       2.8.0                         2.9.0                         Saul Wold <sgw@linux.intel.com>                   
dhcp                          4.2.4-P1                      4.2.4                         Saul Wold <sgw@linux.intel.com>                   ftp://ftp.isc.org/isc/dhcp/4.2.4-P1/dhcp-4.2.4-P1.tar.gz
logrotate                     3.8.1                         3.8.2                         Robert Yang <liezhi.yang@windriver.com>           
liburcu                       0.6.7                         0.7.4                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.26.0                        7.27.0                        Radu Moisan <radu.moisan@intel.com>               
js                            1.7.0+1.8.0rc1                1.60                          Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2012.07                       Radu Moisan <radu.moisan@intel.com>               
valgrind                      3.7.0                         3.8.0                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    0.12+git1+0d8f8c2ea27df0      1.0.0                         Radu Moisan <radu.moisan@intel.com>               
udev                          164                           182                           Radu Moisan <radu.moisan@intel.com>               
mobile-broadband-provider-info1.0.0+gitr1+d9995ef693cb      20090309                      Radu Moisan <radu.moisan@intel.com>               
man-pages                     3.41                          3.42                          No Maintainer information                         
nativesdk-bdwgc               20110107                      7.2alpha5                     No Maintainer information                         
nativesdk-curl                7.26.0                        7.27.0                        No Maintainer information                         
nativesdk-qemu                0.15.1                        1.2.0                         No Maintainer information                         
kconfig-frontends             3.5.0                         3.5.0.0                       No Maintainer information                         
nativesdk-automake            1.12.1                        1.12.3                        No Maintainer information                         
nativesdk-pkgconfig           0.25                          0.27.1                        No Maintainer information                         
nativesdk-perl                5.14.2                        5.17.3                        No Maintainer information                         
nativesdk-linux-libc-headers- 3.4+git-1+a1cdb60720c452      3.4.9                         No Maintainer information                         
nativesdk-linux-libc-headers  3.4.3                         3.6                           No Maintainer information                         
nativesdk-zlib                1.2.7                         121                           No Maintainer information                         
nativesdk-libxml2             2.8.0                         2.9.0                         No Maintainer information                         
nativesdk-libffi              3.0.10                        3.0.11                        No Maintainer information                         
nativesdk-openssl             1.0.0j                        1.0.1                         No Maintainer information                         
zypper                        1.5.3-git1+2c5bb6ceb99ec      11.0                          Mark Hatle <mark.hatle@windriver.com>             
libzypp                       0.0-git1+15b6c52260bbc52      11.0                          Mark Hatle <mark.hatle@windriver.com>             
rpm                           5.4.9                         5.4.9.0.20120508              Mark Hatle <mark.hatle@windriver.com>             
libdrm                        2.4.37                        2.4.39                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
fontconfig                    2.9.0                         2.10.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.1                           2.5.99                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.11.2                        1.12.99.905                   Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-mouse              1.7.2                         1.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-keyboard           1.6.1                         1.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vesa               2.3.1                         2.3.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.7.0                         2.7.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-fbdev              0.4.2                         0.4.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.19.0                        2.20.5                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.06                          Kai Kang <kai.kang@windriver.com>                 
xserver-xorg-lite             1.11.2                        1.12.99.905                   Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.1                         0.6.3                         Kai Kang <kai.kang@windriver.com>                 
syslinux                      4.03                          4.05                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
net-tools                     1.60-23                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.4                           1.6                           Cristian Iorga <cristian.iorga@intel.com>         
gypsy                         0.8                           0.9                           Cristian Iorga <cristian.iorga@intel.com>         
iproute2                      3.5.0                         3.5.1                         Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.19.6                        0.19.8                        Cristian Iorga <cristian.iorga@intel.com>         
libmusicbrainz                3.0.3                         4.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-base              0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-good              0.10.31                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-bad               0.10.23                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-ugly              0.10.19                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         
gstreamer                     0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         upgrading to 0.11.1 causes gs...
libconvert-asn1-perl          0.22                          0.26                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lsof                          4.85                          4.86                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+git1+4ef94ecb927a8      8.0                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
automake                      1.12.1                        1.12.3                        Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.5.1                         2.6.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gdb                           7.4.1                         7.5                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
nasm                          2.10.01                       2.10.04                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng2-ust                    2.0.2+git1+a367ee66aad3f      2.0.5                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers-yocto      3.4+git-1+a1cdb60720c452      3.4.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers            3.4.3                         3.6                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-control                 0.89                          0.89.05122011                 Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
Upgradable Count: 77
Upgrade Total Count: 83
The based commit merge time is:
Fri Aug 31 14:49:19 2012 -0700
The based commit is:
commit a6046058487f5de4ef82c530033397bfbecbfe27
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Fri Aug 31 00:06:57 2012 -0500
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--YZ5djTAD1cGYuMQK--
