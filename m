Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2917E01455
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 18:20:36 -0800 (PST)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id D37634297A; Sun,  2 Dec 2012 02:20:36 +0000 (UTC)
Date: Sun, 2 Dec 2012 02:20:36 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20121202022036.GA19678@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 02 Dec 2012 02:20:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      4.1                 4.1                 88 days                  Yi Zhao <yi.zhao@windriver.co...        No data                       
e2fsprogs                1.42.1              1.42.5              96 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                97 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               93 days                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               96 days                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               93 days                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.50              1.5.11              150 day                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
cracklib                 2.8.19              2.8.19              30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.20               22.20               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.1.2              10.1.2              30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     456                 451                 30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.9.0               1.9.0               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.21              0.6.21              30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.14.1            3.7.14.1            30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.51.0              1.51.0              30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.9               0.9.9               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
kconfig-frontends        3.6.0               3.6.0               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcgroup                0.37.1              0.38-1              30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             30 days                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012d               2012c               87 days                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.12                5.12                23 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                23 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 90 days                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 90 days                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 89 days                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               23 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                23 days                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              23 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 23 days                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             82 days                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr649...    0.1.8               93 days                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     9                   9                   128 day                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 90 days                  Radu Moisan <radu.moisan@inte...        TinyLogin was merged into Busy...
lame                     3.99.5              3.99.5              95 days                  Radu Moisan <radu.moisan@inte...        No data                       
ltp                      20120903            20120903            5 days,                  Mihai Lindner <mihaix.lindner...        No data                       
prelink                  1.0+git1+a2d8...    1.0+git1+9552...    93 days                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              90 days                  Laurentiu Palcu <laurentiu.pa...        No data                       
adt-installer            0.1.8+svnr596...    1.1                 82 days                  Jessica Zhang <jessica.zhang@...        No data                       
quota                    4.00                4.00                24 days                  Cristian Iorga <cristian.iorg...        No data                       
cwautomacros             20110201            20110201            24 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               24 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               93 days                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               24 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  24 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              24 days                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            24 days                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               24 days                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               24 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               24 days                  Cristian Iorga <cristian.iorg...        No data                       
freetype                 2.4.10              2.4.10              95 days                  Constantin Musca <constantinx...        No data                       
menu-cache               0.3.3               0.3.3               93 days                  Constantin Musca <constantinx...        No data                       
libfm                    0.1.17              1.30                94 days                  Constantin Musca <constantinx...        No data                       
pcmanfm                  0.9.10              0.9.10              93 days                  Constantin Musca <constantinx...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              95 days                  Constantin Musca <constantinx...        No data                       
libpcre                  8.31                8.31                24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
mpfr                     3.1.0               3.1.1               24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               2.2.0               24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.12              24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.8               24 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 62
Manual Need Check Count: 25
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

