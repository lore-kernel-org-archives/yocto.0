Return-Path: <lpalcu@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (autobuilder.yoctoproject.org
	[172.17.193.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFDD1E0146E
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 17:16:25 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 1054)
	id A7E5F407EB; Sun,  1 Jul 2012 00:16:25 +0000 (UTC)
Date: Sun, 1 Jul 2012 00:16:25 +0000
From: "laurentiu.palcu@intel.com" <lpalcu@ab01.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120701001625.GA25628@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
X-Mailman-Approved-At: Sun, 01 Jul 2012 21:20:08 -0700
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
X-List-Received-Date: Sun, 01 Jul 2012 00:16:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      1.4                 1.4                 74 days                  Yi Zhao <yi.zhao@windriver.co...        1.4 is fixed version of LSB Te...
mingetty                 1.08                1.08                171 day                  Xiaofeng.Yan <xiaofeng@windri...        No data                       
freetype                 2.4.9               2.4.9               67 days                  Valentin Popa <valentin.popa@...        No data                       
menu-cache               0.3.3               N/A                 41089 d                  Valentin Popa <valentin.popa@...        No data                       
libfm                    0.1.17              0.1.17              67 days                  Valentin Popa <valentin.popa@...        No data                       
setserial                2.17                2.17                67 days                  Valentin Popa <valentin.popa@...        No data                       
puzzles                  r9561               r9455               67 days                  Valentin Popa <valentin.popa@...        No data                       
pcmanfm                  0.9.10              0.9.10              67 days                  Valentin Popa <valentin.popa@...        No data                       
webkit-gtk               1.7.2+svnr101...    N/A                 41089 d                  Valentin Popa <valentin.popa@...        No data                       
e2fsprogs                1.42.1              1.42.2              72 days                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                72 days                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               55 days                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               72 days                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               N/A                 41089 d                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.2.49              1.5.10              55 days                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
cracklib                 2.8.19              2.8.19              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.19               22.19               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.0.5              10.0.5              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     444                 444                 9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.7.0               1.7.0               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libcap                   2.22                2.22                9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.20              0.6.20              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.13              3.7.13              9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.49.0              1.49.0              74 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.8               0.9.8               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             9 days,                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012c               2012c               67 days                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.11                5.12                67 days                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 74 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                67 days                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 67 days                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 74 days                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               67 days                  Radu Moisan <radu.moisan@inte...        No data                       
usbutils                 0.91                0.91                74 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 N/A                 41089 d                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              67 days                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     8                   N/A                 41089 d                  Radu Moisan <radu.moisan@inte...        No data                       
eggdbus                  0.6                 0.6                 67 days                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 190 day                  Radu Moisan <radu.moisan@inte...        No data                       
lame                     3.99.5              3.99.5              74 days                  Radu Moisan <radu.moisan@inte...        No data                       
ltp                      20120401            20120401            110 day                  Mihai Lindner <mihaix.lindner...        No data                       
prelink                  1.0+git1+7b47...    1.0+git1+9552...    170 day                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              67 days                  Laurentiu Palcu <laurentiu.pa...        No data                       
cwautomacros             20110201            20110201            67 days                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.00                4.00                67 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               67 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               67 days                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               67 days                  Cristian Iorga <cristian.iorg...        No data                       
strace                   4.7                 4.6                 67 days                  Cristian Iorga <cristian.iorg...        No data                       
libical                  0.48                0.48                67 days                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  N/A                 41089 d                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              N/A                 41089 d                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               67 days                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               67 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               67 days                  Cristian Iorga <cristian.iorg...        No data                       
mpfr                     3.1.0               3.1.0               173 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
libpcre                  8.30                8.21                151 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               N/A                 41089 d                  Bogdan Marinescu <bogdan.a.ma...        No data                       
flex                     2.5.35              2.5.35              151 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.11              151 day                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.7               67 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 63
Manual Need Check Count: 51
Any problem, please contact Mei Lei <lei.mei@intel.com> 

