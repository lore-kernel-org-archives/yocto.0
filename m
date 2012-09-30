Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4D3E01404
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 17:01:13 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id C760A4296B; Sun, 30 Sep 2012 00:01:13 +0000 (UTC)
Date: Sun, 30 Sep 2012 00:01:13 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120930000113.GA4740@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: [Package Report System]Manual check recipes name list
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
X-List-Received-Date: Sun, 30 Sep 2012 00:01:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      4.1                 4.1                 165 day                  Yi Zhao <yi.zhao@windriver.co...        1.4 is fixed version of LSB Te...
freetype                 2.4.10              2.4.10              86 days                  Valentin Popa <valentin.popa@...        No data                       
menu-cache               0.3.3               0.3.3               41180 d                  Valentin Popa <valentin.popa@...        No data                       
libfm                    0.1.17              1.30                86 days                  Valentin Popa <valentin.popa@...        No data                       
pcmanfm                  0.9.10              0.9.10              86 days                  Valentin Popa <valentin.popa@...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              41180 d                  Valentin Popa <valentin.popa@...        No data                       
libevent                 2.0.16              2.0.20              262 day                  Scott Garman <scott.a.garman@...        No data                       
e2fsprogs                1.42.1              1.42.5              87 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                87 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               87 days                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               87 days                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               87 days                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.49              1.5.11              87 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
libatomics-ops           7.2                 N/A                 41180 d                  Scott Garman <scott.a.garman@...        No data                       
cracklib                 2.8.19              2.8.19              87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.19               22.19               87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.1.1              10.1.1              87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.9.0               1.9.0               87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
mx                       1.4.6               N/A                 41180 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.21              0.6.21              87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.13              3.7.13              87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.51.0              1.51.0              87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libacpi                  0.2                 0.2                 41180 d                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.2b             87 days                  Saul Wold <sgw@linux.intel.co...        No data                       
popt                     1.16                1.16                41180 d                  Saul Wold <sgw@linux.intel.co...        No data                       
clutter-gst-1.8          1.4.6               N/A                 41180 d                  Ross Burton <ross.burton@inte...        No data                       
cogl                     1.8.2               Jul 17, 2012        292 day                  Ross Burton <ross.burton@inte...        No data                       
clutter-1.8              1.8.4               N/A                 41180 d                  Ross Burton <ross.burton@inte...        No data                       
clutter-gtk-1.8          0.11.4              N/A                 41180 d                  Ross Burton <ross.burton@inte...        No data                       
tzdata                   2012d               2012c               86 days                  Radu Moisan <radu.moisan@inte...        No data                       
bzip2                    1.0.6               1.0.6               495 day                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 86 days                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.12                5.12                86 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                86 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 86 days                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 86 days                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               86 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                158 day                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              86 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 86 days                  Radu Moisan <radu.moisan@inte...        No data                       
u-boot-fw-utils          2011.06             20012.07            41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr633...    0.1.8               86 days                  Radu Moisan <radu.moisan@inte...        No data                       
fotowall                 0.9                 0.9                 41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
quicky                   0.4                 N/A                 41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     9                   9                   41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 281 day                  Radu Moisan <radu.moisan@inte...        No data                       
gupnp                    0.16.1              0.18.4              41180 d                  Radu Moisan <radu.moisan@inte...        No data                       
lame                     3.99.5              3.99.5              86 days                  Radu Moisan <radu.moisan@inte...        No data                       
nativesdk-libarchive...  2.8.5               N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-bzip2          1.0.6               N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-mpfr           3.1.0               N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-sqlite3        3.7.13              N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-db             5.3.15              N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-libmpc         0.8.2               N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-u-boot-mki...  2011.06             N/A                 41180 d                  No Maintainer information               No data                       
kconfig-frontends        3.5.0               3.5.0               41180 d                  No Maintainer information               No data                       
nativesdk-pseudo         1.4.1               N/A                 41180 d                  No Maintainer information               No data                       
python-argparse          1.2.1               N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-opkg           0.1.8+svnr633...    N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-chrpath        0.14                N/A                 41180 d                  No Maintainer information               No data                       
nativesdk-eglibc         2.16                N/A                 41180 d                  No Maintainer information               No data                       
libcgroup                0.37.1              0.38-1              41180 d                  No Maintainer information               No data                       
nativesdk-expat          2.1.0               N/A                 41180 d                  No Maintainer information               No data                       
mpeg2dec                 0.4.1               0.5.1               495 day                  No Maintainer information               Why are we currently at 0.4.1?
nativesdk-alsa-lib       1.0.25              N/A                 41180 d                  No Maintainer information               No data                       
ltp                      20120903            20120903            201 day                  Mihai Lindner <mihaix.lindner...        No data                       
pseudo                   1.4.1               1.2                 333 day                  Mark Hatle <mark.hatle@windri...        No data                       
prelink                  1.0+git1+a2d8...    1.0+git1+9552...    261 day                  Mark Hatle <mark.hatle@windri...        No data                       
rpm                      5.4.9               5.4.10              41180 d                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              86 days                  Laurentiu Palcu <laurentiu.pa...        No data                       
libarchive               2.8.5               3.0.4               41180 d                  Kai Kang <kai.kang@windriver....        No data                       
mingetty                 1.08                1.08                262 day                  Kai Kang <kai.kang@windriver....        No data                       
alsa-tools               1.0.25              N/A                 41180 d                  Kai Kang <kai.kang@windriver....        No data                       
adt-installer            0.1.8+svnr596...    1.1                 41180 d                  Jessica Zhang <jessica.zhang@...        No data                       
cwautomacros             20110201            20110201            86 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               86 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               86 days                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               86 days                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.00                4.00                86 days                  Cristian Iorga <cristian.iorg...        No data                       
db                       5.3.15              5.0.26              41180 d                  Cristian Iorga <cristian.iorg...        API compatibility issue       
libproxy                 0.4.7               0.4.7               609 day                  Cristian Iorga <cristian.iorg...        No data                       
taglib                   1.8                 1.7.2               609 day                  Cristian Iorga <cristian.iorg...        No data                       
lrzsz                    0.12.20             0.12.20             609 day                  Cristian Iorga <cristian.iorg...        No data                       
libical                  0.48                0.48                86 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  86 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              86 days                  Cristian Iorga <cristian.iorg...        No data                       
libpcap                  1.3.0               4.3.0               41180 d                  Cristian Iorga <cristian.iorg...        No data                       
gssdp                    0.10.0              0.10.0              41180 d                  Cristian Iorga <cristian.iorg...        No data                       
gupnp-tools              0.8.1               N/A                 41180 d                  Cristian Iorga <cristian.iorg...        No data                       
gupnp-av                 0.8.0               0.10.3              41180 d                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            41180 d                  Cristian Iorga <cristian.iorg...        No data                       
liba52                   0.7.4               0.7.4               609 day                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               86 days                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               86 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               86 days                  Cristian Iorga <cristian.iorg...        No data                       
alsa-utils               1.0.25              N/A                 41180 d                  Cristian Iorga <cristian.iorg...        No data                       
alsa-lib                 1.0.25              N/A                 41180 d                  Cristian Iorga <cristian.iorg...        No data                       
mpfr                     3.1.0               3.1.1               86 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
libpcre                  8.31                8.31                86 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
libmpc                   0.8.2               0.9                 614 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               2.2.0               41180 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
distcc                   2.18.3              3.1.1               41180 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
intltool                 0.50.0              0.50.2              41180 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 86 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
git                      1.7.7               N/A                 41180 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.12              86 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
powertop                 1.13                1.97                529 day                  Bogdan Marinescu <bogdan.a.ma...        Do not upgrade to version 1.97...
oprofile                 0.9.7               0.9.8               86 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
latencytop               0.5                 0.5                 529 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
eglibc                   2.16                git:16540           273 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 115
Manual Need Check Count: 115
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

