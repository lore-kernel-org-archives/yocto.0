Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01C97E00A16; Sun,  7 May 2017 21:00:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3A7E00985
	for <yocto@yoctoproject.org>; Sun,  7 May 2017 21:00:37 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 591A5877B1F4
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 00:00:37 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 08 May 2017 04:00:37 -0000
Message-ID: <20170508040037.17948.15284@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 08 May 2017 04:00:39 -0000
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
eudev                 3.2.1         3.2.2                 Alejandro Hernandez
python3               3.5.2         3.6.1                 Alejandro Hernandez
python3-native        3.5.2         3.6.1                 Alejandro Hernandez
liberation-fonts      1.04          2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
grub-efi              2.00          2.02                  Alexander Kanavin
libpciaccess          0.13.4        0.13.5                Alexander Kanavin
gobject-introspec...  1.50.0        1.52.1                Alexander Kanavin
boost                 1.63.0        1.64.0                Alexander Kanavin
mobile-broadband-...  20151214      20170310              Alexander Kanavin
openssl               1.0.2k        1.1.0e                Alexander Kanavin
libnl                 3.2.29        3.3.0                 Alexander Kanavin
gnome-desktop3        3.22.2        3.24.1                Alexander Kanavin
libpthread-stubs      0.3           0.4                   Alexander Kanavin
vala                  0.34.4        0.36.3                Alexander Kanavin
ffmpeg                3.2.4         3.3                   Alexander Kanavin
gdbm                  1.12          1.13                  Alexander Kanavin
ed                    1.14.1        1.14.2                Alexander Kanavin
gperf                 3.0.4         3.1                   Alexander Kanavin
webkitgtk             2.14.5        2.16.1                Alexander Kanavin
dtc                   1.4.2         1.4.4                 Alexander Kanavin
btrfs-tools           4.9.1         4.10.2                Alexander Kanavin
sysprof               3.22.3        3.24.1                Alexander Kanavin
bjam-native           1.63.0        1.64.0                Alexander Kanavin
mpg123                1.23.8        1.24.0                Alexander Kanavin
iso-codes             3.74          3.75                  Alexander Kanavin
epiphany              3.22.6        3.24.1                Alexander Kanavin
kconfig-frontends     3.12.0.0      4.11.0.0              Alexander Kanavin
libiconv              1.14          1.15                  Alexander Kanavin
mkelfimage            4.0+gitX      4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
icu                   58.2          59.1                  Alexander Kanavin
qemu                  2.8.0         2.9.0                 Aníbal Limón
libxml-simple-perl    2.22          2.24                  Aníbal Limón
ptest-runner          2.0.2+gitX    2.1+gitAUTOINC+78...  Aníbal Limón
libxml-namespaces...  1.11          1.12                  Aníbal Limón
libxml-sax-base-perl  1.08          1.09                  Aníbal Limón
apt-native            1.2.12        1.4.2                 Aníbal Limón
dpkg                  1.18.10       1.18.23               Aníbal Limón
apt                   1.2.12        1.4.2                 Aníbal Limón
iproute2              4.10.0        4.11.0                Armin Kuster
openssh               7.4p1         7.5p1                 Armin Kuster
curl                  7.53.1        7.54.0                Armin Kuster
busybox               1.24.1        1.26.2                Armin Kuster
lzo                   2.09          2.10                  Armin Kuster
nspr                  4.13.1        4.14                  Armin Kuster
nss                   3.28.1        3.30.2                Armin Kuster
pinentry              0.9.2         1.0.0                 Armin Kuster
go-native             1.8           1.8.1                 Armin Kuster
gnutls                3.5.9         3.5.11                Armin Kuster
libpcre2              10.22         10.23                 Armin Kuster
libunwind             1.1+gitX      1.2+gitAUTOINC+cc...  Bruce Ashfield
linux-libc-headers    4.10          4.11                  Bruce Ashfield
kmod-native           23+gitX       24+gitAUTOINC+ef4...  Chen Qi
pciutils              3.5.2         3.5.4                 Chen Qi
dbus-test             1.10.14       1.10.18               Chen Qi
dbus                  1.10.14       1.10.18               Chen Qi
byacc                 20161202      20170430              Chen Qi
cups                  2.2.2         2.2.3                 Chen Qi
systemd               232           233                   Chen Qi
util-linux            2.29.1        2.29.2                Chen Qi
kmod                  23+gitX       24+gitAUTOINC+ef4...  Chen Qi
sed                   4.2.2         4.4                   Chen Qi
sysstat               11.5.4        11.5.5                Chen Qi
systemd-boot          232           233                   Chen Qi
flex                  2.6.0         2.6.3                 Chen Qi
coreutils             8.26          8.27                  Chen Qi
build-appliance-i...  15.0.0        16.0.1                Cristian Iorga
json-glib             1.2.2         1.2.8                 Dengke Du
chkconfig             1.3.58        1.8                   Dengke Du            Version 1.5 requires selinux
hdparm                9.51          9.52                  Denys Dmytriyenko
python3-pygobject     3.22.0        3.24.1                Edwin Plauchu
python3-setuptools    32.1.1        35.0.2                Edwin Plauchu
python-setuptools     32.1.1        35.0.2                Edwin Plauchu
elfutils              0.168         0.169                 Hongxu Jia
gpgme                 1.8.0         1.9.0                 Hongxu Jia
ghostscript           9.20          9.21                  Hongxu Jia
ncurses               6.0+20161126  6.0+20170408          Hongxu Jia
libnewt-python        0.52.19       0.52.20               Hongxu Jia
man-pages             4.09          4.11                  Hongxu Jia
libnewt               0.52.19       0.52.20               Hongxu Jia
bash                  4.3.30        4.4                   Hongxu Jia
libgpg-error          1.26          1.27                  Hongxu Jia
gnupg                 2.1.18        2.1.20                Hongxu Jia
python-git            2.1.1         2.1.3                 Jose Lamego
python3-git           2.1.1         2.1.3                 Jose Lamego
bc                    1.06          1.07.1                Jose Lamego
pango                 1.40.3        1.40.5                Jussi Kukkonen
xf86-input-libinput   0.24.0        0.25.1                Jussi Kukkonen
libinput              1.6.1         1.7.2                 Jussi Kukkonen
gtk-icon-utils-na...  3.22.8        3.90.0                Jussi Kukkonen
xkbcomp               1.3.1         1.4.0                 Jussi Kukkonen
gnome-themes-stan...  3.22.2        3.22.3                Jussi Kukkonen
at-spi2-core          2.22.0        2.24.0                Jussi Kukkonen
atk                   2.22.0        2.24.0                Jussi Kukkonen
libx11-diet           1.6.4         1.6.5                 Jussi Kukkonen
libx11                1.6.4         1.6.5                 Jussi Kukkonen
libcroco              0.6.11        0.6.12                Jussi Kukkonen
libevdev              1.5.6         1.5.7                 Jussi Kukkonen
glib-2.0              2.50.3        2.52.1                Jussi Kukkonen
libsoup-2.4           2.56.0        2.58.0                Jussi Kukkonen
vte                   0.46.1        0.48.2                Jussi Kukkonen
vulkan                1.0.39.1      20141209              Jussi Kukkonen
libepoxy              1.4.0         1.4.2                 Jussi Kukkonen
xserver-xorg          1.19.1        1.19.3                Jussi Kukkonen
clutter-gst-3.0       3.0.22        3.0.24                Jussi Kukkonen
gsettings-desktop...  3.22.0        3.24.0                Jussi Kukkonen
gdk-pixbuf            2.36.5        2.36.6                Jussi Kukkonen
gtk+3                 3.22.8        3.90.0                Jussi Kukkonen
adwaita-icon-theme    3.22.0        3.24.0                Jussi Kukkonen
librsvg               2.40.16       2.40.17               Jussi Kukkonen
libevent              2.0.22        2.1.8                 Jussi Kukkonen
at-spi2-atk           2.22.0        2.24.0                Jussi Kukkonen
ruby                  2.4.0         2.4.1                 Leonardo Sandoval
nfs-utils             1.3.4         2.1.1                 Leonardo Sandoval
u-boot-fw-utils       2017.01       2017.03               Marek Vasut
u-boot-mkimage        2017.01       2017.03               Marek Vasut
u-boot                2017.01       2017.03               Marek Vasut
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
gstreamer1.0-rtsp...  1.10.4        1.12.0                Maxin B. John
bluez5                5.43          5.45                  Maxin B. John
connman               1.33          1.34                  Maxin B. John
ofono                 1.19          1.20                  Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.0                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.0                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.0                Maxin B. John
gstreamer1.0          1.10.4        1.12.0                Maxin B. John
gstreamer1.0-omx      1.10.4        1.12.0                Maxin B. John
sqlite3               3.17.0        3.18.0                Maxin B. John
libsolv               0.6.26        0.6.27                Maxin B. John
minicom               2.7           2.7.1                 Maxin B. John
ifupdown              0.8.16        0.8.19                Maxin B. John
mc                    4.8.18        4.8.19                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.0                Maxin B. John
pkgconfig             0.29.1+gitX   0.29.2+gitAUTOINC...  Maxin B. John
libpng                1.6.28        1.6.29                Maxin B. John
harfbuzz              1.4.1         1.4.6                 Maxin B. John
gstreamer1.0-libav    1.10.4        1.12.0                Maxin B. John
gcc-source-6.3.0      6.3.0         7.1.0                 No maintainer
gstreamer1.0-vaapi    1.10.4        1.12.0                No maintainer
dnf                   2.0.0+gitX    7+gitAUTOINC+f9ec...  No maintainer
go-bootstrap-native   1.4.3         1.8.1                 No maintainer
grub                  2.00          2.02                  No maintainer
acpica                20150515      20170303              No maintainer
lzip                  1.18          1.19                  No maintainer
go-cross-i586         1.8           1.8.1                 No maintainer
go                    1.8           1.8.1                 No maintainer
libdnf                0.2.3+gitX    0.8.2+gitAUTOINC+...  No maintainer
acpitests             20140828      20170303              No maintainer
mesa                  17.0.2        17.0.5                Otavio Salvador
libarchive            3.2.2         3.3.1                 Otavio Salvador
cmake                 3.7.2         3.8.1                 Otavio Salvador
cmake-native          3.7.2         3.8.1                 Otavio Salvador
mesa-gl               17.0.2        17.0.5                Otavio Salvador
libdrm                2.4.75        2.4.80                Otavio Salvador
lttng-modules         2.9.1         2.9.2                 Richard Purdie
nasm                  2.12.02       2.13.01               Richard Purdie
debianutils           4.8.1         4.8.1.1               Robert Yang
cryptodev-linux       1.8           1.9                   Robert Yang
logrotate             3.9.1         9-1                   Robert Yang
cryptodev-module      1.8           1.9                   Robert Yang
cryptodev-tests       1.8           1.9                   Robert Yang
git                   2.11.1        2.12.2                Robert Yang
guile                 2.0.14        2.2.2                 Robert Yang
base-passwd           3.5.29        3.5.43                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.68          9.70                  Ross Burton
libsndfile1           1.0.27        1.0.28                Tanu Kaskinen

Upgradable count: 162
Upgradable total count: 166

The based commit is:

commit 123962018251dfb1d6ca5aa5c0d02534007de3ab
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon May 1 08:56:43 2017 +0100

    build-appliance-image: Update to master head revision
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


