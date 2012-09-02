Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A322E01451
	for <yocto@yoctoproject.org>; Sat,  1 Sep 2012 17:17:14 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 265DC40439; Sun,  2 Sep 2012 00:17:14 +0000 (UTC)
Date: Sun, 2 Sep 2012 00:17:14 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120902001714.GA18210@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 02 Sep 2012 00:17:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      1.4                 1.4                 137 day                  Yi Zhao <yi.zhao@windriver.co...        1.4 is fixed version of LSB Te...
freetype                 2.4.9               2.4.10              58 days                  Valentin Popa <valentin.popa@...        No data                       
menu-cache               0.3.3               0.3.3               41152 d                  Valentin Popa <valentin.popa@...        No data                       
libfm                    0.1.17              0.1.17              58 days                  Valentin Popa <valentin.popa@...        No data                       
pcmanfm                  0.9.10              0.9.10              58 days                  Valentin Popa <valentin.popa@...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              41152 d                  Valentin Popa <valentin.popa@...        No data                       
e2fsprogs                1.42.1              1.42.4              59 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                59 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               59 days                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               59 days                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               59 days                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.49              1.5.11              59 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
cracklib                 2.8.19              2.8.19              59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.19               22.19               59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.0.5              10.0.5              59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.7.0               1.7.0               59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.20              0.6.20              59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.13              3.7.13              59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.50.0              1.50.0              59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             59 days                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012d               2012c               58 days                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 58 days                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.12                5.12                58 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                58 days                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 58 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 58 days                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               58 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                130 day                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              58 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 58 days                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             41152 d                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr633...    0.1.8               58 days                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     9                   N/A                 41152 d                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 45 days                  Radu Moisan <radu.moisan@inte...        TinyLogin was merged into Busy...
lame                     3.99.5              3.99.5              58 days                  Radu Moisan <radu.moisan@inte...        No data                       
nativesdk-mpfr           3.1.0               N/A                 41152 d                  No Maintainer information               No data                       
nativesdk-sqlite3        3.7.13              N/A                 41152 d                  No Maintainer information               No data                       
nativesdk-opkg           0.1.8+svnr633...    N/A                 41152 d                  No Maintainer information               No data                       
nativesdk-chrpath        0.14                N/A                 41152 d                  No Maintainer information               No data                       
nativesdk-eglibc         2.16                N/A                 41152 d                  No Maintainer information               No data                       
libcgroup                0.37.1              N/A                 41152 d                  No Maintainer information               No data                       
nativesdk-expat          2.1.0               N/A                 41152 d                  No Maintainer information               No data                       
ltp                      20120614            20120614            39 days                  Mihai Lindner <mihaix.lindner...        No data                       
prelink                  1.0+git1+a2d8...    1.0+git1+9552...    233 day                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              58 days                  Laurentiu Palcu <laurentiu.pa...        No data                       
mingetty                 1.08                1.08                40 days                  Kai Kang <kai.kang@windriver....        No data                       
adt-installer            0.1.8+svnr596...    1.1                 41152 d                  Jessica Zhang <jessica.zhang@...        No data                       
cwautomacros             20110201            20110201            58 days                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.00                4.00                40 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               58 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               40 days                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               40 days                  Cristian Iorga <cristian.iorg...        No data                       
libical                  0.48                0.48                40 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  40 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              40 days                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            41152 d                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               40 days                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               40 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               40 days                  Cristian Iorga <cristian.iorg...        No data                       
mpfr                     3.1.0               3.1.1               58 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
libpcre                  8.31                8.31                40 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               N/A                 41152 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 58 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.11              58 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.7               58 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
eglibc                   2.16                git:16540           245 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 70
Manual Need Check Count: 70
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

