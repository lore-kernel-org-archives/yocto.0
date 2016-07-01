Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D176E00A10; Fri,  1 Jul 2016 14:31:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407EBE009CF
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 14:31:06 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 23B3784A90A2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 17:31:05 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Fri, 01 Jul 2016 21:31:05 -0000
Message-ID: <20160701213105.6733.63437@packages.yoctoproject.org>
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
X-List-Received-Date: Fri, 01 Jul 2016 21:31:10 -0000
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
perl                  5.22.1         5.24.0                Alejandro Hernandez
texinfo               6.0            6.1                   Alejandro Hernandez
ruby                  2.2.5          2.3.1                 Alejandro Hernandez
python3               3.5.1          3.5.2                 Alejandro Hernandez
python-native         2.7.11         2.7.12                Alejandro Hernandez
python3-git           1.0.2          2.0.6                 Alejandro Hernandez
cronie                1.5.0          1.5.1                 Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
python-git            2.0.5          2.0.6                 Alejandro Hernandez
python3-setuptools    22.0.5         23.1.0                Alejandro Hernandez
python-setuptools     22.0.5         23.1.0                Alejandro Hernandez
perl-native           5.22.1         5.24.0                Alejandro Hernandez
python3-native        3.5.1          3.5.2                 Alejandro Hernandez
python                2.7.11         2.7.12                Alejandro Hernandez
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
bdwgc                 7.4.2          7.4.4                 Alexander Kanavin
vala                  0.30.1         0.32.1                Alexander Kanavin
epiphany              3.18.4         3.20.3                Alexander Kanavin
libwnck3              3.14.1         3.20.1                Alexander Kanavin
nss                   3.23           3.24                  Alexander Kanavin
libarchive            3.2.0          3.2.1                 Alexander Kanavin
gnutls                3.4.11         3.5.1                 Alexander Kanavin
ffmpeg                3.0.2          3.1.1                 Alexander Kanavin
bash-completion       2.1            2.3                   Alexander Kanavin
btrfs-tools           4.5.3          4.6.1                 Alexander Kanavin
mpg123                1.23.4         1.23.6                Alexander Kanavin
babeltrace            1.3.2          1.4.0                 Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
desktop-file-util...  0.22           0.23                  Alexander Kanavin
apt                   1.0.10.1       1.2.14                Aníbal Limón
apt-native            1.0.10.1       1.2.14                Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
linux-libc-headers    4.4            4.6.3                 Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
at                    3.1.18         3.1.20                Chen Qi
byacc                 20160324       20160606              Chen Qi
cups                  2.1.3          2.1.4                 Chen Qi
sudo                  1.8.16         1.8.17p1              Chen Qi
sysstat               11.3.4         11.3.5                Chen Qi
u-boot-fw-utils       v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.05+gitAUTOI...  Denys Dmytriyenko
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
ncurses               6.0+20160319   6.0+20160625          Hongxu Jia
libgcrypt             1.7.0          1.7.1                 Hongxu Jia
gnupg                 2.1.12         2.1.13                Hongxu Jia
libinput              1.3.0          1.3.3                 Jussi Kukkonen
weston                1.10.0         1.11.0                Jussi Kukkonen
matchbox-config-gtk   0.2            2                     Jussi Kukkonen
matchbox-terminal     0.1            2                     Jussi Kukkonen
sato-screenshot       0.2            2                     Jussi Kukkonen
settings-daemon       0.0.2          2                     Jussi Kukkonen
xf86-input-evdev      2.10.2         2.10.3                Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
matchbox-theme-sato   0.2            2                     Jussi Kukkonen
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Jussi Kukkonen
wayland               1.10.0         1.11.0                Jussi Kukkonen
libevdev              1.5.1          1.5.2                 Jussi Kukkonen
libxfixes             5.0.1          5.0.2                 Jussi Kukkonen
augeas                1.4.0          1.5.0                 Jussi Kukkonen
libgpg-error          1.22           1.23                  Jussi Kukkonen
xf86-input-libinput   0.16.0         0.19.0                Jussi Kukkonen
xkeyboard-config      2.17           2.18                  Jussi Kukkonen
vte                   0.44.1         0.44.2                Jussi Kukkonen
expat                 2.1.1          2.2.0                 Jussi Kukkonen
wayland-protocols     1.3            1.4                   Jussi Kukkonen
librsvg               2.40.15        2.40.16               Jussi Kukkonen
cairo                 1.14.6         1.15.2                Jussi Kukkonen
fontconfig            2.11.95        2.12.0                Jussi Kukkonen
linuxdoc-tools-na...  0.9.69         0.9.72                Jussi Kukkonen
slang                 2.2.4          2.3.0                 Kai Kang
uclibc-initial        1.0.12+gitX    1.0.15                Khem Raj
uclibc                1.0.12+gitX    1.0.15                Khem Raj
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.7.0                 Matthew McClintock
ifupdown              0.8.2          0.8.13                Maxin B. John
libpng                1.6.22         1.6.23                Maxin B. John
ethtool               4.5            4.6                   Maxin B. John
libsolv               0.6.21         0.6.22                Maxin B. John
screen                4.3.1          4.4.0                 Maxin B. John
libatomic-ops         7.4.2          7.4.4                 Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
gnome-themes-stan...  3.18.0         3.20.2                No maintainer
binutils-cross-ca...  2.26           2.26.1                No maintainer
binutils-cross-i586   2.26           2.26.1                No maintainer
binutils-crosssdk...  2.26           2.26.1                No maintainer
subversion            1.9.3          1.9.4                 Richard Purdie
lttng-tools           2.7.1+gitX     2.8.0+gitAUTOINC+...  Richard Purdie
lttng-ust             2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
gdb                   7.11           7.11.1                Richard Purdie
lttng-modules         2.7.3+gitX     2.8.0+gitAUTOINC+...  Richard Purdie
nasm                  2.11.08        2.12.01               Richard Purdie
gnu-efi               3.0.3          3.0.4                 Robert Yang
debianutils           4.7            4.8                   Robert Yang
libpcre               8.38           8.39                  Robert Yang
ltp                   20160126       20160510              Robert Yang
binutils              2.26           2.26.1                Robert Yang
e2fsprogs             1.43           1.43.1                Robert Yang
file                  5.27           5.28                  Robert Yang
wget                  1.17.1         1.18                  Robert Yang
git                   2.8.4          2.9.0                 Robert Yang
gmp                   6.1.0          6.1.1                 Robert Yang
base-passwd           3.5.29         3.5.39                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.64           9.66                  Ross Burton
libsndfile1           1.0.26         1.0.27                Tanu Kaskinen
pulseaudio            8.0            9.0                   Tanu Kaskinen
gettext               0.19.6         0.19.8.1              Wenzong Fan
ccache                3.2.4          3.2.5                 Wenzong Fan
chkconfig             1.3.58         1.8                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 106
Upgradable total count: 112

The based commit is:

commit 3143920c541b55b543b9dcc12b18af4e0e4b7ae1
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Tue Jul 21 11:21:06 2015 -0400

    linux-libc-headers: update to 4.1
    
    Updating the libc-headers to match the 4.1 LTSI kernel version.
    
    We also tweak the logic in linux-libc-headers.inc to look in the
    4.x subdirectory if a 4.x kernel is specified as the header source.
    
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


