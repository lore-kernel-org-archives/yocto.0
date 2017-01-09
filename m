Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB434E007A7; Sun,  8 Jan 2017 21:33:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6150E0050B
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2017 21:32:57 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 9A8E284ABE47
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 00:32:56 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 09 Jan 2017 05:32:56 -0000
Message-ID: <20170109053256.15877.80040@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Jan 2017 05:33:01 -0000
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

Package               Version       Upstream version      Maintainer            NoUpgradeReason
--------------------  ------------  --------------------  --------------------  ------------------------------
opkg-utils            0.3.2+gitX    0.3.4+gitAUTOINC+...  Alejandro del Cas...
opkg                  0.3.3         0.3.4                 Alejandro del Cas...
python3               3.5.2         3.6.0                 Alejandro Hernandez
python                2.7.12        2.7.13                Alejandro Hernandez
python-native         2.7.12        2.7.13                Alejandro Hernandez
eudev                 3.2           3.2.1                 Alejandro Hernandez
python3-native        3.5.2         3.6.0                 Alejandro Hernandez
liberation-fonts      1.04          2.00.1                Alexander Kanavin     2.x depends on fontforge pa...
boost                 1.62.0        1.63.0                Alexander Kanavin
openssl               1.0.2j        1.1.0c                Alexander Kanavin
bjam-native           1.62.0        1.63.0                Alexander Kanavin
libnl                 3.2.28        3.2.29                Alexander Kanavin
kbd                   2.0.3         2.0.4                 Alexander Kanavin
gperf                 3.0.4         3.1                   Alexander Kanavin
lighttpd              1.4.43        1.4.44                Alexander Kanavin
btrfs-tools           4.8.5         4.9                   Alexander Kanavin
babeltrace            1.5.0         1.5.1                 Alexander Kanavin
mtd-utils             1.5.2         2.0.0                 Alexander Kanavin
iso-codes             3.72          3.73                  Alexander Kanavin
epiphany              3.22.3        3.22.4                Alexander Kanavin
libwebp               0.5.1         0.5.2                 Alexander Kanavin
mkelfimage            4.0+gitX      4.5+gitAUTOINC+0b...  Alexander Kanavin     mkelfimage has been removed...
qemu                  2.7.0         2.8.0                 Aníbal Limón
dpkg                  1.18.7        1.18.18               Aníbal Limón
pinentry              0.9.2         1.0.0                 Armin Kuster
linux-libc-headers    4.8           4.9.1                 Bruce Ashfield
curl                  7.51.0        7.52.1                Chen Qi
dbus-test             1.10.10       1.10.14               Chen Qi
dbus                  1.10.10       1.10.14               Chen Qi
byacc                 20160606      20161202              Chen Qi
busybox               1.25.0+gitX   1.26.1+gitAUTOINC...  Chen Qi
zlib                  1.2.8         1.2.10                Chen Qi
sed                   4.2.2         4.3                   Chen Qi
sudo                  1.8.18p1      1.8.19p1              Chen Qi
sysstat               11.4.0        11.5.3                Chen Qi
systemd-bootchart     230+gitX      231+gitAUTOINC+9e...  Chen Qi
flex                  2.6.0         2.6.3                 Chen Qi
xz                    5.2.2         5.2.3                 Chen Qi
coreutils             8.25          8.26                  Chen Qi
grep                  2.26          2.27                  Chen Qi
build-appliance-i...  15.0.0        16.0.0                Cristian Iorga
openssh               7.3p1         7.4p1                 Dengke Du
chkconfig             1.3.58        1.8                   Dengke Du             Version 1.5 requires selinux
ltp                   20160126      20160920              Dengke Du
python3-docutils      0.12          0.13.1                Edwin Plauchu
swig                  3.0.10        3.0.11                Edwin Plauchu
python3-setuptools    31.0.0        32.3.1                Edwin Plauchu
python-setuptools     31.0.0        32.3.1                Edwin Plauchu
pax-utils             1.1.6         1.1.7                 Hongxu Jia
createrepo            0.4.11        0.10.4                Hongxu Jia            Versions after 0.9.* use YU...
elfutils              0.166         0.168                 Hongxu Jia
gpgme                 1.6.0         1.8.0                 Hongxu Jia
libgcrypt             1.7.3         1.7.5                 Hongxu Jia
libgpg-error          1.25          1.26                  Hongxu Jia
bash                  4.3.30        4.4                   Hongxu Jia
ncurses               6.0+20160625  6.0+20161126          Hongxu Jia
man-pages             4.08          4.09                  Hongxu Jia
rpcbind               0.2.3         0.2.4                 Hongxu Jia
gnupg                 2.1.14        2.1.17                Hongxu Jia
libinput              1.5.0         1.5.3                 Jussi Kukkonen
weston                1.11.1        1.12.0                Jussi Kukkonen
gtk-icon-utils-na...  3.22.5        3.22.6                Jussi Kukkonen
libevdev              1.5.4         1.5.6                 Jussi Kukkonen
libxpm                3.5.11        3.5.12                Jussi Kukkonen
mesa                  13.0.2        13.0.3                Jussi Kukkonen
vte                   0.44.2        0.46.1                Jussi Kukkonen
gdk-pixbuf            2.36.1        2.36.3                Jussi Kukkonen
gtk+3                 3.22.5        3.22.6                Jussi Kukkonen
freetype              2.7           2.7.1                 Jussi Kukkonen
menu-cache            1.0.1         1.0.2                 Jussi Kukkonen
mesa-gl               13.0.2        13.0.3                Jussi Kukkonen
musl                  1.1.15+gitX   1.1.16+gitAUTOINC...  Khem Raj
gmp                   6.1.1         6.1.2                 Khem Raj
ruby                  2.3.3         2.4.0                 Leonardo Sandoval
libusb1               1.0.20        1.0.21                Leonardo Sandoval
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
db                    6.0.35        6.2.23                Mark Hatle            latest db does not work wit...
rpm                   5.4.16        5.4.17                Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
iproute2              4.7.0         4.9.0                 Maxin B. John
netbase               5.3           5.4                   Maxin B. John
sqlite3               3.15.2        3.16.2                Maxin B. John
libpng12              1.2.56        1.2.57                Maxin B. John
libpng                1.6.26        1.6.28                Maxin B. John
harfbuzz              1.3.4         1.4.1                 Maxin B. John
gcc-source-6.2.0      6.2.0         6.3.0                 No maintainer
lttng-tools           2.8.1+gitX    2.9.2+gitAUTOINC+...  Richard Purdie
lttng-ust             2.8.1+gitX    2.9.0+gitAUTOINC+...  Richard Purdie
lttng-modules         2.8.0+gitX    2.9.0+gitAUTOINC+...  Richard Purdie
strace                4.14          4.15                  Robert Yang
m4                    1.4.17        1.4.18                Robert Yang
hdparm                9.48          9.50                  Robert Yang
slang                 2.3.1         2.3.1a                Robert Yang
mklibs-native         0.1.41        0.1.43                Robert Yang
base-passwd           3.5.29        3.5.42                Ross Burton           Version 3.5.38 requires cde...
lsbinitscripts        9.68          9.69                  Ross Burton
alsa-lib              1.1.2         1.1.3                 Tanu Kaskinen
alsa-utils-scripts    1.1.2         1.1.3                 Tanu Kaskinen
alsa-tools            1.1.0         1.1.3                 Tanu Kaskinen
alsa-utils            1.1.2         1.1.3                 Tanu Kaskinen
flac                  1.3.1         1.3.2                 Tanu Kaskinen
pulseaudio            9.0           9.99.1                Tanu Kaskinen

Upgradable count: 96
Upgradable total count: 102

The based commit is:

commit af330fc0087692039d4256a6fb1e122742e8ec1a
Author: Christopher Larson <chris_larson@mentor.com>
Date:   Wed Jan 4 15:57:55 2017 -0700

    packagegroup-core-lsb: add opengl to REQUIRED_DISTRO_FEATURES
    
    This group pulls in libglu, which needs virtual/libgl, whose providers require
    opengl in DISTRO_FEATURES.
    
    Signed-off-by: Christopher Larson <chris_larson@mentor.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


