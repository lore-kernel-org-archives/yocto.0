Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33E89E00BDE; Sun, 30 Aug 2015 21:34:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27806E00A7D
	for <yocto@yoctoproject.org>; Sun, 30 Aug 2015 21:34:39 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 86A6E8481E25
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 00:34:38 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 31 Aug 2015 04:34:38 -0000
Message-ID: <20150831043438.11939.47623@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 31 Aug 2015 04:34:45 -0000
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

Package               Version            Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1              1.3.2                 Alejandro Hernandez
midori                0.5.8              0.5.11                Alejandro Hernandez
python-smmap          0.8.2              0.9.0                 Alejandro Hernandez
python                2.7.9              2.7.10                Alejandro Hernandez
gnome-icon-theme      2.31.0             3.12.0                Alejandro Hernandez
acpid                 2.0.23             2.0.25                Aníbal Limón
apt                   1.0.10.1           1.0.10.2              Aníbal Limón
dpkg                  1.17.25            1.18.2                Aníbal Limón
sqlite3               3.8.10.2           3.8.11.1              Aníbal Limón
xinetd                2.3.15             20030122              Aníbal Limón
nettle                2.7.1              3.1.1                 Armin Kuster
pinentry              0.9.2              0.9.5                 Armin Kuster
linux-libc-headers    4.1                4.2                   Bruce Ashfield
guilt-native          0.35+gitX          0.36+gitAUTOINC+2...  Bruce Ashfield
resolvconf            1.77               1.78                  Chen Qi
dbus-test             1.8.20             1.10.0                Chen Qi
dbus                  1.8.20             1.10.0                Chen Qi
sysstat               11.1.5             11.1.6-1              Chen Qi
iproute2              3.17.0             4.1.1                 Cristian Iorga
libpcap               1.6.2              1.7.4                 Cristian Iorga
build-appliance-i...  12.0.1             13.0.0                Cristian Iorga
db                    6.0.30             6.1.26                Cristian Iorga
libical               1.0.0              1.0.1                 Cristian Iorga
libtirpc              0.2.5              0.3.2                 Cristian Iorga
net-tools             1.60-25            1.60-26               Cristian Iorga
kernelshark           2.5.3+gitX         2.6+gitAUTOINC+9b...  Darren Hart
trace-cmd             2.5.3+gitX         2.6+gitAUTOINC+9b...  Darren Hart
ncurses               5.9                6.0-20150822          Hongxu Jia
qmmp                  0.8.6              0.8.8                 Hongxu Jia
pax-utils             1.0.5              1.1.1                 Hongxu Jia
createrepo            0.4.11             0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
adt-installer         0.2.0              0.3.0                 Jessica Zhang
waffle                1.5.1              1.5.2                 Jussi Kukkonen
libinput              0.21.0             1.0.0                 Jussi Kukkonen
wayland               1.8.1              1.8.91                Jussi Kukkonen
weston                1.8.0              1.8.91                Jussi Kukkonen
gtk-icon-utils-na...  3.16.6             3.17.7                Jussi Kukkonen
pixman                0.32.6             0.33.2                Jussi Kukkonen
xf86-video-omapfb     0.1.1+gitrX        0.1.1.1+gitrAUTOI...  Jussi Kukkonen
vala                  0.28.0             0.28.1                Jussi Kukkonen
vte                   0.28.2             0.41.90               Jussi Kukkonen
glew                  1.12.0             1.13.0                Jussi Kukkonen
mailx                 12.5               12.5-5                Kai Kang
libsdl                1.2.15             1.2.15-1              Kai Kang
python-mako           1.0.1              1.0.2                 Khem Raj
python-nose           1.3.6              1.3.7                 Khem Raj
python-numpy          1.7.0              1.9.2                 Khem Raj
pseudo                1.6.7              1.7.0                 Mark Hatle
rpm                   5.4.14             5.4.15                Mark Hatle
gcc-source-4.9.3      4.9.3              5.2.0                 No maintainer
orc                   0.4.23             0.4.24                No maintainer
gcc-source-4.8.4      4.8.4              4.8.5                 No maintainer
sgmlspl-native        1.1+gitX           1.03+gitAUTOINC+f...  No maintainer
binutils-cross-ca...  2.25.1             20131001              No maintainer
binutils-cross-i586   2.25.1             20131001              No maintainer
binutils-crosssdk...  2.25.1             20131001              No maintainer
nss                   3.19.2             3.20                  No maintainer
xuser-account         0.1                1.0                   No maintainer
swig                  3.0.6              3.0.7                 No maintainer
python3-pip           6.1.1              7.1.2                 No maintainer
uclibc-initial        0.9.33+gitX        0.9.33.2+gitAUTOI...  No maintainer
apt-native            1.0.10.1           1.0.10.2              No maintainer
openjade-native       1.3.2              1.3.3                 No maintainer
gdb-cross-canadia...  7.9.1              7.10                  No maintainer
gdb-cross-i586        7.9.1              7.10                  No maintainer
iso-codes             3.58               3.60                  No maintainer
python-native         2.7.9              2.7.10                No maintainer
opkg                  0.2.4              0.3.0                 Paul Barker
openssh               7.0p1              7.1p1                 Paul Eggleton
dropbear              2015.67            2015.68               Paul Eggleton
cmake                 3.2.2              3.3.1-1               Paul Eggleton
libav                 9.18               11.4                  Paul Eggleton
gpgme                 1.5.4              1.6.0                 Paul Eggleton
libevdev              1.4.2              1.4.3                 Paul Eggleton
libgpg-error          1.19               1.20                  Paul Eggleton
cmake-native          3.2.2              3.3.1-1               Paul Eggleton
libpng                1.6.17             1.6.18                Randy Witt
python-async          0.6.1              0.6.2                 Randy Witt
unfs3                 0.9.22.r490        0.9.22.r495           Randy Witt
libunistring          0.9.5              0.9.6                 Randy Witt
gdb                   7.9.1              7.10                  Richard Purdie
python-pygobject      2.28.3             3.17.90               Richard Purdie       Newer versions of python-py...
subversion            1.8.13             1.9.0                 Richard Purdie
libdrm                2.4.62             2.4.64                Richard Purdie
e2fsprogs             1.42.9             1.42.13               Robert Yang
file                  5.24               6.23                  Robert Yang
git                   2.5.0              2.5.1                 Robert Yang
remake                3.82+dbg-0.9+gitX  4.1+dbg-1.1           Robert Yang
gmp                   6.0.0              6.0.0a                Robert Yang
liberation-fonts      1.04               2.00.1                Ross Burton          2.x depends on fontforge pa...
base-passwd           3.5.29             3.5.38                Ross Burton          Version 3.5.38 requires cde...
kbd                   2.0.2              2.0.3                 Ross Burton
uclibc                0.9.33+gitX        0.9.33.2+gitAUTOI...  Ross Burton
systemtap             2.7+gitX           2.8+gitAUTOINC+08...  Ross Burton
tiff                  4.0.4              4.0.5                 Ross Burton
mkelfimage            4.0+gitX           4.1+gitAUTOINC+6c...  Ross Burton
mtd-utils             1.5.1+gitX         1.5.2+gitAUTOINC+...  Ross Burton
webkit-gtk            1.8.3              1.9.92                Ross Burton          >= 1.10.2 needs ruby
icu                   55.1               55.1-AIX7.1-VA2       Ross Burton
libassuan             2.2.1              2.3.0                 Ross Burton
libxslt               1.1.28             1.1.28-1              Ross Burton
libidn                1.30               1.32                  Ross Burton
lighttpd              1.4.36             1.4.37                Ross Burton
procps                3.3.10             3.3.11                Ross Burton
libunique             1.1.6              3.0.2                 Ross Burton
pulseaudio            6.0                6.99.1                Tanu Kaskinen
systemtap-uprobes     2.7+gitX           2.8+gitAUTOINC+08...  Tom Zanussi
gettext               0.19.4             0.19.5.1              Wenzong Fan
ccache                3.1.11             3.2.3                 Wenzong Fan
chkconfig             1.3.58             1.5                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 104
Upgradable total count: 110

The based commit is:

commit 9f991103218f6fff67934b51411d31180d5d3e1a
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Aug 25 17:56:53 2015 +0100

    oeqa: Add allarch sstate sig test
    
    "allarch" targets should be MACHINE invariant. This means their sstate
    signature should not change regardless of which MACHINE is built.
    
    Errors keep creeping in around this area so automating this as part
    of self test seems the best way to maintain this.
    
    The "do_build" stamps are known to differ and are harmless so those
    are excluded from the test.
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

