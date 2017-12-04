Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A949E00D00; Sun,  3 Dec 2017 21:34:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E94E8E00C82
	for <yocto@yoctoproject.org>; Sun,  3 Dec 2017 21:34:37 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id C193B875A2AF
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 00:34:36 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 04 Dec 2017 05:34:36 -0000
Message-ID: <20171204053436.23172.46072@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 04 Dec 2017 05:34:39 -0000
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

Package               Version          Upstream version      Maintainer           NoUpgradeReason
--------------------  ---------------  --------------------  -------------------  ------------------------------
python                2.7.13           2.7.14                Alejandro Hernandez
python-native         2.7.13           2.7.14                Alejandro Hernandez
eudev                 3.2.2            3.2.5                 Alejandro Hernandez
python3-native        3.5.3            3.6.3                 Alejandro Hernandez
python3               3.5.3            3.6.3                 Alejandro Hernandez
epiphany              3.24.3           3.26.3                Alexander Kanavin
usbutils              008              009                   Alexander Kanavin
gtk-doc               1.25             1.26                  Alexander Kanavin
webkitgtk             2.16.6           2.18.3                Alexander Kanavin
trace-cmd             2.6.1            2.6.2                 Alexander Kanavin
dnf                   2.6.3            2.7.5                 Alexander Kanavin
libwebp               0.6.0            0.6.1                 Alexander Kanavin
libnl                 3.2.29           3.4.0                 Alexander Kanavin
librepo               1.7.20+gitX      1.8.1                 Alexander Kanavin
ffmpeg                3.3.4            3.4                   Alexander Kanavin
iso-codes             3.76             3.77                  Alexander Kanavin
blktrace              1.1.0+gitX       1.2.0                 Alexander Kanavin
vala                  0.38.2           0.38.3                Alexander Kanavin
gobject-introspec...  1.52.1           1.54.1                Alexander Kanavin
psmisc                22.21            23.1                  Alexander Kanavin
btrfs-tools           4.13.3           4.14                  Alexander Kanavin
systemtap-uprobes     3.1              3.2                   Alexander Kanavin
systemtap             3.1              3.2                   Alexander Kanavin
kernelshark           2.6.1            2.6.2                 Alexander Kanavin
mpg123                1.25.7           1.25.8                Alexander Kanavin
libdnf                0.9.3            0.11.1                Alexander Kanavin
tiff                  4.0.8            4.0.9                 Alexander Kanavin
mkelfimage            4.0+gitX         4.6                   Alexander Kanavin    mkelfimage has been removed...
apt                   1.2.24           1.4.8                 Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.4              Aníbal Limón
bind                  9.10.6           9.11.2                Armin Kuster
curl                  7.54.1           7.57.0                Armin Kuster
libassuan             2.4.4            2.4.5                 Armin Kuster
libxcursor            1.1.14           1.1.15                Armin Kuster
libxfont              1.5.3            1.5.4                 Armin Kuster
libxfont2             2.0.2            2.0.3                 Armin Kuster
nss                   3.34             3.34.1                Armin Kuster
pinentry              1.0.0            1.1.0                 Armin Kuster
kexec-tools           2.0.15           2.0.16                Armin Kuster
libunwind             1.2              1.2.1                 Bruce Ashfield
linux-libc-headers    4.12             4.14.3                Bruce Ashfield
linux-yocto           4.12.14+gitX     4.12.16               Bruce Ashfield
linux-yocto-tiny      4.12.14+gitX     4.12.16               Bruce Ashfield
linux-yocto-rt        4.12.14+gitX     4.12.16               Bruce Ashfield
iproute2              4.13.0           4.14.1                Changhyeok Bae
dbus-test             1.10.20          1.12.2                Chen Qi
pciutils              3.5.5            3.5.6                 Chen Qi
coreutils             8.27             8.28                  Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
systemd               234              235                   Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.6.1           11.7.1                Chen Qi
systemd-boot          234              235                   Chen Qi
systemd-bootchart     231+gitX         233                   Chen Qi
dbus                  1.10.20          1.12.2                Chen Qi
build-appliance-i...  15.0.0           18.0.0                Cristian Iorga
lz4                   1.7.4            1.8.0                 Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
wayland-protocols     1.11             1.12                  Denys Dmytriyenko
mtd-utils             2.0.0            2.0.1                 Denys Dmytriyenko
acpica                20170303         20171110              Fathi Boudra
gnupg                 2.2.0            2.2.3                 Hongxu Jia
apr-util              1.6.0            1.6.1                 Hongxu Jia
apr                   1.6.2            1.6.3                 Hongxu Jia
bash                  4.4              4.4.12                Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
ncurses               6.0+20170715     6.0+20171125          Hongxu Jia
man-pages             4.11             4.14                  Hongxu Jia
help2man-native       1.47.4           1.47.5                Hongxu Jia
python-numpy          1.13.1           1.13.3                Jose Lamego
python-scons          3.0.0            3.0.1                 Jose Lamego
bc                    1.06             1.07.1                Jose Lamego
python3-pycairo       1.15.3           1.15.4                Jose Lamego
python3-pygobject     3.26.0           3.26.1                Jose Lamego
python-setuptools     36.5.0           38.2.3                Jose Lamego
python3-setuptools    36.5.0           38.2.3                Jose Lamego
python-scons-native   3.0.0            3.0.1                 Jose Lamego
pango                 1.40.12          1.40.14               Jussi Kukkonen
piglit                1.0+gitrX        1.0-new-commits-a...  Jussi Kukkonen
atk                   2.26.0           2.26.1                Jussi Kukkonen
libinput              1.8.4            1.9.3                 Jussi Kukkonen
vulkan-demos          git              git-new-commits-a...  Jussi Kukkonen
gtk-icon-utils-na...  3.22.17          3.22.26               Jussi Kukkonen
at-spi2-atk           2.26.0           2.26.1                Jussi Kukkonen
vte                   0.50.1           0.50.2                Jussi Kukkonen
puzzles               0.0+gitX         0.0-new-commits-a...  Jussi Kukkonen
adwaita-icon-theme    3.26.0           3.26.1                Jussi Kukkonen
gtk+3                 3.22.24          3.22.26               Jussi Kukkonen
at-spi2-core          2.26.0           2.26.2                Jussi Kukkonen
llvm                  5.0              5.0-new-commits-a...  Khem Raj
cross-localedef-n...  2.26             2.26.9000             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
mpfr                  3.1.5            3.1.6                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.9              1.9.2                 Khem Raj
go                    1.9              1.9.2                 Khem Raj
glibc                 2.26             2.26.9000             Khem Raj
binutils              2.29             2.29.1                Khem Raj
ninja                 1.7.2            1.8.2                 Khem Raj
gdb                   8.0              8.0.1                 Khem Raj
glibc-initial         2.26             2.26.9000             Khem Raj
perl                  5.24.1           5.26.1                Leonardo Sandoval
nfs-utils             2.1.1            2.2.1                 Leonardo Sandoval
qemu                  2.10.1           2.11.0-rc3            Leonardo Sandoval
perl-native           5.24.1           5.26.1                Leonardo Sandoval
prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
rpm                   4.13.90+gitX     4.14.0                Mark Hatle
libical               2.0.0            3.0.1                 Maxin B. John
libunistring          0.9.7            0.9.8                 Maxin B. John
libsolv               0.6.29           0.6.30                Maxin B. John
ifupdown              0.8.16           0.8.29                Maxin B. John
screen                4.6.1            4.6.2                 Maxin B. John
harfbuzz              1.7.0            1.7.1                 Maxin B. John
i2c-tools             3.1.2            4.0                   Maxin B. John
orc                   0.4.27           0.4.28                Maxin B. John
mc                    4.8.19           4.8.20                Maxin B. John
go-cross-i586         1.9              1.9.2                 No maintainer
go-crosssdk-x86_64    1.9              1.9.2                 No maintainer
binutils-cross-i586   2.29             2.29.1                No maintainer
binutils-crosssdk...  2.29             2.29.1                No maintainer
systemtap-native      3.1              3.2                   No maintainer
gcc-source-6.4.0      6.4.0            7.2.0                 No maintainer
binutils-cross-ca...  2.29             2.29.1                No maintainer
gdb-cross-canadia...  8.0              8.0.1                 No maintainer
gdb-cross-i586        8.0              8.0.1                 No maintainer
go-cross-canadian...  1.9              1.9.2                 No maintainer
go-runtime            1.9              1.9.2                 No maintainer
pkgconf               1.3.7            1.3.10                No maintainer
mesa                  17.2.5           17.2.6                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.9.5            3.10.0                Otavio Salvador
cmake-native          3.9.5            3.10.0                Otavio Salvador
mesa-gl               17.2.5           17.2.6                Otavio Salvador
go-dep                0.3.1            0.3.2                 Otavio Salvador
tcf-agent             1.4.0+gitX       1.5                   Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
subversion            1.9.6            1.9.7                 Richard Purdie
lttng-tools           2.9.5            2.10.1                Richard Purdie
lttng-ust             2.9.1            2.10.1                Richard Purdie
lttng-modules         2.9.5            2.10.4                Richard Purdie
nasm                  2.13.01          2.13.02               Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
debianutils           4.8.1.1          4.8.3                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.19             4.20                  Robert Yang
less                  527              529                   Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
time                  1.7              1.8                   Robert Yang
git                   2.15.0           2.15.1                Robert Yang
base-passwd           3.5.29           3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72             9.78                  Ross Burton
alsa-plugins          1.1.4            1.1.5                 Tanu Kaskinen
alsa-lib              1.1.4.1          1.1.5                 Tanu Kaskinen
alsa-tools            1.1.3            1.1.5                 Tanu Kaskinen
alsa-utils            1.1.4            1.1.5                 Tanu Kaskinen
lame                  3.99.5           3.100                 Tanu Kaskinen
alsa-utils-scripts    1.1.4            1.1.5                 Tanu Kaskinen
pulseaudio            10.0             11.1                  Tanu Kaskinen
libva                 1.8.3            2.0.0                 Wei Tee Ng
libva-utils           1.8.3            2.0.0                 Wei Tee Ng
avahi-ui              0.6.32           0.7                   Yi Zhao
avahi                 0.6.32           0.7                   Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
json-glib             1.2.8            1.4.2                 Yi Zhao

Upgradable count: 162
Upgradable total count: 165

The based commit is:

commit a7cd9d1183be603777fc9c8c448281fe01224f7b
Author: Ross Burton <ross.burton@intel.com>
Date:   Thu Nov 30 10:58:13 2017 +0000

    lib/oe/utils: remove param_bool()
    
    This function is not used by any classes or recipes that I can find, so lets
    delete it.
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


