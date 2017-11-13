Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AF8DE00C77; Sun, 12 Nov 2017 21:38:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E168E00BEA
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 21:38:04 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 062CB806CC0B
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 00:38:03 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 13 Nov 2017 05:38:02 -0000
Message-ID: <20171113053802.17877.38236@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 13 Nov 2017 05:38:05 -0000
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

Package               Version       Upstream version      Maintainer           NoUpgradeReason
--------------------  ------------  --------------------  -------------------  ------------------------------
python                2.7.13        2.7.14                Alejandro Hernandez
eudev                 3.2.2         3.2.4                 Alejandro Hernandez
python3-native        3.5.3         3.6.3                 Alejandro Hernandez
python-native         2.7.13        2.7.14                Alejandro Hernandez
python3               3.5.3         3.6.3                 Alejandro Hernandez
librepo               1.7.20+gitX   1.8.1+gitAUTOINC+...  Alexander Kanavin
openssl               1.1.0f        1.1.0g                Alexander Kanavin
gtk-doc               1.25          1.26                  Alexander Kanavin
mkelfimage            4.0+gitX      4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
webkitgtk             2.16.6        2.18.3                Alexander Kanavin
trace-cmd             2.6.1         2.6.2                 Alexander Kanavin
gnome-desktop3        3.24.2        3.26.2                Alexander Kanavin
libxslt               1.1.31        1.1.32                Alexander Kanavin
dnf                   2.6.3         2.7.5                 Alexander Kanavin
libdnf                0.9.3         0.11.1                Alexander Kanavin
libnl                 3.2.29        3.4.0                 Alexander Kanavin
ffmpeg                3.3.4         3.4                   Alexander Kanavin
libpciaccess          0.13.5        0.14                  Alexander Kanavin
lighttpd              1.4.45        1.4.48                Alexander Kanavin
blktrace              1.1.0+gitX    1.2.0+gitAUTOINC+...  Alexander Kanavin
dtc                   1.4.4         7.4                   Alexander Kanavin
expect                5.45          5.45.3                Alexander Kanavin
gobject-introspec...  1.52.1        1.54.1                Alexander Kanavin
psmisc                22.21         23.1                  Alexander Kanavin
vala                  0.38.2        0.38.3                Alexander Kanavin
btrfs-tools           4.13.2        4.13.3                Alexander Kanavin
systemtap-uprobes     3.1           3.2                   Alexander Kanavin
systemtap             3.1           3.2                   Alexander Kanavin
kernelshark           2.6.1         2.6.2                 Alexander Kanavin
epiphany              3.24.3        3.26.2                Alexander Kanavin
icu                   59.1          60.1                  Alexander Kanavin
apt                   1.2.24        1.4.8                 Aníbal Limón
apt-native            1.2.24        1.4.8                 Aníbal Limón
dpkg                  1.18.24       1.19.0.4              Aníbal Limón
curl                  7.54.1        7.56.1                Armin Kuster
gnutls                3.5.16        3.6.1                 Armin Kuster
bind                  9.10.6        9.11.2                Armin Kuster
kexec-tools           2.0.14        2.0.15                Armin Kuster
linux-libc-headers    4.12          4.14                  Bruce Ashfield
libunwind             1.2           1.2.1                 Bruce Ashfield
iproute2              4.11.0        4.14.0                Changhyeok Bae
ethtool               4.11          4.13                  Changhyeok Bae
sudo                  1.8.20p2      1.8.21p2              Chen Qi
dbus                  1.10.20       1.12.0                Chen Qi
coreutils             8.27          8.28                  Chen Qi
cups                  2.2.4         2.2.6                 Chen Qi
gawk                  4.1.4         4.2.0                 Chen Qi
systemd               234           235                   Chen Qi
dbus-test             1.10.20       1.12.0                Chen Qi
sysstat               11.5.7        11.7.1                Chen Qi
systemd-boot          234           235                   Chen Qi
systemd-bootchart     231+gitX      233+gitAUTOINC+fe...  Chen Qi
flex                  2.6.0         2.6.4                 Chen Qi
sed                   4.2.2         4.4                   Chen Qi
build-appliance-i...  15.0.0        18.0.0                Cristian Iorga
lz4                   1.7.4         1.8.0                 Denys Dmytriyenko
lzop                  1.03          1.04                  Denys Dmytriyenko
mtd-utils             2.0.0         2.0.1                 Denys Dmytriyenko
acpica                20170303      20171110              Fathi Boudra
gnupg                 2.2.0         2.2.2                 Hongxu Jia
apr-util              1.6.0         1.6.1                 Hongxu Jia
apr                   1.6.2         1.6.3                 Hongxu Jia
bash                  4.4           4.4.12                Hongxu Jia
ghostscript           9.21          9.22                  Hongxu Jia
ncurses               6.0+20170715  6.0+20170902          Hongxu Jia
man-pages             4.11          4.13                  Hongxu Jia
help2man-native       1.47.4        1.47.5                Hongxu Jia
python-numpy          1.13.1        1.13.3                Jose Lamego
python3-pygobject     3.26.0        3.26.1                Jose Lamego
bc                    1.06          1.07.1                Jose Lamego
python-setuptools     36.5.0        36.7.1                Jose Lamego
python3-setuptools    36.5.0        36.7.1                Jose Lamego
pango                 1.40.12       1.40.13               Jussi Kukkonen
libinput              1.8.3         1.9.1                 Jussi Kukkonen
libsoup-2.4           2.60.1        2.60.2                Jussi Kukkonen
gtk-icon-utils-na...  3.22.17       3.22.26               Jussi Kukkonen
atk                   2.26.0        2.26.1                Jussi Kukkonen
glib-2.0              2.52.3        2.54.2                Jussi Kukkonen
glib-networking       2.50.0        2.54.1                Jussi Kukkonen
vte                   0.50.1        0.50.2                Jussi Kukkonen
gtk+3                 3.22.24       3.22.26               Jussi Kukkonen
at-spi2-atk           2.26.0        2.26.1                Jussi Kukkonen
at-spi2-core          2.26.0        2.26.2                Jussi Kukkonen
cross-localedef-n...  2.26          2.26.9000             Khem Raj
ninja                 1.7.2         1.8.2                 Khem Raj
glibc                 2.26          2.26.9000             Khem Raj
mpfr                  3.1.5         3.1.6                 Khem Raj
re2c                  0.16          1.0.1                 Khem Raj
go-native             1.9           1.9.2                 Khem Raj
go                    1.9           1.9.2                 Khem Raj
libnsl2               1.0.5+gitX    1.2.0+gitAUTOINC+...  Khem Raj
binutils              2.29          2.29.1                Khem Raj
gdb                   8.0           8.0.1                 Khem Raj
glibc-initial         2.26          2.26.9000             Khem Raj
perl                  5.24.1        5.26.1                Leonardo Sandoval
nfs-utils             2.1.1         2.2.1                 Leonardo Sandoval
qemu                  2.10.1        2.11.0-rc0            Leonardo Sandoval
perl-native           5.24.1        5.26.1                Leonardo Sandoval
rpm                   4.13.90+gitX  4.14.0+gitAUTOINC...  Mark Hatle
ofono                 1.20          1.21                  Maxin B. John
ifupdown              0.8.16        0.8.29                Maxin B. John
libical               2.0.0         3.0.0                 Maxin B. John
libproxy              0.4.14        0.4.15                Maxin B. John
sqlite3               3.20.0        3.21.0                Maxin B. John
libsolv               0.6.29        0.6.30                Maxin B. John
quota                 4.03          4.04                  Maxin B. John
screen                4.6.1         4.6.2                 Maxin B. John
libogg                1.3.2         1.3.3                 Maxin B. John
harfbuzz              1.4.8         1.6.3                 Maxin B. John
go-cross-i586         1.9           1.9.2                 No maintainer
go-crosssdk-x86_64    1.9           1.9.2                 No maintainer
systemtap-native      3.1           3.2                   No maintainer
binutils-cross-ca...  2.29          2.29.1                No maintainer
binutils-cross-i586   2.29          2.29.1                No maintainer
gcc-source-6.4.0      6.4.0         7.2.0                 No maintainer
gdb-cross-canadia...  8.0           8.0.1                 No maintainer
gdb-cross-i586        8.0           8.0.1                 No maintainer
go-cross-canadian...  1.9           1.9.2                 No maintainer
go-dep                0.3.1         0.3.2                 No maintainer
go-runtime            1.9           1.9.2                 No maintainer
pkgconf               1.3.7         1.3.10                No maintainer
binutils-crosssdk...  2.29          2.29.1                No maintainer
mesa                  17.2.4        17.2.5                Otavio Salvador
cmake                 3.9.5         3.9.6                 Otavio Salvador
cmake-native          3.9.5         3.9.6                 Otavio Salvador
mesa-gl               17.2.4        17.2.5                Otavio Salvador
tcf-agent             1.4.0+gitX    1.5+gitAUTOINC+5e...  Randy Witt
subversion            1.9.6         1.9.7                 Richard Purdie
lttng-modules         2.9.3         2.10.4                Richard Purdie
lttng-tools           2.9.5         2.10.1                Richard Purdie
lttng-ust             2.9.1         2.10.0                Richard Purdie
liberror-perl         0.17024       0.17025               Robert Yang
strace                4.18          4.19                  Robert Yang
e2fsprogs             1.43.5        1.43.7                Robert Yang
file                  5.31          5.32                  Robert Yang
less                  487           527                   Robert Yang
autoconf-archive      2016.09.16    2017.09.28            Robert Yang
logrotate             3.12.3        3.13.0                Robert Yang
debianutils           4.8.1.1       4.8.3                 Robert Yang
time                  1.7           1.8                   Robert Yang
git                   2.13.3        2.15.0                Robert Yang
libsdl2               2.0.5         2.0.7                 Robert Yang
base-passwd           3.5.29        3.5.44                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.72          9.78                  Ross Burton
lame                  3.99.5        3.100                 Tanu Kaskinen
pulseaudio            10.0          11.1                  Tanu Kaskinen
libva-utils           1.8.3         2.0.0                 Wei Tee Ng
libva                 1.8.3         2.0.0                 Wei Tee Ng
avahi-ui              0.6.32        0.7                   Yi Zhao
avahi                 0.6.32        0.7                   Yi Zhao
chkconfig             1.3.58        1.8                   Yi Zhao              Version 1.5 requires selinux
json-glib             1.2.8         1.4.2                 Yi Zhao

Upgradable count: 149
Upgradable total count: 152

The based commit is:

commit a17f3ec910366e9e7551fa24fbc07929b9584341
Author: Awais Belal <awais_belal@mentor.com>
Date:   Wed Nov 8 12:58:41 2017 +0500

    dhcp: fix build issue with libxml2 support
    
    A missing case breaks the build when libxml2 is
    required and found appropriately. The third argument
    to the function AC_SEARCH_LIB is action-if-found which
    was mistakenly been used for the case where the library
    is not found and hence breaks the configure phase
    where it shoud actually pass.
    We now pass on silently when action-if-found is
    executed.
    
    Signed-off-by: Awais Belal <awais_belal@mentor.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


