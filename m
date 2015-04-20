Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9479E0098A; Mon, 20 Apr 2015 03:18:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D858AE00830
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 03:18:01 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id D305B84A94AA
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 06:17:59 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 20 Apr 2015 10:17:59 -0000
Message-ID: <20150420101759.25621.25795@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Apr 2015 10:18:05 -0000
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

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1          1.3.2                 Alejandro Hernandez
midori                0.5.8          0.5.10                Alejandro Hernandez
python-smmap          0.8.2          0.9.0                 Alejandro Hernandez
python3               3.3.3          3.5.0a3               Alejandro Hernandez
python                2.7.9          3.5.0a4               Alejandro Hernandez
which                 2.20           2.21                  Alejandro Hernandez
gnome-icon-theme      2.31.0         3.12.0                Alejandro Hernandez  waiting for the sato gtk3 port
jpeg                  8d             9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
dpkg                  1.17.21        1.17.25               Aníbal Limón
sqlite3               3.8.7.4        3.8.9.                Aníbal Limón
mc                    4.8.13         4.8.14                Aníbal Limón
screen                4.0.3          4.2.1                 Aníbal Limón
nettle                2.7.1          3.1rc3                Armin Kuster         3.0.0 breaks gnutls, api ch...
linux-libc-headers    3.19           3.19.5                Bruce Ashfield
pciutils              3.3.0          3.3.1                 Chen Qi
console-tools         0.3.2          1999.03.02            Chen Qi
sysstat               11.1.3         11.1.4                Chen Qi
dbus-glib             0.102          0.104                 Chong Lu
dbus-test             1.8.10         1.9.14                Chong Lu
dbus                  1.8.10         1.9.14                Chong Lu             D-BUS 1.9.x is the developm...
bison                 2.7.1          3.0.4                 Chong Lu
tcl                   8.6.3          8.6.4                 Chong Lu
bluez4                4.101          5.30                  Cristian Iorga       BlueZ 5.x is not backward-c...
gst-plugin-bluetooth  4.101          5.30                  Cristian Iorga
bluez5                5.29           5.30                  Cristian Iorga
connman               1.28           1.29                  Cristian Iorga
iproute2              3.17.0         4.0.0                 Cristian Iorga
libpcap               1.6.2          1.7.2                 Cristian Iorga
wpa-supplicant        2.3            2.4                   Cristian Iorga
alsa-lib              1.0.28         1.0.29                Cristian Iorga
alsa-utils-alsaconf   1.0.28         1.0.29                Cristian Iorga
alsa-utils            1.0.28         1.0.29                Cristian Iorga
gst-ffmpeg            0.10.13        0.11.2                Cristian Iorga
gst-fluendo-mp3       0.10.31        0.10.32               Cristian Iorga
gst-plugins-bad       0.10.23        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-base      0.10.36        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-good      0.10.31        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-ugly      0.10.19        1.4.5                 Cristian Iorga
gstreamer             0.10.36        1.4.5                 Cristian Iorga       not compatible with gst-fl...
libvorbis             1.3.4          1.3.5                 Cristian Iorga
libatomics-ops        7.2            7.4.0                 Cristian Iorga
speex                 1.2rc1         1.2rc2                Cristian Iorga
qemu                  2.2.0          2.2.1                 Cristian Iorga
db                    6.0.30         6.1.23.NC             Cristian Iorga       API compatibility issue
libical               1.0.0          1.0.1                 Cristian Iorga
harfbuzz              0.9.38         0.9.40                Cristian Iorga
linux-yocto-dev       3.19++gitX     3.19.2++31b35da6a...  Darren Hart
u-boot-fw-utils       v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot                v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
ncurses               5.9            20150418              Hongxu Jia
distcc                3.1            3.2rc1                Hongxu Jia
qmmp                  0.7.7          0.8.4                 Hongxu Jia
perl                  5.20.0         5.21.10               Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
bash                  4.3            4.3.30                Hongxu Jia           The latest version in yocto...
cracklib              2.9.2          2.9.4                 Hongxu Jia
ghostscript           9.15           9.16                  Hongxu Jia
man-pages             3.82           3.83                  Hongxu Jia
directfb              1.7.6          1.7.7                 Hongxu Jia
alsa-tools            1.0.28         1.0.29                Kai Kang
libx11-diet           1.6.2          1.6.3                 Kai Kang
python-mako           0.9.1          1.0.1                 Khem Raj
python-nose           1.2.1          1.3.6                 Khem Raj
python-numpy          1.7.0          1.9.2                 Khem Raj
python3-distribute    0.6.32         0.7.3                 Khem Raj
rpm                   5.4.14         5.4.15                Mark Hatle
libpfm4               4.3.0          4.6.0                 Matthew McClintock
cryptodev-linux       1.6            1.7                   No maintainer
cryptodev-module      1.6            1.7                   No maintainer
cryptodev-tests       1.6            1.7                   No maintainer
liberror-perl         0.17022        0.17023               No maintainer
grub                  2.00+X         2.00+AUTOINC+677d...  Paul Eggleton
openssh               6.7p1          6.8p1                 Paul Eggleton
dropbear              2014.66        2015.67               Paul Eggleton
cmake                 2.8.12.2       3.2.2                 Paul Eggleton
dosfstools            2.11           3.0.27                Paul Eggleton
libav                 9.16           11.3                  Paul Eggleton
x264                  r2265+gitX     r2491                 Paul Eggleton
qt4-embedded          4.8.6          5.4.1                 Paul Eggleton
qt4-x11-free          4.8.6          5.4.1                 Paul Eggleton
gpgme                 1.4.3          1.5.4                 Paul Eggleton
yasm                  1.2.0          1.3.0                 Paul Eggleton
augeas                1.2.0          1.3.0                 Paul Eggleton
libgpg-error          1.18           1.19                  Paul Eggleton
libevdev              1.3            1.4.1                 Paul Eggleton
libpng12              1.2.52         1.6.17                Randy Witt
libpng                1.6.16         1.6.17                Randy Witt
python-async          0.6.1          0.6.2                 Randy Witt
libtasn1              4.0            4.4                   Randy Witt
tcf-agent             0.4.0+gitX     8.0+gitAUTOINC+14...  Randy Witt
unfs3                 0.9.22.r490    0.9.22.r494           Randy Witt
libunistring          0.9.4          0.9.5                 Randy Witt
ethtool               3.16           3.18                  Randy Witt
libpam                1.1.6          1.1.8                 Randy Witt
x11perf               1.5.4          1.6.0                 Richard Purdie
btrfs-tools           3.18.2+gitX    3.19.1+gitAUTOINC...  Richard Purdie
intltool              0.50.2         0.51.0                Richard Purdie
nasm                  2.11.06        2.11.08               Richard Purdie
python-distribute     0.6.32         0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22        1.4.0                 Richard Purdie
python-pygobject      2.28.3         3.16.1                Richard Purdie       Newer versions of python-py...
subversion            1.8.11         1.8.13                Richard Purdie
libdrm                2.4.59         2.4.60                Richard Purdie
libmpc                1.0.2          1.0.3                 Richard Purdie
gnu-efi               3.0.1          3.0.2                 Robert Yang
binutils              2.25           7.9.0                 Robert Yang
e2fsprogs             1.42.9         1.42.11               Robert Yang
python-git            0.3.6          1.0.0                 Robert Yang
gmp                   6.0.0          6.0.0a                Robert Yang
logrotate             3.8.8          3.9.1                 Robert Yang
tzdata                2015b          2015c                 Robert Yang
liberation-fonts      1.04           2.00.1                Ross Burton          2.00.0 - fontforge package ...
waffle                1.3.0          1.5.1                 Ross Burton
libinput              0.7.0          0.13.0                Ross Burton
weston                1.6.0          1.7.0                 Ross Burton
xev                   1.2.1          1.2.2                 Ross Burton
xhost                 1.0.6          1.0.7                 Ross Burton
xmodmap               1.0.8          1.0.9                 Ross Burton
xf86-input-evdev      2.9.1          2.9.2                 Ross Burton
xf86-input-synaptics  1.8.1          1.8.2                 Ross Burton
xf86-input-vmmouse    13.0.0         13.0.99               Ross Burton
xf86-video-omap       0.4.2+gitrX    0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-vmware     13.0.2         13.1.0                Ross Burton
font-util             1.3.0          1.3.1                 Ross Burton
wayland               1.6.0          1.7.0                 Ross Burton
libx11                1.6.2          1.6.3                 Ross Burton
libxdmcp              1.1.1          1.1.2                 Ross Burton
libxfont              1.5.0          1.5.1                 Ross Burton
libxshmfence          1.1            1.2                   Ross Burton
libxvmc               1.0.8          1.0.9                 Ross Burton
libxxf86vm            1.1.3          1.1.4                 Ross Burton
xkeyboard-config      2.13           2.14                  Ross Burton
randrproto            1.4.0          1.4.1                 Ross Burton
xproto                7.0.26         7.0.27                Ross Burton
xserver-xorg          1.16.3         1.17.1                Ross Burton
xf86-input-keyboard   1.8.0          1.8.1                 Ross Burton
xdpyinfo              1.3.1          1.3.2                 Ross Burton
puzzles               r10116         r10286                Ross Burton
webkit-gtk            1.8.3          1.9.92                Ross Burton          >= 1.10.2 needs ruby
vala                  0.26.1         0.28.0                Ross Burton
libsoup-2.4           2.46.0         2.50.0                Ross Burton
shared-mime-info      1.3            1.4                   Ross Burton
vte                   0.28.2         0.40.0                Ross Burton          Pending Glib-2.0 Update
icu                   54.1           55.1                  Ross Burton
gdk-pixbuf            2.30.8         2.31.3                Ross Burton          2.31.x is unstable
gtk+3                 3.12.2         3.16.2                Ross Burton
gtk+                  2.24.27        3.16.2                Ross Burton          Do not upgrade to version: ...
gtk-engines           2.20.2         2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
hicolor-icon-theme    0.14           0.15                  Ross Burton
json-glib             1.0.2          1.0.4                 Ross Burton
libnotify             0.6.0          0.7.6                 Ross Burton
librsvg               2.40.6         2.40.9                Ross Burton
clutter-1.0           1.20.0         1.22.0                Ross Burton
clutter-gst-1.0       1.6.0          3.0.4                 Ross Burton
clutter-gtk-1.0       1.4.4          1.6.0                 Ross Burton
cogl-1.0              1.18.2         1.20.0                Ross Burton
fontconfig            2.11.1         2.11.93               Ross Burton
freetype              2.5.4          2.5.5                 Ross Burton
mesa-gl               10.4.4         10.4.5                Ross Burton
npth                  1.1            1.2                   Saul Wold
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  Saul Wold
tiff                  4.0.3          4.0.4beta             Saul Wold
boost                 1.57.0         1.58.0                Saul Wold
libksba               1.3.2          1.3.3                 Saul Wold
libtheora             1.1.1          1.2.0alpha1           Saul Wold
libidn                1.29           1.30                  Saul Wold
lsbinitscripts        9.61           9.62                  Saul Wold
libunique             1.1.6          3.0.2                 Saul Wold            Do not upgrade to version: ...
mx-1.0                1.4.7+gitX     1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
blktrace              1.0.5+gitX     1.1.0+gitAUTOINC+...  Tom Zanussi
ccache                3.1.9          3.2.1                 Wenzong Fan
chkconfig             1.3.58         1.4                   Wenzong Fan

Upgradable count: 151
Upgradable total count: 173

The based commit is:

commit 97d56a5b8e4f15eb32095f242eb2fd62fc5d85f2
Author: Junling Zheng <zhengjunling@huawei.com>
Date:   Fri Apr 17 08:50:08 2015 +0000

    gmp: remove referencing paths from the build host
    
    Currently ${D}${includedir}/gmp.h references the path of build host
    incorrectly, remove it.
    
    Signed-off-by: Junling Zheng <zhengjunling@huawei.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

