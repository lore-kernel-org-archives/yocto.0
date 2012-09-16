Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125CCE0044A
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 17:18:59 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 036DF40CDB; Sun, 16 Sep 2012 00:18:58 +0000 (UTC)
Date: Sun, 16 Sep 2012 00:18:58 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120916001858.GA16469@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 16 Sep 2012 00:18:59 -0000
X-Groupsio-MsgNum: 9380
Content-Type: multipart/mixed; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline

--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this recipe remainder until newer upstream version was detected.
Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
You can check the detail information at http://packages.yoctoproject.org/upgradepkgname


PackageName                   Version                       UpVersion                     Maintainer                                        NoUpgradeReason               
ccache                        3.1.7                         3.1.8                         Wenzong Fan <wenzong.fan@windriver.com>           
xdg-utils                     1.0.2                         1.1.0                         Valentin Popa <valentin.popa@intel.com>           only release candidates avail...
libxslt                       1.1.26                        1.1.27                        Valentin Popa <valentin.popa@intel.com>           
evolution-data-server         2.30+git1+3ca578d968d097      6.0                           Valentin Popa <valentin.popa@intel.com>           
puzzles                       r9594                         9660                          Valentin Popa <valentin.popa@intel.com>           
matchbox-panel-2              0.0+git1+cdf7a22716b8746      2.0                           Valentin Popa <valentin.popa@intel.com>           
lttng-viewer                  0.12.38                       0.12.38.21032011              Valentin Popa <valentin.popa@intel.com>           
sysprof                       1.1.8+git1+4692f85f625f4      1.2.0                         Tom Zanussi <tom.zanussi@intel.com>               
shadow                        4.1.4.3                       4.1.5.1                       Scott Garman <scott.a.garman@intel.com>           
sudo                          1.8.5p2                       1.8.6                         Scott Garman <scott.a.garman@intel.com>           
blktool                       4-6                           4                             Scott Garman <scott.a.garman@intel.com>           
apmd                          3.2.2-14                      3.2.2                         Scott Garman <scott.a.garman@intel.com>           
openssh                       6.0p1                         6.1p1                         Scott Garman <scott.a.garman@intel.com>           
mc                            4.8.4                         4.8.6                         Saul Wold <sgw@linux.intel.com>                   
createrepo                    0.4.11                        0.9.9                         Saul Wold <sgw@linux.intel.com>                   Versions after 0.9.* use YUM,...
libnl                         2.0                           3.2.13                        Saul Wold <sgw@linux.intel.com>                   libnl-3.2.2 is incompatible w...
apt                           0.7.14                        0.9.7.5                       Saul Wold <sgw@linux.intel.com>                   
pkgconfig                     0.25                          0.27.1                        Saul Wold <sgw@linux.intel.com>                   removes glib-conf, adds circu...
build-appliance-image         1.0                           3.2.1                         Saul Wold <sgw@linux.intel.com>                   
util-linux                    2.21.2                        2.22                          Saul Wold <sgw@linux.intel.com>                   
libxml2                       2.8.0                         2.9.0                         Saul Wold <sgw@linux.intel.com>                   
resolvconf                    1.67                          1.68                          Saul Wold <sgw@linux.intel.com>                   
dhcp                          4.2.4-P1                      4.2.4                         Saul Wold <sgw@linux.intel.com>                   
logrotate                     3.8.1                         3.8.2                         Robert Yang <liezhi.yang@windriver.com>           
unzip                         6.0                           552                           Radu Moisan <radu.moisan@intel.com>               
liburcu                       0.6.7                         0.7.4                         Radu Moisan <radu.moisan@intel.com>               
curl                          7.26.0                        7.27.0                        Radu Moisan <radu.moisan@intel.com>               
js                            1.7.0+1.8.0rc1                1.60                          Radu Moisan <radu.moisan@intel.com>               
u-boot-mkimage                2011.06                       2012.07                       Radu Moisan <radu.moisan@intel.com>               
valgrind                      3.7.0                         3.8.0                         Radu Moisan <radu.moisan@intel.com>               
babeltrace                    0.12+git1+0d8f8c2ea27df0      1.0.0                         Radu Moisan <radu.moisan@intel.com>               
udev                          164                           182                           Radu Moisan <radu.moisan@intel.com>               
zlib                          1.2.7                         121                           Radu Moisan <radu.moisan@intel.com>               
mobile-broadband-provider-info1.0.0+gitr1+d9995ef693cb      20090309                      Radu Moisan <radu.moisan@intel.com>               
nativesdk-bdwgc               20110107                      7.2alpha5                     No Maintainer information                         
nativesdk-curl                7.26.0                        7.27.0                        No Maintainer information                         
nativesdk-pkgconfig           0.25                          0.27.1                        No Maintainer information                         
nativesdk-perl                5.14.2                        5.17.3                        No Maintainer information                         
lttng-modules                 2.0.pre11+git4d3e89e379f      2.1.0                         No Maintainer information                         
nativesdk-linux-libc-headers- 3.4+git-1+a1cdb60720c452      3.4.9                         No Maintainer information                         
nativesdk-linux-libc-headers  3.4.3                         3.6                           No Maintainer information                         
nativesdk-zlib                1.2.7                         121                           No Maintainer information                         
nativesdk-libxml2             2.8.0                         2.9.0                         No Maintainer information                         
libdumpvalue-perl             1.16                          1.17                          No Maintainer information                         
nativesdk-openssl             1.0.0j                        1.0.1                         No Maintainer information                         
nativesdk-alsa-lib            1.0.25                        1.0.26                        No Maintainer information                         
zypper                        1.5.3-git1+2c5bb6ceb99ec      11.0                          Mark Hatle <mark.hatle@windriver.com>             
libzypp                       0.0-git1+15b6c52260bbc52      11.0                          Mark Hatle <mark.hatle@windriver.com>             
rpm                           5.4.9                         5.4.9.0.20120508              Mark Hatle <mark.hatle@windriver.com>             
fontconfig                    2.9.0                         2.10.1                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xkeyboard-config              2.1                           2.6.99                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xserver-xorg                  1.11.2                        1.13.0                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-mouse              1.7.2                         1.8.1                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-keyboard           1.6.1                         1.6.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-input-evdev              2.7.0                         2.7.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-vesa               2.3.1                         2.3.2                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-intel              2.19.0                        2.20.7                        Laurentiu Palcu <laurentiu.palcu@intel.com>       
xf86-video-fbdev              0.4.2                         0.4.3                         Laurentiu Palcu <laurentiu.palcu@intel.com>       
ghostscript                   9.05                          9.06                          Kai Kang <kai.kang@windriver.com>                 
qmmp                          0.6.1                         0.6.3                         Kai Kang <kai.kang@windriver.com>                 
alsa-tools                    1.0.25                        1.0.26.1                      Kai Kang <kai.kang@windriver.com>                 
syslinux                      4.03                          4.05                          Darren Hart <dvhart@linux.intel.com>              Waiting for 4.06 for 3.3 kern...
net-tools                     1.60-23                       1.60                          Cristian Iorga <cristian.iorga@intel.com>         
connman                       1.4                           1.6                           Cristian Iorga <cristian.iorga@intel.com>         
ofono                         1.10                          1.11                          Cristian Iorga <cristian.iorga@intel.com>         
telepathy-mission-control     5.13.0                        5.13.1                        Cristian Iorga <cristian.iorga@intel.com>         
telepathy-glib                0.19.8                        0.19.9                        Cristian Iorga <cristian.iorga@intel.com>         
gst-plugins-base              0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
libmusicbrainz                3.0.3                         4.0.0                         Cristian Iorga <cristian.iorga@intel.com>         
gst-ffmpeg                    0.10.13                       0.11.2                        Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-good              0.10.31                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-bad               0.10.23                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gst-plugins-ugly              0.10.19                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>         not compatible with gst-fluen...
gstreamer                     0.10.36                       0.11.90                       Cristian Iorga <cristian.iorga@intel.com>          not compatible with gst-flue...
gst-fluendo-mp3               0.10.19                       0.10.20                       Cristian Iorga <cristian.iorga@intel.com>         
alsa-utils                    1.0.25                        1.0.26                        Cristian Iorga <cristian.iorga@intel.com>         
alsa-lib                      1.0.25                        1.0.26                        Cristian Iorga <cristian.iorga@intel.com>         
libconvert-asn1-perl          0.22                          0.26                          Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bdwgc                         20110107                      7.2alpha5                     Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
patch                         2.6.1                         2.7                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
tcf-agent                     0.4.0+git1+4ef94ecb927a8      8.0                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
bison                         2.5.1                         2.6.2                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
gdb                           7.4.1                         7.5                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
nasm                          2.10.01                       2.10.05                       Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng2-ust                    2.0.2+git1+a367ee66aad3f      2.1.0                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers-yocto      3.4+git-1+a1cdb60720c452      3.4.9                         Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
linux-libc-headers            3.4.3                         3.6                           Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
lttng-control                 0.89                          0.89.05122011                 Bogdan Marinescu <bogdan.a.marinescu@intel.com>   
Upgradable Count: 77
Upgrade Total Count: 88
The based commit merge time is:
Thu Sep 13 23:34:11 2012 -0700
The based commit is:
commit f213240315bba615535121b62e58897b34040732
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Fri Sep 14 00:57:27 2012 -0400
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"
upstream_tracking.inc/186: RECIPE_UPSTREAM_DATE_pn-diffutils = "Sept 3, 2011"

--zhXaljGHf11kAtnf--
