Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E9F4E00D69; Sun, 10 Apr 2016 21:25:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9E6E00D55
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2016 21:25:09 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 8D3AF84A9AA1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 00:25:08 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 04:25:08 -0000
Message-ID: <20160411042508.25543.93779@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 11 Apr 2016 04:25:13 -0000
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
texinfo               6.0           6.1                   Alejandro Hernandez
ruby                  2.2.2         2.3.0                 Alejandro Hernandez
perl                  5.22.1        5.22.2                Alejandro Hernandez
python-dbus           1.2.0         1.2.4                 Alejandro Hernandez
python-mako           1.0.3         1.0.4                 Alejandro Hernandez
python-numpy          1.10.4        1.11.0                Alejandro Hernandez
python-pygobject      3.18.2        3.20.0                Alejandro Hernandez
python-scons          2.4.1         2.5.0                 Alejandro Hernandez
python3-pip           8.0.0         8.1.1                 Alejandro Hernandez
python3-setuptools    19.4          20.7.0                Alejandro Hernandez
python-setuptools     19.4          20.7.0                Alejandro Hernandez
perl-native           5.22.1        5.22.2                Alejandro Hernandez
python-scons-native   2.4.1         2.5.0                 Alejandro Hernandez
liberation-fonts      1.04          2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
gcr                   3.18.0        3.20.0                Alexander Kanavin
gnome-desktop3        3.18.2        3.20.0                Alexander Kanavin
libsecret             0.18.4        0.18.5                Alexander Kanavin
watchdog              5.14          5.15                  Alexander Kanavin
kexec-tools           2.0.11        2.0.12                Alexander Kanavin
btrfs-tools           4.4           4.5.1                 Alexander Kanavin
systemtap-uprobes     2.9           3.0                   Alexander Kanavin
systemtap             2.9           3.0                   Alexander Kanavin
epiphany              3.18.4        3.20.1                Alexander Kanavin
hwlatdetect           0.96          0.97                  Alexander Kanavin
rt-tests              0.96          0.97                  Alexander Kanavin
webkitgtk             2.10.7        2.12.0                Alexander Kanavin
gnutls                3.4.9         3.4.10                Alexander Kanavin
icu                   56.1          57.1                  Alexander Kanavin
nss                   3.21          3.23                  Alexander Kanavin
babeltrace            1.3.1         1.3.2                 Alexander Kanavin
msmtp                 1.6.3         1.6.4                 Alexander Kanavin
mkelfimage            4.0+gitX      4.3+gitAUTOINC+1b...  Alexander Kanavin    mkelfimage has been removed...
iso-codes             3.65          3.67                  Alexander Kanavin
apt                   1.0.10.1      1.2.10                Aníbal Limón
qemu                  2.5.0         2.5.1                 Aníbal Limón
pinentry              0.9.2         0.9.7                 Armin Kuster
linux-libc-headers    4.4           4.5                   Bruce Ashfield
guilt-native          0.35+gitX     0.36+gitAUTOINC+2...  Bruce Ashfield
dbus-test             1.10.6        1.10.8                Chen Qi
dbus                  1.10.6        1.10.8                Chen Qi
curl                  7.47.1        7.48.0                Chen Qi
byacc                 20150711      20160324              Chen Qi
gzip                  1.6           1.7                   Chen Qi
sudo                  1.8.15        1.8.16                Chen Qi
sysstat               11.2.0        11.3.2                Chen Qi
grep                  2.23          2.24                  Chen Qi
build-appliance-i...  14.0.0        14.0.1                Cristian Iorga
dhcp                  4.3.3         4.3.4                 Hongxu Jia
ncurses               6.0+20160213  6.0+20160319          Hongxu Jia
pax-utils             1.1.5         1.1.6                 Hongxu Jia
man-pages             4.04          4.05                  Hongxu Jia
libnewt-python        0.52.18       0.52.19               Hongxu Jia
libnewt               0.52.18       0.52.19               Hongxu Jia
elfutils              0.164         0.166                 Hongxu Jia
pango                 1.38.1        1.40.0                Jussi Kukkonen
mesa                  11.1.1        11.2.0                Jussi Kukkonen
libinput              1.1.4         1.2.2                 Jussi Kukkonen
wayland               1.9.0         1.10.0                Jussi Kukkonen
gtk-icon-utils-na...  3.18.8        3.20.2                Jussi Kukkonen
xrandr                1.4.3         1.5.0                 Jussi Kukkonen
openssh               7.1p2         7.2p2                 Jussi Kukkonen
gsettings-desktop...  3.19.3        3.20.0                Jussi Kukkonen
dropbear              2015.71       2016.73               Jussi Kukkonen
expat                 2.1.0         2.1.1                 Jussi Kukkonen
weston                1.9.0         1.10.0                Jussi Kukkonen
glib-2.0              2.46.2        2.48.0                Jussi Kukkonen
glib-networking       2.46.1        2.48.0                Jussi Kukkonen
libxkbcommon          0.5.0         0.6.1                 Jussi Kukkonen
pixman                0.32.8        0.34.0                Jussi Kukkonen
xkeyboard-config      2.16          2.17                  Jussi Kukkonen
inputproto            2.3.1         2.3.2                 Jussi Kukkonen
videoproto            2.3.2         2.3.3                 Jussi Kukkonen
xserver-xorg          1.18.0        1.18.3                Jussi Kukkonen
cmake                 3.4.3         3.5.1                 Jussi Kukkonen
docbook-xsl-style...  1.78.1        1.79.1                Jussi Kukkonen
at-spi2-atk           2.18.1        2.20.0                Jussi Kukkonen
at-spi2-core          2.18.3        2.20.0                Jussi Kukkonen
atk                   2.18.0        2.20.0                Jussi Kukkonen
vala                  0.30.1        0.32.0                Jussi Kukkonen
libsoup-2.4           2.52.2        2.54.0.1              Jussi Kukkonen
vte                   0.28.2        0.44.0                Jussi Kukkonen       matchbox-terminal needs to ...
clutter-gst-3.0       3.0.16        3.0.18                Jussi Kukkonen
gdk-pixbuf            2.32.3        2.34.0                Jussi Kukkonen
gtk+3                 3.18.8        3.20.2                Jussi Kukkonen
gtk+                  2.24.29       2.24.30               Jussi Kukkonen
json-glib             1.0.4         1.2.0                 Jussi Kukkonen
librsvg               2.40.13       2.40.15               Jussi Kukkonen
cairo                 1.14.6        1.15.2                Jussi Kukkonen
clutter-1.0           1.24.2        1.26.0                Jussi Kukkonen
clutter-gtk-1.0       1.6.6         1.8.0                 Jussi Kukkonen
fontconfig            2.11.94       2.11.95               Jussi Kukkonen
mesa-demos            8.2.0         8.3.0                 Jussi Kukkonen
mesa-gl               11.1.1        11.2.0                Jussi Kukkonen
linuxdoc-tools-na...  0.9.69        0.9.71                Jussi Kukkonen
slang                 2.2.4         2.3.0                 Kai Kang
uclibc                1.0.12+gitX   1.0.13                Khem Raj
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
libpfm4               4.6.0         4.7.0                 Matthew McClintock
acpid                 2.0.26        2.0.27                Maxin B. John
bluez5                5.37          5.39                  Maxin B. John
iproute2              4.4.0         4.5.0                 Maxin B. John
sqlite3               3.11.0        3.12.1                Maxin B. John
gstreamer1.0-libav    1.7.2+gitX    1.8.0                 Maxin B. John
gstreamer1.0          1.7.2+gitX    1.8.0+gitAUTOINC+...  Maxin B. John
gstreamer1.0-plug...  1.7.2+gitX    1.8.0+gitAUTOINC+...  Maxin B. John
gstreamer1.0-plug...  1.7.2+gitX    1.8.0                 Maxin B. John
gstreamer1.0-plug...  1.7.2+gitX    1.8.0+gitAUTOINC+...  Maxin B. John
gstreamer1.0-plug...  1.7.2+gitX    1.8.0+gitAUTOINC+...  Maxin B. John
orc                   0.4.24        0.4.25                Maxin B. John
gstreamer1.0-rtsp...  1.6.2         1.8.0                 Maxin B. John
db                    6.0.30        6.1.26                Maxin B. John
ethtool               4.2           4.5                   Maxin B. John
mc                    4.8.15        4.8.16                Maxin B. John
harfbuzz              1.2.3         1.2.6                 Maxin B. John
pkgconfig             0.29+gitX     0.29.1+gitAUTOINC...  Maxin B. John
gdb-cross-canadia...  7.10.1        7.11                  No maintainer
gdb-cross-i586        7.10.1        7.11                  No maintainer
ffmpeg                3.0           3.0.1                 No maintainer
cantarell-fonts       0.0.21+gitX   0.13+gitAUTOINC+7...  No maintainer
libsolv               0.6.19        0.6.20                No maintainer
ifupdown              0.8.2         0.8.10                No maintainer
uclibc-initial        1.0.12+gitX   1.0.13                No maintainer
apt-native            1.0.10.1      1.2.10                No maintainer
cmake-native          3.4.3         3.5.1                 No maintainer
gobject-introspec...  1.46.0        1.48.0                No maintainer
sgmlspl-native        1.1+gitX      1.03+gitAUTOINC+f...  No maintainer
xf86-input-libinput   0.16.0        0.18.0                No maintainer
lttng-modules         2.7.1+gitX    2.7.2+gitAUTOINC+...  Richard Purdie
lttng-ust             2.7.1+gitX    2.7.2+gitAUTOINC+...  Richard Purdie
gdb                   7.10.1        7.11                  Richard Purdie
nasm                  2.11.08       2.12.01               Richard Purdie
mpfr                  3.1.3         3.1.4                 Richard Purdie
gnu-efi               3.0.3         3.0.4                 Robert Yang
git                   2.7.2         2.8.1                 Robert Yang
tcl                   8.6.4         8.6.5                 Robert Yang
libcap                2.24          2.25                  Robert Yang
mklibs-native         0.1.40        0.1.41                Robert Yang
base-passwd           3.5.29        3.5.39                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.64          9.65                  Ross Burton
alsa-lib              1.1.0         1.1.1                 Tanu Kaskinen
alsa-utils            1.1.0         1.1.1                 Tanu Kaskinen
alsa-plugins          1.1.0         1.1.1                 Tanu Kaskinen
alsa-utils-scripts    1.1.0         1.1.1                 Tanu Kaskinen
gettext               0.19.6        0.19.7                Wenzong Fan
chkconfig             1.3.58        1.7                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 140
Upgradable total count: 145

The based commit is:

commit d2734fbfe209fcb8bd908b55e64d1ea8712d02c1
Author: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Date:   Wed Apr 6 12:56:01 2016 +0200

    local.conf.sample: Make it possible to override EXTRA_IMAGE_FEATURES
    
    It should be possible to override EXTRA_IMAGE_FEATURES in auto.conf,
    which is read before local.conf.
    
    Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

