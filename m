Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D29E009D9; Sun, 15 Nov 2015 21:29:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3359E007C9
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 21:29:21 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 7318C83873A4
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2015 00:29:20 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 16 Nov 2015 05:29:20 -0000
Message-ID: <20151116052920.7520.28012@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 16 Nov 2015 05:29:24 -0000
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

http://recipes.yoctoproject.org/

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1          1.3.3                 Alejandro Hernandez
python3               3.4.3          3.5.0                 Alejandro Hernandez
python                2.7.9          2.7.10                Alejandro Hernandez
libusb1               1.0.19         1.0.20                Alejandro Hernandez
gsettings-desktop...  3.16.1         3.18.1                Alejandro Hernandez
gnome-common          3.14.0         3.18.0                Alejandro Hernandez
ruby                  2.2.2          2.2.3                 Alexander Kanavin
gcr                   3.16.0         3.18.0                Alexander Kanavin
gnome-desktop3        3.16.2         3.18.2                Alexander Kanavin
libsecret             0.18.2         0.18.3                Alexander Kanavin
libwebp               0.4.3          0.4.4                 Alexander Kanavin
iso-codes             3.58           3.63                  Alexander Kanavin
acpid                 2.0.23         2.0.25                Aníbal Limón
apt                   1.0.10.1       1.0.10.2              Aníbal Limón
dpkg                  1.18.2         1.18.3                Aníbal Limón
sqlite3               3.8.10.2       3.9.2                 Aníbal Limón
mc                    4.8.14         4.8.15                Aníbal Limón
pkgconfig             0.28+gitX      0.29+gitAUTOINC+5...  Aníbal Limón
pinentry              0.9.2          0.9.6                 Armin Kuster
linux-libc-headers    4.1            4.3                   Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
pciutils              3.3.1          3.4.0                 Chen Qi
resolvconf            1.77           1.78                  Chen Qi
busybox               1.23.2         1.24.1                Chen Qi
dbus-test             1.8.20         1.10.2                Chen Qi
dbus                  1.8.20         1.10.2                Chen Qi
systemd               225+gitX       227+gitAUTOINC+c3...  Chen Qi
util-linux            2.26.2         2.27.1                Chen Qi
flex                  2.5.39         2.6.0rc1              Chen Qi
curl                  7.44.0         7.45.0                Chen Qi
cpio                  2.11           2.12                  Chen Qi
cups                  2.0.4          2.1.0                 Chen Qi
grep                  2.21           2.22                  Chen Qi
sudo                  1.8.14p3       1.8.15                Chen Qi
sysstat               11.1.5         11.1.8-1              Chen Qi
xz                    5.2.1          5.2.2                 Chen Qi
bluez5                5.33           5.36                  Cristian Iorga
iproute2              4.1.1          4.3.0                 Cristian Iorga
libpcap               1.6.2          1.7.4                 Cristian Iorga
ofono                 1.16           1.17                  Cristian Iorga
build-appliance-i...  12.0.1         14.0.0                Cristian Iorga
gstreamer1.0-libav    1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0-plug...  1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0-plug...  1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0-plug...  1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0-plug...  1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0          1.4.5          1.6.1                 Cristian Iorga
gstreamer1.0-rtsp...  1.4.5          1.6.1                 Cristian Iorga
qemu                  2.4.0          2.4.1                 Cristian Iorga
db                    6.0.30         6.1.26                Cristian Iorga       Updating to 6.1.x requires ...
wpa-supplicant        2.4            2.5                   Cristian Iorga
harfbuzz              1.0.2          1.0.6                 Cristian Iorga
libtirpc              0.2.5          1.0.1                 Cristian Iorga
libical               1.0.0          1.0.1                 Cristian Iorga
kernelshark           2.5.3+gitX     2.6+gitAUTOINC+9b...  Darren Hart
trace-cmd             2.5.3+gitX     2.6+gitAUTOINC+9b...  Darren Hart
u-boot-fw-utils       v2015.07+gitX  v2015.10+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2015.07+gitX  v2015.10+gitAUTOI...  Denys Dmytriyenko
u-boot                v2015.07+gitX  v2015.10+gitAUTOI...  Denys Dmytriyenko
dhcp                  4.3.2          4.3.3                 Hongxu Jia
elfutils              0.163          0.164                 Hongxu Jia
qmmp                  0.8.6          1.0.2                 Hongxu Jia
pax-utils             1.0.5          1.1.4                 Hongxu Jia
perl                  5.22.0         5.22.1                Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
xmlto                 0.0.26         0.0.27                Hongxu Jia
libgcrypt             1.6.3          1.6.4                 Hongxu Jia
ghostscript           9.16           9.18                  Hongxu Jia
help2man-native       1.47.1         1.47.2                Hongxu Jia
gnupg                 2.1.7          2.1.9                 Hongxu Jia
pango                 1.36.8         1.38.1                Jussi Kukkonen
waffle                1.5.1          1.5.2                 Jussi Kukkonen
libinput              0.21.0         1.1.1                 Jussi Kukkonen
wayland               1.8.1          1.9.0                 Jussi Kukkonen
weston                1.8.0          1.9.0                 Jussi Kukkonen
gtk-icon-utils-na...  3.16.6         3.19.1                Jussi Kukkonen
xkbcomp               1.3.0          1.3.1                 Jussi Kukkonen
xf86-input-evdev      2.9.2          2.10.0                Jussi Kukkonen
xf86-input-synaptics  1.8.2          1.8.3                 Jussi Kukkonen
xf86-video-omap       0.4.3          0.4.4                 Jussi Kukkonen
libxcb                1.11           1.11.1                Jussi Kukkonen
glib-2.0              2.44.1         2.46.2                Jussi Kukkonen
glib-networking       2.44.0         2.46.1                Jussi Kukkonen
libxi                 1.7.4          1.7.5                 Jussi Kukkonen
pixman                0.32.6         0.33.4                Jussi Kukkonen
xkeyboard-config      2.15           2.16                  Jussi Kukkonen
xserver-xorg          1.17.2         1.18.0                Jussi Kukkonen
libsoup-2.4           2.50.0         2.52.2                Jussi Kukkonen
xinput                1.6.1          1.6.2                 Jussi Kukkonen
at-spi2-atk           2.16.0         2.18.1                Jussi Kukkonen
atk                   2.16.0         2.18.0                Jussi Kukkonen
at-spi2-core          2.16.0         2.18.3                Jussi Kukkonen
vala                  0.28.0         0.30.0                Jussi Kukkonen
shared-mime-info      1.4            1.5                   Jussi Kukkonen
vte                   0.28.2         0.42.1                Jussi Kukkonen       matchbox-terminal needs to ...
clutter-gst-3.0       3.0.8          3.0.14                Jussi Kukkonen
adwaita-icon-theme    3.16.2.1       3.18.0                Jussi Kukkonen
libcroco              0.6.8          0.6.9                 Jussi Kukkonen
xdg-utils             1.1.0-rc1      1.1.1                 Jussi Kukkonen
gdk-pixbuf            2.30.8         2.32.2                Jussi Kukkonen
gtk+3                 3.16.6         3.18.4                Jussi Kukkonen
librsvg               2.40.10        2.40.11               Jussi Kukkonen
cairo                 1.14.2         1.14.4                Jussi Kukkonen
clutter-1.0           1.22.4         1.24.2                Jussi Kukkonen
clutter-gtk-1.0       1.6.2          1.6.6                 Jussi Kukkonen
cogl-1.0              1.20.0         1.22.0                Jussi Kukkonen
glew                  1.12.0         1.13.0                Jussi Kukkonen
python-mako           1.0.1          1.0.3                 Khem Raj
python-nose           1.3.6          1.3.7                 Khem Raj
python-numpy          1.7.0          1.10.1                Khem Raj
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.14         5.4.15                Mark Hatle           5.4.15 has a package databa...
iw                    4.1            4.3                   No maintainer
dmidecode             2.12           3.0                   No maintainer
docbook-xsl-style...  1.78.1         1.79.0                No maintainer
gptfdisk              1.0.0          1.0.1                 No maintainer
orc                   0.4.23         0.4.24                No maintainer
webkitgtk             2.8.5          2.10.4                No maintainer
gdb-cross-i586        7.9.1          7.10                  No maintainer
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  No maintainer
ifupdown              0.7.48.1       0.7.54ubuntu2         No maintainer
bjam-native           1.58.0         1.59.0                No maintainer
python-pexpect        3.3            4.0.1                 No maintainer
swig                  3.0.6          3.0.7                 No maintainer
python3-pip           6.1.1          7.1.2                 No maintainer
python3-setuptools    18.2           18.5                  No maintainer
epiphany              3.16.3         3.18.0                No maintainer
uclibc-initial        0.9.33+gitX    0.9.33.2+gitAUTOI...  No maintainer
apt-native            1.0.10.1       1.0.10.2              No maintainer
gcc-source-4.8.4      4.8.4          4.8.5                 No maintainer
gdb-cross-canadia...  7.9.1          7.10                  No maintainer
autogen-native        5.18.5         5.18.6                No maintainer
cdrtools-native       3.01a31        3.02a01               No maintainer
perl-native           5.22.0         5.22.1                No maintainer
python-scons-native   2.3.6          2.4.1                 No maintainer
python3-native        3.4.3          3.5.0                 No maintainer
python-native         2.7.9          2.7.10                No maintainer
linuxdoc-tools-na...  0.9.69         0.9.71                No maintainer
libav                 9.18           11.4                  Paul Eggleton
gpgme                 1.5.4          1.6.0                 Paul Eggleton
libevdev              1.4.2          1.4.5                 Paul Eggleton
libgpg-error          1.19           1.20                  Paul Eggleton
cmake-native          3.3.1          3.4.0                 Paul Eggleton
cmake                 3.3.1          3.4.0                 Paul Eggleton
libpng                1.6.17         1.6.19                Randy Witt
libpng12              1.2.53         1.2.54                Randy Witt
libtasn1              4.5            4.7                   Randy Witt
unfs3                 0.9.22.r490    0.9.22.r495           Randy Witt
libunistring          0.9.5          0.9.6                 Randy Witt
ethtool               4.0            4.2                   Randy Witt
libdrm                2.4.62         2.4.65                Richard Purdie
kexec-tools           2.0.10         2.0.11                Richard Purdie
btrfs-tools           4.1.2          4.3                   Richard Purdie
lttng-modules         2.6.2+gitX     2.7.0+gitAUTOINC+...  Richard Purdie
lttng-tools           2.6.0          2.7.0                 Richard Purdie
lttng-ust             2.6.2+gitX     2.7.0+gitAUTOINC+...  Richard Purdie
powertop              2.7            2.8                   Richard Purdie
gdb                   7.9.1          7.10                  Richard Purdie
python-pycurl         7.19.5.1       7.19.5.2              Richard Purdie
python-pygobject      2.28.3         3.19.2                Richard Purdie       Newer versions of python-py...
python-scons          2.3.6          2.4.1                 Richard Purdie
e2fsprogs             1.42.9         1.42.13               Robert Yang          Updating backported patches...
file                  5.24           5.25                  Robert Yang
git                   2.5.0          2.6.3                 Robert Yang
gmp                   6.0.0          6.1.0                 Robert Yang
less                  479            481                   Robert Yang
ltp                   20150420       20150903              Robert Yang
wget                  1.16.3         1.17                  Robert Yang
liberation-fonts      1.04           2.00.1                Ross Burton          2.x depends on fontforge pa...
base-passwd           3.5.29         3.5.38                Ross Burton          Version 3.5.38 requires cde...
kbd                   2.0.2          2.0.3                 Ross Burton
nss                   3.19.2         3.20                  Ross Burton
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  Ross Burton
babeltrace            1.2.4+gitX     1.3.1+gitAUTOINC+...  Ross Burton
systemtap             2.7+gitX       2.9+gitAUTOINC+70...  Ross Burton
tiff                  4.0.4          4.0.6                 Ross Burton
mkelfimage            4.0+gitX       4.2+gitAUTOINC+43...  Ross Burton          mkelfimage has been removed...
mtd-utils             1.5.1+gitX     1.5.2+gitAUTOINC+...  Ross Burton
liburcu               0.8.7          0.9.1                 Ross Burton
boost                 1.58.0         1.59.0                Ross Burton
icu                   55.1           56.1-AIX7.1-VA2       Ross Burton
valgrind              3.10.1         3.11.0                Ross Burton
libidn                1.30           1.32                  Ross Burton
lighttpd              1.4.36         1.4.37                Ross Burton
libassuan             2.2.1          2.4.0                 Ross Burton
procps                3.3.10         3.3.11                Ross Burton
alsa-lib              1.0.29         1.1.0                 Tanu Kaskinen
alsa-tools            1.0.29         1.1.0                 Tanu Kaskinen
alsa-utils            1.0.29         1.1.0                 Tanu Kaskinen
pulseaudio            6.0            7.1                   Tanu Kaskinen
alsa-plugins          1.0.29         1.1.0                 Tanu Kaskinen
alsa-utils-scripts    1.0.29         1.1.0                 Tanu Kaskinen
systemtap-uprobes     2.7+gitX       2.9+gitAUTOINC+70...  Tom Zanussi
gettext               0.19.4         0.19.6                Wenzong Fan
ccache                3.2.3          3.2.4                 Wenzong Fan
chkconfig             1.3.58         1.6                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 186
Upgradable total count: 196

The based commit is:

commit e44ed8c18e395b9c055aefee113b90708e8a8a2f
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Nov 3 14:02:57 2015 +0000

    build-appliance-image: Update to jethro head revision
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

