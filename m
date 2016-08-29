Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC25FE00F11; Sun, 28 Aug 2016 21:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258E6E00F14
	for <yocto@yoctoproject.org>; Sun, 28 Aug 2016 21:05:56 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 2D2EE84A2725
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 00:05:55 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 04:05:55 -0000
Message-ID: <20160829040555.12713.80642@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Aug 2016 04:06:05 -0000
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
texinfo               6.0            6.1                   Alejandro Hernandez
python-git            2.0.7          2.0.8                 Alejandro Hernandez
ruby                  2.2.5          2.3.1                 Alejandro Hernandez
nfs-utils             1.3.3          1.3.4                 Alejandro Hernandez
perl                  5.22.1         5.24.1                Alejandro Hernandez
python3-git           2.0.7          2.0.8                 Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
python3-setuptools    22.0.5         25.2.0                Alejandro Hernandez
python-setuptools     22.0.5         25.2.0                Alejandro Hernandez
python3-numpy         1.11.0         1.11.1                Alejandro Hernandez
perl-native           5.22.1         5.24.1                Alejandro Hernandez
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
bdwgc                 7.4.4          7.6.0                 Alexander Kanavin
gnutls                3.5.1          3.5.3                 Alexander Kanavin
libwebp               0.5.0          0.5.1                 Alexander Kanavin
libidn                1.32           1.33                  Alexander Kanavin
nss                   3.24           3.25                  Alexander Kanavin
mpg123                1.23.5         1.23.6                Alexander Kanavin
lighttpd              1.4.39         1.4.41                Alexander Kanavin
ffmpeg                3.1.1          3.1.2                 Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
bash-completion       2.3            2.4                   Alexander Kanavin
gobject-introspec...  1.48.0         1.49.1                Alexander Kanavin
btrfs-tools           4.6.1          4.7                   Alexander Kanavin
iso-codes             3.68           3.69                  Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
qemu                  2.6.0          2.6.1                 Aníbal Limón
dpkg                  1.18.7         1.18.10               Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
linux-libc-headers    4.4            4.7.1                 Bruce Ashfield
linux-yocto-rt        4.4.15+gitX    4.4.16+gitAUTOINC...  Bruce Ashfield
linux-yocto           4.4.15+gitX    4.4.16+gitAUTOINC...  Bruce Ashfield
linux-yocto-tiny      4.4.15+gitX    4.4.16+gitAUTOINC...  Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
kmod-native           22+gitX        23+gitAUTOINC+65a...  Chen Qi
systemd-boot          230+gitX       231+gitAUTOINC+38...  Chen Qi
dbus-test             1.10.8         1.10.10               Chen Qi
dbus                  1.10.8         1.10.10               Chen Qi
diffutils             3.3            3.4                   Chen Qi
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
util-linux            2.28           2.28.1                Chen Qi
kmod                  22+gitX        23+gitAUTOINC+65a...  Chen Qi
sysstat               11.3.5         11.4.0                Chen Qi
build-appliance-i...  15.0.0         15.0.1                Cristian Iorga
openssh               7.2p2          7.3p1                 Dengke Du
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Dengke Du
chkconfig             1.3.58         1.8                   Dengke Du            Version 1.5 requires selinux
ltp                   20160126       20160510              Dengke Du
json-glib             1.2.0          1.2.2                 Dengke Du
linuxdoc-tools-na...  0.9.69         0.9.72                Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
libgcrypt             1.7.2          1.7.3                 Hongxu Jia
libinput              1.3.0          1.4.1                 Jussi Kukkonen
wayland               1.11.0         1.11.91               Jussi Kukkonen
weston                1.11.0         1.11.91               Jussi Kukkonen
gtk-icon-utils-na...  3.20.6         3.20.9                Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
glib-2.0              2.48.1         2.48.2                Jussi Kukkonen
gnome-themes-stan...  3.18.0         3.20.2                Jussi Kukkonen
vte                   0.44.1         0.44.2                Jussi Kukkonen
wayland-protocols     1.5            1.7                   Jussi Kukkonen
gtk+3                 3.20.6         3.20.9                Jussi Kukkonen
libdrm                2.4.68         2.4.70                Jussi Kukkonen
fontconfig            2.12.0         2.12.1                Jussi Kukkonen
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.7.0                 Matthew McClintock
libpcap               1.7.4          1.8.0                 Maxin B. John
sqlite3               3.14.0         3.14.1                Maxin B. John
ifupdown              0.8.2          0.8.13                Maxin B. John
gstreamer1.0-omx      1.2.0          1.9.1                 Maxin B. John
gstreamer1.0-plug...  1.8.2+gitX     1.9.1+gitAUTOINC+...  Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
lttng-tools           2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
lttng-ust             2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
subversion            1.9.3          1.9.4                 Richard Purdie
gdb                   7.11           7.11.1                Richard Purdie
lttng-modules         2.7.3+gitX     2.8.0+gitAUTOINC+...  Richard Purdie
nasm                  2.11.08        2.12.02               Richard Purdie
e2fsprogs             1.43           1.43.1                Robert Yang
git                   2.9.2          2.9.3                 Robert Yang
base-passwd           3.5.29         3.5.40                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.64           9.68                  Ross Burton
alsa-utils-scripts    1.1.1          1.1.2                 Tanu Kaskinen
alsa-utils            1.1.1          1.1.2                 Tanu Kaskinen
alsa-lib              1.1.1          1.1.2                 Tanu Kaskinen

Upgradable count: 85
Upgradable total count: 91

The based commit is:

commit 00027aee12f4bbc9a4ba607c91fcc1e0e8257fa2
Author: Robert P. J. Day <rpjday@crashcourse.ca>
Date:   Thu Aug 18 05:23:55 2016 -0400

    core-image-kernel-dev.bb: Standardize use of _append and leading space.
    
    Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


