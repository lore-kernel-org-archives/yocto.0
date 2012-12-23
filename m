Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B5F4E0045D
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2012 18:13:11 -0800 (PST)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 205CF40450; Sun, 23 Dec 2012 02:13:11 +0000 (UTC)
Date: Sun, 23 Dec 2012 02:13:11 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20121223021311.GA22516@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Sun, 23 Dec 2012 02:13:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
lsb                      4.1                 4.1                 109 day                  Yi Zhao <yi.zhao@windriver.co...        No data                       
e2fsprogs                1.42.1              1.42.5              117 day                  Scott Garman <scott.a.garman@...        No data                       
chrpath                  0.14                0.14                118 day                  Scott Garman <scott.a.garman@...        No data                       
opensp                   1.5.2               1.5.2               114 day                  Scott Garman <scott.a.garman@...        No data                       
expat                    2.1.0               2.0.1               117 day                  Scott Garman <scott.a.garman@...        No data                       
nfs-utils                1.2.3               1.2.6               114 day                  Scott Garman <scott.a.garman@...        No data                       
libpng                   1.5.13              1.5.11              171 day                  Scott Garman <scott.a.garman@...        1.4.3 and later changes the AP...
cracklib                 2.8.19              2.8.19              51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.20               22.20               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sysstat                  10.1.2              10.1.2              51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
less                     457                 451                 51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.9.0               1.9.0               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.21              0.6.21              51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
sqlite3                  3.7.15.0            3.7.14.1            51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.51.0              1.51.0              51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcheck                 0.9.9               0.9.9               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
kconfig-frontends        3.6.0               3.6.0               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
remake                   git                 N/A                 41264 d                  Saul Wold <sgw@linux.intel.co...        No data                       
sysfsutils               2.1.0               2.1.0               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libcgroup                0.37.1              0.38-1              51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
console-tools            0.3.2               0.3.2               51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             0.15.1b             51 days                  Saul Wold <sgw@linux.intel.co...        No data                       
tzdata                   2012d               2012c               108 day                  Radu Moisan <radu.moisan@inte...        No data                       
watchdog                 5.12                5.12                44 days                  Radu Moisan <radu.moisan@inte...        No data                       
hdparm                   9.39                9.39                44 days                  Radu Moisan <radu.moisan@inte...        No data                       
zip                      3.0                 3.0                 110 day                  Radu Moisan <radu.moisan@inte...        No data                       
tslib                    1.0                 1.0                 111 day                  Radu Moisan <radu.moisan@inte...        No data                       
unzip                    6.0                 6.0                 111 day                  Radu Moisan <radu.moisan@inte...        No data                       
beecrypt                 4.2.1               4.2.1               44 days                  Radu Moisan <radu.moisan@inte...        No data                       
acpid                    1.0.10              1.0.10              44 days                  Radu Moisan <radu.moisan@inte...        No data                       
setserial                2.17                2.17                44 days                  Radu Moisan <radu.moisan@inte...        No data                       
squashfs-tools           4.2                 4.2                 44 days                  Radu Moisan <radu.moisan@inte...        No data                       
ubootchart               0.0+r12             0.0+r12             103 day                  Radu Moisan <radu.moisan@inte...        No data                       
opkg                     0.1.8+svnr649...    0.1.8               114 day                  Radu Moisan <radu.moisan@inte...        No data                       
kmod                     9                   9                   149 day                  Radu Moisan <radu.moisan@inte...        No data                       
update-rc.d              0.7                 N/A                 41264 d                  Radu Moisan <radu.moisan@inte...        No data                       
tinylogin                1.4                 1.4                 111 day                  Radu Moisan <radu.moisan@inte...        TinyLogin was merged into Busy...
lame                     3.99.5              3.99.5              116 day                  Radu Moisan <radu.moisan@inte...        No data                       
ltp                      20120903            20120903            26 days                  Mihai Lindner <mihaix.lindner...        No data                       
zypper                   1.5.3-gitAUTO...    git                 41264 d                  Mark Hatle <mark.hatle@windri...        No data                       
sat-solver               0.0-gitAUTOIN...    0.0-git1+e74e...    41264 d                  Mark Hatle <mark.hatle@windri...        No data                       
libzypp                  0.0-gitAUTOIN...    git                 114 day                  Mark Hatle <mark.hatle@windri...        No data                       
prelink                  1.0+gitAUTOIN...    1.0+git1+9552...    114 day                  Mark Hatle <mark.hatle@windri...        No data                       
x11vnc                   0.9.13              0.9.13              111 day                  Laurentiu Palcu <laurentiu.pa...        No data                       
adt-installer            0.1.8+svnr596...    1.1                 103 day                  Jessica Zhang <jessica.zhang@...        No data                       
cwautomacros             20110201            20110201            45 days                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.00                4.00                45 days                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.2               0.2.2               45 days                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.6.1               2.6.1               114 day                  Cristian Iorga <cristian.iorg...        No data                       
rpcbind                  0.2.0               0.2.0               45 days                  Cristian Iorga <cristian.iorg...        No data                       
connman-gnome            0.7                 N/A                 41264 d                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           29                  29                  45 days                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              0.9.18              45 days                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            45 days                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.2.1               1.2.1               45 days                  Cristian Iorga <cristian.iorg...        No data                       
libmusicbrainz           5.0.1+gitAUTO...    5.0.1               115 day                  Cristian Iorga <cristian.iorg...        No data                       
libomxil                 0.9.3               0.9.3               45 days                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               0.1.8               45 days                  Cristian Iorga <cristian.iorg...        No data                       
freetype                 2.4.10              2.4.10              116 day                  Constantin Musca <constantinx...        No data                       
menu-cache               0.3.3               0.3.3               114 day                  Constantin Musca <constantinx...        No data                       
libfm                    0.1.17              1.30                115 day                  Constantin Musca <constantinx...        No data                       
pcmanfm                  0.9.10              0.9.10              114 day                  Constantin Musca <constantinx...        No data                       
gtkhtml2                 2.11.0+svnr11...    2.11.1              116 day                  Constantin Musca <constantinx...        No data                       
libpcre                  8.32                8.31                45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
mpfr                     3.1.0               3.1.1               45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
python-scons             2.1.0               2.2.0               45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
strace                   4.7                 4.7                 45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
tcl                      8.5.11              8.5.12              45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
oprofile                 0.9.7               0.9.8               45 days                  Bogdan Marinescu <bogdan.a.ma...        No data                       
Manual Check Count: 69
Manual Need Check Count: 68
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

