Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (autobuilder.yoctoproject.org
	[172.17.193.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F022E00283
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 02:32:35 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 8155240504; Thu,  9 Aug 2012 09:32:35 +0000 (UTC)
Date: Thu, 9 Aug 2012 09:32:35 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120809093235.GA30825@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Aug 2012 09:32:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      1.4                 1.4                 113 day                  Yi Zhao <yi.zhao@windriver.co...        1.4 is fixed version of LSB Te...
freetype                 2.4.9               2.4.10              34 days                  Valentin Popa <valentin.popa@...        No data                       
menu-cache               0.3.3               0.3.3               41128 d                  Valentin Popa <valentin.popa@...        No data                       
libfm                    0.1.17              0.1.17              34 days                  Valentin Popa <valentin.popa@...        No data                       
pcmanfm                  0.9.10              0.9.10              34 days                  Valentin Popa <valentin.popa@...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              41128 d                  Valentin Popa <valentin.popa@...        No data                       
e2fsprogs                1.42.1              1.42.4              35 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                35 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               35 days                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               35 days                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               35 days                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.49              1.5.11              35 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
psmisc                   22.19               22.19               35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
cracklib                 2.8.19              2.8.19              35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.7.0               1.7.0               35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcap                   2.22                2.22                35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.20              0.6.20              35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.13              3.7.13              35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.50.0              1.50.0              35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             35 days                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012c               2012c               34 days                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 34 days                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.11                5.12                34 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                34 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 34 days                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 34 days                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               34 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                106 day                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              34 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 34 days                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             41128 d                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr633...    0.1.8               34 days                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     8                   N/A                 41128 d                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 21 days                  Radu Moisan <radu.moisan@inte...        TinyLogin was merged into Busy...
lame                     3.99.5              3.99.5              34 days                  Radu Moisan <radu.moisan@inte...        No data                       
libcgroup                0.37.1              N/A                 41128 d                  No Maintainer information               No data                       
ltp                      20120614            20120614            15 days                  Mihai Lindner <mihaix.lindner...        No data                       
prelink                  1.0+git1+7b47...    1.0+git1+9552...    209 day                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              34 days                  Laurentiu Palcu <laurentiu.pa...        No data                       
mingetty                 1.08                1.08                16 days                  Kai Kang <kai.kang@windriver....        No data                       
adt-installer            0.1.8+svnr596...    1.1                 41128 d                  Jessica Zhang <jessica.zhang@...        No data                       
cwautomacros             20110201            20110201            34 days                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.00                4.00                16 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               34 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               16 days                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               16 days                  Cristian Iorga <cristian.iorg...        No data                       
libical                  0.48                0.48                16 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  16 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              16 days                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            41128 d                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               16 days                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               16 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               16 days                  Cristian Iorga <cristian.iorg...        No data                       
mpfr                     3.1.0               3.1.1               34 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
libpcre                  8.31                8.31                16 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               N/A                 41128 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 34 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.11              34 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.7               34 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
eglibc                   2.16                git:16540           221 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 64
Manual Need Check Count: 51
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

