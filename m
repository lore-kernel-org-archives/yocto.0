Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37C5FE00DEF; Sun,  7 Jan 2018 21:34:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32DA3E00DEB
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 21:34:02 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 0E45287550AE
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 00:34:01 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 08 Jan 2018 05:34:00 -0000
Message-ID: <20180108053400.17670.73248@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 08 Jan 2018 05:34:03 -0000
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
eudev                 3.2.2            3.2.5                 Alejandro Hernandez
epiphany              3.24.3           3.26.5.1              Alexander Kanavin
usbutils              008              009                   Alexander Kanavin
systemtap             3.1              3.2                   Alexander Kanavin
gtk-doc               1.25             1.27                  Alexander Kanavin
boost                 1.65.1           1.66.0                Alexander Kanavin
trace-cmd             2.6.1            2.6.2                 Alexander Kanavin
gdbm                  1.13             1.14.1                Alexander Kanavin
vala                  0.38.2           0.38.4                Alexander Kanavin
libwebp               0.6.0            0.6.1                 Alexander Kanavin
libnl                 3.2.29           3.4.0                 Alexander Kanavin
ffmpeg                3.4              3.4.1                 Alexander Kanavin
webkitgtk             2.18.3           2.18.4                Alexander Kanavin
blktrace              1.1.0+gitX       1.2.0                 Alexander Kanavin
icu                   60.1             60.2                  Alexander Kanavin
bjam-native           1.65.1           1.66.0                Alexander Kanavin
btrfs-tools           4.13.3           4.14.1                Alexander Kanavin
systemtap-uprobes     3.1              3.2                   Alexander Kanavin
kernelshark           2.6.1            2.6.2                 Alexander Kanavin
mpg123                1.25.7           1.25.8                Alexander Kanavin
iso-codes             3.76             3.77                  Alexander Kanavin
tiff                  4.0.8            4.0.9                 Alexander Kanavin
apt                   1.2.24           1.4.8                 Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.4              Aníbal Limón
bind                  9.10.6           9.11.2                Armin Kuster
curl                  7.54.1           7.57.0                Armin Kuster
busybox               1.27.2           1.28.0                Armin Kuster
linux-libc-headers    4.12             4.14.12               Bruce Ashfield
libunwind             1.2              1.2.1                 Bruce Ashfield
iproute2              4.13.0           4.14.1                Changhyeok Bae
iw                    4.9              4.14                  Changhyeok Bae
coreutils             8.28             8.29                  Chen Qi
systemd-boot          234              236                   Chen Qi
systemd               234              236                   Chen Qi
util-linux            2.31             2.31.1                Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.6.1           11.7.1                Chen Qi
tar                   1.29             1.30                  Chen Qi
systemd-bootchart     231+gitX         233                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
build-appliance-i...  15.0.0           18.0.0                Cristian Iorga
lz4                   1.7.4            1.8.0                 Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
gzip                  1.8              1.9                   Denys Dmytriyenko
hdparm                9.52             9.53                  Denys Dmytriyenko
mtd-utils             2.0.0            2.0.1                 Denys Dmytriyenko
python-numpy          1.13.1           1.14.0rc1             Derek Straka
python                2.7.13           2.7.14                Derek Straka
python3-numpy         1.13.3           1.14.0rc1             Derek Straka
python3-setuptools    38.2.5           38.4.0                Derek Straka
python-setuptools     38.2.5           38.4.0                Derek Straka
python3-native        3.5.3            3.6.4                 Derek Straka
python-native         2.7.13           2.7.14                Derek Straka
python3               3.5.3            3.6.4                 Derek Straka
acpica                20170303         20180105              Fathi Boudra
gnupg                 2.2.0            2.2.4                 Hongxu Jia
ncurses               6.0+20170715     6.0+20171125          Hongxu Jia
apr-util              1.6.0            1.6.1                 Hongxu Jia
gpgme                 1.9.0            1.10.0                Hongxu Jia
libgcrypt             1.8.1            1.8.2                 Hongxu Jia
bash                  4.4              4.4.12                Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
man-pages             4.11             4.14                  Hongxu Jia
pigz                  2.3.4            2.4                   Hongxu Jia
help2man-native       1.47.4           1.47.5                Hongxu Jia
apr                   1.6.2            1.6.3                 Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
pango                 1.40.12          1.40.14               Jussi Kukkonen
piglit                1.0+gitrX        1.0-new-commits-a...  Jussi Kukkonen
libinput              1.8.4            1.9.4                 Jussi Kukkonen
vulkan-demos          git              git-new-commits-a...  Jussi Kukkonen
cairo                 1.14.10          1.14.12               Jussi Kukkonen
puzzles               0.0+gitX         0.0-new-commits-a...  Jussi Kukkonen
atk                   2.26.0           2.26.1                Jussi Kukkonen
gtk-icon-utils-na...  3.22.17          3.22.26               Jussi Kukkonen
vte                   0.50.1           0.50.2                Jussi Kukkonen
vulkan                1.0.61.1         1.0.65.1              Jussi Kukkonen
assimp                4.0.1            4.1.0                 Jussi Kukkonen
adwaita-icon-theme    3.26.0           3.26.1                Jussi Kukkonen
gtk+3                 3.22.24          3.22.26               Jussi Kukkonen
fontconfig            2.12.6           2.12.91               Jussi Kukkonen
librsvg               2.40.19          2.40.20               Jussi Kukkonen
llvm                  5.0              5.0-new-commits-a...  Khem Raj
cross-localedef-n...  2.26             2.26.9000             Khem Raj
glibc-initial         2.26             2.26.9000             Khem Raj
ninja                 1.7.2            1.8.2                 Khem Raj
mpfr                  3.1.5            4.0.0                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.9              1.10beta1             Khem Raj
go                    1.9              1.10beta1             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
glibc                 2.26             2.26.9000             Khem Raj
perl                  5.24.1           5.26.1                Leonardo Sandoval
ruby                  2.4.2            2.5.0                 Leonardo Sandoval
nfs-utils             2.1.1            2.3.1                 Leonardo Sandoval
qemu                  2.10.1           2.11.0                Leonardo Sandoval
perl-native           5.24.1           5.26.1                Leonardo Sandoval
bluez5                5.47             5.48                  Maxin B. John
libical               2.0.0            3.0.1                 Maxin B. John
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Maxin B. John
libsolv               0.6.29           0.6.30                Maxin B. John
ifupdown              0.8.16           0.8.29                Maxin B. John
screen                4.6.1            4.6.2                 Maxin B. John
pkgconf               1.3.7            1.4.0                 Maxin B. John
i2c-tools             3.1.2            4.0                   Maxin B. John
go-crosssdk-x86_64    1.9              1.10beta1             No maintainer
systemtap-native      3.1              3.2                   No maintainer
go-cross-canadian...  1.9              1.10beta1             No maintainer
go-cross-i586         1.9              1.10beta1             No maintainer
go-runtime            1.9              1.10beta1             No maintainer
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.9.5            3.10.1                Otavio Salvador
cmake-native          3.9.5            3.10.1                Otavio Salvador
go-dep                0.3.1            0.3.2                 Otavio Salvador
libdrm                2.4.88           2.4.89                Otavio Salvador
tcf-agent             1.4.0+gitX       1.6.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
subversion            1.9.6            1.9.7                 Richard Purdie
lttng-tools           2.9.5            2.10.1                Richard Purdie
lttng-ust             2.9.1            2.10.1                Richard Purdie
lttng-modules         2.9.5            2.10.4                Richard Purdie
nasm                  2.13.01          2.13.02               Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
debianutils           4.8.1.1          4.8.4                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.19             4.20                  Robert Yang
tcl                   8.6.7            8.6.8                 Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
less                  527              529                   Robert Yang
e2fsprogs             1.43.7           1.43.8                Robert Yang
time                  1.7              1.8                   Robert Yang
git                   2.15.0           2.15.1                Robert Yang
base-passwd           3.5.29           3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72             9.79                  Ross Burton
libva-utils           1.8.3            2.0.0                 Wei Tee Ng
libva                 1.8.3            2.0.0                 Wei Tee Ng
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
json-glib             1.2.8            1.4.2                 Yi Zhao

Upgradable count: 137
Upgradable total count: 139

The based commit is:

commit e0a4e78b879eeacff8ef6803c1345056abf018e7
Author: Ross Burton <ross.burton@intel.com>
Date:   Wed Dec 20 13:03:03 2017 +0000

    gstreamer: use a patch instead of sed to fix gtk-doc makefiles
    
    seds can get stale without warning and repeated application can cause problems,
    so move the gtk-doc seds into a patch.
    
    (From OE-Core rev: a704411ab0f1e5f8cbf57ff54b36d60ccaf0d223)
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


