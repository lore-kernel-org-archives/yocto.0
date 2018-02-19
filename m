Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BF0E00EC5; Sun, 18 Feb 2018 21:35:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5580DE00E0B
	for <yocto@yoctoproject.org>; Sun, 18 Feb 2018 21:35:39 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 3511F802E187
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 00:35:38 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 19 Feb 2018 05:35:38 -0000
Message-ID: <20180219053538.5876.32402@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 19 Feb 2018 05:35:40 -0000
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
expect                5.45.3           5.45.4                Alexander Kanavin
ffmpeg                3.4.1            3.4.2                 Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
vala                  0.38.6           0.38.8                Alexander Kanavin
btrfs-tools           4.13.3           4.15.1                Alexander Kanavin
kernelshark           2.6.2            2.7                   Alexander Kanavin
trace-cmd             2.6.2            2.7                   Alexander Kanavin
epiphany              3.26.5.1         3.26.6                Alexander Kanavin
apt-native            1.2.24           1.4.8                 Aníbal Limón
apt                   1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
gst-validate          1.12.4           1.13.1                Anuj Mittal
libva-utils           2.0.0            2.1.0                 Anuj Mittal
libva                 2.0.0            2.1.0                 Anuj Mittal
xf86-video-vesa       2.3.4            2.4.0                 Armin Kuster
bind                  9.10.6           9.12.0                Armin Kuster
curl                  7.57.0           7.58.0                Armin Kuster
busybox               1.27.2           1.28.1                Armin Kuster
gnutls                3.6.1            3.6.2                 Armin Kuster
xkeyboard-config      2.22             2.23.1                Armin Kuster
nss                   3.34.1           3.35                  Armin Kuster
libpcre2              10.30            10.31                 Armin Kuster
kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
linux-libc-headers    4.15             4.15.4                Bruce Ashfield
linux-yocto           4.15+gitX        4.15.3                Bruce Ashfield
linux-yocto-rt        4.15+gitX        4.15.3                Bruce Ashfield
linux-yocto-tiny      4.15+gitX        4.15.3                Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
iproute2              4.14.1           4.15.0                Changhyeok Bae
ethtool               4.13             4.15                  Changhyeok Bae
iptables              1.6.1            1.6.2                 Changhyeok Bae
base-passwd           3.5.29           3.5.44                Chang Rebecca Swe...  Version 3.5.38 requires cde...
sudo                  1.8.21p2         1.8.22                Chen Qi
systemd-boot          234              237                   Chen Qi
dbus-glib             0.108            0.110                 Chen Qi
systemd               234              237                   Chen Qi
util-linux            2.31             2.31.1                Chen Qi
dbus-test             1.12.2           1.12.4                Chen Qi
dbus                  1.12.2           1.12.4                Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.7.1           11.7.2                Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
build-appliance-i...  15.0.0           18.0.1                Cristian Iorga
lz4                   1.7.4            1.8.1.2               Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
hdparm                9.53             9.54                  Denys Dmytriyenko
mtd-utils             2.0.0            2.0.1                 Denys Dmytriyenko
lzip                  1.19             1.20                  Denys Dmytriyenko
python3-dbus          1.2.4            1.2.6                 Derek Straka
python-numpy          1.13.1           1.14.0                Derek Straka
python3               3.5.4            3.6.4                 Derek Straka
python3-setuptools    38.4.0           38.5.1                Derek Straka
python3-numpy         1.13.3           1.14.0                Derek Straka
python-setuptools     38.4.0           38.5.1                Derek Straka
python3-pycairo       1.15.6           1.16.2                Derek Straka
python3-native        3.5.4            3.6.4                 Derek Straka
acpica                20170303         20180209              Fathi Boudra
patch                 2.7.5            2.7.6                 Hongxu Jia
dhcp                  4.3.6            4.4.0                 Hongxu Jia
bash                  4.4.12           4.4.18                Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
ncurses               6.0+20171125     6.1                   Hongxu Jia
man-pages             4.14             4.15                  Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
qemu                  2.11.0           2.11.1                Juro Bystricky
gdb                   8.0.1            8.1                   Khem Raj
glibc-initial         2.26             2.27.9000             Khem Raj
glibc                 2.26             2.27.9000             Khem Raj
libmpc                1.0.3            1.1.0                 Khem Raj
llvm                  5.0              5.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.9              1.10                  Khem Raj
go                    1.9              1.10                  Khem Raj
binutils              2.29.1           2.30                  Khem Raj
cross-localedef-n...  2.26             2.27.9000             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.9.4            1.10.0                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.1                Maxin B. John
gtk-icon-utils-na...  3.22.26          3.22.28               Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
ifupdown              0.8.16           0.8.29                Maxin B. John
vulkan                1.0.65.2         1.0.68.0              Maxin B. John
libsolv               0.6.31           0.6.32                Maxin B. John
libxml-sax-perl       0.99             1.00                  Maxin B. John
glib-2.0              2.54.2           2.54.3                Maxin B. John
gtk+3                 3.22.26          3.22.28               Maxin B. John
pkgconf               1.4.0            1.4.2                 Maxin B. John
libical               2.0.0            3.0.2                 Maxin B. John
perl-native           5.24.1           5.26.1                Maxin B. John
mmc-utils             0.1              0.1-new-commits-a...  Maxin B. John
librsvg               2.40.20          2.42.2                Maxin B. John
binutils-cross-ca...  2.29.1           2.30                  No maintainer
binutils-crosssdk...  2.29.1           2.30                  No maintainer
binutils-cross-i586   2.29.1           2.30                  No maintainer
gdb-cross-canadia...  8.0.1            8.1                   No maintainer
gdb-cross-i586        8.0.1            8.1                   No maintainer
go-cross-canadian...  1.9              1.10                  No maintainer
go-cross-i586         1.9              1.10                  No maintainer
go-crosssdk-x86_64    1.9              1.10                  No maintainer
go-runtime            1.9              1.10                  No maintainer
mesa                  17.3.3           17.3.4                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.10.1           3.10.2                Otavio Salvador
cmake-native          3.10.1           3.10.2                Otavio Salvador
go-dep                0.3.2            0.4.1                 Otavio Salvador
libdrm                2.4.89           2.4.90                Otavio Salvador
mesa-gl               17.3.3           17.3.4                Otavio Salvador
tcf-agent             1.4.0+gitX       1.7.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
git                   2.15.0           2.16.2                Robert Yang
nfs-utils             2.1.1            2.3.1                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.20             4.21                  Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
ccache                3.3.5            3.4.1                 Robert Yang
e2fsprogs             1.43.8           1.43.9                Robert Yang
time                  1.7              1.8                   Robert Yang
chkconfig             1.3.58           1.8                   Yi Zhao               Version 1.5 requires selinux
less                  529              530                   Yi Zhao
libcap-ng             0.7.8            0.7.9                 Yi Zhao

Upgradable count: 122
Upgradable total count: 124

The based commit is:

commit cf355518a479b75f3cbf57770ba0f699f85678d8
Author: Anders Roxell <anders.roxell@linaro.org>
Date:   Thu Feb 8 18:34:59 2018 +0100

    ltp: fix knob to control numa support
    
    Reported-by: Yi Zhao <yi.zhao@windriver.com>
    Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


