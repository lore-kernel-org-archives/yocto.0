Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58945E00C21; Sun, 13 Dec 2015 21:22:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46B86E00B6F
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 21:22:47 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id D3DB3849DE7C
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 00:22:46 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 14 Dec 2015 05:22:46 -0000
Message-ID: <20151214052246.29943.91079@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 14 Dec 2015 05:22:51 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade this time, they can fill in
RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
recipe remainder until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"

You can check the detail information at:

http://recipes.yoctoproject.org/

Package               Version      Upstream version      Maintainer            NoUpgradeReason
--------------------  -----------  --------------------  --------------------  ------------------------------
opkg                  0.3.0        0.3.1                 Alejandro del Cas...
ruby                  2.2.2        2.2.3                 Alejandro Hernandez
nfs-utils             1.3.1        1.3.3                 Alejandro Hernandez
libxml-simple-perl    2.20         2.22                  Alejandro Hernandez
perl                  5.22.0       5.22.1                Alejandro Hernandez
python-mako           1.0.1        1.0.3                 Alejandro Hernandez
python-nose           1.3.6        1.3.7                 Alejandro Hernandez
python-numpy          1.7.0        1.10.1                Alejandro Hernandez
python-pycurl         7.19.5.2     7.19.5.3              Alejandro Hernandez
python-pygobject      2.28.3       3.19.2                Alejandro Hernandez   Newer versions of python-py...
python-scons          2.3.6        2.4.1                 Alejandro Hernandez
python3               3.5.0        3.5.1                 Alejandro Hernandez
python                2.7.9        2.7.11                Alejandro Hernandez
swig                  3.0.6        3.0.7                 Alejandro Hernandez
python3-setuptools    18.7.1       18.8.1                Alejandro Hernandez
python-setuptools     18.7.1       18.8.1                Alejandro Hernandez
liberation-fonts      1.04         2.00.1                Alexander Kanavin     2.x depends on fontforge pa...
kernelshark           2.5.3+gitX   2.6+gitAUTOINC+9b...  Alexander Kanavin
webkitgtk             2.8.5        2.10.4                Alexander Kanavin
gcr                   3.16.0       3.18.0                Alexander Kanavin
gnome-desktop3        3.16.2       3.18.2                Alexander Kanavin
libsecret             0.18.2       0.18.3                Alexander Kanavin
libwebp               0.4.3        0.4.4                 Alexander Kanavin
kbd                   2.0.2        2.0.3                 Alexander Kanavin
nss                   3.19.2       3.21                  Alexander Kanavin
kexec-tools           2.0.10       2.0.11                Alexander Kanavin
btrfs-tools           4.1.2        4.3.1                 Alexander Kanavin
babeltrace            1.2.4+gitX   1.3.1+gitAUTOINC+...  Alexander Kanavin
powertop              2.7          2.8                   Alexander Kanavin
systemtap-uprobes     2.7+gitX     2.9+gitAUTOINC+70...  Alexander Kanavin
systemtap             2.7+gitX     2.9+gitAUTOINC+70...  Alexander Kanavin
trace-cmd             2.5.3+gitX   2.6+gitAUTOINC+9b...  Alexander Kanavin
tiff                  4.0.4        4.0.6                 Alexander Kanavin
mkelfimage            4.0+gitX     4.2+gitAUTOINC+43...  Alexander Kanavin     mkelfimage has been removed...
mtd-utils             1.5.1+gitX   1.5.2+gitAUTOINC+...  Alexander Kanavin
boost                 1.58.0       1.59.0                Alexander Kanavin
icu                   56.1         56.1-AIX7.1-VA2       Alexander Kanavin
valgrind              3.10.1       3.11.0                Alexander Kanavin
bjam-native           1.58.0       1.59.0                Alexander Kanavin
liburcu               0.8.7        0.9.1                 Alexander Kanavin
lighttpd              1.4.36       1.4.38                Alexander Kanavin
msmtp                 1.6.2        1.6.3                 Alexander Kanavin
libassuan             2.2.1        2.4.2                 Alexander Kanavin
procps                3.3.10       3.3.11                Alexander Kanavin
epiphany              3.16.3       3.18.2                Alexander Kanavin
iso-codes             3.58         3.63                  Alexander Kanavin
dpkg                  1.18.2       1.18.3                Aníbal Limón
apt                   1.0.10.1     1.1.4                 Aníbal Limón
linux-libc-headers    4.1          4.3.2                 Bruce Ashfield
guilt-native          0.35+gitX    0.36+gitAUTOINC+2...  Bruce Ashfield
pciutils              3.3.1        3.4.0                 Chen Qi
resolvconf            1.77         1.78                  Chen Qi
dbus-test             1.8.20       1.10.6                Chen Qi
dbus                  1.8.20       1.10.6                Chen Qi
systemd               225+gitX     228+gitAUTOINC+dd...  Chen Qi
util-linux            2.26.2       2.27.1                Chen Qi
kmod                  21+gitX      22+gitAUTOINC+42f...  Chen Qi
flex                  2.5.39       2.6.0rc1              Chen Qi
curl                  7.44.0       7.46.0                Chen Qi
cpio                  2.11         2.12                  Chen Qi
cups                  2.0.4        2.1.2                 Chen Qi
grep                  2.21         2.22                  Chen Qi
sysstat               11.1.5       11.1.8-1              Chen Qi
xz                    5.2.1        5.2.2                 Chen Qi
build-appliance-i...  12.0.1       14.0.0                Cristian Iorga
qemu                  2.4.0.1      2.4.1                 Cristian Iorga
dhcp                  4.3.2        4.3.3                 Hongxu Jia
ncurses               5.9          6.0.20150627          Hongxu Jia
elfutils              0.163        0.164                 Hongxu Jia
qmmp                  0.8.6        1.0.2                 Hongxu Jia
pax-utils             1.0.5        1.1.4                 Hongxu Jia
createrepo            0.4.11       0.10.4                Hongxu Jia            Versions after 0.9.* use YU...
xmlto                 0.0.26       0.0.28                Hongxu Jia
libgcrypt             1.6.3        1.6.4                 Hongxu Jia
ghostscript           9.16         9.18                  Hongxu Jia
man-pages             4.02         4.03                  Hongxu Jia
help2man-native       1.47.1       1.47.3                Hongxu Jia
gnupg                 2.1.7        2.1.10                Hongxu Jia
waffle                1.5.1        1.5.2                 Jussi Kukkonen
libinput              0.21.0       1.1.2                 Jussi Kukkonen
wayland               1.8.1        1.9.0                 Jussi Kukkonen
weston                1.8.0        1.9.0                 Jussi Kukkonen
gtk-icon-utils-na...  3.18.2       3.18.6                Jussi Kukkonen
gsettings-desktop...  3.18.1       3.19.2                Jussi Kukkonen
glib-2.0              2.46.1       2.46.2                Jussi Kukkonen
pixman                0.32.8       0.33.4                Jussi Kukkonen
libsoup-2.4           2.52.1       2.52.2                Jussi Kukkonen
docbook-xsl-style...  1.78.1       1.79.0                Jussi Kukkonen
libcroco              0.6.9        0.6.10                Jussi Kukkonen
libav                 9.18         11.4                  Jussi Kukkonen
at-spi2-core          2.18.1       2.18.3                Jussi Kukkonen
libdrm                2.4.62       2.4.65                Jussi Kukkonen
gpgme                 1.5.4        1.6.0                 Jussi Kukkonen
vala                  0.28.0       0.30.0                Jussi Kukkonen
libevdev              1.4.2        1.4.5                 Jussi Kukkonen
libgpg-error          1.19         1.21                  Jussi Kukkonen
vte                   0.28.2       0.42.1                Jussi Kukkonen        matchbox-terminal needs to ...
gdk-pixbuf            2.32.1       2.32.2                Jussi Kukkonen
gtk+3                 3.18.2       3.18.6                Jussi Kukkonen
gtk+                  2.24.28      2.24.29               Jussi Kukkonen
librsvg               2.40.11      2.40.12               Jussi Kukkonen
cairo                 1.14.4       1.14.6                Jussi Kukkonen
cmake                 3.3.2        3.4.1                 Jussi Kukkonen
freetype              2.6          2.6.2                 Jussi Kukkonen
glew                  1.12.0       1.13.0                Jussi Kukkonen
cdrtools-native       3.01a31      3.02a03               Jussi Kukkonen
menu-cache            1.0.0        1.0.1                 Jussi Kukkonen
linuxdoc-tools-na...  0.9.69       0.9.71                Jussi Kukkonen
slang                 2.2.4        2.3.0                 Kai Kang
prelink               1.0+gitX     20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.14       5.4.15                Mark Hatle            5.4.15 has a package databa...
libpng12              1.2.54       1.2.55                Maxin B. John
db                    6.0.30       6.1.26                Maxin B. John         Updating to 6.1.x requires ...
libtirpc              0.2.5        1.0.1                 Maxin B. John
libical               1.0.0        1.0.1                 Maxin B. John
kmod-native           21+gitX      22+gitAUTOINC+42f...  No maintainer
musl                  1.1.11+gitX  1.1.12+gitAUTOINC...  No maintainer
cryptodev-module      1.7          1.8                   No maintainer
cryptodev-tests       1.7          1.8                   No maintainer
gcc-source-5.2.0      5.2.0        5.3.0                 No maintainer
dmidecode             2.12         3.0                   No maintainer
gptfdisk              1.0.0        1.0.1                 No maintainer
sgmlspl-native        1.1+gitX     1.03+gitAUTOINC+f...  No maintainer
ifupdown              0.7.48.1     0.7.54ubuntu2         No maintainer
cryptodev-linux       1.7          1.8                   No maintainer
python-pexpect        3.3          4.0.1                 No maintainer
python3-pip           6.1.1        7.1.2                 No maintainer
uclibc-initial        0.9.33+gitX  0.9.33.2+gitAUTOI...  No maintainer
apt-native            1.0.10.1     1.1.4                 No maintainer
cmake-native          3.3.2        3.4.1                 No maintainer
gdb-cross-canadia...  7.9.1        7.10.1                No maintainer
gdb-cross-i586        7.9.1        7.10.1                No maintainer
perl-native           5.22.0       5.22.1                No maintainer
python-scons-native   2.3.6        2.4.1                 No maintainer
python3-native        3.5.0        3.5.1                 No maintainer
python-native         2.7.9        2.7.11                No maintainer
adt-installer         0.3.0        0.3.1                 Randy Witt
unfs3                 0.9.22.r490  0.9.22.r495           Randy Witt
lttng-ust             2.7.0+gitX   2.7.1+gitAUTOINC+...  Richard Purdie
gdb                   7.9.1        7.10.1                Richard Purdie
e2fsprogs             1.42.9       1.42.13               Robert Yang           Updating backported patches...
file                  5.24         5.25                  Robert Yang
git                   2.5.0        2.6.4                 Robert Yang
gmp                   6.0.0        6.1.0                 Robert Yang
less                  479          481                   Robert Yang
ltp                   20150420     20150903              Robert Yang
libbsd                0.8.0        0.8.1                 Robert Yang
wget                  1.16.3       1.17.1                Robert Yang
autogen-native        5.18.5       5.18.6                Robert Yang
base-passwd           3.5.29       3.5.38                Ross Burton           Version 3.5.38 requires cde...
uclibc                0.9.33+gitX  0.9.33.2+gitAUTOI...  Ross Burton
unifdef               2.10         2.11                  Ross Burton
lsbinitscripts        9.64         9.65                  Ross Burton
alsa-lib              1.0.29       1.1.0                 Tanu Kaskinen
alsa-tools            1.0.29       1.1.0                 Tanu Kaskinen
alsa-utils            1.0.29       1.1.0                 Tanu Kaskinen
libsndfile1           1.0.25       1.0.26                Tanu Kaskinen
pulseaudio            6.0          7.1                   Tanu Kaskinen
alsa-plugins          1.0.29       1.1.0                 Tanu Kaskinen
alsa-utils-scripts    1.0.29       1.1.0                 Tanu Kaskinen
gettext               0.19.4       0.19.6                Wenzong Fan
ccache                3.2.3        3.2.4                 Wenzong Fan
chkconfig             1.3.58       1.7                   Wenzong Fan           Version 1.5 requires selinux

Upgradable count: 153
Upgradable total count: 163

The based commit is:

commit 8807f4fd8a9ccdcdec016d87fd18fd0717f35dca
Author: Otavio Salvador <otavio@ossystems.com.br>
Date:   Fri Dec 11 15:32:56 2015 -0200

    lttng-tools: Revert wrong enforcement of Python 3.0 use
    
    The code has support and checks for Python 2 and Python 3 however
    during the development of 2.7 release a requirement for Python 3 was
    included.
    
    The Python 3 is required for runtime tests to run however those are
    not in use now so we can just disable the enforcement for now.
    
    This reverts the commit restoring the Python 2 support.
    
    Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

