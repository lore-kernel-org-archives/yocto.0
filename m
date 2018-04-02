Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE5F1E00CB3; Sun,  1 Apr 2018 21:35:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD9D2E005A9
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 21:35:42 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id B72368757AB7
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 00:35:41 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 02 Apr 2018 04:35:41 -0000
Message-ID: <20180402043541.17132.34481@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 02 Apr 2018 04:35:43 -0000
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

Package               Version          Upstream version      Maintainer            NoUpgradeReason
--------------------  ---------------  --------------------  --------------------  ------------------------------
webkitgtk             2.18.6           2.20.0                Alexander Kanavin
gcr                   3.20.0           3.28.0                Alexander Kanavin
gnome-desktop3        3.26.2           3.28.0                Alexander Kanavin
libsecret             0.18.5           0.18.6                Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
bash-completion       2.7              2.8                   Alexander Kanavin
gobject-introspec...  1.54.1           1.56.0                Alexander Kanavin
sysprof               3.26.1           3.28.0                Alexander Kanavin
libidn                1.33             1.34                  Alexander Kanavin
epiphany              3.26.6           3.28.0.1              Alexander Kanavin
vala                  0.38.8           0.40.2                Alexander Kanavin
gtk-doc               1.27             1.28                  Alexander Kanavin
libaio                0.3.110          0.3.111               Alexander Kanavin
lighttpd              1.4.48           1.4.49                Alexander Kanavin
procps                3.3.12           3.3.13                Alexander Kanavin
meson                 0.44.1           0.45.1                Alexander Kanavin
btrfs-tools           4.13.3           4.15.1                Alexander Kanavin     Waiting for resolution of h...
babeltrace            1.5.4            1.5.5                 Alexander Kanavin
icu                   60.2             61.1                  Alexander Kanavin
apt                   1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
gstreamer1.0-rtsp...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gst-validate          1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-libav    1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0          1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-vaapi    1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-omx      1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-python   1.12.4           1.14.0                Anuj Mittal
mkfontscale           1.1.2            1.1.3                 Armin Kuster
xeyes                 1.1.1            1.1.2                 Armin Kuster
xinit                 1.3.4            1.4.0                 Armin Kuster
xkbcomp               1.4.0            1.4.1                 Armin Kuster
bind                  9.10.6           9.12.1                Armin Kuster
xprop                 1.2.2            1.2.3                 Armin Kuster
xset                  1.2.3            1.2.4                 Armin Kuster
xwininfo              1.1.3            1.1.4                 Armin Kuster
xf86-video-vesa       2.3.4            2.4.0                 Armin Kuster
libxcb                1.12             1.13                  Armin Kuster
libxshmfence          1.2              1.3                   Armin Kuster
xkeyboard-config      2.22             2.23.1                Armin Kuster
calibrateproto        0.0+gitX         0.0-new-commits-a...  Armin Kuster
xcb-proto             1.12             1.13                  Armin Kuster
util-macros           1.19.1           1.19.2                Armin Kuster
xserver-xorg          1.19.6           1.19.99.902           Armin Kuster
xf86-input-libinput   0.26.0           0.27.0                Armin Kuster
curl                  7.58.0           7.59.0                Armin Kuster
busybox               1.27.2           1.28.2                Armin Kuster
gnutls                3.6.1            3.6.2                 Armin Kuster
libpcre2              10.30            10.31                 Armin Kuster
kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
linux-libc-headers    4.15.7           4.15.15               Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
iproute2              4.14.1           4.15.0                Changhyeok Bae
ethtool               4.13             4.15                  Changhyeok Bae
base-passwd           3.5.29           3.5.44                Chang Rebecca Swe...  Version 3.5.38 requires cde...
sysvinit              2.88dsf          2.89                  Chang Rebecca Swe...
dbus-test             1.12.2           1.12.6                Chen Qi
dbus                  1.12.2           1.12.6                Chen Qi
systemd               237              238                   Chen Qi
util-linux            2.31             2.32                  Chen Qi
systemd-boot          237              238                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
cups                  2.2.6            2.2.7                 Chen Qi
gawk                  4.2.0            4.2.1                 Chen Qi
dbus-glib             0.108            0.110                 Chen Qi
sed                   4.2.2            4.5                   Chen Qi
sysstat               11.7.1           11.7.2                Chen Qi
build-appliance-i...  15.0.0           18.0.2                Cristian Iorga
wayland               1.14.0           1.14.92               Denys Dmytriyenko
weston                3.0.0            3.0.92                Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
lzip                  1.19             1.20                  Denys Dmytriyenko
lz4                   1.7.4            1.8.1.2               Denys Dmytriyenko
hdparm                9.53             9.56                  Denys Dmytriyenko
python3-git           2.1.8            2.1.9                 Derek Straka
python3-pycairo       1.15.6           1.16.3                Derek Straka
python3-pygobject     3.28.1           3.28.2                Derek Straka
python3               3.5.5            3.6.5                 Derek Straka
python3-pip           9.0.2            10.0.0                Derek Straka
python3-setuptools    39.0.0           39.0.1                Derek Straka
python-setuptools     39.0.0           39.0.1                Derek Straka
python3-native        3.5.5            3.6.5                 Derek Straka
acpica                20170303         20180313              Fathi Boudra
dhcp                  4.3.6            4.4.1                 Hongxu Jia
bash                  4.4.12           4.4.18                Hongxu Jia
libxml2               2.9.7            2.9.8                 Hongxu Jia
ncurses               6.0+20171125     6.1+20180210          Hongxu Jia
gnupg                 2.2.4            2.2.5                 Hongxu Jia
man-db                2.8.1            2.8.2                 Hongxu Jia
libgpg-error          1.27             1.28                  Hongxu Jia
ghostscript           9.21             9.23                  Hongxu Jia
man-pages             4.14             4.15                  Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
qemu                  2.11.1           2.12.0-rc1            Juro Bystricky
llvm                  5.0              5.0-new-commits-a...  Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
gdb                   8.0.1            8.1                   Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
u-boot-fw-utils       2018.01          2018.03               Marek Vasut
u-boot-mkimage        2018.01          2018.03               Marek Vasut
u-boot                2018.01          2018.03               Marek Vasut
pango                 1.40.14          1.42.0                Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.9.4            1.10.3                Maxin B. John
libsoup-2.4           2.60.3           2.62.0                Maxin B. John
gtk-icon-utils-na...  3.22.28          3.22.29               Maxin B. John
ruby                  2.5.0            2.5.1                 Maxin B. John
gsettings-desktop...  3.24.1           3.28.0                Maxin B. John
glib-2.0              2.54.3           2.56.0                Maxin B. John
glib-networking       2.54.1           2.56.0                Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
bluez5                5.48             5.49                  Maxin B. John
vulkan                1.0.65.2         1.1.70.0              Maxin B. John
at-spi2-atk           2.26.1           2.26.2                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.1                Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
at-spi2-core          2.26.2           2.28.0                Maxin B. John
atk                   2.26.1           2.28.1                Maxin B. John
ifupdown              0.8.16           0.8.31                Maxin B. John
ofono                 1.22             1.23                  Maxin B. John
libusb1               1.0.21           1.0.22                Maxin B. John
vte                   0.50.2           0.52.0                Maxin B. John
libtirpc              1.0.2            1.0.3                 Maxin B. John
libsolv               0.6.33           0.6.34                Maxin B. John
clutter-gst-3.0       3.0.24           3.0.26                Maxin B. John
adwaita-icon-theme    3.26.1           3.28.0                Maxin B. John
libevdev              1.5.8            1.5.9                 Maxin B. John
gtk+3                 3.22.28          3.22.29               Maxin B. John
librsvg               2.40.20          2.42.3                Maxin B. John         Versions from 2.41.0 requir...
libatomic-ops         7.6.2+gitX       7.6.4                 Maxin B. John
fontconfig            2.12.6           2.13.0                Maxin B. John
harfbuzz              1.7.5            1.7.6                 Maxin B. John
perl-native           5.24.1           5.26.1                Maxin B. John
gdb-cross-canadia...  8.0.1            8.1                   No maintainer
gdb-cross-i586        8.0.1            8.1                   No maintainer
mesa                  17.3.7           18.0.0                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.10.2           3.11.0                Otavio Salvador
cmake-native          3.10.2           3.11.0                Otavio Salvador
mesa-gl               17.3.7           18.0.0                Otavio Salvador
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
tcf-agent             1.4.0+gitX       1.7.0                 Randy Witt
lttng-tools           2.9.5            2.10.3                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.1                 Robert Yang
e2fsprogs             1.43.8           1.44.1                Robert Yang
automake              1.15.1           1.16.1                Robert Yang
autoconf-archive      2016.09.16       2018.03.13            Robert Yang
git                   2.16.1           2.16.3                Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.20             4.21                  Robert Yang
time                  1.8              1.9                   Robert Yang
ccache                3.3.5            3.4.2                 Robert Yang
libvorbis             1.3.5            1.3.6                 Tanu Kaskinen
libxml-simple-perl    2.24             2.25                  Tim Orling
libxml-sax-perl       0.99             1.00                  Tim Orling
gnu-efi               3.0.6            3.0.8                 Yi Zhao
dropbear              2017.75          2018.76               Yi Zhao
libpcre               8.41             8.42                  Yi Zhao
less                  529              530                   Yi Zhao
logrotate             3.13.0           3.14.0                Yi Zhao
libcap-ng             0.7.8            0.7.9                 Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao               Version 1.5 requires selinux

Upgradable count: 168
Upgradable total count: 172

The based commit is:

commit 4cedddb83623c79980b354642dfeaf78218ca4b7
Author: Juro Bystricky <juro.bystricky@intel.com>
Date:   Thu Mar 29 13:27:02 2018 -0700

    libpcre-ptest: skip locale test
    
    If a fr_FR locale is found, it is automatically tested. The test
    will fail if the locale is UTF-8, as the test blindly assumes
    (and expects) a non-UTF fr_FR locale.
    The remedy is to skip the test.
    
    [YOCTO #12215]
    
    Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


