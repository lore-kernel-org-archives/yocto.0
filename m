Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8773DE00BF4; Sun,  6 Sep 2015 21:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76E84E0076A
	for <yocto@yoctoproject.org>; Sun,  6 Sep 2015 21:33:08 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id C63B0849E18F
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 00:33:07 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 07 Sep 2015 04:33:07 -0000
Message-ID: <20150907043307.13836.54313@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 07 Sep 2015 04:33:13 -0000
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

http://packages.yoctoproject.org/

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1        1.3.2                 Alejandro Hernandez
midori                0.5.8        0.5.11                Alejandro Hernandez
python                2.7.9        2.7.10                Alejandro Hernandez
gnome-icon-theme      2.31.0       3.12.0                Alejandro Hernandez
acpid                 2.0.23       2.0.25                Aníbal Limón
apt                   1.0.10.1     1.0.10.2              Aníbal Limón
sqlite3               3.8.10.2     3.8.11.1              Aníbal Limón
pinentry              0.9.2        0.9.5                 Armin Kuster
linux-libc-headers    4.1          4.2                   Bruce Ashfield
guilt-native          0.35+gitX    0.36+gitAUTOINC+2...  Bruce Ashfield
resolvconf            1.77         1.78                  Chen Qi
dbus-test             1.8.20       1.10.0                Chen Qi
dbus                  1.8.20       1.10.0                Chen Qi
cups                  2.0.4        2.1.0                 Chen Qi
sysstat               11.1.5       11.1.6-1              Chen Qi
bluez5                5.33         5.34                  Cristian Iorga
connman               1.29         1.30                  Cristian Iorga
iproute2              4.1.1        4.2.0                 Cristian Iorga
libpcap               1.6.2        1.7.4                 Cristian Iorga
build-appliance-i...  12.0.1       13.0.0                Cristian Iorga
db                    6.0.30       6.1.26                Cristian Iorga       Updating to 6.1.x requires ...
libical               1.0.0        1.0.1                 Cristian Iorga
libtirpc              0.2.5        0.3.2                 Cristian Iorga
net-tools             1.60-26      1.60-27               Cristian Iorga
harfbuzz              1.0.2        1.0.3                 Cristian Iorga
kernelshark           2.5.3+gitX   2.6+gitAUTOINC+9b...  Darren Hart
trace-cmd             2.5.3+gitX   2.6+gitAUTOINC+9b...  Darren Hart
dhcp                  4.3.2        4.3.3                 Hongxu Jia
ncurses               5.9          6.0-20150905          Hongxu Jia
qmmp                  0.8.6        0.9.1                 Hongxu Jia
pax-utils             1.0.5        1.1.1                 Hongxu Jia
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
adt-installer         0.2.0        0.3.0                 Jessica Zhang
waffle                1.5.1        1.5.2                 Jussi Kukkonen
libinput              0.21.0       1.0.1                 Jussi Kukkonen
wayland               1.8.1        1.8.92                Jussi Kukkonen
weston                1.8.0        1.8.92                Jussi Kukkonen
gtk-icon-utils-na...  3.16.6       3.17.8                Jussi Kukkonen
libxcb                1.11         1.11.1                Jussi Kukkonen
pixman                0.32.6       0.33.2                Jussi Kukkonen
xserver-xorg          1.17.2       1.17.99.901           Jussi Kukkonen
vala                  0.28.0       0.28.1                Jussi Kukkonen
vte                   0.28.2       0.40.2                Jussi Kukkonen       matchbox-terminal needs to ...
glew                  1.12.0       1.13.0                Jussi Kukkonen
python-mako           1.0.1        1.0.2                 Khem Raj
python-nose           1.3.6        1.3.7                 Khem Raj
python-numpy          1.7.0        1.9.2                 Khem Raj
rpm                   5.4.14       5.4.15                Mark Hatle           5.4.15 has a package databa...
dmidecode             2.12         3.0                   No maintainer
orc                   0.4.23       0.4.24                No maintainer
sgmlspl-native        1.1+gitX     1.03+gitAUTOINC+f...  No maintainer
binutils-cross-ca...  2.25.1       20131001              No maintainer
binutils-cross-i586   2.25.1       20131001              No maintainer
binutils-crosssdk...  2.25.1       20131001              No maintainer
nss                   3.19.2       3.20                  No maintainer
xuser-account         0.1          1.0                   No maintainer
clutter-gst-3.0       3.0.8        3.0.10                No maintainer
swig                  3.0.6        3.0.7                 No maintainer
python3-pip           6.1.1        7.1.2                 No maintainer
python3-setuptools    18.2         18.3                  No maintainer
ifupdown              0.7.48.1     0.7.54ubuntu1         No maintainer
uclibc-initial        0.9.33+gitX  0.9.33.2+gitAUTOI...  No maintainer
apt-native            1.0.10.1     1.0.10.2              No maintainer
gcc-source-4.8.4      4.8.4        4.8.5                 No maintainer
gdb-cross-canadia...  7.9.1        7.10                  No maintainer
gdb-cross-i586        7.9.1        7.10                  No maintainer
iso-codes             3.58         3.61                  No maintainer
python-native         2.7.9        2.7.10                No maintainer
libav                 9.18         11.4                  Paul Eggleton
libevdev              1.4.2        1.4.4                 Paul Eggleton
libgpg-error          1.19         1.20                  Paul Eggleton
libpng                1.6.17       1.6.18                Randy Witt
libtasn1              4.5          4.6                   Randy Witt
unfs3                 0.9.22.r490  0.9.22.r495           Randy Witt
libunistring          0.9.5        0.9.6                 Randy Witt
btrfs-tools           4.1.2        4.2                   Richard Purdie
gdb                   7.9.1        7.10                  Richard Purdie
python-pygobject      2.28.3       3.17.90               Richard Purdie       Newer versions of python-py...
subversion            1.8.13       1.9.1                 Richard Purdie
libdrm                2.4.62       2.4.64                Richard Purdie
e2fsprogs             1.42.9       1.42.13               Robert Yang          Updating backported patches...
git                   2.5.0        2.5.1                 Robert Yang
gmp                   6.0.0        6.0.0a                Robert Yang
less                  479          481                   Robert Yang
ltp                   20150420     20150903              Robert Yang
liberation-fonts      1.04         2.00.1                Ross Burton          2.x depends on fontforge pa...
base-passwd           3.5.29       3.5.38                Ross Burton          Version 3.5.38 requires cde...
kbd                   2.0.2        2.0.3                 Ross Burton
uclibc                0.9.33+gitX  0.9.33.2+gitAUTOI...  Ross Burton
systemtap             2.7+gitX     2.8+gitAUTOINC+08...  Ross Burton
tiff                  4.0.4        4.0.5                 Ross Burton
mkelfimage            4.0+gitX     4.1+gitAUTOINC+6c...  Ross Burton          mkelfimage has been removed...
mtd-utils             1.5.1+gitX   1.5.2+gitAUTOINC+...  Ross Burton
webkit-gtk            1.8.3        1.9.92                Ross Burton
icu                   55.1         55.1-AIX7.1-VA2       Ross Burton
libassuan             2.2.1        2.3.0                 Ross Burton
libidn                1.30         1.32                  Ross Burton
lighttpd              1.4.36       1.4.37                Ross Burton
procps                3.3.10       3.3.11                Ross Burton
pulseaudio            6.0          6.99.1                Tanu Kaskinen
systemtap-uprobes     2.7+gitX     2.8+gitAUTOINC+08...  Tom Zanussi
gettext               0.19.4       0.19.5.1              Wenzong Fan
chkconfig             1.3.58       1.5                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 93
Upgradable total count: 103

The based commit is:

commit 8402958cd2cb87b8283c8ee4e2d08e1a6717d67a
Author: Peter Seebach <peter.seebach@windriver.com>
Date:   Fri Sep 4 17:16:27 2015 -0500

    pseudo_1.7.3.bb: New version of pseudo
    
    Pseudo 1.7 adds an experimental feature (which I think needs more testing
    before it becomes the default) allowing the pseudo client to store modes
    and uid/gid values in extended attributes rather than using the sqlite
    database. On most Linux-like systems, this works only if the underlying
    file is a plain file or a directory.
    
    Also added is a profiling feature to allow some amount of reporting on
    the wall-clock time the client spends in wrappers, processing operations,
    or in IPC. This feature is not intendeded to be precisely accurate, but
    gives a good overview of where time is going.
    
    Based on the results from the profiling feature, the client now suppresses
    OP_OPEN and OP_EXEC messages if the server is not logging messages, and
    no longer uses constant dynamic allocation and free cycles for canonicalized
    paths.
    
    There's a few other likely-looking optimizations being considered, but
    this seemed like a good cutoff for now.
    
    1.7.1 fixes two bugs, one affecting mostly XFS systems with 64-bit
    inode values, and one affecting code that called realpath(x, NULL), such
    as the RPM backend.
    
    1.7.2 fixes an indirect side-effect of the chmod fixes to deal with
    umask 0700, which had no effect with opkg 0.2.4 but appears to cause
    failures with 0.3.0.
    
    1.7.3 prevents mkdirat() (and mkfifoat()) from setting errno on success,
    because glibc's localedef inexplicably errors out if errno was set, even
    if the operation's actual return code (which it tests) indicated
    success.
    
    Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

