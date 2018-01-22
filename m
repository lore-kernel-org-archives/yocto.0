Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D7DDE00E22; Sun, 21 Jan 2018 21:34:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8124CE006D3
	for <yocto@yoctoproject.org>; Sun, 21 Jan 2018 21:34:16 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 1A3928753E67
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 00:34:15 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 22 Jan 2018 05:34:15 -0000
Message-ID: <20180122053415.17189.90524@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Jan 2018 05:34:18 -0000
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
boost                 1.65.1           1.66.0                Alexander Kanavin
vala                  0.38.2           0.38.5                Alexander Kanavin
libwebp               0.6.0            0.6.1                 Alexander Kanavin
libnl                 3.2.29           3.4.0                 Alexander Kanavin
ffmpeg                3.4              3.4.1                 Alexander Kanavin
gtk-doc               1.25             1.27                  Alexander Kanavin
gdbm                  1.13             1.14.1                Alexander Kanavin
blktrace              1.1.0+gitX       1.2.0                 Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
bjam-native           1.65.1           1.66.0                Alexander Kanavin
btrfs-tools           4.13.3           4.14.1                Alexander Kanavin
mpg123                1.25.7           1.25.8                Alexander Kanavin
iso-codes             3.76             3.77                  Alexander Kanavin
epiphany              3.24.3           3.26.5.1              Alexander Kanavin
apt                   1.2.24           1.4.8                 Aníbal Limón
apt-native            1.2.24           1.4.8                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
tzcode-native         2017c            2018b                 Armin Kuster
bind                  9.10.6           9.11.2-P1             Armin Kuster
curl                  7.54.1           7.57.0                Armin Kuster
busybox               1.27.2           1.28.0                Armin Kuster
tzdata                2017c            2018b                 Armin Kuster
nspr                  4.17             4.18                  Armin Kuster
libunwind             1.2              1.2.1                 Bruce Ashfield
linux-libc-headers    4.12             4.14.14               Bruce Ashfield
iw                    4.9              4.14                  Changhyeok Bae
kmod-native           24+gitX          25                    Chen Qi
sudo                  1.8.21p2         1.8.22                Chen Qi
systemd-boot          234              236                   Chen Qi
systemd               234              236                   Chen Qi
util-linux            2.31             2.31.1                Chen Qi
kmod                  24+gitX          25                    Chen Qi
sed                   4.2.2            4.4                   Chen Qi
sysstat               11.6.1           11.7.1                Chen Qi
tar                   1.29             1.30                  Chen Qi
systemd-bootchart     231+gitX         233                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
build-appliance-i...  15.0.0           18.0.1                Cristian Iorga
lz4                   1.7.4            1.8.1.2               Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
gzip                  1.8              1.9                   Denys Dmytriyenko
hdparm                9.52             9.53                  Denys Dmytriyenko
mtd-utils             2.0.0            2.0.1                 Denys Dmytriyenko
python-numpy          1.13.1           1.14.0rc1             Derek Straka
python                2.7.13           2.7.14                Derek Straka
python3-setuptools    38.2.5           38.4.0                Derek Straka
python-setuptools     38.2.5           38.4.0                Derek Straka
python3-numpy         1.13.3           1.14.0rc1             Derek Straka
python3-native        3.5.3            3.6.4                 Derek Straka
python-native         2.7.13           2.7.14                Derek Straka
python3               3.5.3            3.6.4                 Derek Straka
acpica                20170303         20180105              Fathi Boudra
ncurses               6.0+20170715     6.0+20171125          Hongxu Jia
apr                   1.6.2            1.6.3                 Hongxu Jia
gpgme                 1.9.0            1.10.0                Hongxu Jia
bash                  4.4              4.4.12                Hongxu Jia
ghostscript           9.21             9.22                  Hongxu Jia
man-pages             4.11             4.14                  Hongxu Jia
pigz                  2.3.4            2.4                   Hongxu Jia
help2man-native       1.47.4           1.47.5                Hongxu Jia
apr-util              1.6.0            1.6.1                 Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
glibc-initial         2.26             2.26.9000             Khem Raj
ninja                 1.7.2            1.8.2                 Khem Raj
mpfr                  3.1.5            4.0.0                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.9              1.10beta2             Khem Raj
go                    1.9              1.10beta2             Khem Raj
cross-localedef-n...  2.26             2.26.9000             Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
llvm                  5.0              5.0-new-commits-a...  Khem Raj
glibc                 2.26             2.26.9000             Khem Raj
u-boot-fw-utils       2017.11          2018.01               Marek Vasut
u-boot-mkimage        2017.11          2018.01               Marek Vasut
u-boot                2017.11          2018.01               Marek Vasut
rpm                   4.14.0           4.14.1                Mark Hatle
pango                 1.40.12          1.40.14               Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
liburi-perl           1.72             1.73                  Maxin B. John
libinput              1.8.4            1.9.901               Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.1                Maxin B. John
gtk-icon-utils-na...  3.22.17          3.22.26               Maxin B. John
ruby                  2.4.2            2.5.0                 Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
atk                   2.26.0           2.26.1                Maxin B. John
libtasn1              4.12             4.13                  Maxin B. John
glib-2.0              2.54.2           2.54.3                Maxin B. John
ofono                 1.21             1.22                  Maxin B. John
vte                   0.50.1           0.50.2                Maxin B. John
vulkan                1.0.61.1         1.0.65.2              Maxin B. John
libsoup-2.4           2.60.2           2.60.3                Maxin B. John
libsolv               0.6.29           0.6.30                Maxin B. John
assimp                4.0.1            4.1.0                 Maxin B. John
ifupdown              0.8.16           0.8.29                Maxin B. John
screen                4.6.1            4.6.2                 Maxin B. John
adwaita-icon-theme    3.26.0           3.26.1                Maxin B. John
gtk+3                 3.22.24          3.22.26               Maxin B. John
gtk+                  2.24.31          2.24.32               Maxin B. John
fontconfig            2.12.6           2.12.91               Maxin B. John
freetype              2.8.1            2.9                   Maxin B. John
libical               2.0.0            3.0.1                 Maxin B. John
perl-native           5.24.1           5.26.1                Maxin B. John
librsvg               2.40.19          2.42.0                Maxin B. John
go-cross-canadian...  1.9              1.10beta2             No maintainer
go-cross-i586         1.9              1.10beta2             No maintainer
go-crosssdk-x86_64    1.9              1.10beta2             No maintainer
go-runtime            1.9              1.10beta2             No maintainer
mesa                  17.3.2           17.3.3                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.10.1           3.10.2                Otavio Salvador
cmake-native          3.10.1           3.10.2                Otavio Salvador
mesa-gl               17.3.2           17.3.3                Otavio Salvador
tcf-agent             1.4.0+gitX       1.6.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
lttng-tools           2.9.5            2.10.1                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
git                   2.15.0           2.16.0                Robert Yang
nfs-utils             2.1.1            2.3.1                 Robert Yang
debianutils           4.8.1.1          4.8.4                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.19             4.20                  Robert Yang
tcl                   8.6.7            8.6.8                 Robert Yang
autoconf-archive      2016.09.16       2017.09.28            Robert Yang
less                  527              529                   Robert Yang
ccache                3.3.4            3.3.5                 Robert Yang
e2fsprogs             1.43.7           1.43.8                Robert Yang
time                  1.7              1.8                   Robert Yang
wget                  1.19.2           1.19.4                Robert Yang
base-passwd           3.5.29           3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72             9.79                  Ross Burton
libva-utils           1.8.3            2.0.0                 Wei Tee Ng
libva                 1.8.3            2.0.0                 Wei Tee Ng
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
ltp                   20170929         20180118              Yi Zhao

Upgradable count: 134
Upgradable total count: 136

The based commit is:

commit 3328211afdef8ffb00dd4dff1143959d5412b075
Author: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Date:   Fri Aug 4 14:14:02 2017 -0700

    python: fix RDEPENDS on several recipes, due to non-existent packages
    
    The packaging has been altered slightly so ensure the dependencies are all still
    valid.
    
    Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


