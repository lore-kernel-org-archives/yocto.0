Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC160E00B6F; Tue, 18 Jul 2017 08:03:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30C6E00B28
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 08:03:16 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 654DF875441F
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 11:03:16 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Tue, 18 Jul 2017 15:03:16 -0000
Message-ID: <20170718150316.30062.87859@packages.yoctoproject.org>
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
X-List-Received-Date: Tue, 18 Jul 2017 15:03:17 -0000
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
python3               3.5.3         3.6.2                 Alejandro Hernandez
eudev                 3.2.1         3.2.2                 Alejandro Hernandez
python3-native        3.5.3         3.6.2                 Alejandro Hernandez
libnl                 3.2.29        3.3.0                 Alexander Kanavin
openssl               1.0.2l        1.1.0f                Alexander Kanavin
icu                   58.2          59.1                  Alexander Kanavin
valgrind              3.13.0        3.13.0.RC2            Alexander Kanavin
gperf                 3.0.4         3.1                   Alexander Kanavin
bash-completion       2.5           2.7                   Alexander Kanavin
mkelfimage            4.0+gitX      4.6+gitAUTOINC+db...  Alexander Kanavin    mkelfimage has been removed...
oprofile              1.1.0         1.2.0rc2              Alexander Kanavin
vala                  0.36.3        0.36.4                Alexander Kanavin
mpg123                1.25.0        1.25.2                Alexander Kanavin
psmisc                22.21         23.1                  Alexander Kanavin
btrfs-tools           4.11          4.11.1                Alexander Kanavin
epiphany              3.24.2        3.24.3                Alexander Kanavin
qemu                  2.8.1.1       2.9.0                 Aníbal Limón
perl                  5.24.1        5.26.0                Aníbal Limón
apt                   1.2.12        1.4.7                 Aníbal Limón
libxml-namespaces...  1.12          1.12.9                Aníbal Limón
apt-native            1.2.12        1.4.7                 Aníbal Limón
dpkg                  1.18.10       1.18.24               Aníbal Limón
perl-native           5.24.1        5.26.0                Aníbal Limón
bind                  9.10.5-P3     9.11.1-P3             Armin Kuster
iproute2              4.11.0        4.12.0                Armin Kuster
busybox               1.24.1        1.27.0                Armin Kuster
lz4                   1.7.4         131                   Armin Kuster
nspr                  4.14          4.15                  Armin Kuster
go-native             1.8.3         1.9beta2              Armin Kuster
gnutls                3.5.13        3.5.14                Armin Kuster
kexec-tools           2.0.14        2.0.15                Armin Kuster
linux-libc-headers    4.10          4.12.2                Bruce Ashfield
libunwind             1.2           1.2.1                 Bruce Ashfield
pciutils              3.5.4         3.5.5                 Chen Qi
systemd               232           234                   Chen Qi
cups                  2.2.3         2.2.4                 Chen Qi
diffutils             3.5           3.6                   Chen Qi
dbus-test             1.10.18       1.10.20               Chen Qi
dbus                  1.10.18       1.10.20               Chen Qi
sed                   4.2.2         4.4                   Chen Qi
sudo                  1.8.19p2      1.8.20p2              Chen Qi
sysstat               11.5.6        11.5.7                Chen Qi
systemd-boot          232           234                   Chen Qi
systemd-bootchart     231+gitX      232+gitAUTOINC+79...  Chen Qi
flex                  2.6.0         2.6.4                 Chen Qi
build-appliance-i...  15.0.0        17.0.0                Cristian Iorga
avahi-ui              0.6.32        0.7                   Dengke Du
avahi                 0.6.32        0.7                   Dengke Du
expat                 2.2.1         2.2.2                 Dengke Du
json-glib             1.2.8         1.3.2                 Dengke Du
chkconfig             1.3.58        1.8                   Dengke Du            Version 1.5 requires selinux
wayland               1.13.0        1.13.91               Denys Dmytriyenko
weston                2.0.0         2.99.91               Denys Dmytriyenko
apr-util              1.5.4         1.6.0                 Hongxu Jia
gpgme                 1.8.0         1.9.0                 Hongxu Jia
libgcrypt             1.7.7         1.8.0                 Hongxu Jia
bash                  4.3.30        4.4                   Hongxu Jia
ncurses               6.0+20161126  6.0+20170715          Hongxu Jia
elfutils              0.168         0.169                 Hongxu Jia
gnupg                 2.1.20        2.1.21                Hongxu Jia
python3-docutils      0.13.1        0.14rc1               Jose Lamego
bc                    1.06          1.07.1                Jose Lamego
python3-mako          1.0.6         1.0.7                 Jose Lamego
python3-setuptools    32.1.1        36.2.0                Jose Lamego
python-setuptools     32.1.1        36.2.0                Jose Lamego
python3-git           2.1.3         2.1.5                 Jose Lamego
pango                 1.40.6        1.40.7                Jussi Kukkonen
libinput              1.7.3         1.8.0                 Jussi Kukkonen
gsettings-desktop...  3.22.0        3.24.0                Jussi Kukkonen
glib-2.0              2.52.2        2.52.3                Jussi Kukkonen
xdg-utils             1.1.1         1.1.2                 Jussi Kukkonen
cairo                 1.14.8        1.14.10               Jussi Kukkonen
fontconfig            2.12.1        2.12.4                Jussi Kukkonen
texinfo               6.3           6.4                   Leonardo Sandoval
u-boot-fw-utils       2017.05       2017.07               Marek Vasut
u-boot-mkimage        2017.05       2017.07               Marek Vasut
u-boot                2017.05       2017.07               Marek Vasut
prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
libpfm4               4.6.0         4.8.0                 Matthew McClintock
gstreamer1.0-rtsp...  1.10.4        1.12.2                Maxin B. John
bluez5                5.45          5.46                  Maxin B. John
ifupdown              0.8.16        0.8.21                Maxin B. John
gstreamer1.0-libav    1.10.4        1.12.2                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
gstreamer1.0          1.10.4        1.12.2                Maxin B. John
gstreamer1.0-omx      1.10.4        1.12.2                Maxin B. John
sqlite3               3.19.2        3.19.3                Maxin B. John
libtirpc              1.0.1         1.0.2                 Maxin B. John
libsolv               0.6.27        0.6.28                Maxin B. John
screen                4.5.1         4.6.1                 Maxin B. John
libpng                1.6.29        1.6.30                Maxin B. John
gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
libjpeg-turbo         1.5.1         1.5.2                 Maxin B. John
orc                   0.4.26        0.4.27                Maxin B. John
gstreamer1.0-vaapi    1.10.4        1.12.2                No maintainer
go-bootstrap-native   1.4.3         1.9beta2              No maintainer
acpica                20170303      20170629              No maintainer
go-cross-i586         1.8.3         1.9beta2              No maintainer
go                    1.8.3         1.9beta2              No maintainer
libdnf                0.9.1         0.9.2                 No maintainer
gcc-source-6.3.0      6.3.0         7.1.0                 No maintainer
mesa                  17.1.4        17.1.5                Otavio Salvador
mesa-gl               17.1.4        17.1.5                Otavio Salvador
subversion            1.9.5         1.9.6                 Richard Purdie
strace                4.17          4.18                  Robert Yang
libbsd                0.8.5         0.8.6                 Robert Yang
libpcre               8.40          8.41                  Robert Yang
logrotate             3.9.1         3.12.3                Robert Yang
cryptodev-linux       1.8           1.9                   Robert Yang
cryptodev-module      1.8           1.9                   Robert Yang
cryptodev-tests       1.8           1.9                   Robert Yang
git                   2.13.2        2.13.3                Robert Yang
base-passwd           3.5.29        3.5.43                Ross Burton          Version 3.5.38 requires cde...

Upgradable count: 112
Upgradable total count: 115

The based commit is:

commit ef68005a8c527e9b1d05b7769f0ec8ebe9ec3f91
Author: Carlos Alberto Lopez Perez <clopez@igalia.com>
Date:   Thu Jul 13 14:49:54 2017 +0200

    webkitgtk: Upgrade to 2.16.5
    
    Adjust some dependencies: libgcrypt is now required (instead of gnutls)
    and the following build deps where missing: gettext-native, glib-2.0
    and glib-2.0-native.
    
    Also the CMake argument ENABLE_CREDENTIAL_STORAGE has been renamed to
    USE_LIBSECRET.
    
    This new upstream release (2.16.4 actually) includes security fixes for
    CVE: CVE-2017-2538
    
    Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


