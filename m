Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE45AE006EE; Mon, 20 Jul 2015 03:32:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA9F0E0034B
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 03:31:56 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 1F2E084A27E9
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 06:31:55 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 20 Jul 2015 10:31:55 -0000
Message-ID: <20150720103155.14545.58970@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Jul 2015 10:32:00 -0000
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

Package               Version           Upstream version      Maintainer           NoUpgradeReason
--------------------  ----------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1             1.3.2                 Alejandro Hernandez
midori                0.5.8             0.5.10                Alejandro Hernandez
python-smmap          0.8.2             0.9.0                 Alejandro Hernandez
python3               3.4.3             3.5.0b3               Alejandro Hernandez
python                2.7.9             3.5.0b3               Alejandro Hernandez
cronie                1.4.12            1.5.0                 Alejandro Hernandez
texinfo               5.2               6.0                   Alejandro Hernandez  Checking script parses dire...
which                 2.20              2.21                  Alejandro Hernandez
gnome-icon-theme      2.31.0            3.12.0                Alejandro Hernandez
jpeg                  8d                9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
dpkg                  1.17.25           1.18.1                Aníbal Limón
lsof                  4.88              4.89                  Aníbal Limón
sqlite3               3.8.10.0          3.8.10.2.             Aníbal Limón
screen                4.0.3             4.3.1                 Aníbal Limón
lz4                   128+gitX          r123                  Armin Kuster
nettle                2.7.1             3.1rc3                Armin Kuster         3.0.0 breaks gnutls, api ch...
pinentry              0.9.2             0.9.5                 Armin Kuster
linux-libc-headers    3.19              3.19.8                Bruce Ashfield
console-tools         0.3.2             1999.03.02            Chen Qi
systemd               219-stable+gitX   21522eade6dd8422b...  Chen Qi
diffstat              1.59              1.60                  Chen Qi
byacc                 20141128          20150711              Chen Qi
cups                  2.0.3             2.1b1                 Chen Qi
sudo                  1.8.13            1.8.14p1              Chen Qi
iproute2              3.17.0            4.1.1                 Cristian Iorga
libpcap               1.6.2             1.7.4                 Cristian Iorga
gstreamer1.0-libav    1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0-plug...  1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0          1.4.5             1.5.2                 Cristian Iorga
gstreamer1.0-rtsp...  1.4.5             1.5.2                 Cristian Iorga
qemu                  2.3.99+2.4.0-rc0  5                     Cristian Iorga
db                    6.0.30            6.1.26.NC             Cristian Iorga       API compatibility issue
libical               1.0.0             1.0.1                 Cristian Iorga
libtirpc              0.2.5             0.3.2                 Cristian Iorga
linux-yocto-rt        3.14.36+gitX      3.14.39+gitAUTOIN...  Darren Hart
u-boot-fw-utils       v2015.01+gitX     v2015.07+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2015.01+gitX     v2015.07+gitAUTOI...  Denys Dmytriyenko
u-boot                v2015.01+gitX     v2015.07+gitAUTOI...  Denys Dmytriyenko
ncurses               5.9               20150719              Hongxu Jia
distcc                3.1               3.2rc1                Hongxu Jia
pax-utils             1.0.3             1.0.5                 Hongxu Jia
perl                  5.22.0            5.23.0                Hongxu Jia
createrepo            0.4.11            0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
gnupg                 2.1.5             2.1.6                 Hongxu Jia
bash                  4.3               4.3.30                Hongxu Jia           The latest version in yocto...
cracklib              2.9.4             2.9.5                 Hongxu Jia
libinput              0.18.0            0.20.0                Jussi Kukkonen
xf86-input-vmmouse    13.0.0            13.1.0                Jussi Kukkonen
vte                   0.28.2            0.40.2                Jussi Kukkonen
gtk+3                 3.16.4            3.16.5                Jussi Kukkonen
libnotify             0.6.0             0.7.6                 Jussi Kukkonen
fontconfig            2.11.93           2.11.94               Jussi Kukkonen
mesa-gl               10.5.8            10.6.2                Jussi Kukkonen
mesa                  10.5.8            10.6.2                Jussi Kukkonen
python-nose           1.3.6             1.3.7                 Khem Raj
python-numpy          1.7.0             1.9.2                 Khem Raj
rpm                   5.4.14            5.4.15                Mark Hatle
gcc-source-4.9.3      4.9.3             5.2.0                 No maintainer
orc                   0.4.23            0.4.24                No maintainer
gcc-sanitizers        5.1.0             5.2.0                 No maintainer
gcc-source-5.1.0      5.1.0             5.2.0                 No maintainer
clutter-gst-3.0       3.0.6             3.0.8                 No maintainer
adwaita-icon-theme    3.16.2.1          3.17.3                No maintainer
opkg                  0.2.4             0.3.0                 Paul Barker
grub                  2.00+X            2.00+AUTOINC+ff3c...  Paul Eggleton
qt4-x11-free          4.8.7             5.5.0                 Paul Eggleton
openssh               6.8p1             6.9p1                 Paul Eggleton
cmake                 3.2.2             3.2.3                 Paul Eggleton
libav                 9.18              11.4                  Paul Eggleton
qt4-embedded          4.8.7             5.5.0                 Paul Eggleton
gpgme                 1.5.4             1.5.5                 Paul Eggleton
libevdev              1.4.2             1.4.3                 Paul Eggleton
libpng12              1.2.53            1.6.17                Randy Witt
python-async          0.6.1             0.6.2                 Randy Witt
tcf-agent             0.4.0+gitX        8.0+gitAUTOINC+48...  Randy Witt
unfs3                 0.9.22.r490       0.9.22.r494           Randy Witt
libunistring          0.9.4             0.9.6                 Randy Witt
kexec-tools           2.0.9             2.0.10                Richard Purdie
btrfs-tools           4.1.1+gitX        4.1.2+gitAUTOINC+...  Richard Purdie
lttng-ust             2.6.1             2.6.2                 Richard Purdie
python-distribute     0.6.32            0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-pygobject      2.28.3            3.17.1                Richard Purdie       Newer versions of python-py...
gcc-runtime           5.1.0             5.2.0                 Richard Purdie
libgcc                5.1.0             5.2.0                 Richard Purdie
libgfortran           5.1.0             5.2.0                 Richard Purdie
oprofile              1.0.0             1.1.0rc2              Richard Purdie
libmpc                1.0.2             1.0.3                 Richard Purdie
binutils              2.25              7.9.1                 Robert Yang
e2fsprogs             1.42.9            1.42.13               Robert Yang
file                  5.23              5.24                  Robert Yang
git                   2.4.4             2.4.6                 Robert Yang
gmp                   6.0.0             6.0.0a                Robert Yang
less                  478               479                   Robert Yang
liberation-fonts      1.04              2.00.1                Ross Burton          2.00.0 - fontforge package ...
webkit-gtk            1.8.3             1.9.92                Ross Burton          >= 1.10.2 needs ruby
gnutls                3.3.14            3.4.3                 Ross Burton
build-appliance-i...  12.0.1            13.0.0                Saul Wold
kbd                   2.0.2             2.0.3                 Saul Wold
uclibc                0.9.33+gitX       0.9.33.2+gitAUTOI...  Saul Wold
systemtap             2.7+gitX          2.8+gitAUTOINC+eb...  Saul Wold
libtheora             1.1.1             1.2.0alpha1           Saul Wold
tiff                  4.0.4             4.0.4beta             Saul Wold
mkelfimage            4.0+gitX          4.1+gitAUTOINC+4d...  Saul Wold
ca-certificates       20141019          20150426              Saul Wold
libidn                1.30              1.31                  Saul Wold
libunique             1.1.6             3.0.2                 Saul Wold
mx-1.0                1.4.7+gitX        1.99.4+gitAUTOINC...  Saul Wold
libvorbis             1.3.4             1.3.5                 Tanu Kaskinen
systemtap-uprobes     2.7+gitX          2.8+gitAUTOINC+eb...  Tom Zanussi
gettext               0.19.4            0.19.5.1              Wenzong Fan
ccache                3.1.11            3.2.2                 Wenzong Fan
chkconfig             1.3.58            1.5                   Wenzong Fan

Upgradable count: 105
Upgradable total count: 115

The based commit is:

commit b283b82ec59a2137cf717811172765848fa813fa
Author: Ross Burton <ross.burton@intel.com>
Date:   Fri Jul 17 15:40:22 2015 +0100

    core-image-lsb-sdk: use kernel-devsrc to ensure kernel module builds work
    
    With the move of the kernel source to the kernel-devsrc, we need this package to
    ensure the kernel module sanity tests made on core-image-lsb-sdk continue to
    pass. Therefore update the name of the package included in the image.
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

