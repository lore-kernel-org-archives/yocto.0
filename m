Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8F03E00D69; Sun, 31 Dec 2017 21:31:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A4BE00C02
	for <yocto@yoctoproject.org>; Sun, 31 Dec 2017 21:31:30 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 4F2EE8086CA0
	for <yocto@yoctoproject.org>; Mon,  1 Jan 2018 00:31:29 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 01 Jan 2018 05:31:29 -0000
Message-ID: <20180101053129.6163.78880@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Jan 2018 05:31:31 -0000
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
python3               3.5.3            3.6.4                 Alejandro Hernandez
python                2.7.13           2.7.14                Alejandro Hernandez
eudev                 3.2.2            3.2.5                 Alejandro Hernandez
python3-native        3.5.3            3.6.4                 Alejandro Hernandez
python-native         2.7.13           2.7.14                Alejandro Hernandez
usbutils              008              009                   Alexander Kanavin
gtk-doc               1.25             1.27                  Alexander Kanavin
webkitgtk             2.18.3           2.18.4                Alexander Kanavin
bjam-native           1.65.1           1.66.0                Alexander Kanavin
dnf                   2.6.3            2.7.5                 Alexander Kanavin
libdnf                0.9.3            0.11.1                Alexander Kanavin
librepo               1.7.20+gitX      1.8.1                 Alexander Kanavin
blktrace              1.1.0+gitX       1.2.0                 Alexander Kanavin
btrfs-tools           4.13.3           4.14                  Alexander Kanavin
systemtap-uprobes     3.1              3.2                   Alexander Kanavin
systemtap             3.1              3.2                   Alexander Kanavin
kernelshark           2.6.1            2.6.2                 Alexander Kanavin
trace-cmd             2.6.1            2.6.2                 Alexander Kanavin
mpg123                1.25.7           1.25.8                Alexander Kanavin
tiff                  4.0.8            4.0.9                 Alexander Kanavin
epiphany              3.24.3           3.26.5.1              Alexander Kanavin
boost                 1.65.1           1.66.0                Alexander Kanavin
vala                  0.38.2           0.38.4                Alexander Kanavin
libnl                 3.2.29           3.4.0                 Alexander Kanavin
ffmpeg                3.4              3.4.1                 Alexander Kanavin
icu                   60.1             60.2                  Alexander Kanavin
mkelfimage            4.0+gitX         4.6                   Alexander Kanavin    mkelfimage has been removed...
iso-codes             3.76             3.77                  Alexander Kanavin
libwebp               0.6.0            0.6.1                 Alexander Kanavin
apt                   1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.4              Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
bind                  9.10.6           9.11.2                Armin Kuster
libxcursor            1.1.14           1.1.15                Armin Kuster
libxfont2             2.0.2            2.0.3                 Armin Kuster
libxfont              1.5.3            1.5.4                 Armin Kuster
libxkbcommon          0.7.2            0.8.0                 Armin Kuster
xserver-xorg          1.19.5           1.19.6                Armin Kuster
curl                  7.54.1           7.57.0                Armin Kuster
nss                   3.34             3.34.1                Armin Kuster
pinentry              1.0.0            1.1.0                 Armin Kuster
kexec-tools           2.0.15           2.0.16                Armin Kuster
libassuan             2.4.4            2.5.1                 Armin Kuster
libunwind             1.2              1.2.1                 Bruce Ashfield
linux-libc-headers    4.12             4.14.10               Bruce Ashfield
systemd               234              236                   Chen Qi
util-linux            2.31             2.31.1                Chen Qi
systemd-boot          234              236                   Chen Qi
systemd-bootchart     231+gitX         233                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
coreutils             8.28             8.29                  Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.6.1           11.7.1                Chen Qi
tar                   1.29             1.30                  Chen Qi
build-appliance-i...  15.0.0           18.0.0                Cristian Iorga
lzop                  1.03             1.04                  Denys Dmytriyenko
mtd-utils             2.0.0            2.0.1                 Denys Dmytriyenko
lz4                   1.7.4            1.8.0                 Denys Dmytriyenko
acpica                20170303         20171215              Fathi Boudra
gnupg                 2.2.0            2.2.4                 Hongxu Jia
bash                  4.4              4.4.12                Hongxu Jia
ncurses               6.0+20170715     6.0+20171125          Hongxu Jia
apr-util              1.6.0            1.6.1                 Hongxu Jia
apr                   1.6.2            1.6.3                 Hongxu Jia
gpgme                 1.9.0            1.10.0                Hongxu Jia
libgcrypt             1.8.1            1.8.2                 Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
man-pages             4.11             4.14                  Hongxu Jia
pigz                  2.3.4            2.4                   Hongxu Jia
help2man-native       1.47.4           1.47.5                Hongxu Jia
python-setuptools     38.2.4           38.2.5                Jose Lamego
python3-git           2.1.7            2.1.8                 Jose Lamego
python3-numpy         1.13.3           1.14.0rc1             Jose Lamego
python3-pycairo       1.15.3           1.15.4                Jose Lamego
python-numpy          1.13.1           1.14.0rc1             Jose Lamego
python3-pygobject     3.26.0           3.26.1                Jose Lamego
bc                    1.06             1.07.1                Jose Lamego
python3-setuptools    38.2.4           38.2.5                Jose Lamego
pango                 1.40.12          1.40.14               Jussi Kukkonen
piglit                1.0+gitrX        1.0-new-commits-a...  Jussi Kukkonen
libinput              1.8.4            1.9.4                 Jussi Kukkonen
gtk-icon-utils-na...  3.22.17          3.22.26               Jussi Kukkonen
at-spi2-core          2.26.0           2.26.2                Jussi Kukkonen
assimp                4.0.1            4.1.0                 Jussi Kukkonen
vulkan-demos          git              git-new-commits-a...  Jussi Kukkonen
puzzles               0.0+gitX         0.0-new-commits-a...  Jussi Kukkonen
at-spi2-atk           2.26.0           2.26.1                Jussi Kukkonen
atk                   2.26.0           2.26.1                Jussi Kukkonen
vte                   0.50.1           0.50.2                Jussi Kukkonen
vulkan                1.0.61.1         1.0.65.1              Jussi Kukkonen
adwaita-icon-theme    3.26.0           3.26.1                Jussi Kukkonen
gtk+3                 3.22.24          3.22.26               Jussi Kukkonen
librsvg               2.40.19          2.40.20               Jussi Kukkonen
cairo                 1.14.10          1.14.12               Jussi Kukkonen
fontconfig            2.12.6           2.12.91               Jussi Kukkonen
glibc-initial         2.26             2.26.9000             Khem Raj
glibc                 2.26             2.26.9000             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
gdb                   8.0              8.0.1                 Khem Raj
llvm                  5.0              5.0-new-commits-a...  Khem Raj
ninja                 1.7.2            1.8.2                 Khem Raj
mpfr                  3.1.5            4.0.0                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.9              1.10beta1             Khem Raj
go                    1.9              1.10beta1             Khem Raj
binutils              2.29             2.29.1                Khem Raj
cross-localedef-n...  2.26             2.26.9000             Khem Raj
ruby                  2.4.2            2.5.0                 Leonardo Sandoval
nfs-utils             2.1.1            2.3.1                 Leonardo Sandoval
perl                  5.24.1           5.26.1                Leonardo Sandoval
qemu                  2.10.1           2.11.0                Leonardo Sandoval
ptest-runner          2.1+gitX         2.1.1                 Leonardo Sandoval
perl-native           5.24.1           5.26.1                Leonardo Sandoval
rpm                   4.13.90+gitX     4.14.0                Mark Hatle
gstreamer1.0          1.12.3           1.12.4                Maxin B. John
bluez5                5.47             5.48                  Maxin B. John
ifupdown              0.8.16           0.8.29                Maxin B. John
gstreamer1.0-rtsp...  1.12.3           1.12.4                Maxin B. John
i2c-tools             3.1.2            4.0                   Maxin B. John
gstreamer1.0-plug...  1.12.3           1.12.4                Maxin B. John
libical               2.0.0            3.0.1                 Maxin B. John
gstreamer1.0-libav    1.12.3           1.12.4                Maxin B. John
gstreamer1.0-plug...  1.12.3           1.12.4                Maxin B. John
gstreamer1.0-plug...  1.12.3           1.12.4                Maxin B. John
gstreamer1.0-plug...  1.12.3           1.12.4                Maxin B. John
gstreamer1.0-omx      1.12.3           1.12.4                Maxin B. John
gstreamer1.0-python   1.12.3           1.12.4                Maxin B. John
libsolv               0.6.29           0.6.30                Maxin B. John
screen                4.6.1            4.6.2                 Maxin B. John
pkgconf               1.3.7            1.3.90                Maxin B. John
libatomic-ops         7.6.0+gitX       7.6.2                 Maxin B. John
harfbuzz              1.7.0            1.7.4                 Maxin B. John
libjpeg-turbo         1.5.2            1.5.3                 Maxin B. John
gdb-cross-canadia...  8.0              8.0.1                 No maintainer
gdb-cross-i586        8.0              8.0.1                 No maintainer
go-cross-canadian...  1.9              1.10beta1             No maintainer
binutils-cross-i586   2.29             2.29.1                No maintainer
binutils-crosssdk...  2.29             2.29.1                No maintainer
systemtap-native      3.1              3.2                   No maintainer
binutils-cross-ca...  2.29             2.29.1                No maintainer
go-cross-i586         1.9              1.10beta1             No maintainer
go-crosssdk-x86_64    1.9              1.10beta1             No maintainer
go-runtime            1.9              1.10beta1             No maintainer
mesa                  17.2.6           17.3.1                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.9.5            3.10.1                Otavio Salvador
go-dep                0.3.1            0.3.2                 Otavio Salvador
cmake-native          3.9.5            3.10.1                Otavio Salvador
libdrm                2.4.88           2.4.89                Otavio Salvador
mesa-gl               17.2.6           17.3.1                Otavio Salvador
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
tcf-agent             1.4.0+gitX       1.6.0                 Randy Witt
lttng-modules         2.9.5            2.10.4                Richard Purdie
lttng-tools           2.9.5            2.10.1                Richard Purdie
lttng-ust             2.9.1            2.10.1                Richard Purdie
nasm                  2.13.01          2.13.02               Richard Purdie
subversion            1.9.6            1.9.7                 Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
git                   2.15.0           2.15.1                Robert Yang
debianutils           4.8.1.1          4.8.4                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.19             4.20                  Robert Yang
tcl                   8.6.7            8.6.8                 Robert Yang
less                  527              529                   Robert Yang
time                  1.7              1.8                   Robert Yang
base-passwd           3.5.29           3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72             9.78                  Ross Burton
libva-utils           1.8.3            2.0.0                 Wei Tee Ng
libva                 1.8.3            2.0.0                 Wei Tee Ng
gstreamer1.0-vaapi    1.12.3           1.12.4                Wei Tee Ng
avahi                 0.6.32           0.7                   Yi Zhao
avahi-ui              0.6.32           0.7                   Yi Zhao
json-glib             1.2.8            1.4.2                 Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux

Upgradable count: 172
Upgradable total count: 175

The based commit is:

commit 3cf8bda5e4d4a345793aa72be97e94c41520ec01
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Dec 21 10:49:20 2017 -0500

    linux-yocto/4.12: CQM and kmemleak fixes
    
    Integrating the following commits for kmemleak fixes and CQM
    backports:
    
       58fe84d691a mm: kmemleak: treat vm_struct as alternative reference to vmalloc'ed objects
       5babb9c8f695 mm: kmemleak: factor object reference updating out of scan_block()
       8c22ef5ee138 mm: kmemleak: slightly reduce the size of some structures on 64-bit architectures
       7ea6b560ef4c netfilter: conntrack: do not enable connection tracking unless needed
       4fdf0a5a0863 netfilter: nf_ct_dccp/sctp: fix memory leak after netns cleanup
       85385ffd1e9b netfilter: move table iteration out of netns exit paths
       c95b3f8e1cbc netfilter: conntrack: add nf_ct_iterate_destroy
       753c83b98a1e netfilter: conntrack: don't call iter for non-confirmed conntracks
       bcf21cba7fd5 netfilter: conntrack: rename nf_ct_iterate_cleanup
       f5c3a4c19075 perf/x86/intel/uncore: Fix missing marker for skx_uncore_cha_extra_regs
       c44ebea2f116 perf/x86/intel/uncore: Fix SKX CHA event extra regs
       1d70f7feb408 perf/x86/intel/uncore: Remove invalid Skylake server CHA filter field
       eb3059e9e0ea perf/x86/intel/uncore: Fix Skylake server CHA LLC_LOOKUP event umask
       3514c02c7bff perf/x86/intel/uncore: Fix Skylake server PCU PMU event format
       804530f02515 perf/x86/intel/uncore: Fix Skylake UPI PMU event masks
    
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


