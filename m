Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1543CE00E40; Sun, 11 Mar 2018 21:42:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E91DE00843
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2018 21:42:19 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id EA70E871CBDE
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 00:42:17 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2018 04:42:17 -0000
Message-ID: <20180312044217.12032.7472@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 12 Mar 2018 04:42:20 -0000
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
vala                  0.38.8           0.40.0                Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
lighttpd              1.4.48           1.4.49                Alexander Kanavin
meson                 0.44.1           0.45.0                Alexander Kanavin
btrfs-tools           4.13.3           4.15.1                Alexander Kanavin
epiphany              3.26.6           3.28.0.1              Alexander Kanavin
apt                   1.2.24           1.4.8                 Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
xkeyboard-config      2.22             2.23.1                Armin Kuster
mkfontscale           1.1.2            1.1.3                 Armin Kuster
xeyes                 1.1.1            1.1.2                 Armin Kuster
xinit                 1.3.4            1.4.0                 Armin Kuster
xkbcomp               1.4.0            1.4.1                 Armin Kuster
bind                  9.10.6           9.12.0                Armin Kuster
xprop                 1.2.2            1.2.3                 Armin Kuster
xset                  1.2.3            1.2.4                 Armin Kuster
xwininfo              1.1.3            1.1.4                 Armin Kuster
xf86-video-vesa       2.3.4            2.4.0                 Armin Kuster
busybox               1.27.2           1.28.1                Armin Kuster
gnutls                3.6.1            3.6.2                 Armin Kuster
libxshmfence          1.2              1.3                   Armin Kuster
nspr                  4.18             4.19                  Armin Kuster
calibrateproto        0.0+gitX         0.0-new-commits-a...  Armin Kuster
nss                   3.34.1           3.35                  Armin Kuster
libpcre2              10.30            10.31                 Armin Kuster
xcb-proto             1.12             1.13                  Armin Kuster
util-macros           1.19.1           1.19.2                Armin Kuster
xserver-xorg          1.19.6           1.19.99.901           Armin Kuster
libxcb                1.12             1.13                  Armin Kuster
linux-libc-headers    4.15.7           4.15.9                Bruce Ashfield
kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
iproute2              4.14.1           4.15.0                Changhyeok Bae
ethtool               4.13             4.15                  Changhyeok Bae
base-passwd           3.5.29           3.5.44                Chang Rebecca Swe...  Version 3.5.38 requires cde...
systemd-boot          234              238                   Chen Qi
dbus                  1.12.2           1.12.6                Chen Qi
gawk                  4.2.0            4.2.1                 Chen Qi
systemd               234              238                   Chen Qi
util-linux            2.31             2.31.1                Chen Qi
dbus-test             1.12.2           1.12.6                Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.7.1           11.7.2                Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
dbus-glib             0.108            0.110                 Chen Qi
build-appliance-i...  15.0.0           18.0.1                Cristian Iorga
weston                3.0.0            3.0.91                Denys Dmytriyenko
wayland               1.14.0           1.14.91               Denys Dmytriyenko
lz4                   1.7.4            1.8.1.2               Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
hdparm                9.53             9.54                  Denys Dmytriyenko
lzip                  1.19             1.20                  Denys Dmytriyenko
python3               3.5.4            3.6.4                 Derek Straka
python-setuptools     38.5.1           38.5.2                Derek Straka
python3-pycairo       1.15.6           1.16.3                Derek Straka
python3-setuptools    38.5.1           38.5.2                Derek Straka
python3-native        3.5.4            3.6.4                 Derek Straka
acpica                20170303         20180209              Fathi Boudra
dhcp                  4.3.6            4.4.1                 Hongxu Jia
man-pages             4.14             4.15                  Hongxu Jia
man-db                2.8.1            2.8.2                 Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
bash                  4.4.12           4.4.18                Hongxu Jia
libxml2               2.9.7            2.9.8                 Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
ncurses               6.0+20171125     6.1                   Hongxu Jia
gnupg                 2.2.4            2.2.5                 Hongxu Jia
distcc                3.2              3.3                   Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
glibc                 2.27             2.27.9000             Khem Raj
llvm                  5.0              5.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
cross-localedef-n...  2.27             2.27.9000             Khem Raj
glibc-initial         2.27             2.27.9000             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
gdb                   8.0.1            8.1                   Khem Raj
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.9.4            1.10.2                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.1                Maxin B. John
ofono                 1.22             1.23                  Maxin B. John
ifupdown              0.8.16           0.8.31                Maxin B. John
glib-networking       2.54.1           2.56.0                Maxin B. John
vulkan                1.0.65.2         1.1.70.0              Maxin B. John
clutter-gst-3.0       3.0.24           3.0.26                Maxin B. John
libevdev              1.5.8            1.5.9                 Maxin B. John
harfbuzz              1.7.5            1.7.6                 Maxin B. John
bluez5                5.48             5.49                  Maxin B. John
librsvg               2.40.20          2.42.3                Maxin B. John         Versions from 2.41.0 requir...
fontconfig            2.12.6           2.13.0                Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
perl-native           5.24.1           5.26.1                Maxin B. John
gdb-cross-canadia...  8.0.1            8.1                   No maintainer
gdb-cross-i586        8.0.1            8.1                   No maintainer
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
tcf-agent             1.4.0+gitX       1.7.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.1                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.20             4.21                  Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
automake              1.15.1           1.16.1                Robert Yang
ccache                3.3.5            3.4.1                 Robert Yang
e2fsprogs             1.43.8           1.44.0                Robert Yang
git                   2.16.1           2.16.2                Robert Yang
libxml-sax-perl       0.99             1.00                  Tim Orling
dropbear              2017.75          2018.76               Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao               Version 1.5 requires selinux
less                  529              530                   Yi Zhao
logrotate             3.13.0           3.14.0                Yi Zhao
slang                 2.3.1a           2.3.2                 Yi Zhao
libcap-ng             0.7.8            0.7.9                 Yi Zhao

Upgradable count: 112
Upgradable total count: 115

The based commit is:

commit 0a1a1daac661046b0bf287b63267d58e0ab03e8e
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Mar 9 19:46:00 2018 -0800

    yocto-uninative: Upgrade to 1.8 version with glibc 2.27
    
    Now distros are starting to ship glibc 2.27 we need a uninatve version
    which contains glibc 2.27 which is in the 1.8 version.
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


