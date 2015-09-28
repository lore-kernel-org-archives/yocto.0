Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B67BCE00AF2; Sun, 27 Sep 2015 21:34:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6309E0071A
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2015 21:34:24 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 7ED7B849DA87
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 00:34:23 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 28 Sep 2015 04:34:23 -0000
Message-ID: <20150928043423.19915.77071@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 28 Sep 2015 04:34:27 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade this time, they can fill in
RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
recipe remainder until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"

You can check the detail information at:

http://packages.yoctoproject.org/

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1        1.3.3                 Alejandro Hernandez
python3               3.4.3        3.5.0                 Alejandro Hernandez
python                2.7.9        2.7.10                Alejandro Hernandez
libusb1               1.0.19       1.0.20                Alejandro Hernandez
gsettings-desktop...  3.16.1       3.18.0                Alejandro Hernandez
gnome-common          3.14.0       3.18.0                Alejandro Hernandez
ruby                  2.2.2        2.2.3                 Alexander Kanavin
gcr                   3.16.0       3.17.4                Alexander Kanavin
gnome-desktop3        3.16.2       3.18.0                Alexander Kanavin
libsecret             0.18.2       0.18.3                Alexander Kanavin
iso-codes             3.58         3.61                  Alexander Kanavin
acpid                 2.0.23       2.0.25                Aníbal Limón
apt                   1.0.10.1     1.0.10.2              Aníbal Limón
dpkg                  1.18.2       1.18.3                Aníbal Limón
sqlite3               3.8.10.2     3.8.11.1              Aníbal Limón
pinentry              0.9.2        0.9.6                 Armin Kuster
linux-libc-headers    4.1          4.2.1                 Bruce Ashfield
guilt-native          0.35+gitX    0.36+gitAUTOINC+2...  Bruce Ashfield
pciutils              3.3.1        3.4.0                 Chen Qi
resolvconf            1.77         1.78                  Chen Qi
dbus-test             1.8.20       1.10.0                Chen Qi
dbus                  1.8.20       1.10.0                Chen Qi
systemd               225+gitX     226+gitAUTOINC+42...  Chen Qi
util-linux            2.26.2       2.27                  Chen Qi
cpio                  2.11         2.12                  Chen Qi
cups                  2.0.4        2.1.0                 Chen Qi
sysstat               11.1.5       11.1.7-1              Chen Qi
bluez5                5.33         5.34                  Cristian Iorga
iproute2              4.1.1        4.2.0                 Cristian Iorga
libpcap               1.6.2        1.7.4                 Cristian Iorga
ofono                 1.16         1.17                  Cristian Iorga
wpa-supplicant        2.4          2.5                   Cristian Iorga
build-appliance-i...  12.0.1       13.0.0                Cristian Iorga
gstreamer1.0-libav    1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0-plug...  1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0-plug...  1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0-plug...  1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0-plug...  1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0          1.4.5        1.6.0                 Cristian Iorga
gstreamer1.0-rtsp...  1.4.5        1.6.0                 Cristian Iorga
qemu                  2.4.0        2.4.0.1               Cristian Iorga
db                    6.0.30       6.1.26                Cristian Iorga       Updating to 6.1.x requires ...
harfbuzz              1.0.2        1.0.3                 Cristian Iorga
libtirpc              0.2.5        0.3.2                 Cristian Iorga
libical               1.0.0        1.0.1                 Cristian Iorga
kernelshark           2.5.3+gitX   2.6+gitAUTOINC+9b...  Darren Hart
trace-cmd             2.5.3+gitX   2.6+gitAUTOINC+9b...  Darren Hart
dhcp                  4.3.2        4.3.3                 Hongxu Jia
ncurses               5.9          6.0-20150926          Hongxu Jia
qmmp                  0.8.6        0.9.1                 Hongxu Jia
pax-utils             1.0.5        1.1.3                 Hongxu Jia
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
libgcrypt             1.6.3        1.6.4                 Hongxu Jia
help2man-native       1.47.1       1.47.2                Hongxu Jia
gnupg                 2.1.7        2.1.8                 Hongxu Jia
pango                 1.36.8       1.38.0                Jussi Kukkonen
waffle                1.5.1        1.5.2                 Jussi Kukkonen
libinput              0.21.0       1.0.1                 Jussi Kukkonen
wayland               1.8.1        1.9.0                 Jussi Kukkonen
weston                1.8.0        1.9.0                 Jussi Kukkonen
gtk-icon-utils-na...  3.16.6       3.18.0                Jussi Kukkonen
libxcb                1.11         1.11.1                Jussi Kukkonen
glib-2.0              2.44.1       2.46.0                Jussi Kukkonen
glib-networking       2.44.0       2.46.0                Jussi Kukkonen
libxi                 1.7.4        1.7.5                 Jussi Kukkonen
pixman                0.32.6       0.33.2                Jussi Kukkonen
xserver-xorg          1.17.2       1.17.99.901           Jussi Kukkonen
libsoup-2.4           2.50.0       2.52.0                Jussi Kukkonen
at-spi2-atk           2.16.0       2.18.0                Jussi Kukkonen
clutter-gtk-1.0       1.6.2        1.6.4                 Jussi Kukkonen
atk                   2.16.0       2.18.0                Jussi Kukkonen
at-spi2-core          2.16.0       2.18.0                Jussi Kukkonen
vala                  0.28.0       0.30.0                Jussi Kukkonen
shared-mime-info      1.4          1.5                   Jussi Kukkonen
vte                   0.28.2       0.42.0                Jussi Kukkonen       matchbox-terminal needs to ...
clutter-gst-3.0       3.0.8        3.0.10                Jussi Kukkonen
adwaita-icon-theme    3.16.2.1     3.18.0                Jussi Kukkonen
xdg-utils             1.1.0-rc1    1.1.0-rc3             Jussi Kukkonen
gdk-pixbuf            2.30.8       2.32.1                Jussi Kukkonen
gtk+3                 3.16.6       3.18.0                Jussi Kukkonen
clutter-1.0           1.22.4       1.24.0                Jussi Kukkonen
cogl-1.0              1.20.0       1.22.0                Jussi Kukkonen
glew                  1.12.0       1.13.0                Jussi Kukkonen
python-mako           1.0.1        1.0.2                 Khem Raj
python-nose           1.3.6        1.3.7                 Khem Raj
python-numpy          1.7.0        1.9.2                 Khem Raj
rpm                   5.4.14       5.4.15                Mark Hatle           5.4.15 has a package databa...
dmidecode             2.12         3.0                   No maintainer
orc                   0.4.23       0.4.24                No maintainer
webkitgtk             2.8.5        2.10.0                No maintainer
ifupdown              0.7.48.1     0.7.54ubuntu1         No maintainer
bjam-native           1.58.0       1.59.0                No maintainer
iw                    4.1          4.3                   No maintainer
xuser-account         0.1          1.0                   No maintainer
swig                  3.0.6        3.0.7                 No maintainer
python3-pip           6.1.1        7.1.2                 No maintainer
python3-setuptools    18.2         18.3.2                No maintainer
epiphany              3.16.3       3.18.0                No maintainer
uclibc-initial        0.9.33+gitX  0.9.33.2+gitAUTOI...  No maintainer
apt-native            1.0.10.1     1.0.10.2              No maintainer
gcc-source-4.8.4      4.8.4        4.8.5                 No maintainer
gdb-cross-canadia...  7.9.1        7.10                  No maintainer
gdb-cross-i586        7.9.1        7.10                  No maintainer
sgmlspl-native        1.1+gitX     1.03+gitAUTOINC+f...  No maintainer
autogen-native        5.18.5       5.18.6                No maintainer
python-scons-native   2.3.6        2.4.0                 No maintainer
python3-native        3.4.3        3.5.0                 No maintainer
python-native         2.7.9        2.7.10                No maintainer
cmake                 3.3.1        3.3.2                 Paul Eggleton
libav                 9.18         11.4                  Paul Eggleton
gpgme                 1.5.4        1.6.0                 Paul Eggleton
libevdev              1.4.2        1.4.4                 Paul Eggleton
libgpg-error          1.19         1.20                  Paul Eggleton
cmake-native          3.3.1        3.3.2                 Paul Eggleton
libpng                1.6.17       1.6.18                Randy Witt
libtasn1              4.5          4.7                   Randy Witt
unfs3                 0.9.22.r490  0.9.22.r495           Randy Witt
libunistring          0.9.5        0.9.6                 Randy Witt
btrfs-tools           4.1.2        4.2.1                 Richard Purdie
lttng-modules         2.6.2+gitX   2.7.0+gitAUTOINC+...  Richard Purdie
lttng-tools           2.6.0        2.7.0                 Richard Purdie
lttng-ust             2.6.2+gitX   2.7.0+gitAUTOINC+...  Richard Purdie
gdb                   7.9.1        7.10                  Richard Purdie
python-pygobject      2.28.3       3.18.0                Richard Purdie       Newer versions of python-py...
python-scons          2.3.6        2.4.0                 Richard Purdie
libdrm                2.4.62       2.4.65                Richard Purdie
e2fsprogs             1.42.9       1.42.13               Robert Yang          Updating backported patches...
file                  5.24         5.25                  Robert Yang
git                   2.5.0        2.5.3                 Robert Yang
gmp                   6.0.0        6.0.0a                Robert Yang
less                  479          481                   Robert Yang
ltp                   20150420     20150903              Robert Yang
liberation-fonts      1.04         2.00.1                Ross Burton          2.x depends on fontforge pa...
base-passwd           3.5.29       3.5.38                Ross Burton          Version 3.5.38 requires cde...
kbd                   2.0.2        2.0.3                 Ross Burton
uclibc                0.9.33+gitX  0.9.33.2+gitAUTOI...  Ross Burton
systemtap             2.7+gitX     2.8+gitAUTOINC+08...  Ross Burton
tiff                  4.0.4        4.0.6                 Ross Burton
mkelfimage            4.0+gitX     4.1+gitAUTOINC+6c...  Ross Burton          mkelfimage has been removed...
mtd-utils             1.5.1+gitX   1.5.2+gitAUTOINC+...  Ross Burton
liburcu               0.8.7        0.8.8                 Ross Burton
boost                 1.58.0       1.59.0                Ross Burton
icu                   55.1         55.1-AIX7.1-VA2       Ross Burton
valgrind              3.10.1       3.11.0                Ross Burton
nss                   3.19.2       3.20                  Ross Burton
libidn                1.30         1.32                  Ross Burton
lighttpd              1.4.36       1.4.37                Ross Burton
libassuan             2.2.1        2.3.0                 Ross Burton
procps                3.3.10       3.3.11                Ross Burton
pulseaudio            6.0          7.0                   Tanu Kaskinen
systemtap-uprobes     2.7+gitX     2.8+gitAUTOINC+08...  Tom Zanussi
gettext               0.19.4       0.19.6                Wenzong Fan
chkconfig             1.3.58       1.5                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 143
Upgradable total count: 153

The based commit is:

commit d5cf21179d9f8d3c053316b0864d72fc609f5423
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Sep 23 23:32:45 2015 +0100

    gdk-pixbuf: Avoid rebuild failures
    
    If gdkpixbuf-native rebuilds and there are stale (broken) modules lying around,
    it can fail to run the postinst. E.g. svg links to harfbuzz and if harfbuzz is
    removed from the sysroot but the svg loader isn't, we get a symbol linking issue.
    
    The reproducer is along the lines of build gdk-pixbuf-native along
    with harfbuzz-native and librsvg-native, then make a small change to the
    gdk-pixbuf recipe that would cause it to rebuild, clean harfbuzz-native
    and then build gdk-pixbuf.
    
    To fix this, when we install gdk-pixbuf, we wipe out any previous loaders.
    The idea is that gdk would always come first and anything else installing
    itself will come later and rerun the postinst if needed. We can therefore
    just remove any other loaders.
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

