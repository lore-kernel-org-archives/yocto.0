Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50970E003D7; Sun, 29 Jan 2017 21:36:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A8DDE0030B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 21:36:09 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 213568715299
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:36:09 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 30 Jan 2017 05:36:09 -0000
Message-ID: <20170130053609.25634.55644@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 30 Jan 2017 05:36:13 -0000
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
webkitgtk             2.14.2        2.14.3                Alexander Kanavin
boost                 1.62.0        1.63.0                Alexander Kanavin
openssl               1.0.2j        1.1.0d                Alexander Kanavin
ed                    1.9           4.2.2                 Alexander Kanavin
gnutls                3.5.7         3.5.8                 Alexander Kanavin
bjam-native           1.62.0        1.63.0                Alexander Kanavin
libwebp               0.5.1         0.5.2                 Alexander Kanavin
libnl                 3.2.28        3.2.29                Alexander Kanavin
kbd                   2.0.3         2.0.4                 Alexander Kanavin
gperf                 3.0.4         3.1                   Alexander Kanavin
nss                   3.27.1        3.28.1                Alexander Kanavin
lighttpd              1.4.43        1.4.45                Alexander Kanavin
btrfs-tools           4.8.5         4.9.1                 Alexander Kanavin
cmake                 3.7.1         3.7.2                 Alexander Kanavin
cmake-native          3.7.1         3.7.2                 Alexander Kanavin
iso-codes             3.72          3.74                  Alexander Kanavin
epiphany              3.22.3        3.22.5                Alexander Kanavin
mkelfimage            4.0+gitX      4.5+gitAUTOINC+0b...  Alexander Kanavin    mkelfimage has been removed...
qemu                  2.7.1         2.8.0                 Aníbal Limón
perl                  5.24.0        5.24.1                Aníbal Limón
dpkg                  1.18.7        1.18.21               Aníbal Limón
perl-native           5.24.0        5.24.1                Aníbal Limón
pinentry              0.9.2         1.0.0                 Armin Kuster
linux-libc-headers    4.9           4.9.6                 Bruce Ashfield
libunwind             1.1+gitX      1.2+gitAUTOINC+cc...  Bruce Ashfield
busybox               1.25.0+gitX   1.26.2+gitAUTOINC...  Chen Qi
cups                  2.2.1         2.2.2                 Chen Qi
util-linux            2.29          2.29.1                Chen Qi
sed                   4.2.2         4.3                   Chen Qi
sudo                  1.8.18p1      1.8.19p2              Chen Qi
sysstat               11.5.3        11.5.4                Chen Qi
flex                  2.6.2         2.6.3                 Chen Qi
xz                    5.2.2         5.2.3                 Chen Qi
build-appliance-i...  15.0.0        16.0.0                Cristian Iorga
chkconfig             1.3.58        1.8                   Dengke Du            Version 1.5 requires selinux
ltp                   20160126      20170116              Dengke Du
dosfstools            4.0           4.1                   Dengke Du
swig                  3.0.11        3.0.12                Edwin Plauchu
python3-setuptools    32.1.1        34.1.0                Edwin Plauchu
python-setuptools     32.1.1        34.1.0                Edwin Plauchu
pax-utils             1.1.6         1.2.2                 Hongxu Jia
createrepo            0.4.11        0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
socat                 1.7.3.1       1.7.3.2               Hongxu Jia
elfutils              0.166         0.168                 Hongxu Jia
gpgme                 1.6.0         1.8.0                 Hongxu Jia
libgcrypt             1.7.3         1.7.6                 Hongxu Jia
libgpg-error          1.25          1.26                  Hongxu Jia
bash                  4.3.30        4.4                   Hongxu Jia
ncurses               6.0+20160625  6.0+20161126          Hongxu Jia
man-pages             4.08          4.09                  Hongxu Jia
rpcbind               0.2.3         0.2.4                 Hongxu Jia
gnupg                 2.1.14        2.1.18                Hongxu Jia
wayland               1.12.0        1.12.91               Jussi Kukkonen
weston                1.11.1        1.99.91               Jussi Kukkonen
xauth                 1.0.9         1.0.10                Jussi Kukkonen
util-macros           1.19.0        1.19.1                Jussi Kukkonen
libevent              2.0.22        2.1.8                 Jussi Kukkonen
mesa                  13.0.2        13.0.3                Jussi Kukkonen
vte                   0.44.2        0.46.1                Jussi Kukkonen
presentproto          1.0+gitX      1.1+gitAUTOINC+bf...  Jussi Kukkonen
gdk-pixbuf            2.36.1        2.36.4                Jussi Kukkonen
libdrm                2.4.74        2.4.75                Jussi Kukkonen
menu-cache            1.0.1         1.0.2                 Jussi Kukkonen
mesa-gl               13.0.2        13.0.3                Jussi Kukkonen
gmp                   6.1.1         6.1.2                 Khem Raj
gdb                   7.12          7.12.1                Khem Raj
ruby                  2.3.3         2.4.0                 Leonardo Sandoval
libusb1               1.0.20        1.0.21                Leonardo Sandoval
nfs-utils             1.3.4         2.1.1                 Mariano Lopez
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
db                    6.0.35        6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16        5.4.17                Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
libtasn1              4.9           4.10                  Maxin B. John
ifupdown              0.8.16        0.8.18                Maxin B. John
iptables              1.6.0         1.6.1                 Maxin B. John
screen                4.4.0         4.5.0                 Maxin B. John
harfbuzz              1.4.1         1.4.2                 Maxin B. John
gstreamer1.0-vaapi    1.10.2        1.11.1                No maintainer
gdb-cross-canadia...  7.12          7.12.1                No maintainer
linux-yocto-rt        4.9.3+gitX    4.9.6+gitAUTOINC+...  No maintainer
linux-yocto-tiny      4.9.3+gitX    4.9.6+gitAUTOINC+...  No maintainer
linux-yocto           4.9.3+gitX    4.9.6+gitAUTOINC+...  No maintainer
gdb-cross-i586        7.12          7.12.1                No maintainer
gnu-efi               3.0.4         3.0.5                 Robert Yang
strace                4.14          4.15                  Robert Yang
libpcre               8.39          8.40                  Robert Yang
hdparm                9.50          9.51                  Robert Yang
m4                    1.4.17        1.4.18                Robert Yang
slang                 2.3.1         2.3.1a                Robert Yang
mklibs-native         0.1.41        0.1.43                Robert Yang
base-passwd           3.5.29        3.5.43                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.68          9.69                  Ross Burton
alsa-lib              1.1.2         1.1.3                 Tanu Kaskinen
pulseaudio            9.0           10.0                  Tanu Kaskinen

Upgradable count: 95
Upgradable total count: 101

The based commit is:

commit d7d26488f252d60628862ee114a4404e8d6cb6f1
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sat Jan 28 14:40:36 2017 +0000

    staging: Handle stale sysroot rebuild issue
    
    If a stale sysroot object was found the complete stamp wasn't removed,
    meaning later code could fail when the new link creation was attempted.
    Ensure the stale complete stamp is also removed if present.
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


