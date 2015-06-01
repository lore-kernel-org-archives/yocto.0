Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65891E00960; Mon,  1 Jun 2015 09:09:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C7EFE0027F
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 09:08:59 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 0223D83872F8
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 12:08:57 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 01 Jun 2015 16:08:57 -0000
Message-ID: <20150601160857.12055.37938@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Jun 2015 16:09:02 -0000
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

Package               Version          Upstream version      Maintainer           NoUpgradeReason
--------------------  ---------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1            1.3.2                 Alejandro Hernandez
midori                0.5.8            0.5.10                Alejandro Hernandez
python-smmap          0.8.2            0.9.0                 Alejandro Hernandez
python3               3.4.3            3.5.0b1               Alejandro Hernandez
python                2.7.9            3.5.0b1               Alejandro Hernandez
cronie                1.4.12           1.5.0                 Alejandro Hernandez
which                 2.20             2.21                  Alejandro Hernandez
gnome-icon-theme      2.31.0           3.12.0                Alejandro Hernandez
jpeg                  8d               9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
dpkg                  1.17.25          1.18.1                Aníbal Limón
sqlite3               3.8.10.0         3.8.10.2.             Aníbal Limón
mc                    4.8.13           4.8.14                Aníbal Limón
screen                4.0.3            4.2.1                 Aníbal Limón
nettle                2.7.1            3.1rc3                Armin Kuster         3.0.0 breaks gnutls, api ch...
lz4                   128+gitX         r123                  Armin Kuster
linux-libc-headers    3.19             3.19.8                Bruce Ashfield
console-tools         0.3.2            1999.03.02            Chen Qi
dbus-test             1.8.10           1.9.16                Chen Qi
dbus                  1.8.16           1.9.16                Chen Qi
systemd               219-stable+gitX  21522eade6dd8422b...  Chen Qi
util-linux            2.26.1           2.26.2                Chen Qi
gawk                  4.1.1            4.1.3                 Chen Qi
iproute2              3.17.0           4.0.0                 Cristian Iorga
libpcap               1.6.2            1.7.3                 Cristian Iorga
libvorbis             1.3.4            1.3.5                 Cristian Iorga
libatomics-ops        7.2              7.4.0                 Cristian Iorga
speex                 1.2rc1           1.2rc2                Cristian Iorga
db                    6.0.30           6.1.23.NC             Cristian Iorga       API compatibility issue
libical               1.0.0            1.0.1                 Cristian Iorga
libtirpc              0.2.5            0.3.1                 Cristian Iorga
linux-yocto-rt        3.14.36+gitX     3.14.39+gitAUTOIN...  Darren Hart
u-boot-fw-utils       v2015.01+gitX    v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2015.01+gitX    v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot                v2015.01+gitX    v2015.04+gitAUTOI...  Denys Dmytriyenko
ncurses               5.9              20150530              Hongxu Jia
distcc                3.1              3.2rc1                Hongxu Jia
qmmp                  0.7.7            0.8.4                 Hongxu Jia
perl                  5.20.0           5.21.11               Hongxu Jia
createrepo            0.4.11           0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
bash                  4.3              4.3.30                Hongxu Jia           The latest version in yocto...
python-mako           0.9.1            1.0.1                 Khem Raj
python-nose           1.2.1            1.3.6                 Khem Raj
python-numpy          1.7.0            1.9.2                 Khem Raj
python3-distribute    0.6.32           0.7.3                 Khem Raj
rpm                   5.4.14           5.4.15                Mark Hatle
libpfm4               4.3.0            4.6.0                 Matthew McClintock
liberror-perl         0.17023          0.17024               No maintainer
debianutils           4.5              4.5.1                 No maintainer
grub                  2.00+X           2.00+AUTOINC+ca59...  Paul Eggleton
dropbear              2014.66          2015.67               Paul Eggleton
cmake                 2.8.12.2         3.2.2                 Paul Eggleton
dosfstools            2.11             3.0.27                Paul Eggleton
libav                 9.16             11.4                  Paul Eggleton
x264                  r2265+gitX       r2491                 Paul Eggleton
qt4-embedded          4.8.6            5.4.1                 Paul Eggleton
qt4-x11-free          4.8.6            5.4.1                 Paul Eggleton
gpgme                 1.4.3            1.5.4                 Paul Eggleton
yasm                  1.2.0            1.3.0                 Paul Eggleton
augeas                1.2.0            1.3.0                 Paul Eggleton
libevdev              1.3              1.4.2                 Paul Eggleton
libpng12              1.2.53           1.6.17                Randy Witt
python-async          0.6.1            0.6.2                 Randy Witt
tcf-agent             0.4.0+gitX       8.0+gitAUTOINC+01...  Randy Witt
unfs3                 0.9.22.r490      0.9.22.r494           Randy Witt
libunistring          0.9.4            0.9.5                 Randy Witt
ethtool               3.16             4.0                   Randy Witt
libpam                1.1.6            1.2.0                 Randy Witt
libpciaccess          0.13.3           0.13.4                Richard Purdie
btrfs-tools           3.18.2+gitX      4.0.1+gitAUTOINC+...  Richard Purdie
gcc-source-4.9.2      4.9.2            5.1.0                 Richard Purdie
gdb                   7.9              7.9.1                 Richard Purdie
intltool              0.50.2           0.51.0                Richard Purdie
python-distribute     0.6.32           0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-pygobject      2.28.3           3.16.1                Richard Purdie       Newer versions of python-py...
libdrm                2.4.59           2.4.61                Richard Purdie
libmpc                1.0.2            1.0.3                 Richard Purdie
glib-2.0              2.44.0           2.44.1                Robert Yang
binutils              2.25             7.9.1                 Robert Yang
e2fsprogs             1.42.9           1.42.13               Robert Yang
gmp                   6.0.0            6.0.0a                Robert Yang
logrotate             3.8.8            3.9.1                 Robert Yang
pango                 1.36.8           1.37.0                Ross Burton
liberation-fonts      1.04             2.00.1                Ross Burton          2.00.0 - fontforge package ...
libinput              0.7.0            0.15.0                Ross Burton
weston                1.6.0            1.7.93                Ross Burton
xf86-input-evdev      2.9.1            2.9.2                 Ross Burton
xf86-input-keyboard   1.8.0            1.8.1                 Ross Burton
xf86-input-synaptics  1.8.1            1.8.2                 Ross Burton
xf86-input-vmmouse    13.0.0           13.0.99               Ross Burton
xf86-video-omap       0.4.2+gitrX      0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-vmware     13.0.2           13.1.0                Ross Burton
wayland               1.6.0            1.7.93                Ross Burton
xkeyboard-config      2.14             2.15                  Ross Burton
xserver-xorg          1.16.3           1.17.1                Ross Burton
webkit-gtk            1.8.3            1.9.92                Ross Burton          >= 1.10.2 needs ruby
vala                  0.28.0           0.29.1                Ross Burton
vte                   0.28.2           0.40.2                Ross Burton
gtk+3                 3.12.2           3.16.3                Ross Burton
gtk+                  2.24.27          2.24.28               Ross Burton
libnotify             0.6.0            0.7.6                 Ross Burton
clutter-1.0           1.20.0           1.22.2                Ross Burton
clutter-gtk-1.0       1.4.4            1.6.0                 Ross Burton
cogl-1.0              1.18.2           1.20.0                Ross Burton
build-appliance-i...  12.0.1           13.0.0                Saul Wold
uclibc                0.9.33+gitX      0.9.33.2+gitAUTOI...  Saul Wold
libtheora             1.1.1            1.2.0alpha1           Saul Wold
tiff                  4.0.3            4.0.4beta             Saul Wold
ca-certificates       20141019         20150426              Saul Wold
libunique             1.1.6            3.0.2                 Saul Wold
mx-1.0                1.4.7+gitX       1.99.4+gitAUTOINC...  Saul Wold
blktrace              1.0.5+gitX       1.1.0+gitAUTOINC+...  Tom Zanussi
ccache                3.1.11           3.2.2                 Wenzong Fan
chkconfig             1.3.58           1.5                   Wenzong Fan

Upgradable count: 104
Upgradable total count: 113

The based commit is:

commit 968973d55d4b33e1a929ed4cdf9387fcaba2d93f
Author: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Date:   Wed May 27 12:58:15 2015 +0300

    qt4: unconditionally disable gstreamer 0.10 support in qt webkit
    
    Previously it was auto-detected in a broken way, which was causing build errors
    for qt-mobility. Qt4 build will fail if some gstreamer 0.10 packages are
    available at build time, but not all. It will not fail if none of
    the packages are available or if all of them are available. We can't guarantee either,
    hence this patch.
    
    Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

