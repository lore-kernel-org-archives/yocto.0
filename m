Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EDBAE009B2; Sun,  4 Nov 2018 21:36:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D8BCE008D7
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 21:36:35 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 4DDA58753366
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 00:36:33 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 05 Nov 2018 05:36:33 -0000
Message-ID: <20181105053633.24527.40788@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Nov 2018 05:36:36 -0000
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
libgloss              3.0.0            3.0.0.20180831        Alejandro Hernandez
newlib                3.0.0            3.0.0.20180831        Alejandro Hernandez
dnf                   2.7.5            4.0.4                 Alexander Kanavin
libdnf                0.11.1           0.22.0                Alexander Kanavin
librepo               1.8.1            1.9.2                 Alexander Kanavin
ffmpeg                4.0.2            4.0.3                 Alexander Kanavin
btrfs-tools           4.17.1           4.19                  Alexander Kanavin
dmidecode             3.1              3.2                   Alexander Kanavin
sysprof               3.30.0           3.30.2                Alexander Kanavin    Waiting for resolution of h...
epiphany              3.28.3.1         3.30.2                Alexander Kanavin
webkitgtk             2.20.5           2.22.3                Alexander Kanavin
gdbm                  1.18             1.18.1                Alexander Kanavin
icu                   62.1             63.1                  Alexander Kanavin
vala                  0.42.0           0.42.2                Alexander Kanavin
meson                 0.47.2           0.48.1                Alexander Kanavin
lighttpd              1.4.50           1.4.51                Alexander Kanavin
psmisc                23.1             23.2                  Alexander Kanavin
busybox               1.29.2           1.29.3                Andrej Valek
apt                   1.2.24           1.7.0                 Aníbal Limón
dpkg                  1.18.24          1.19.2                Aníbal Limón
apt-native            1.2.24           1.7.0                 Aníbal Limón
libva                 2.2.0            2.3.0                 Anuj Mittal
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
gstreamer1.0-omx      1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-plug...  1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-rtsp...  1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-plug...  1.14.2           1.14.4                Anuj Mittal
gst-validate          1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-plug...  1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-plug...  1.14.2           1.14.4                Anuj Mittal
gstreamer1.0          1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-vaapi    1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-python   1.14.2           1.14.4                Anuj Mittal
gstreamer1.0-libav    1.14.2           1.14.4                Anuj Mittal
tzcode-native         2018f            2018g                 Armin Kuster
bind                  9.11.4           9.13.3                Armin Kuster
openssh               7.8p1+git        7.9.                  Armin Kuster
libsm                 1.2.2            1.2.3                 Armin Kuster
libx11-diet           1.6.6            1.6.7                 Armin Kuster
libx11                1.6.6            1.6.7                 Armin Kuster
libxcb                1.13             1.13.1                Armin Kuster
tzdata                2018f            2018g                 Armin Kuster
xkeyboard-config      2.24             2.25                  Armin Kuster
xserver-xorg          1.20.1           1.20.3                Armin Kuster
kexec-tools           2.0.17           2.0.18                Armin Kuster
curl                  7.61.0           7.62.0                Armin Kuster
gnutls                3.6.3            3.6.4                 Armin Kuster
nspr                  4.19             4.20                  Armin Kuster
nss                   3.38             3.40                  Armin Kuster
libpcre2              10.31            10.32                 Armin Kuster
xf86-input-libinput   0.28.0           0.28.1                Armin Kuster
linux-libc-headers    4.18             4.19.1                Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
connman               1.35             1.36                  Changhyeok Bae
iproute2              4.18.0           4.19.0                Changhyeok Bae
ethtool               4.17             4.19                  Changhyeok Bae
iptables              1.6.2            1.8.1                 Changhyeok Bae
flex                  2.6.0            2.6.4                 Chen Qi
acl                   2.2.52           2.2.53                Chen Qi
attr                  2.4.47           2.4.48                Chen Qi
systemd-conf          1.0              239                   Chen Qi
at                    3.1.20           3.1.23                Chen Qi
sed                   4.2.2            4.5                   Chen Qi
sudo                  1.8.23           1.8.25p1              Chen Qi
sysstat               11.7.4           12.1.1                Chen Qi
bison                 3.0.4            3.2                   Chen Qi
lzop                  1.03             1.04                  Denys Dmytriyenko
lz4                   1.8.2            1.8.3                 Denys Dmytriyenko
hdparm                9.56             9.58                  Denys Dmytriyenko
python3-gitdb         2.0.4            2.0.5                 Derek Straka
python3-numpy         1.14.5           1.15.4                Derek Straka
python3-pycairo       1.15.6           1.18.0                Derek Straka
python-numpy          1.14.5           1.15.4                Derek Straka
python3-pygobject     3.28.3           3.30.1                Derek Straka
python3               3.5.6            3.7.1                 Derek Straka
python3-pbr           4.2.0            5.1.0                 Derek Straka
python3-setuptools    40.0.0           40.5.0                Derek Straka
python3-pip           18.0             18.1                  Derek Straka
python-setuptools     40.0.0           40.5.0                Derek Straka
python3-native        3.5.6            3.7.1                 Derek Straka
acpica                20180508         20181031              Fathi Boudra
gnupg                 2.2.9            2.2.10                Hongxu Jia
elfutils              0.173            0.174                 Hongxu Jia
ncurses               6.1+20180630     6.1+20181013          Hongxu Jia
apr                   1.6.3            1.6.5                 Hongxu Jia
man-db                2.8.3            2.8.4                 Hongxu Jia
gpgme                 1.11.1           1.12.0                Hongxu Jia
libgcrypt             1.8.3            1.8.4                 Hongxu Jia
help2man-native       1.47.6           1.47.8                Hongxu Jia
rpcbind               0.2.4            1.2.5                 Hongxu Jia
binutils              2.31             2.31.1                Khem Raj
go-native             1.11.1           1.11.2                Khem Raj
go                    1.11.1           1.11.2                Khem Raj
u-boot-fw-utils       2018.07          2018.09               Marek Vasut
u-boot-mkimage        2018.07          2018.09               Marek Vasut
u-boot                2018.07          2018.09               Marek Vasut
prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
db                    5.3.28           5.3.28+dfsg1          Mark Hatle
rpm                   4.14.2           4.14.2.1              Mark Hatle
gcc-source-7.3.0      7.3.0            8.2.0                 No maintainer
go-cross-canadian...  1.11.1           1.11.2                No maintainer
nativesdk-meson       0.47.2           0.48.1                No maintainer
go-runtime            1.11.1           1.11.2                No maintainer
binutils-cross-ca...  2.31             2.31.1                No maintainer
binutils-cross-i586   2.31             2.31.1                No maintainer
go-crosssdk-x86_64    1.11.1           1.11.2                No maintainer
binutils-crosssdk...  2.31             2.31.1                No maintainer
go-cross-i586         1.11.1           1.11.2                No maintainer
libxcrypt             4.1.1            4.2.3                 No maintainer
mesa                  18.1.9           18.2.4                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
libdrm                2.4.94           2.4.96                Otavio Salvador
mesa-gl               18.1.9           18.2.4                Otavio Salvador
cmake                 3.12.2           3.12.4                Pascal Bach
cmake-native          3.12.2           3.12.4                Pascal Bach
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
build-appliance-i...  15.0.0           19.0.1                Richard Purdie
lttng-modules         2.10.7           2.10.8                Richard Purdie
lttng-tools           2.9.5            2.10.5                Richard Purdie
lttng-ust             2.10.1           2.10.2                Richard Purdie
subversion            1.10.0           1.11.0                Richard Purdie
gnu-config            20180713+gitX    20180713-new-comm...  Robert Yang
nfs-utils             2.3.1            2.3.3                 Robert Yang
e2fsprogs             1.44.3           1.44.4                Robert Yang
git                   2.18.1           2.19.1                Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.24             4.25                  Robert Yang
ccache                3.4.2            3.5                   Robert Yang
mklibs-native         0.1.43           0.1.44                Robert Yang
piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burton
libinput              1.11.3           1.12.2                Ross Burton
ruby                  2.5.1            2.5.3                 Ross Burton
libpcap               1.8.1            1.9.0                 Ross Burton
gsettings-desktop...  3.28.0           3.28.1                Ross Burton
base-passwd           3.5.29           3.5.45                Ross Burton          Version 3.5.38 requires cde...
glib-2.0              2.58.0           2.58.1                Ross Burton
glib-networking       2.54.1           2.58.0                Ross Burton
libsoup-2.4           2.62.3           2.64.2                Ross Burton
sysvinit              2.88dsf          2.91                  Ross Burton
gtk-icon-utils-na...  3.22.30          3.24.1                Ross Burton
mtools                4.0.18           4.0.19                Ross Burton
at-spi2-atk           2.26.2           2.30.0                Ross Burton
vulkan-demos          git              git-new-commits-a...  Ross Burton
perl                  5.24.4           5.28.0                Ross Burton
puzzles               0.0+gitX         0.0-new-commits-a...  Ross Burton
at-spi2-core          2.28.0           2.30.0                Ross Burton
atk                   2.28.1           2.30.0                Ross Burton
ifupdown              0.8.16           0.8.33                Ross Burton
libevdev              1.5.9            1.6.0                 Ross Burton
ofono                 1.24             1.26                  Ross Burton
sqlite3               3.23.1           3.25.2                Ross Burton
vte                   0.52.2           0.54.2                Ross Burton
libepoxy              1.5.2            1.5.3                 Ross Burton
lsbinitscripts        9.79             10.01                 Ross Burton
libsolv               0.6.35           0.7.1                 Ross Burton
mdadm                 4.0              4.1                   Ross Burton
eudev                 3.2.5            3.2.7                 Ross Burton
adwaita-icon-theme    3.28.0           3.30.0                Ross Burton
gdk-pixbuf            2.36.11          2.38.0                Ross Burton
harfbuzz              1.8.8            2.1.0                 Ross Burton
gtk+3                 3.22.30          3.24.1                Ross Burton
librsvg               2.40.20          2.44.8                Ross Burton          Versions from 2.41.0 requir...
cairo                 1.14.12          1.16.2                Ross Burton
pkgconf               1.5.3            1.5.4                 Ross Burton
fontconfig            2.12.6           2.13.1                Ross Burton
libical               2.0.0            3.0.4                 Ross Burton
perl-native           5.24.4           5.28.0                Ross Burton
alsa-lib              1.1.6            1.1.7                 Tanu Kaskinen
alsa-tools            1.1.6            1.1.7                 Tanu Kaskinen
alsa-utils            1.1.6            1.1.7                 Tanu Kaskinen
sbc                   1.3              1.4                   Tanu Kaskinen
alsa-plugins          1.1.6            1.1.7                 Tanu Kaskinen
alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaskinen
liberror-perl         0.17026          0.17027               Tim Orling
gnu-efi               3.0.8            3.0.9                 Yi Zhao
file                  5.34             5.35                  Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
ltp                   20180515         20180926              Yi Zhao
json-glib             1.4.2            1.4.4                 Yi Zhao
libsdl2               2.0.8            2.0.9                 Yi Zhao

Upgradable count: 176
Upgradable total count: 180

The based commit is:

commit 14b5854d50c38e94fc0d1ce6af36698fc69f52b4
Author: Ross Burton <ross.burton@intel.com>
Date:   Thu Nov 1 11:15:58 2018 +0000

    xserver-xorg: fix CVE-2018-14665
    
    Incorrect command-line parameter validation in the Xorg X server can lead to
    privilege elevation and/or arbitrary files overwrite, when the X server is
    running with elevated privileges (ie when Xorg is installed with the setuid bit
    set and started by a non-root user). The -modulepath argument can be used to
    specify an insecure path to modules that are going to be loaded in the X server,
    allowing to execute unprivileged code in the privileged process. The -logfile
    argument can be used to overwrite arbitrary files in the file system, due to
    incorrect checks in the parsing of the option.
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


