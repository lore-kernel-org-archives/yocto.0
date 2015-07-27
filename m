Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C40E0096C; Sun, 26 Jul 2015 21:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4306EE0086E
	for <yocto@yoctoproject.org>; Sun, 26 Jul 2015 21:34:15 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 2711287666E9
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 00:34:14 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 27 Jul 2015 04:34:14 -0000
Message-ID: <20150727043414.2008.54012@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 27 Jul 2015 04:34:22 -0000
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
which                 2.20               2.21                  Alejandro Hernandez
midori                0.5.8              0.5.10                Alejandro Hernandez
python-smmap          0.8.2              0.9.0                 Alejandro Hernandez
python3               3.4.3              3.5.0b3               Alejandro Hernandez
python                2.7.9              3.5.0b3               Alejandro Hernandez
texinfo               5.2                6.0                   Alejandro Hernandez  Checking script parses dire...
gnome-icon-theme      2.31.0             3.12.0                Alejandro Hernandez
jpeg                  8d                 9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
dpkg                  1.17.25            1.18.1                Aníbal Limón
lsof                  4.88               4.89                  Aníbal Limón
sqlite3               3.8.10.2           3.8.10.2.             Aníbal Limón
screen                4.0.3              4.3.1                 Aníbal Limón
xinetd                2.3.15             20030122              Aníbal Limón
nettle                2.7.1              3.1rc3                Armin Kuster         3.0.0 breaks gnutls, api ch...
pinentry              0.9.2              0.9.5                 Armin Kuster
linux-libc-headers    4.1                4.1.3                 Bruce Ashfield
console-tools         0.3.2              1999.03.02            Chen Qi
dbus-test             1.8.18             1.8.20                Chen Qi
dbus                  1.8.18             1.8.20                Chen Qi
cups                  2.0.3              2.1b1                 Chen Qi
sudo                  1.8.13             1.8.14p3              Chen Qi
iproute2              3.17.0             4.1.1                 Cristian Iorga
libpcap               1.6.2              1.7.4                 Cristian Iorga
gstreamer1.0-libav    1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0          1.4.5              1.5.2                 Cristian Iorga
gstreamer1.0-rtsp...  1.4.5              1.5.2                 Cristian Iorga
qemu                  2.3.99+2.4.0-rc2   5                     Cristian Iorga
db                    6.0.30             6.1.26.NC             Cristian Iorga       API compatibility issue
libical               1.0.0              1.0.1                 Cristian Iorga
libtirpc              0.2.5              0.3.2                 Cristian Iorga
harfbuzz              0.9.41             1.0.0                 Cristian Iorga
ncurses               5.9                20150725              Hongxu Jia
distcc                3.1                3.2rc1                Hongxu Jia
pax-utils             1.0.3              1.0.5                 Hongxu Jia
perl                  5.22.0             5.23.1                Hongxu Jia
createrepo            0.4.11             0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
man-pages             4.00               4.01                  Hongxu Jia
gnupg                 2.1.5              2.1.6                 Hongxu Jia
cracklib              2.9.4              2.9.5                 Hongxu Jia
help2man-native       1.46.4             1.47.1                Hongxu Jia
bash                  4.3                4.3.30                Hongxu Jia           The latest version in yocto...
libinput              0.18.0             0.20.0                Jussi Kukkonen
gtk-icon-utils-na...  3.16.4             3.17.5                Jussi Kukkonen
xf86-input-vmmouse    13.0.0             13.1.0                Jussi Kukkonen
vte                   0.28.2             0.40.2                Jussi Kukkonen
gtk+3                 3.16.4             3.16.6                Jussi Kukkonen
libnotify             0.6.0              0.7.6                 Jussi Kukkonen
fontconfig            2.11.93            2.11.94               Jussi Kukkonen
python-nose           1.3.6              1.3.7                 Khem Raj
python-numpy          1.7.0              1.9.2                 Khem Raj
rpm                   5.4.14             5.4.15                Mark Hatle
bootchart2            0.14.6+gitX        2.0.0.3+gitAUTOIN...  No maintainer
gcc-source-4.9.3      4.9.3              5.2.0                 No maintainer
libepoxy              1.2+gitX           1.3.1+gitAUTOINC+...  No maintainer
orc                   0.4.23             0.4.24                No maintainer
xuser-account         0.1                1.0                   No maintainer
gcc-sanitizers        5.1.0              5.2.0                 No maintainer
gcc-source-5.1.0      5.1.0              5.2.0                 No maintainer
clutter-gst-3.0       3.0.6              3.0.8                 No maintainer
adwaita-icon-theme    3.16.2.1           3.17.4                No maintainer
uclibc-initial        0.9.33+gitX        2001.11.23.+gitAU...  No maintainer
glibc-initial         2.21               20090510              No maintainer
binutils-cross-ca...  2.25               20131001              No maintainer
binutils-cross-i586   2.25               20131001              No maintainer
binutils-crosssdk...  2.25               20131001              No maintainer
gcc-cross-i586        5.1.0              5.2.0                 No maintainer
gcc-cross-canadia...  5.1.0              5.2.0                 No maintainer
libgcc-initial        5.1.0              5.2.0                 No maintainer
gcc-crosssdk-init...  5.1.0              5.2.0                 No maintainer
gcc-cross-initial...  5.1.0              5.2.0                 No maintainer
gcc-source-4.8.4      4.8.4              5.2.0                 No maintainer
gcc-crosssdk-x86_64   5.1.0              5.2.0                 No maintainer
sgmlspl-native        1.1+gitX           1.03.+gitAUTOINC+...  No maintainer
eglinfo-fb            1.0                1.0.0                 No maintainer
eglinfo-x11           1.0                1.0.0                 No maintainer
perl-native           5.22.0             5.23.1                No maintainer
python3-native        3.4.3              3.5.0b3               No maintainer
python-native         2.7.9              3.5.0b3               No maintainer
opkg                  0.2.4              0.3.0                 Paul Barker
docbook-sgml-dtd-...  3.1                41                    Paul Eggleton
docbook-sgml-dtd-...  4.1                41                    Paul Eggleton
qt4-x11-free          4.8.7              5.5.0                 Paul Eggleton
openssh               6.8p1              6.9p1                 Paul Eggleton
cmake                 3.2.2              3.3.0                 Paul Eggleton
libav                 9.18               11.4                  Paul Eggleton
qt4-embedded          4.8.7              5.5.0                 Paul Eggleton
gpgme                 1.5.4              1.5.5                 Paul Eggleton
libevdev              1.4.2              1.4.3                 Paul Eggleton
cmake-native          3.2.2              3.3.0                 Paul Eggleton
libpng12              1.2.53             1.6.17                Randy Witt
python-async          0.6.1              0.6.2                 Randy Witt
tcf-agent             1.3.0+gitX         8.0+gitAUTOINC+31...  Randy Witt
mdadm                 3.3.2              3.3.3                 Randy Witt
libunistring          0.9.4              0.9.6                 Randy Witt
kexec-tools           2.0.9              2.0.10                Richard Purdie
btrfs-tools           4.1.1+gitX         4.1.2+gitAUTOINC+...  Richard Purdie
python-distribute     0.6.32             0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-pygobject      2.28.3             3.17.1                Richard Purdie       Newer versions of python-py...
gcc-runtime           5.1.0              5.2.0                 Richard Purdie
libgcc                5.1.0              5.2.0                 Richard Purdie
libgfortran           5.1.0              5.2.0                 Richard Purdie
libmpc                1.0.2              1.0.3                 Richard Purdie
binutils              2.25               20131001              Robert Yang
e2fsprogs             1.42.9             1.42.13               Robert Yang
git                   2.4.4              2.4.6                 Robert Yang
remake                3.82+dbg-0.9+gitX  980720+8674616f7f     Robert Yang
less                  478                479                   Robert Yang
libuser               0.61               0.62                  Robert Yang
liberation-fonts      1.04               2.00.1                Ross Burton          2.00.0 - fontforge package ...
webkit-gtk            1.8.3              1.9.92                Ross Burton          >= 1.10.2 needs ruby
lighttpd              1.4.35             1.4.36                Ross Burton
build-appliance-i...  12.0.1             13.0.0                Saul Wold
kbd                   2.0.2              2.0.3                 Saul Wold
uclibc                0.9.33+gitX        0.9.33.2+gitAUTOI...  Saul Wold
systemtap             2.7+gitX           2.8+gitAUTOINC+08...  Saul Wold
libtheora             1.1.1              1.2.0alpha1           Saul Wold
mkelfimage            4.0+gitX           4.1+gitAUTOINC+6c...  Saul Wold
mtd-utils             1.5.1+gitX         1.5.2+gitAUTOINC+...  Saul Wold
libunique             1.1.6              3.0.2                 Saul Wold
libidn                1.30               1.31                  Saul Wold
cross-localedef-n...  2.21               20090510              Saul Wold
mx-1.0                1.4.7+gitX         1.99.4+gitAUTOINC...  Saul Wold
ca-certificates       20141019           20150426              Saul Wold
libvorbis             1.3.4              1.3.5                 Tanu Kaskinen
systemtap-uprobes     2.7+gitX           2.8+gitAUTOINC+08...  Tom Zanussi
chkconfig-alterna...  1.3.59+X           6+AUTOINC+945b3d108b  Wenzong Fan
gettext               0.19.4             0.19.5.1              Wenzong Fan
ccache                3.1.11             3.2.2                 Wenzong Fan
chkconfig             1.3.58             1.5                   Wenzong Fan

Upgradable count: 124
Upgradable total count: 134

The based commit is:

commit 270a1716b02981aad353c266d3d19735fc85cf10
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Jul 26 08:05:43 2015 +0000

    updated-rc.d: Only add dependencies in target case
    
    Avoid errors like:
      ERROR: Nothing PROVIDES 'nativesdk-update-rc.d' (but virtual:nativesdk:dbus_1.8.18.bb
      DEPENDS on or otherwise requires it).
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

