Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2FC5E00C7B; Tue, 17 Oct 2017 12:08:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D14BE00C65
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 12:08:57 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 49D26849DE7F
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 15:08:56 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 19:08:56 -0000
Message-ID: <20171017190856.13931.32882@packages.yoctoproject.org>
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
X-List-Received-Date: Tue, 17 Oct 2017 19:08:59 -0000
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
python3               3.5.3          3.6.3                 Alejandro Hernandez
python                2.7.13         2.7.14                Alejandro Hernandez
python3-native        3.5.3          3.6.3                 Alejandro Hernandez
python-native         2.7.13         2.7.14                Alejandro Hernandez
sysprof               3.24.1         3.26.1                Alexander Kanavin
gtk-doc               1.25           1.26                  Alexander Kanavin
webkitgtk             2.16.6         2.18.0                Alexander Kanavin
bjam-native           1.64.0         1.65.1                Alexander Kanavin
gnome-desktop3        3.24.2         3.26.1                Alexander Kanavin
dnf                   2.6.3          2.7.4                 Alexander Kanavin
expect                5.45           5.45.3                Alexander Kanavin
libdnf                0.9.3          0.11.1                Alexander Kanavin
librepo               1.7.20+gitX    1.8.1+gitAUTOINC+...  Alexander Kanavin
ffmpeg                3.3.3          3.4                   Alexander Kanavin
dtc                   1.4.4          7.4                   Alexander Kanavin
btrfs-tools           4.12           4.13.3                Alexander Kanavin
oprofile              1.1.0          1.2.0                 Alexander Kanavin
mkelfimage            4.0+gitX       4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
epiphany              3.24.3         3.26.1                Alexander Kanavin
mpg123                1.25.6         1.25.7                Alexander Kanavin
boost                 1.64.0         1.65.1                Alexander Kanavin
libnl                 3.2.29         3.4.0                 Alexander Kanavin
libxslt               1.1.29         1.1.31                Alexander Kanavin
psmisc                22.21          23.1                  Alexander Kanavin
vala                  0.36.4         0.38.2                Alexander Kanavin
gobject-introspec...  1.52.1         1.54.1                Alexander Kanavin
iso-codes             3.75           3.76                  Alexander Kanavin
apt                   1.2.24         1.5                   Aníbal Limón
dpkg                  1.18.24        1.19.0.1              Aníbal Limón
apt-native            1.2.24         1.5                   Aníbal Limón
bind                  9.10.5-P3      9.11.2                Armin Kuster
openssh               7.5p1          7.6p1                 Armin Kuster
libxfont2             2.0.1          2.0.2                 Armin Kuster
libxkbcommon          0.7.1          0.7.2                 Armin Kuster
libxres               1.0.7          1.2.0                 Armin Kuster
xkeyboard-config      2.21           2.22                  Armin Kuster
xserver-xorg          1.19.3         1.19.5                Armin Kuster
kexec-tools           2.0.14         2.0.15                Armin Kuster
curl                  7.54.1         7.56.0                Armin Kuster
busybox               1.24.1         1.27.2                Armin Kuster
gnutls                3.5.13         3.6.0                 Armin Kuster
xf86-input-libinput   0.25.1         0.26.0                Armin Kuster
nspr                  4.16           4.17                  Armin Kuster
nss                   3.31.1         3.33                  Armin Kuster
libpcre2              10.23          10.30                 Armin Kuster
linux-yocto-dev       4.12-rc++gitX  4.13                  Bruce Ashfield
linux-libc-headers    4.12           4.13.7                Bruce Ashfield
libunwind             1.2            1.2.1                 Bruce Ashfield
connman               1.34           1.35                  Changhyeok Bae
iproute2              4.11.0         4.13.0                Changhyeok Bae
systemd-boot          234            235                   Chen Qi
dbus-test             1.10.20        1.10.24               Chen Qi
dbus                  1.10.20        1.10.24               Chen Qi
systemd-bootchart     231+gitX       233+gitAUTOINC+fe...  Chen Qi
systemd               234            235                   Chen Qi
util-linux            2.30           2.30.2                Chen Qi
flex                  2.6.0          2.6.4                 Chen Qi
cups                  2.2.4          2.2.5                 Chen Qi
sed                   4.2.2          4.4                   Chen Qi
sudo                  1.8.20p2       1.8.21p2              Chen Qi
sysstat               11.5.7         11.6.0                Chen Qi
coreutils             8.27           8.28                  Chen Qi
build-appliance-i...  15.0.0         17.0.2                Cristian Iorga
avahi                 0.6.32         0.7                   Dengke Du
expat                 2.2.3          2.2.4                 Dengke Du
avahi-ui              0.6.32         0.7                   Dengke Du
ltp                   20170516       20170929              Dengke Du
json-glib             1.2.8          1.4.2                 Dengke Du
chkconfig             1.3.58         1.8                   Dengke Du            Version 1.5 requires selinux
wayland               1.13.0         1.14.0                Denys Dmytriyenko
weston                2.0.0          3.0.0                 Denys Dmytriyenko
lzop                  1.03           1.04                  Denys Dmytriyenko
mtd-utils             2.0.0          2.0.1                 Denys Dmytriyenko
lz4                   1.7.4          131                   Denys Dmytriyenko
wayland-protocols     1.10           1.11                  Denys Dmytriyenko
acpica                20170303       20170929              Fathi Boudra
gnupg                 2.2.0          2.2.1                 Hongxu Jia
libxml2               2.9.4          2.9.6                 Hongxu Jia
ncurses               6.0+20170715   6.0+20170902          Hongxu Jia
libgcrypt             1.8.0          1.8.1                 Hongxu Jia
bash                  4.4            4.4.12                Hongxu Jia
ghostscript           9.21           9.22                  Hongxu Jia
man-pages             4.11           4.13                  Hongxu Jia
help2man-native       1.47.4         1.47.5                Hongxu Jia
python3-git           2.1.5          2.1.7                 Jose Lamego
python3-numpy         1.13.1         1.13.3                Jose Lamego
python3-six           1.10.0         1.11.0                Jose Lamego
python-numpy          1.13.1         1.13.3                Jose Lamego
python3-pygobject     3.24.1         3.26.0                Jose Lamego
bc                    1.06           1.07.1                Jose Lamego
python3-setuptools    36.2.7         36.6.0                Jose Lamego
python-setuptools     36.2.7         36.6.0                Jose Lamego
pango                 1.40.6         1.40.12               Jussi Kukkonen
libinput              1.8.1          1.8.902               Jussi Kukkonen
libsoup-2.4           2.58.2         2.60.1                Jussi Kukkonen
gtk-icon-utils-na...  3.22.17        3.22.24               Jussi Kukkonen
gsettings-desktop...  3.22.0         3.24.1                Jussi Kukkonen
glib-2.0              2.52.3         2.54.1                Jussi Kukkonen
glib-networking       2.50.0         2.54.0                Jussi Kukkonen
assimp                4.0.0          4.0.1                 Jussi Kukkonen
at-spi2-atk           2.24.1         2.26.0                Jussi Kukkonen
at-spi2-core          2.24.1         2.26.0                Jussi Kukkonen
atk                   2.24.0         2.26.0                Jussi Kukkonen
libgudev              231            232                   Jussi Kukkonen
shared-mime-info      1.8            1.9                   Jussi Kukkonen
vte                   0.48.3         0.50.1                Jussi Kukkonen
vulkan                1.0.51.0       1.0.61.1              Jussi Kukkonen
adwaita-icon-theme    3.24.0         3.26.0                Jussi Kukkonen
xdg-utils             1.1.1          1.1.2                 Jussi Kukkonen
gdk-pixbuf            2.36.8         2.36.11               Jussi Kukkonen
gtk+3                 3.22.17        3.22.24               Jussi Kukkonen
hicolor-icon-theme    0.15           0.17                  Jussi Kukkonen
librsvg               2.40.18        2.40.19               Jussi Kukkonen
clutter-gtk-1.0       1.8.2          1.8.4                 Jussi Kukkonen
fontconfig            2.12.4         2.12.6                Jussi Kukkonen
freetype              2.8            387.5                 Jussi Kukkonen
glew                  2.0.0          2.1.0                 Jussi Kukkonen
ninja                 1.7.2          1.8.2                 Khem Raj
glibc                 2.26           2.26.9000             Khem Raj
mpfr                  3.1.5          3.1.6                 Khem Raj
binutils              2.29           2.29.1                Khem Raj
re2c                  0.16           1.0.1                 Khem Raj
libnsl2               1.0.5+gitX     1.1.0+gitAUTOINC+...  Khem Raj
gdb                   8.0            8.0.1                 Khem Raj
go-native             1.9            1.9.1                 Khem Raj
go                    1.9            1.9.1                 Khem Raj
cross-localedef-n...  2.26           2.26.9000             Khem Raj
glibc-initial         2.26           2.26.9000             Khem Raj
texinfo               6.3            6.5                   Leonardo Sandoval
ruby                  2.4.1          2.4.2                 Leonardo Sandoval
perl                  5.24.1         5.26.1                Leonardo Sandoval
qemu                  2.10.0         2.10.1                Leonardo Sandoval
libxml-namespaces...  1.12           1.12.9                Leonardo Sandoval
perl-native           5.24.1         5.26.1                Leonardo Sandoval
rpm                   4.13.90+gitX   4.14.0+gitAUTOINC...  Mark Hatle
libpfm4               4.6.0          4.8.0                 Matthew McClintock
gstreamer1.0          1.12.2         1.12.3                Maxin B. John
bluez5                5.46           5.47                  Maxin B. John
gstreamer1.0-omx      1.12.2         1.12.3                Maxin B. John
libpng                1.6.31         1.6.32                Maxin B. John
gstreamer1.0-rtsp...  1.12.2         1.12.3                Maxin B. John
gstreamer1.0-plug...  1.12.2         1.12.3                Maxin B. John
ofono                 1.20           1.21                  Maxin B. John
ifupdown              0.8.16         0.8.25                Maxin B. John
gstreamer1.0-libav    1.12.2         1.12.3                Maxin B. John
gstreamer1.0-plug...  1.12.2         1.12.3                Maxin B. John
gstreamer1.0-plug...  1.12.2         1.12.3                Maxin B. John
libproxy              0.4.14         0.4.15                Maxin B. John
gstreamer1.0-python   1.12.2         1.12.3                Maxin B. John
sqlite3               3.20.0         3.20.1                Maxin B. John
libsolv               0.6.28         0.6.29                Maxin B. John
quota                 4.03           4.04                  Maxin B. John
gstreamer1.0-plug...  1.12.2         1.12.3                Maxin B. John
harfbuzz              1.4.8          1.6.0                 Maxin B. John
gcc-source-6.3.0      6.3.0          7.2.0                 No maintainer
gdb-cross-canadia...  8.0            8.0.1                 No maintainer
gdb-cross-i586        8.0            8.0.1                 No maintainer
go-cross-canadian...  1.9            1.9.1                 No maintainer
go-cross-i586         1.9            1.9.1                 No maintainer
binutils-cross-ca...  2.29           2.29.1                No maintainer
binutils-cross-i586   2.29           2.29.1                No maintainer
binutils-crosssdk...  2.29           2.29.1                No maintainer
go-crosssdk-x86_64    1.9            1.9.1                 No maintainer
go-dep                0.3.0          0.3.1                 No maintainer
go-runtime            1.9            1.9.1                 No maintainer
pkgconf               1.3.7          1.3.10                No maintainer
mesa                  17.1.7         17.2.2                Otavio Salvador
cmake                 3.8.2          3.9.4                 Otavio Salvador
cmake-native          3.8.2          3.9.4                 Otavio Salvador
libdrm                2.4.83         2.4.84                Otavio Salvador
mesa-gl               17.1.7         17.2.2                Otavio Salvador
tcf-agent             1.4.0+gitX     1.5+gitAUTOINC+5e...  Randy Witt
lttng-modules         2.9.3          2.10.2                Richard Purdie
lttng-tools           2.9.5          2.10.1                Richard Purdie
lttng-ust             2.9.1          2.10.0                Richard Purdie
subversion            1.9.6          1.9.7                 Richard Purdie
e2fsprogs             1.43.5         1.43.7                Robert Yang
file                  5.31           5.32                  Robert Yang
git                   2.13.3         2.14.2                Robert Yang
liberror-perl         0.17024        0.17025               Robert Yang
strace                4.18           4.19                  Robert Yang
debianutils           4.8.1.1        4.8.2                 Robert Yang
autoconf-archive      2016.09.16     2017.09.28            Robert Yang
less                  487            520                   Robert Yang
logrotate             3.12.3         3.13.0                Robert Yang
libsdl2               2.0.5          2.0.6                 Robert Yang
base-passwd           3.5.29         3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72           9.77                  Ross Burton
lame                  3.99.5         3.100                 Tanu Kaskinen
pulseaudio            10.0           11.1                  Tanu Kaskinen
gstreamer1.0-vaapi    1.12.2         1.12.3                Wei Tee Ng
libva-utils           1.8.3          2.0.0                 Wei Tee Ng

Upgradable count: 189
Upgradable total count: 192

The based commit is:

commit 3b413a80578caacd9a7f405f3c51a3921d78a60d
Author: Randy MacLeod <Randy.MacLeod@windriver.com>
Date:   Mon Oct 16 11:00:44 2017 -0400

    README.qemu: qemuppc64 is not supported
    
    Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


