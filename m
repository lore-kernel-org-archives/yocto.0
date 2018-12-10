Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EE7DE00C4D; Sun,  9 Dec 2018 21:38:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61241E0076C
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2018 21:38:39 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 7FEA4847FC75
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 00:38:37 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 10 Dec 2018 05:38:37 -0000
Message-ID: <20181210053837.5046.90573@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Dec 2018 05:38:41 -0000
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
ffmpeg                4.0.2            4.1                   Alexander Kanavin
meson                 0.47.2           0.49.0                Alexander Kanavin
lighttpd              1.4.51           1.4.52                Alexander Kanavin
gobject-introspec...  1.58.1           1.58.2                Alexander Kanavin
btrfs-tools           4.19             4.19.1                Alexander Kanavin
busybox               1.29.2           1.29.3                Andrej Valek
apt                   1.2.24           1.4.8                 Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.2                Aníbal Limón
libsoup-2.4           2.62.3           2.64.2                Anuj Mittal
puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mittal
libpcap               1.8.1            1.9.0                 Anuj Mittal
base-passwd           3.5.29           3.5.45                Anuj Mittal          Version 3.5.38 requires cde...
ifupdown              0.8.16           0.8.33                Anuj Mittal
glib-2.0              2.58.0           2.58.1                Anuj Mittal
glib-networking       2.54.1           2.58.0                Anuj Mittal
pixman                0.34.0           0.36.0                Anuj Mittal
harfbuzz              2.1.3            2.2.0                 Anuj Mittal
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
vte                   0.52.2           0.54.2                Anuj Mittal
gsettings-desktop...  3.28.0           3.28.1                Anuj Mittal
libsolv               0.7.1            0.7.2                 Anuj Mittal
eudev                 3.2.5            3.2.7                 Anuj Mittal
mtools                4.0.19           4.0.23                Anuj Mittal
atk                   2.28.1           2.30.0                Anuj Mittal
librsvg               2.40.20          2.44.9                Anuj Mittal          Versions from 2.41.0 requir...
cairo                 1.14.12          1.16.2                Anuj Mittal
i2c-tools             4.0              4.1                   Anuj Mittal
libpng                1.6.35           1.6.36                Anuj Mittal
at-spi2-atk           2.26.2           2.30.0                Anuj Mittal
mmc-utils             0.1              0.1-new-commits-a...  Anuj Mittal
libjpeg-turbo         2.0.0            2.0.1                 Anuj Mittal
netbase               5.4              5.5                   Armin Kuster
openssh               7.9p1+git        7.9.                  Armin Kuster
gnutls                3.6.4            3.6.5                 Armin Kuster
nss                   3.40             3.40.1                Armin Kuster
bind                  9.11.5           9.13.4                Armin Kuster         9.11 is LTS 2021
nettle                3.4              3.4.1                 Armin Kuster
linux-libc-headers    4.18             4.19.8                Bruce Ashfield
linux-yocto           4.18.14+gitX     4.19.5                Bruce Ashfield
linux-yocto-rt        4.18.14+gitX     4.19.5                Bruce Ashfield
linux-yocto-tiny      4.18.14+gitX     4.19.5                Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
wpa-supplicant        2.6              2.7                   Changhyeok Bae
iptables              1.6.2            1.8.2                 Changhyeok Bae
dbus-test             1.12.10          1.12.12               Chen Qi
acl                   2.2.52           2.2.53                Chen Qi
attr                  2.4.47           2.4.48                Chen Qi
systemd-conf          1.0              239                   Chen Qi
dbus                  1.12.10          1.12.12               Chen Qi
cups                  2.2.9            2.2.10                Chen Qi
util-linux            2.32.1           2.33                  Chen Qi
bison                 3.0.4            3.2.2                 Chen Qi
sed                   4.2.2            4.5                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
lzop                  1.03             1.04                  Denys Dmytriyenko
lz4                   1.8.2            1.8.3                 Denys Dmytriyenko
hdparm                9.56             9.58                  Denys Dmytriyenko
wayland-protocols     1.16             1.17                  Denys Dmytriyenko
python-numpy          1.14.5           1.15.4                Derek Straka
python3-pygobject     3.28.3           3.30.4                Derek Straka
python3               3.5.6            3.7.1                 Derek Straka
python3-pbr           4.2.0            5.1.1                 Derek Straka
python3-setuptools    40.0.0           40.6.2                Derek Straka
python3-pip           18.0             18.1                  Derek Straka
python-setuptools     40.0.0           40.6.2                Derek Straka
python3-numpy         1.14.5           1.15.4                Derek Straka
python3-six           1.11.0           1.12.0                Derek Straka
python3-gitdb         2.0.4            2.0.5                 Derek Straka
python3-pycairo       1.15.6           1.18.0                Derek Straka
python3-native        3.5.6            3.7.1                 Derek Straka
acpica                20180508         20181031              Fathi Boudra
libgpg-error          1.32             1.33                  Hongxu Jia
help2man-native       1.47.6           1.47.8                Hongxu Jia
go                    1.11.1           1.11.2                Khem Raj
binutils              2.31             2.31.1                Khem Raj
go-native             1.11.1           1.11.2                Khem Raj
prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
db                    5.3.28           5.3.28+dfsg1          Mark Hatle
binutils-cross-ca...  2.31             2.31.1                No maintainer
binutils-cross-i586   2.31             2.31.1                No maintainer
binutils-crosssdk...  2.31             2.31.1                No maintainer
go-crosssdk-x86_64    1.11.1           1.11.2                No maintainer
go-cross-canadian...  1.11.1           1.11.2                No maintainer
go-cross-i586         1.11.1           1.11.2                No maintainer
libxcrypt             4.1.1            4.4.1                 No maintainer
go-runtime            1.11.1           1.11.2                No maintainer
gcc-source-7.3.0      7.3.0            8.2.0                 No maintainer
nativesdk-meson       0.47.2           0.49.0                No maintainer
mesa                  18.1.9           18.3.0                Otavio Salvador
mesa-gl               18.1.9           18.3.0                Otavio Salvador
cmake                 3.12.2           3.13.1                Pascal Bach
cmake-native          3.12.2           3.13.1                Pascal Bach
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
build-appliance-i...  15.0.0           20.0.0                Richard Purdie
gnu-config            20180713+gitX    20180713-new-comm...  Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
e2fsprogs             1.44.3           1.44.4                Robert Yang
ccache                3.4.2            3.5                   Robert Yang
git                   2.18.1           2.20.0                Robert Yang
mklibs-native         0.1.43           0.1.44                Robert Yang
piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burton
acpid                 2.0.30           2.0.31                Ross Burton
vulkan-demos          git              git-new-commits-a...  Ross Burton
perl                  5.24.4           5.28.1                Ross Burton
gtk-icon-utils-na...  3.22.30          3.24.1                Ross Burton
ofono                 1.25             1.26                  Ross Burton
libical               2.0.0            3.0.4                 Ross Burton
lsbinitscripts        9.79             10.01                 Ross Burton
sysvinit              2.88dsf          2.93                  Ross Burton
fontconfig            2.12.6           2.13.1                Ross Burton
gdk-pixbuf            2.36.11          2.38.0                Ross Burton
adwaita-icon-theme    3.28.0           3.30.1                Ross Burton
pkgconf               1.5.3            1.5.4                 Ross Burton
perl-native           5.24.4           5.28.1                Ross Burton
alsa-tools            1.1.6            1.1.7                 Tanu Kaskinen
alsa-plugins          1.1.6            1.1.7                 Tanu Kaskinen
alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaskinen
alsa-lib              1.1.6            1.1.7                 Tanu Kaskinen
alsa-utils            1.1.6            1.1.7                 Tanu Kaskinen
sbc                   1.3              1.4                   Tanu Kaskinen
liberror-perl         0.17026          0.17027               Tim Orling
gnu-efi               3.0.8            3.0.9                 Yi Zhao
libcap                2.25             2.26                  Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
logrotate             3.14.0           3.15.0                Yi Zhao
file                  5.34             5.35                  Yi Zhao
wget                  1.19.5           1.20                  Yi Zhao
json-glib             1.4.2            1.4.4                 Yi Zhao
libsdl2               2.0.8            2.0.9                 Yi Zhao

Upgradable count: 128
Upgradable total count: 132

The based commit is:

commit 8bc0d2f2197430723f8b2d0785169e48c883eedb
Author: Khem Raj <raj.khem@gmail.com>
Date:   Sat Dec 8 12:56:02 2018 -0800

    mdadm: Drop redundant patches and fix build with clang
    
    Several patches were being applied unnecessarily, the purpose they
    served at one point has either been fixed differently, or accepted
    upstream.
    
    Add a new patch to make clang's diagnostics happy
    
    Signed-off-by: Khem Raj <raj.khem@gmail.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


