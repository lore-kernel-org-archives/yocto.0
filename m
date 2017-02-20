Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4943DE007BA; Sun, 19 Feb 2017 21:40:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A582E007BA
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 21:40:09 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 028298086E1C
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 00:40:08 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 20 Feb 2017 05:40:08 -0000
Message-ID: <20170220054008.3306.35835@packages.yoctoproject.org>
Subject: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 20 Feb 2017 05:40:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade at this time, they can fill
RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"

You can check the detail information at:

http://recipes.yoctoproject.org/

Package               Version       Upstream version      Maintainer           NoUpgradeReason
--------------------  ------------  --------------------  -------------------  ------------------------------
python3               3.5.2         3.6.0                 Alejandro Hernandez
python                2.7.12        2.7.13                Alejandro Hernandez
eudev                 3.2           3.2.1                 Alejandro Hernandez
python-native         2.7.12        2.7.13                Alejandro Hernandez
python3-native        3.5.2         3.6.0                 Alejandro Hernandez
liberation-fonts      1.04          2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
systemtap             3.0           3.1                   Alexander Kanavin
boost                 1.62.0        1.63.0                Alexander Kanavin
openssl               1.0.2k        1.1.0e                Alexander Kanavin
bjam-native           1.62.0        1.63.0                Alexander Kanavin
ed                    1.9           4.2.2                 Alexander Kanavin
gnutls                3.5.7         3.5.9                 Alexander Kanavin
libiconv              1.14          1.15                  Alexander Kanavin
libnl                 3.2.28        3.2.29                Alexander Kanavin
kbd                   2.0.3         2.0.4                 Alexander Kanavin
gperf                 3.0.4         3.1                   Alexander Kanavin
nss                   3.27.1        3.28.1                Alexander Kanavin
webkitgtk             2.14.2        2.14.5                Alexander Kanavin
ffmpeg                3.2.2         3.2.4                 Alexander Kanavin
bash-completion       2.4           2.5                   Alexander Kanavin
btrfs-tools           4.8.5         4.9.1                 Alexander Kanavin
cmake                 3.7.1         3.7.2                 Alexander Kanavin
sysprof               3.22.3        3.23.90               Alexander Kanavin
systemtap-uprobes     3.0           3.1                   Alexander Kanavin
cmake-native          3.7.1         3.7.2                 Alexander Kanavin
iso-codes             3.72          3.74                  Alexander Kanavin
epiphany              3.22.3        3.22.6                Alexander Kanavin
libwebp               0.5.1         0.6.0                 Alexander Kanavin
mkelfimage            4.0+gitX      4.5+gitAUTOINC+0b...  Alexander Kanavin    mkelfimage has been removed...
perl                  5.24.0        5.24.1                Aníbal Limón
perl-native           5.24.0        5.24.1                Aníbal Limón
dpkg                  1.18.7        1.18.22               Aníbal Limón
pinentry              0.9.2         1.0.0                 Armin Kuster
linux-libc-headers    4.9           4.10                  Bruce Ashfield
libunwind             1.1+gitX      1.2+gitAUTOINC+cc...  Bruce Ashfield
pciutils              3.5.2         3.5.3                 Chen Qi
busybox               1.25.0+gitX   1.26.2+gitAUTOINC...  Chen Qi
dbus                  1.10.14       1.10.16               Chen Qi
byacc                 20161202      20170201              Chen Qi
cups                  2.2.1         2.2.2                 Chen Qi
util-linux            2.29          2.29.1                Chen Qi
dbus-test             1.10.14       1.10.16               Chen Qi
sed                   4.2.2         4.4                   Chen Qi
sudo                  1.8.18p1      1.8.19p2              Chen Qi
sysstat               11.5.3        11.5.4                Chen Qi
flex                  2.6.2         2.6.3                 Chen Qi
grep                  2.27          3.0                   Chen Qi
build-appliance-i...  15.0.0        16.0.0                Cristian Iorga
ltp                   20160126      20170116              Dengke Du
chkconfig             1.3.58        1.8                   Dengke Du            Version 1.5 requires selinux
swig                  3.0.11        3.0.12                Edwin Plauchu
python3-setuptools    32.1.1        34.2.0                Edwin Plauchu
python-setuptools     32.1.1        34.2.0                Edwin Plauchu
createrepo            0.4.11        0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
bash                  4.3.30        4.4                   Hongxu Jia
ncurses               6.0+20160625  6.0+20161126          Hongxu Jia
libinput              1.6.0         1.6.1                 Jussi Kukkonen
wayland               1.12.0        1.12.93               Jussi Kukkonen
weston                1.11.1        1.99.93               Jussi Kukkonen
xauth                 1.0.9         1.0.10                Jussi Kukkonen
gtk-icon-utils-na...  3.22.7        3.22.8                Jussi Kukkonen
glib-2.0              2.50.2        2.50.3                Jussi Kukkonen
xf86-input-libinput   0.23.0        0.24.0                Jussi Kukkonen
libgudev              230           231                   Jussi Kukkonen
xkeyboard-config      2.19          2.20                  Jussi Kukkonen
mesa                  13.0.4        17.0.0                Jussi Kukkonen
vte                   0.44.2        0.46.1                Jussi Kukkonen
presentproto          1.0+gitX      1.1+gitAUTOINC+bf...  Jussi Kukkonen
util-macros           1.19.0        1.19.1                Jussi Kukkonen
gdk-pixbuf            2.36.1        2.36.5                Jussi Kukkonen
gtk+3                 3.22.7        3.22.8                Jussi Kukkonen
libdrm                2.4.74        2.4.75                Jussi Kukkonen
libevent              2.0.22        2.1.8                 Jussi Kukkonen
menu-cache            1.0.1         1.0.2                 Jussi Kukkonen
mesa-gl               13.0.4        17.0.0                Jussi Kukkonen
gmp                   6.1.1         6.1.2                 Khem Raj
gdb                   7.12          7.12.1                Khem Raj
ruby                  2.3.3         2.4.0                 Leonardo Sandoval
libusb1               1.0.20        1.0.21                Leonardo Sandoval
nfs-utils             1.3.4         2.1.1                 Mariano Lopez
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
db                    6.0.35        6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16        5.4.17                Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
ifupdown              0.8.16        0.8.19                Maxin B. John
sqlite3               3.16.2        3.17.0                Maxin B. John
iptables              1.6.0         1.6.1                 Maxin B. John
libsolv               0.6.24        0.6.26                Maxin B. John
screen                4.4.0         4.5.0                 Maxin B. John
harfbuzz              1.4.1         1.4.2                 Maxin B. John
gstreamer1.0-vaapi    1.10.3        1.11.1                No maintainer
gdb-cross-canadia...  7.12          7.12.1                No maintainer
gdb-cross-i586        7.12          7.12.1                No maintainer
lttng-modules         2.9.0         2.9.1                 Richard Purdie
strace                4.15          4.16                  Robert Yang
ccache                3.3.3         3.3.4                 Robert Yang
slang                 2.3.1         2.3.1a                Robert Yang
file                  5.29          5.30                  Robert Yang
guile                 2.0.13        2.0.14                Robert Yang
base-passwd           3.5.29        3.5.43                Ross Burton          Version 3.5.38 requires cde...
unifdef               2.11          2.11.23.1cca442       Ross Burton
lsbinitscripts        9.68          9.69                  Ross Burton
alsa-lib              1.1.2         1.1.3                 Tanu Kaskinen

Upgradable count: 97
Upgradable total count: 103

The based commit is:

commit def3800c7e58d9d1b54ea1df27b190a0f6d1d544
Author: Joshua Lock <joshua.g.lock@intel.com>
Date:   Fri Feb 17 15:49:16 2017 +0000

    layer.conf: bump version for change in eSDK selftest behaviour
    
    Since 59a99cd8 "oeqa/sdk: Updates sanity tests for minimal eSDK"
    we can now run oe-selftests against a minimal eSDK.
    
    We need to increase the layer version so that we can detect this
    change in behaviour in our automated testing.
    
    Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


