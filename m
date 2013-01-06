Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E40E00709
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2013 18:22:14 -0800 (PST)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 3D542407F1; Sun,  6 Jan 2013 02:22:14 +0000 (UTC)
Date: Sun, 6 Jan 2013 02:22:14 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130106022214.GA4393@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 06 Jan 2013 02:22:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      4.1                 4.1                 123 day                  Yi Zhao <yi.zhao@windriver.co...        No data                       
e2fsprogs                1.42.1              1.42.5              131 day                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                132 day                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               128 day                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               131 day                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               128 day                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.5.13              1.5.11              185 day                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
cracklib                 2.8.19              2.8.19              65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.20               22.20               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.1.2              10.1.2              65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     457                 451                 65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.9.0               1.9.0               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.21              0.6.21              65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.15.1            3.7.14.1            65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.51.0              1.51.0              65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.9               0.9.9               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
kconfig-frontends        3.6.0               3.6.0               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcgroup                0.37.1              0.38-1              65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             65 days                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012d               2012c               122 day                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.12                5.12                58 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                58 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 125 day                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 124 day                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 125 day                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               58 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                58 days                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              58 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 58 days                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             117 day                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr649...    0.1.8               128 day                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     9                   9                   163 day                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 125 day                  Radu Moisan <radu.moisan@inte...        TinyLogin was merged into Busy...
lame                     3.99.5              3.99.5              130 day                  Radu Moisan <radu.moisan@inte...        No data                       
ltp                      20120903            20120903            40 days                  Mihai Lindner <mihaix.lindner...        No data                       
prelink                  1.0+gitAUTOIN...    1.0+git1+9552...    128 day                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              125 day                  Laurentiu Palcu <laurentiu.pa...        No data                       
adt-installer            0.1.8+svnr596...    1.1                 117 day                  Jessica Zhang <jessica.zhang@...        No data                       
quota                    4.00                4.00                59 days                  Cristian Iorga <cristian.iorg...        No data                       
cwautomacros             20110201            20110201            59 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               59 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               128 day                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               59 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  59 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              59 days                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            59 days                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               59 days                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               59 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               59 days                  Cristian Iorga <cristian.iorg...        No data                       
freetype                 2.4.11              2.4.10              130 day                  Constantin Musca <constantinx...        No data                       
menu-cache               0.4.1               0.3.3               128 day                  Constantin Musca <constantinx...        No data                       
libfm                    1.1.0               1.30                129 day                  Constantin Musca <constantinx...        No data                       
pcmanfm                  1.1.0               0.9.10              128 day                  Constantin Musca <constantinx...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              130 day                  Constantin Musca <constantinx...        No data                       
libpcre                  8.32                8.31                59 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               2.2.0               59 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 59 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.12              59 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.8               59 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 61
Manual Need Check Count: 61
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

