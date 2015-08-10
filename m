Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B82B6E00A5B; Sun,  9 Aug 2015 21:29:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4695E0094D
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 21:29:14 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id BA3A8830E10B
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 00:29:13 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 04:29:13 -0000
Message-ID: <20150810042913.6377.22197@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Aug 2015 04:29:19 -0000
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
texinfo               5.2                6.0                   Alejandro Hernandez
midori                0.5.8              0.5.10                Alejandro Hernandez
python-smmap          0.8.2              0.9.0                 Alejandro Hernandez
python                2.7.9              2.7.10                Alejandro Hernandez
which                 2.20               2.21                  Alejandro Hernandez
gnome-icon-theme      2.31.0             3.12.0                Alejandro Hernandez
jpeg                  8d                 9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
apt                   1.0.9.9            1.0.10.1              Aníbal Limón
dpkg                  1.17.25            1.18.2                Aníbal Limón
sqlite3               3.8.10.2           3.8.11.1              Aníbal Limón
lsof                  4.88               4.89                  Aníbal Limón
screen                4.0.3              4.3.1                 Aníbal Limón
xinetd                2.3.15             20030122              Aníbal Limón
lz4                   128+gitX           131+gitAUTOINC+d8...  Armin Kuster
nettle                2.7.1              3.1.1                 Armin Kuster
pinentry              0.9.2              0.9.5                 Armin Kuster
linux-libc-headers    4.1                4.1.4                 Bruce Ashfield
resolvconf            1.76               1.77                  Chen Qi
cups                  2.0.3              2.0.4                 Chen Qi
sysstat               11.1.5             11.1.5-1              Chen Qi
apmd                  3.2.2-14           3.2.2-15              Cristian Iorga
bluez5                5.32               5.33                  Cristian Iorga
iproute2              3.17.0             4.1.1                 Cristian Iorga
libpcap               1.6.2              1.7.4                 Cristian Iorga
build-appliance-i...  12.0.1             13.0.0                Cristian Iorga
qemu                  2.3.99+2.4.0-rc3   5                     Cristian Iorga
db                    6.0.30             6.1.26                Cristian Iorga
libtirpc              0.2.5              0.3.2                 Cristian Iorga
net-tools             1.60-25            1.60-26               Cristian Iorga
libical               1.0.0              1.0.1                 Cristian Iorga
dhcp                  4.3.2              4.3.3                 Hongxu Jia
ncurses               5.9                6.0-20150808          Hongxu Jia
qmmp                  0.8.5              0.8.6                 Hongxu Jia
createrepo            0.4.11             0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
man-pages             4.01               4.02                  Hongxu Jia
bash                  4.3                4.3.30                Hongxu Jia
adt-installer         0.2.0              0.3.0                 Jessica Zhang
libinput              0.18.0             0.21.0                Jussi Kukkonen
gtk-icon-utils-na...  3.16.4             3.17.6                Jussi Kukkonen
xf86-input-vmmouse    13.0.0             13.1.0                Jussi Kukkonen
pixman                0.32.6             0.33.2                Jussi Kukkonen
vte                   0.28.2             0.40.2                Jussi Kukkonen
gtk+3                 3.16.4             3.16.6                Jussi Kukkonen
libnotify             0.6.0              0.7.6                 Jussi Kukkonen
librsvg               2.40.9             2.40.10               Jussi Kukkonen
cairo                 1.14.2             5c-1.5                Jussi Kukkonen
fontconfig            2.11.93            2.11.94               Jussi Kukkonen
mailx                 12.5               12.5-4                Kai Kang
libsdl                1.2.15             1.2.15-1              Kai Kang
python-nose           1.3.6              1.3.7                 Khem Raj
python-numpy          1.7.0              1.9.2                 Khem Raj
cross-localedef-n...  2.21               20090510              Khem Raj
rpm                   5.4.14             5.4.15                Mark Hatle
bootchart2            0.14.6+gitX        0.14.7+gitAUTOINC...  No maintainer
gcc-source-4.9.3      4.9.3              5.2.0                 No maintainer
libepoxy              1.2+gitX           1.3.1+gitAUTOINC+...  No maintainer
orc                   0.4.23             0.4.24                No maintainer
gcc-source-4.8.4      4.8.4              4.8.5                 No maintainer
nss                   3.19.1             3.19.2                No maintainer
xuser-account         0.1                1.0                   No maintainer
clutter-gst-3.0       3.0.6              3.0.8                 No maintainer
python3-pip           6.1.1              7.1.0                 No maintainer
python3-setuptools    15.2               18.1                  No maintainer
adwaita-icon-theme    3.16.2.1           3.17.4                No maintainer
uclibc-initial        0.9.33+gitX        2001.11.23.+gitAU...  No maintainer
glibc-initial         2.21               20090510              No maintainer
binutils-cross-ca...  2.25               20131001              No maintainer
binutils-cross-i586   2.25               20131001              No maintainer
binutils-crosssdk...  2.25               20131001              No maintainer
sgmlspl-native        1.1+gitX           1.03.+gitAUTOINC+...  No maintainer
perl-native           5.22.0             5.23.1                No maintainer
python3-native        3.4.3              3.5.0b4               No maintainer
python-native         2.7.9              3.5.0b4               No maintainer
opkg                  0.2.4              0.3.0                 Paul Barker
docbook-sgml-dtd-...  3.1                41                    Paul Eggleton
docbook-sgml-dtd-...  4.1                41                    Paul Eggleton
openssh               6.8p1              6.9p1                 Paul Eggleton
dropbear              2015.67            2015.68               Paul Eggleton
cmake                 3.2.2              3.3.0-1               Paul Eggleton
libav                 9.18               11.4                  Paul Eggleton
gpgme                 1.5.4              1.5.5                 Paul Eggleton
libevdev              1.4.2              1.4.3                 Paul Eggleton
blktool               4-6.1              4-7                   Paul Eggleton
cmake-native          3.2.2              3.3.0-1               Paul Eggleton
python-async          0.6.1              0.6.2                 Randy Witt
mdadm                 3.3.2              3.3.4                 Randy Witt
libunistring          0.9.4              0.9.6                 Randy Witt
glibc                 2.21               2.22                  Richard Purdie
btrfs-tools           4.1.1+gitX         4.1.2+gitAUTOINC+...  Richard Purdie
python-distribute     0.6.32             0.6.49                Richard Purdie
python-pygobject      2.28.3             3.17.1                Richard Purdie       Newer versions of python-py...
subversion            1.8.13             1.9.0                 Richard Purdie
binutils              2.25               2.25.1                Robert Yang
e2fsprogs             1.42.9             1.42.13               Robert Yang
file                  5.23               5.24                  Robert Yang
git                   2.4.6              2.5.0                 Robert Yang
remake                3.82+dbg-0.9+gitX  4.1+dbg-1.1+cf546...  Robert Yang
libcheck              0.9.14             0.10.0                Robert Yang
liberation-fonts      1.04               2.00.1                Ross Burton          2.x depends on fontforge pa...
base-passwd           3.5.29             3.5.38                Ross Burton
kbd                   2.0.2              2.0.3                 Ross Burton
uclibc                0.9.33+gitX        0.9.33.2+gitAUTOI...  Ross Burton
systemtap             2.7+gitX           2.8+gitAUTOINC+08...  Ross Burton
mkelfimage            4.0+gitX           4.1+gitAUTOINC+6c...  Ross Burton
mtd-utils             1.5.1+gitX         1.5.2+gitAUTOINC+...  Ross Burton
webkit-gtk            1.8.3              1.9.92                Ross Burton          >= 1.10.2 needs ruby
libxslt               1.1.28             1.1.28-1              Ross Burton
libidn                1.30               1.32                  Ross Burton
lsbinitscripts        9.63               9.64                  Ross Burton
procps                3.3.10             3.3.11                Ross Burton
libunique             1.1.6              3.0.2                 Ross Burton
ca-certificates       20141019           20150426              Ross Burton
libvorbis             1.3.4              1.3.5                 Tanu Kaskinen
systemtap-uprobes     2.7+gitX           2.8+gitAUTOINC+08...  Tom Zanussi
chkconfig-alterna...  1.3.59+X           6+AUTOINC+945b3d108b  Wenzong Fan
gettext               0.19.4             0.19.5.1              Wenzong Fan
ccache                3.1.11             3.2.2                 Wenzong Fan
chkconfig             1.3.58             1.5                   Wenzong Fan

Upgradable count: 114
Upgradable total count: 119

The based commit is:

commit 588e19058f631a1cc78002e1969a5459cd626afb
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Aug 9 15:10:08 2015 -0700

    libpam: Fix patch broken during upgrade
    
    "0x200" became "0200" during the upgrade to libpam 1.2.1 in:
    http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=88dd997d9941b63ae9eead6690ecf2b785c0740c
    and this broke the IMAGE_FEATURES like debug-tweaks.
    
    I've converted all the values to octal here to match the original
    header file convention and make it clearer.
    
    [YOCTO #8033]
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

