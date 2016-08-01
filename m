Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82594E00E11; Sun, 31 Jul 2016 21:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3499E00DF5
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 21:31:40 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id CB74580B9CE9
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 00:31:38 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 01 Aug 2016 04:31:38 -0000
Message-ID: <20160801043138.13299.95863@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Aug 2016 04:31:42 -0000
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

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
perl                  5.22.1         5.24.1                Alejandro Hernandez
texinfo               6.0            6.1                   Alejandro Hernandez
python-git            2.0.5          2.0.7                 Alejandro Hernandez
python-numpy          1.11.0         1.11.1                Alejandro Hernandez
ruby                  2.2.5          2.3.1                 Alejandro Hernandez
python3               3.5.1          3.5.2                 Alejandro Hernandez
python                2.7.11         2.7.12                Alejandro Hernandez
python3-git           1.0.2          2.0.7                 Alejandro Hernandez
cronie                1.5.0          1.5.1                 Alejandro Hernandez
python-pexpect        4.1.0          4.2.0                 Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
python3-setuptools    22.0.5         25.1.1                Alejandro Hernandez
python-native         2.7.11         2.7.12                Alejandro Hernandez
python-setuptools     22.0.5         25.1.1                Alejandro Hernandez
perl-native           5.22.1         5.24.1                Alejandro Hernandez
python3-native        3.5.1          3.5.2                 Alejandro Hernandez
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
gnutls                3.5.1          3.5.2                 Alexander Kanavin
libwebp               0.5.0          0.5.1                 Alexander Kanavin
cmake                 3.5.2          3.6.1                 Alexander Kanavin
nss                   3.24           3.25                  Alexander Kanavin
lighttpd              1.4.39         1.4.41                Alexander Kanavin
ffmpeg                3.1            3.1.1                 Alexander Kanavin
libassuan             2.4.2          2.4.3                 Alexander Kanavin
btrfs-tools           4.6.1          4.7                   Alexander Kanavin
procps                3.3.11         3.3.12                Alexander Kanavin
cmake-native          3.5.2          3.6.1                 Alexander Kanavin
libidn                1.32           1.33                  Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
mpg123                1.23.5         1.23.6                Alexander Kanavin
dpkg                  1.18.7         1.18.10               Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
linux-libc-headers    4.4            4.7                   Bruce Ashfield
linux-yocto-rt        4.4.14+gitX    4.4.15+gitAUTOINC...  Bruce Ashfield
linux-yocto           4.4.14+gitX    4.4.15+gitAUTOINC...  Bruce Ashfield
linux-yocto-tiny      4.4.14+gitX    4.4.15+gitAUTOINC...  Bruce Ashfield
kmod-native           22+gitX        23+gitAUTOINC+65a...  Chen Qi
curl                  7.49.1         7.50.0                Chen Qi
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
kmod                  22+gitX        23+gitAUTOINC+65a...  Chen Qi
u-boot-fw-utils       v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
ncurses               6.0+20160319   6.0+20160625          Hongxu Jia
man-pages             4.06           4.07                  Hongxu Jia
libgcrypt             1.7.0          1.7.2                 Hongxu Jia
gnupg                 2.1.12         2.1.14                Hongxu Jia
libinput              1.3.0          1.4.0                 Jussi Kukkonen
libdrm                2.4.68         2.4.70                Jussi Kukkonen
dropbear              2016.73        2016.74               Jussi Kukkonen
augeas                1.4.0          1.5.0                 Jussi Kukkonen
libgpg-error          1.23           1.24                  Jussi Kukkonen
vte                   0.44.1         0.44.2                Jussi Kukkonen
xserver-xorg          1.18.3         1.18.4                Jussi Kukkonen
wayland-protocols     1.4            1.5                   Jussi Kukkonen
json-glib             1.2.0          1.2.2                 Jussi Kukkonen
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Jussi Kukkonen
glew                  1.13.0         2.0.0                 Jussi Kukkonen
linuxdoc-tools-na...  0.9.69         0.9.72                Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.7.0                 Matthew McClintock
libtasn1              4.8            4.9                   Maxin B. John
connman               1.32           1.33                  Maxin B. John
libsolv               0.6.22         0.6.23                Maxin B. John
gstreamer1.0-omx      1.2.0          1.9.1                 Maxin B. John
gstreamer1.0-plug...  1.8.2+gitX     1.9.1+gitAUTOINC+...  Maxin B. John
ifupdown              0.8.2          0.8.13                Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
systemd-boot          230+gitX       231+gitAUTOINC+38...  No maintainer
python3-numpy         1.11.0         1.11.1                No maintainer
gnome-themes-stan...  3.18.0         3.20.2                No maintainer
binutils-cross-ca...  2.26           2.26.1                No maintainer
binutils-cross-i586   2.26           2.26.1                No maintainer
binutils-crosssdk...  2.26           2.26.1                No maintainer
tcf-agent             1.3.0+gitX     1.4+gitAUTOINC+2d...  Randy Witt
subversion            1.9.3          1.9.4                 Richard Purdie
lttng-tools           2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
lttng-ust             2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
lttng-modules         2.7.3+gitX     2.8.0+gitAUTOINC+...  Richard Purdie
gdb                   7.11           7.11.1                Richard Purdie
nasm                  2.11.08        2.12.02               Richard Purdie
strace                4.12           4.13                  Robert Yang
e2fsprogs             1.43           1.43.1                Robert Yang
tcl                   8.6.5          8.6.6                 Robert Yang
ltp                   20160126       20160510              Robert Yang
binutils              2.26           2.26.1                Robert Yang
libcap-ng             0.7.7          0.7.8                 Robert Yang
base-passwd           3.5.29         3.5.39                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.64           9.67                  Ross Burton
chkconfig             1.3.58         1.8                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 90
Upgradable total count: 96

The based commit is:

commit b32d430c3c7dccf3a8d06ab492d648893a05950f
Author: Ross Burton <ross.burton@intel.com>
Date:   Tue Jul 26 00:14:11 2016 +0100

    dpkg: use snapshot.debian.org for SRC_URI
    
    Using ${DEBIAN_MIRROR} for SRC_URI doesn't work very well as that will only
    contain releases that are currently in Debian, so currently doesn't contain
    1.18.7 as unstable has moved on to 1.18.9.
    
    So, move all of SRC_URI to the .bb so it can use snapshot.debian.org instead,
    and set UPSTREAM_CHECK_URI to ${DEBIAN_MIRROR} so upstream release checking
    continues to work.
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


