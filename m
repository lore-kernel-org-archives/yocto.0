Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03F1BE00D03; Sun,  5 Nov 2017 21:35:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46463E00C82
	for <yocto@yoctoproject.org>; Sun,  5 Nov 2017 21:35:00 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 1A83184D0D38
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 00:34:59 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 06 Nov 2017 05:34:59 -0000
Message-ID: <20171106053459.27476.5175@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 06 Nov 2017 05:35:02 -0000
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
python3               3.5.3         3.6.3                 Alejandro Hernandez
python                2.7.13        2.7.14                Alejandro Hernandez
python3-native        3.5.3         3.6.3                 Alejandro Hernandez
python-native         2.7.13        2.7.14                Alejandro Hernandez
gtk-doc               1.25          1.26                  Alexander Kanavin
webkitgtk             2.16.6        2.18.2                Alexander Kanavin
openssl               1.1.0f        1.1.0g                Alexander Kanavin
bjam-native           1.64.0        1.65.1                Alexander Kanavin
gnome-desktop3        3.24.2        3.26.2                Alexander Kanavin
libxslt               1.1.29        1.1.32                Alexander Kanavin
dnf                   2.6.3         2.7.5                 Alexander Kanavin
expect                5.45          5.45.3                Alexander Kanavin
libdnf                0.9.3         0.11.1                Alexander Kanavin
librepo               1.7.20+gitX   1.8.1+gitAUTOINC+...  Alexander Kanavin
blktrace              1.1.0+gitX    1.2.0+gitAUTOINC+...  Alexander Kanavin
dtc                   1.4.4         7.4                   Alexander Kanavin
btrfs-tools           4.12          4.13.3                Alexander Kanavin
oprofile              1.1.0         1.2.0                 Alexander Kanavin
sysprof               3.24.1        3.26.1                Alexander Kanavin
systemtap-uprobes     3.1           3.2                   Alexander Kanavin
systemtap             3.1           3.2                   Alexander Kanavin
mpg123                1.25.6        1.25.7                Alexander Kanavin
epiphany              3.24.3        3.26.2                Alexander Kanavin
mkelfimage            4.0+gitX      4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
lighttpd              1.4.45        1.4.47                Alexander Kanavin
boost                 1.64.0        1.65.1                Alexander Kanavin
libnl                 3.2.29        3.4.0                 Alexander Kanavin
ffmpeg                3.3.3         3.4                   Alexander Kanavin
libpciaccess          0.13.5        0.14                  Alexander Kanavin
icu                   59.1          60.1                  Alexander Kanavin
psmisc                22.21         23.1                  Alexander Kanavin
vala                  0.36.4        0.38.2                Alexander Kanavin
gobject-introspec...  1.52.1        1.54.1                Alexander Kanavin
iso-codes             3.75          3.76                  Alexander Kanavin
apt                   1.2.24        1.4.8                 Aníbal Limón
dpkg                  1.18.24       1.19.0.4              Aníbal Limón
apt-native            1.2.24        1.4.8                 Aníbal Limón
tzcode-native         2017b         2017c                 Armin Kuster
bind                  9.10.5-P3     9.11.2                Armin Kuster
openssh               7.5p1         7.6p1                 Armin Kuster
libxkbcommon          0.7.1         0.7.2                 Armin Kuster
libxres               1.0.7         1.2.0                 Armin Kuster
xkeyboard-config      2.21          2.22                  Armin Kuster
xserver-xorg          1.19.3        1.19.5                Armin Kuster
kexec-tools           2.0.14        2.0.15                Armin Kuster
curl                  7.54.1        7.56.1                Armin Kuster
libxfont2             2.0.1         2.0.2                 Armin Kuster
nspr                  4.16          4.17                  Armin Kuster
nss                   3.31.1        3.33                  Armin Kuster
libpcre2              10.23         10.30                 Armin Kuster
gnutls                3.5.13        3.6.1                 Armin Kuster
tzdata                2017b         2017c                 Armin Kuster
libxfont              1.5.2         1.5.3                 Armin Kuster
xf86-input-libinput   0.25.1        0.26.0                Armin Kuster
linux-libc-headers    4.12          4.13.11               Bruce Ashfield
libunwind             1.2           1.2.1                 Bruce Ashfield
iproute2              4.11.0        4.13.0                Changhyeok Bae
ethtool               4.11          4.13                  Changhyeok Bae
systemd-boot          234           235                   Chen Qi
dbus-test             1.10.20       1.12.0                Chen Qi
dbus                  1.10.20       1.12.0                Chen Qi
systemd               234           235                   Chen Qi
util-linux            2.30          2.31                  Chen Qi
systemd-bootchart     231+gitX      233+gitAUTOINC+fe...  Chen Qi
flex                  2.6.0         2.6.4                 Chen Qi
cups                  2.2.4         2.2.6                 Chen Qi
gawk                  4.1.4         4.2.0                 Chen Qi
sed                   4.2.2         4.4                   Chen Qi
sudo                  1.8.20p2      1.8.21p2              Chen Qi
sysstat               11.5.7        11.7.1                Chen Qi
coreutils             8.27          8.28                  Chen Qi
build-appliance-i...  15.0.0        18.0.0                Cristian Iorga
avahi-ui              0.6.32        0.7                   Dengke Du
avahi                 0.6.32        0.7                   Dengke Du
expat                 2.2.3         2.2.5                 Dengke Du
chkconfig             1.3.58        1.8                   Dengke Du            Version 1.5 requires selinux
json-glib             1.2.8         1.4.2                 Dengke Du
wayland               1.13.0        1.14.0                Denys Dmytriyenko
weston                2.0.0         3.0.0                 Denys Dmytriyenko
lz4                   1.7.4         131                   Denys Dmytriyenko
lzop                  1.03          1.04                  Denys Dmytriyenko
mtd-utils             2.0.0         2.0.1                 Denys Dmytriyenko
wayland-protocols     1.10          1.11                  Denys Dmytriyenko
acpica                20170303      20170929              Fathi Boudra
gnupg                 2.2.0         2.2.1                 Hongxu Jia
help2man-native       1.47.4        1.47.5                Hongxu Jia
libxml2               2.9.5         2.9.7                 Hongxu Jia
ncurses               6.0+20170715  6.0+20170902          Hongxu Jia
apr-util              1.6.0         1.6.1                 Hongxu Jia
apr                   1.6.2         1.6.3                 Hongxu Jia
bash                  4.4           4.4.12                Hongxu Jia
ghostscript           9.21          9.22                  Hongxu Jia
man-pages             4.11          4.13                  Hongxu Jia
python-numpy          1.13.1        1.13.3                Jose Lamego
python3-pygobject     3.26.0        3.26.1                Jose Lamego
bc                    1.06          1.07.1                Jose Lamego
python3-setuptools    36.5.0        36.6.0                Jose Lamego
python-setuptools     36.5.0        36.6.0                Jose Lamego
pango                 1.40.6        1.40.13               Jussi Kukkonen
libinput              1.8.1         1.9.1                 Jussi Kukkonen
gtk-icon-utils-na...  3.22.17       3.22.25               Jussi Kukkonen
gsettings-desktop...  3.22.0        3.24.1                Jussi Kukkonen
glib-2.0              2.52.3        2.54.2                Jussi Kukkonen
glib-networking       2.50.0        2.54.1                Jussi Kukkonen
libsoup-2.4           2.58.2        2.60.2                Jussi Kukkonen
at-spi2-atk           2.24.1        2.26.1                Jussi Kukkonen
at-spi2-core          2.24.1        2.26.2                Jussi Kukkonen
librsvg               2.40.18       2.40.19               Jussi Kukkonen
assimp                4.0.0         4.0.1                 Jussi Kukkonen
atk                   2.24.0        2.26.1                Jussi Kukkonen
libgudev              231           232                   Jussi Kukkonen
shared-mime-info      1.8           1.9                   Jussi Kukkonen
vte                   0.48.3        0.50.2                Jussi Kukkonen
vulkan                1.0.51.0      1.0.61.1              Jussi Kukkonen
adwaita-icon-theme    3.24.0        3.26.0                Jussi Kukkonen
xdg-utils             1.1.1         1.1.2                 Jussi Kukkonen
gdk-pixbuf            2.36.8        2.36.11               Jussi Kukkonen
gtk+3                 3.22.17       3.22.25               Jussi Kukkonen
hicolor-icon-theme    0.15          0.17                  Jussi Kukkonen
clutter-gtk-1.0       1.8.2         1.8.4                 Jussi Kukkonen
fontconfig            2.12.4        2.12.6                Jussi Kukkonen
freetype              2.8           387.5                 Jussi Kukkonen
glew                  2.0.0         2.1.0                 Jussi Kukkonen
musl                  1.1.16+gitX   1.1.18+gitAUTOINC...  Khem Raj
ninja                 1.7.2         1.8.2                 Khem Raj
glibc                 2.26          2.26.9000             Khem Raj
binutils              2.29          2.29.1                Khem Raj
re2c                  0.16          1.0.1                 Khem Raj
libnsl2               1.0.5+gitX    1.1.0+gitAUTOINC+...  Khem Raj
gdb                   8.0           8.0.1                 Khem Raj
mpfr                  3.1.5         3.1.6                 Khem Raj
go-native             1.9           1.9.2                 Khem Raj
go                    1.9           1.9.2                 Khem Raj
cross-localedef-n...  2.26          2.26.9000             Khem Raj
glibc-initial         2.26          2.26.9000             Khem Raj
nfs-utils             2.1.1         2.2.1                 Leonardo Sandoval
perl                  5.24.1        5.26.1                Leonardo Sandoval
qemu                  2.10.0        2.10.1                Leonardo Sandoval
perl-native           5.24.1        5.26.1                Leonardo Sandoval
rpm                   4.13.90+gitX  4.14.0+gitAUTOINC...  Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
ofono                 1.20          1.21                  Maxin B. John
ifupdown              0.8.16        0.8.29                Maxin B. John
libproxy              0.4.14        0.4.15                Maxin B. John
sqlite3               3.20.0        3.21.0                Maxin B. John
libsolv               0.6.28        0.6.30                Maxin B. John
quota                 4.03          4.04                  Maxin B. John
screen                4.6.1         4.6.2                 Maxin B. John
harfbuzz              1.4.8         1.6.3                 Maxin B. John
libical               2.0.0         3.0.0                 Maxin B. John
systemtap-native      3.1           3.2                   No maintainer
gdb-cross-canadia...  8.0           8.0.1                 No maintainer
gdb-cross-i586        8.0           8.0.1                 No maintainer
go-cross-i586         1.9           1.9.2                 No maintainer
binutils-cross-ca...  2.29          2.29.1                No maintainer
binutils-cross-i586   2.29          2.29.1                No maintainer
binutils-crosssdk...  2.29          2.29.1                No maintainer
gcc-source-6.4.0      6.4.0         7.2.0                 No maintainer
go-cross-canadian...  1.9           1.9.2                 No maintainer
go-crosssdk-x86_64    1.9           1.9.2                 No maintainer
go-dep                0.3.1         0.3.2                 No maintainer
go-runtime            1.9           1.9.2                 No maintainer
pkgconf               1.3.7         1.3.10                No maintainer
mesa                  17.1.7        17.2.4                Otavio Salvador
cmake                 3.9.3         3.9.5                 Otavio Salvador
cmake-native          3.9.3         3.9.5                 Otavio Salvador
libdrm                2.4.83        2.4.88                Otavio Salvador
mesa-gl               17.1.7        17.2.4                Otavio Salvador
tcf-agent             1.4.0+gitX    1.5+gitAUTOINC+5e...  Randy Witt
lttng-modules         2.9.3         2.10.3                Richard Purdie
lttng-tools           2.9.5         2.10.1                Richard Purdie
lttng-ust             2.9.1         2.10.0                Richard Purdie
subversion            1.9.6         1.9.7                 Richard Purdie
file                  5.31          5.32                  Robert Yang
e2fsprogs             1.43.5        1.43.7                Robert Yang
git                   2.13.3        2.15.0                Robert Yang
liberror-perl         0.17024       0.17025               Robert Yang
strace                4.18          4.19                  Robert Yang
debianutils           4.8.1.1       4.8.2                 Robert Yang
autoconf-archive      2016.09.16    2017.09.28            Robert Yang
less                  487           527                   Robert Yang
logrotate             3.12.3        3.13.0                Robert Yang
wget                  1.19.1        1.19.2                Robert Yang
libsdl2               2.0.5         2.0.7                 Robert Yang
base-passwd           3.5.29        3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72          9.77                  Ross Burton
lame                  3.99.5        3.100                 Tanu Kaskinen
pulseaudio            10.0          11.1                  Tanu Kaskinen
libva-utils           1.8.3         2.0.0                 Wei Tee Ng
libva                 1.8.3         2.0.0                 Wei Tee Ng

Upgradable count: 187
Upgradable total count: 190

The based commit is:

commit 73c6f85457361cd82d44838946aa81ba9bd1662a
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Fri Nov 3 16:16:10 2017 +1300

    lib/oe/sstatesig: fix wildcard matching wrong task signature files
    
    With a '*' as a wildcard for the signature here we can also match a
    portion of the task name with the result that we may match a sigdata
    file for the wrong task. Luckily the signature is always the same
    length - 32 characters - so we can simply use 32 '?' characters instead.
    (A regex would have been another alternative, but the wildcard should be
    effective and I felt like a regex would complicate the code more than
    this solution).
    
    Fixes [YOCTO #11763].
    
    Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


