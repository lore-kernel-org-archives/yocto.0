Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFF61E01069; Sun, 24 Jun 2018 21:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4399E00DE2
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2018 21:35:46 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 8B5F2877F4B6
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2018 00:35:44 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 25 Jun 2018 04:35:42 -0000
Message-ID: <20180625043542.9865.4981@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 25 Jun 2018 04:35:47 -0000
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
usbutils              009              010                   Alexander Kanavin
webkitgtk             2.20.2           2.20.3                Alexander Kanavin
gdbm                  1.14.1           1.15                  Alexander Kanavin
vala                  0.40.4           0.40.7                Alexander Kanavin
ffmpeg                4.0              4.0.1                 Alexander Kanavin
icu                   61.1             62.1                  Alexander Kanavin
btrfs-tools           4.16.1           4.17                  Alexander Kanavin
procps                3.3.14           3.3.15                Alexander Kanavin
psmisc                23.0             23.1                  Alexander Kanavin
sysprof               3.26.1           3.28.1                Alexander Kanavin    Waiting for resolution of h...
systemtap-uprobes     3.2              3.3                   Alexander Kanavin
systemtap             3.2              3.3                   Alexander Kanavin
cantarell-fonts       0.0.24           0.0.25                Alexander Kanavin
epiphany              3.28.1.1         3.28.3.1              Alexander Kanavin
ca-certificates       20170717         20180409              Alexander Kanavin
busybox               1.27.2           1.28.4                Andrej Valek
apt                   1.2.24           1.6.1                 Aníbal Limón
apt-native            1.2.24           1.6.1                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
xf86-video-fbdev      0.4.4            0.5.0                 Armin Kuster
nss                   3.36.1           3.37.1                Armin Kuster
bind                  9.10.6           9.13.1                Armin Kuster
xf86-input-mouse      1.9.2            1.9.3                 Armin Kuster
xserver-xorg          1.19.6           1.20.0                Armin Kuster
xf86-input-synaptics  1.9.0            1.9.1                 Armin Kuster
linux-libc-headers    4.15.7           4.17.2                Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
connman               1.35             1.36                  Changhyeok Bae
iproute2              4.16.0           4.17.0                Changhyeok Bae
ethtool               4.16             4.17                  Changhyeok Bae
acl                   2.2.52           2.2.53                Chen Qi
attr                  2.4.47           2.4.48                Chen Qi
systemd-boot          237              239                   Chen Qi
cups                  2.2.6            2.2.8                 Chen Qi
systemd               237              239                   Chen Qi
bison                 3.0.4            3.0.5                 Chen Qi
sed                   4.2.2            4.5                   Chen Qi
sysstat               11.7.3           11.7.4                Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
lzop                  1.03             1.04                  Denys Dmytriyenko
xz                    5.2.3            5.2.4                 Denys Dmytriyenko
mtd-utils             2.0.1+X          2.0.2                 Denys Dmytriyenko
python3-dbus          1.2.6            1.2.8                 Derek Straka
python-numpy          1.14.2           1.14.5                Derek Straka
python3-pygobject     3.28.1           3.28.3                Derek Straka
python3               3.5.5            3.6.5                 Derek Straka
python                2.7.14           2.7.15                Derek Straka
python3-git           2.1.8            2.1.10                Derek Straka
python3-pycairo       1.15.6           1.17.0                Derek Straka
python3-pip           9.0.3            10.0.1                Derek Straka
python-setuptools     39.0.1           39.2.0                Derek Straka
python3-numpy         1.14.2           1.14.5                Derek Straka
python3-setuptools    39.0.1           39.2.0                Derek Straka
python3-native        3.5.5            3.6.5                 Derek Straka
python-native         2.7.14           2.7.15                Derek Straka
acpica                20180508         20180531              Fathi Boudra
gnupg                 2.2.5            2.2.8                 Hongxu Jia
dhcp                  4.3.6            4.4.1                 Hongxu Jia
gpgme                 1.10.0           1.11.1                Hongxu Jia
man-db                2.8.2            2.8.3                 Hongxu Jia
elfutils              0.170            0.172                 Hongxu Jia
ncurses               6.1              6.1+20180602          Hongxu Jia
man-pages             4.14             4.16                  Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
libgcrypt             1.8.2            1.8.3                 Hongxu Jia
llvm                  6.0              6.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.10.2           1.10.3                Khem Raj
go                    1.10.2           1.10.3                Khem Raj
binutils              2.30             2.31                  Khem Raj
pango                 1.40.14          1.42.1                Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.11.0           1.11.1                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.28.0                Maxin B. John
matchbox-terminal     0.1              0.2                   Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
ofono                 1.23             1.24                  Maxin B. John
ifupdown              0.8.16           0.8.33                Maxin B. John
glib-networking       2.54.1           2.56.1                Maxin B. John
libunistring          0.9.9            0.9.10                Maxin B. John
harfbuzz              1.7.5            1.8.1                 Maxin B. John
vulkan                1.0.65.2         1.1.73.0              Maxin B. John
libepoxy              1.5.0            1.5.2                 Maxin B. John
gdk-pixbuf            2.36.11          2.36.12               Maxin B. John
librsvg               2.40.20          2.42.5                Maxin B. John        Versions from 2.41.0 requir...
pkgconf               1.4.2            1.5.1                 Maxin B. John
sqlite3               3.23.1           3.24.0                Maxin B. John
fontconfig            2.12.6           2.13.0                Maxin B. John
freetype              2.9              2.9.1                 Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
perl-native           5.24.1           5.28.0                Maxin B. John
binutils-cross-ca...  2.30             2.31                  No maintainer
binutils-cross-i586   2.30             2.31                  No maintainer
binutils-crosssdk...  2.30             2.31                  No maintainer
systemtap-native      3.2              3.3                   No maintainer
libgloss              3.0.0            3.0.0.20180226        No maintainer
newlib                3.0.0            3.0.0.20180226        No maintainer
gcc-source-7.3.0      7.3.0            8.1.0                 No maintainer
go-cross-canadian...  1.10.2           1.10.3                No maintainer
go-cross-i586         1.10.2           1.10.3                No maintainer
go-crosssdk-x86_64    1.10.2           1.10.3                No maintainer
go-runtime            1.10.2           1.10.3                No maintainer
cmake                 3.10.3           3.11.4                Otavio Salvador
cmake-native          3.10.3           3.11.4                Otavio Salvador
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
build-appliance-i...  15.0.0           19.0.0                Richard Purdie
lttng-tools           2.9.5            2.10.4                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.2                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.22             4.23                  Robert Yang
automake              1.15.1           1.16.1                Robert Yang
e2fsprogs             1.43.8           1.44.2                Robert Yang
ccache                3.3.5            3.4.2                 Robert Yang
git                   2.16.1           2.18.0                Robert Yang
base-passwd           3.5.29           3.5.45                Ross Burton          Version 3.5.38 requires cde...
tcf-agent             1.4.0+gitX       1.7.0                 Ross Burton
bc                    1.06             1.07.1                Ross Burton
lsbinitscripts        9.79             10.00.0               Ross Burton
sysvinit              2.88dsf          2.90                  Ross Burton
pulseaudio            11.1             12.0                  Tanu Kaskinen
gnu-efi               3.0.6            3.0.8                 Yi Zhao
libbsd                0.8.7            0.9.1                 Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
debianutils           4.8.4            4.8.6                 Yi Zhao
file                  5.32             5.33                  Yi Zhao

Upgradable count: 125
Upgradable total count: 129

The based commit is:

commit 85981cbbf0ce48a6d82bc39248afa9540ca858d8
Author: Khem Raj <raj.khem@gmail.com>
Date:   Wed Jun 20 18:26:07 2018 -0700

    gcc-8: Enable fp arch extention when fpu is available
    
    This is especially needed when defaulting to hard-float ABI
    Fixes errors e.g.
    cc1: error: -mfloat-abi=hard: selected processor lacks an FPU
    
    Fixes [YOCTO #12795]
    
    Signed-off-by: Khem Raj <raj.khem@gmail.com>
    Cc: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


