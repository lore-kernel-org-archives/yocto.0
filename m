Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A43AE00CF2; Sun,  3 Sep 2017 21:02:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AACBE00CAF
	for <yocto@yoctoproject.org>; Sun,  3 Sep 2017 21:02:30 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 3045584A4C73
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 00:02:30 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 04 Sep 2017 04:02:30 -0000
Message-ID: <20170904040230.23803.25822@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 04 Sep 2017 04:02:31 -0000
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

Package               Version     Upstream version      Maintainer           NoUpgradeReason
--------------------  ----------  --------------------  -------------------  ------------------------------
python3-native        3.5.3       3.6.2                 Alejandro Hernandez
python3               3.5.3       3.6.2                 Alejandro Hernandez
gtk-doc               1.25        1.26                  Alexander Kanavin
boost                 1.64.0      1.65.0                Alexander Kanavin
ca-certificates       20161130    20170717              Alexander Kanavin
bjam-native           1.64.0      1.65.0                Alexander Kanavin
libnl                 3.2.29      3.3.0                 Alexander Kanavin
psmisc                22.21       23.1                  Alexander Kanavin
oprofile              1.1.0       1.2.0                 Alexander Kanavin
mkelfimage            4.0+gitX    4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
perl                  5.24.1      5.26.0                Aníbal Limón
qemu                  2.10.0-rc2  3                     Aníbal Limón
apt                   1.2.12      1.4.7                 Aníbal Limón
libxml-namespaces...  1.12        1.12.9                Aníbal Limón
apt-native            1.2.12      1.4.7                 Aníbal Limón
dpkg                  1.18.10     1.18.24               Aníbal Limón
perl-native           5.24.1      5.26.0                Aníbal Limón
bind                  9.10.5-P3   9.11.2                Armin Kuster
curl                  7.54.1      7.55.1                Armin Kuster
busybox               1.24.1      1.27.2                Armin Kuster
libpcre2              10.23       10.30                 Armin Kuster
gnutls                3.5.13      3.6.0                 Armin Kuster
kexec-tools           2.0.14      2.0.15                Armin Kuster
libxkbcommon          0.7.1       0.7.2                 Armin Kuster
linux-libc-headers    4.10        4.12.8                Bruce Ashfield
libunwind             1.2         1.2.1                 Bruce Ashfield
connman               1.34        1.35                  Changhyeok Bae
iproute2              4.11.0      4.12.0                Changhyeok Bae
dbus-test             1.10.20     1.10.22               Chen Qi
dbus                  1.10.20     1.10.22               Chen Qi
util-linux            2.30        2.30.1                Chen Qi
sed                   4.2.2       4.4                   Chen Qi
sysstat               11.5.7      11.6.0                Chen Qi
systemd-bootchart     231+gitX    232+gitAUTOINC+79...  Chen Qi
flex                  2.6.0       2.6.4                 Chen Qi
build-appliance-i...  15.0.0      17.0.1                Cristian Iorga
avahi-ui              0.6.32      0.7                   Dengke Du
avahi                 0.6.32      0.7                   Dengke Du
expat                 2.2.3       2.2.4                 Dengke Du
chkconfig             1.3.58      1.8                   Dengke Du            Version 1.5 requires selinux
json-glib             1.2.8       1.3.2                 Dengke Du
wayland               1.13.0      1.14.0                Denys Dmytriyenko
weston                2.0.0       3.0.0                 Denys Dmytriyenko
lzop                  1.03        1.04                  Denys Dmytriyenko
lz4                   1.7.4       131                   Denys Dmytriyenko
acpica                20170303    20170728              Fathi Boudra
man-pages             4.11        4.12                  Hongxu Jia
gnupg                 2.1.20      2.1.23                Hongxu Jia
bc                    1.06        1.07.1                Jose Lamego
pango                 1.40.6      1.40.11               Jussi Kukkonen
assimp                4.0.0       4.0.1                 Jussi Kukkonen
gtk-icon-utils-na...  3.22.17     3.22.19               Jussi Kukkonen
gsettings-desktop...  3.22.0      3.24.0                Jussi Kukkonen
libsoup-2.4           2.58.1      2.58.2                Jussi Kukkonen
vulkan                1.0.51.0    1.0.57.0              Jussi Kukkonen
xdg-utils             1.1.1       1.1.2                 Jussi Kukkonen
gdk-pixbuf            2.36.8      2.36.9                Jussi Kukkonen
gtk+3                 3.22.17     3.22.19               Jussi Kukkonen
hicolor-icon-theme    0.15        0.16                  Jussi Kukkonen
clutter-gtk-1.0       1.8.2       1.8.4                 Jussi Kukkonen
glew                  2.0.0       2.1.0                 Jussi Kukkonen
ninja                 1.7.2       120715                Khem Raj
re2c                  0.16        1.0.1                 Khem Raj
go-native             1.8.3       1.9rc2                Khem Raj
go                    1.8.3       1.9rc2                Khem Raj
libnsl2               1.0.5+gitX  1.1.0+gitAUTOINC+...  Khem Raj
texinfo               6.3         6.4                   Leonardo Sandoval
prelink               1.0+gitX    20151030.+gitAUTO...  Mark Hatle
libpfm4               4.6.0       4.8.0                 Matthew McClintock
ifupdown              0.8.16      0.8.24                Maxin B. John
gcc-source-6.3.0      6.3.0       7.2.0                 No maintainer
go-bootstrap-native   1.4.3       1.9rc2                No maintainer
go-cross-i586         1.8.3       1.9rc2                No maintainer
mesa                  17.1.6      17.1.7                Otavio Salvador
cmake                 3.8.2       3.9.1                 Otavio Salvador
cmake-native          3.8.2       3.9.1                 Otavio Salvador
libdrm                2.4.81      2.4.82                Otavio Salvador
mesa-gl               17.1.6      17.1.7                Otavio Salvador
subversion            1.9.6       1.9.7                 Richard Purdie
lttng-tools           2.9.5       2.10.1                Richard Purdie
lttng-ust             2.9.1       2.10.0                Richard Purdie
lttng-modules         2.9.3       2.10.0                Richard Purdie
liberror-perl         0.17024     0.17025               Robert Yang
debianutils           4.8.1.1     4.8.2                 Robert Yang
strace                4.17        4.18                  Robert Yang
autoconf-archive      2016.09.16  2017.03.21            Robert Yang
tcl                   8.6.6       8.6.7                 Robert Yang
libbsd                0.8.5       0.8.6                 Robert Yang
e2fsprogs             1.43.4      1.43.5                Robert Yang
git                   2.13.2      2.14.1                Robert Yang
base-passwd           3.5.29      3.5.43                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72        9.77                  Ross Burton
pulseaudio            10.0        10.99.1               Tanu Kaskinen

Upgradable count: 90
Upgradable total count: 93

The based commit is:

commit dd75644db2f662f0d88529a068bbfb599c9790a9
Author: Saul Wold <sgw@linux.intel.com>
Date:   Fri Sep 1 14:53:25 2017 -0700

    insane.bbclass: Warn if ${COREBASE}/LICENSE is used
    
    The top level LICENSE file is not actually a license, it refers
    other licenses that are used by Bitbake and Meta-data. Relying
    on this file could cause problems for recipes when this file
    changes, which it is about to.
    
    (From OE-Core rev: a1948ab38c9cb7f0b16cce9dadc03ae6e2fe44ad)
    
    Signed-off-by: Saul Wold <sgw@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


