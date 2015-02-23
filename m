Return-Path: <recipe-report@packages.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB1FEE00871; Mon, 23 Feb 2015 04:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C457E006B5
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 04:46:38 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 6496C8491BC1
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 07:46:36 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@packages.yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 23 Feb 2015 12:46:36 -0000
Message-ID: <20150223124636.25522.23167@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 23 Feb 2015 12:46:41 -0000
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

http://packages.yoctoproject.org/upgradepkgname

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
python-smmap          0.8.2        0.9.0                 Alejandro Hernandez
gnome-icon-theme      2.31.0       3.12.0                Alejandro Hernandez  waiting for the sato gtk3 port
nfs-utils             1.3.1        1.3.2                 Alejandro Hernandez
midori                0.5.8        0.5.9                 Alejandro Hernandez
sqlite3               3.8.7.4      3.8.8.2.              Aníbal Limón
screen                4.0.3        4.2.1                 Aníbal Limón
jpeg                  8d           9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
apt                   0.9.9.4      1.0.9.6               Aníbal Limón
dpkg                  1.17.21      1.17.24               Aníbal Limón
nettle                2.7.1        3.0                   Armin Kuster         3.0.0 breaks gnutls, api ch...
sudo                  1.8.11p2     1.8.12                Chen Qi
sysstat               11.0.2       11.1.3                Chen Qi
resolvconf            1.76         1.76.1                Chen Qi
console-tools         0.3.2        1999.03.02            Chen Qi
systemd               216+gitX     219+gitAUTOINC+d3...  Chen Qi
util-linux            2.25.2       2.26                  Chen Qi
dbus-glib             0.102        0.104                 Chong Lu
dbus-test             1.8.10       1.9.12                Chong Lu
dbus                  1.8.10       1.9.12                Chong Lu             D-BUS 1.9.x is the developm...
bison                 2.7.1        3.0.4                 Chong Lu
libatomics-ops        7.2          7.4.0                 Cristian Iorga
speex                 1.2rc1       1.2rc2                Cristian Iorga
db                    6.0.30       6.1.19.NC             Cristian Iorga       API compatibility issue
libical               1.0.0        1.0.1                 Cristian Iorga
quota                 4.01         4.02                  Cristian Iorga
bluez4                4.101        5.28                  Cristian Iorga       BlueZ 5.x is not backward-c...
gst-plugin-bluetooth  4.101        5.28                  Cristian Iorga
iproute2              3.17.0       3.19.0                Cristian Iorga
gst-ffmpeg            0.10.13      0.11.2                Cristian Iorga
gst-fluendo-mp3       0.10.31      0.10.32               Cristian Iorga
gst-plugins-bad       0.10.23      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-base      0.10.36      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-good      0.10.31      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-ugly      0.10.19      1.4.5                 Cristian Iorga
gstreamer             0.10.36      1.4.5                 Cristian Iorga       not compatible with gst-fl...
hwlatdetect           0.89         0.91                  Darren Hart
rt-tests              0.89         0.91                  Darren Hart
qmmp                  0.7.7        0.8.3                 Hongxu Jia
patch                 2.7.1        2.7.4                 Hongxu Jia
perl                  5.20.0       5.21.9                Hongxu Jia
createrepo            0.4.11       0.10.3                Hongxu Jia           Versions after 0.9.* use YU...
gnupg                 2.1.1        2.1.2                 Hongxu Jia
bash                  4.3          4.3.30                Hongxu Jia           The latest version in yocto...
groff                 1.22.2       1.22.3                Hongxu Jia           1.18.1.4 is latest GPLv2 Ve...
man-pages             3.76         3.80                  Hongxu Jia
directfb              1.7.6        1.7.7                 Hongxu Jia
dhcp                  4.3.1        4.3.2                 Hongxu Jia
socat                 1.7.2.4      1.7.3.0               Hongxu Jia
distcc                3.1          3.2rc1                Hongxu Jia
python-mako           0.9.1        1.0.1                 Khem Raj
python-nose           1.2.1        1.3.4                 Khem Raj
python-numpy          1.7.0        1.9.1                 Khem Raj
python3-distribute    0.6.32       0.7.3                 Khem Raj
rpm                   5.4.14       5.4.15                Mark Hatle
libpfm4               4.3.0        4.6.0                 Matthew McClintock
liberror-perl         0.17022      0.17023               No Maintainer
cryptodev-tests       1.6          1.7                   No Maintainer
cryptodev-linux       1.6          1.7                   No Maintainer
cryptodev-module      1.6          1.7                   No Maintainer
libav                 9.16         11.2                  Paul Eggleton
x264                  r2265+gitX   r2491                 Paul Eggleton
qt4-embedded          4.8.6        5.4.0                 Paul Eggleton
qt4-x11-free          4.8.6        5.4.0                 Paul Eggleton
gpgme                 1.4.3        1.5.3                 Paul Eggleton
yasm                  1.2.0        1.3.0                 Paul Eggleton
augeas                1.2.0        1.3.0                 Paul Eggleton
libevdev              1.3          1.3.2                 Paul Eggleton
libevent              2.0.21       2.0.22                Paul Eggleton
libgpg-error          1.17         1.18                  Paul Eggleton
dropbear              2014.66      2015.67               Paul Eggleton
cmake                 2.8.12.2     3.1.3                 Paul Eggleton
dosfstools            2.11         3.0.27                Paul Eggleton
python-async          0.6.1        0.6.2                 Randy Witt
tcf-agent             0.4.0+gitX   8.0+gitAUTOINC+5b...  Randy Witt
unfs3                 0.9.22.r490  0.9.22.r494           Randy Witt
libtasn1              4.0          4.2                   Randy Witt
ethtool               3.16         3.18                  Randy Witt
libunistring          0.9.4        0.9.5                 Randy Witt
libpam                1.1.6        1.1.8                 Randy Witt
libpng12              1.2.52       1.6.16                Randy Witt
nasm                  2.11.06      2.11.08               Richard Purdie
python-distribute     0.6.32       0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22      1.4.0                 Richard Purdie
python-pygobject      2.28.3       3.15.0                Richard Purdie       Newer versions of python-py...
python3               3.3.3        3.5.0a1               Richard Purdie
python                2.7.3        3.5.0a1               Richard Purdie
libmpc                1.0.2        1.0.3                 Richard Purdie
gdb                   7.8.1        7.9                   Richard Purdie
python-git            0.3.6        0.3/                  Robert Yang
glib-2.0              2.42.1       2.43.90               Robert Yang
gmp                   6.0.0        6.0.0a                Robert Yang
binutils              2.24         2.25                  Robert Yang
e2fsprogs             1.42.9       1.42.11               Robert Yang
puzzles               r10116       r10286                Ross Burton
webkit-gtk            1.8.3        1.9.92                Ross Burton          >= 1.10.2 needs ruby
at-spi2-atk           2.14.1       2.15.90               Ross Burton
at-spi2-core          2.14.1       2.15.90               Ross Burton
atk                   2.14.0       2.15.4                Ross Burton
vala                  0.26.1       0.27.1                Ross Burton
libsoup-2.4           2.46.0       2.49.1                Ross Burton
shared-mime-info      1.3          1.4                   Ross Burton
vte                   0.28.2       0.39.90               Ross Burton          Pending Glib-2.0 Update
gdk-pixbuf            2.30.8       2.31.2                Ross Burton
gtk+3                 3.12.2       3.15.8                Ross Burton
gtk+                  2.24.25      3.15.8                Ross Burton          Do not upgrade to version: ...
gtk-engines           2.20.2       2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
libnotify             0.6.0        0.7.6                 Ross Burton
librsvg               2.40.6       2.40.7                Ross Burton
cairo                 1.12.18      1.14.1                Ross Burton
clutter-1.0           1.20.0       1.21.4                Ross Burton
clutter-gst-1.0       1.6.0        3.0.4                 Ross Burton
clutter-gtk-1.0       1.4.4        1.6.0                 Ross Burton
fontconfig            2.11.1       2.11.92               Ross Burton
freetype              2.5.4        2.5.5                 Ross Burton
liberation-fonts      1.04         2.00.1                Ross Burton          2.00.0 - fontforge package ...
waffle                1.3.0        1.5.1                 Ross Burton
libinput              0.7.0        0.11.0                Ross Burton
wayland               1.6.0        1.7.0                 Ross Burton
weston                1.6.0        1.7.0                 Ross Burton
xf86-video-vmware     13.0.2       13.1.0                Ross Burton
glib-networking       2.38.0       2.43.1                Ross Burton          Pending Glib-2.0 Update
libxshmfence          1.1          1.2                   Ross Burton
xkeyboard-config      2.13         2.14                  Ross Burton
xserver-xorg          1.16.3       1.17.1                Ross Burton
xproto                7.0.26       7.0.27                Ross Burton
xf86-video-omap       0.4.2+gitrX  0.4.3+gitrAUTOINC...  Ross Burton
libtheora             1.1.1        1.2.0alpha1           Saul Wold
tiff                  4.0.3        4.0.4beta             Saul Wold
libunique             1.1.6        3.0.2                 Saul Wold            Do not upgrade to version: ...
mx-1.0                1.4.7+gitX   1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
openssl               1.0.1k       1.0.2                 Saul Wold
uclibc                0.9.33+gitX  0.9.33.2+gitAUTOI...  Saul Wold
systemtap             2.6+gitX     2.7+gitAUTOINC+52...  Saul Wold
blktrace              1.0.5+gitX   1.1.0+gitAUTOINC+...  Tom Zanussi
systemtap-uprobes     2.6+gitX     2.7+gitAUTOINC+52...  Tom Zanussi
chkconfig             1.3.58       1.3.63                Wenzong Fan
ccache                3.1.9        3.2.1                 Wenzong Fan

Upgradable count: 114
Upgradable total count: 137

The based commit is:

commit c4de42aadd4c8a4a8f16c25e7dcdefef79daf030
Author: Cristian Iorga <cristian.iorga@intel.com>
Date:   Tue Feb 17 17:10:18 2015 +0200

    pulseaudio: upgrade to 6.0
    
    Changes:
    - BlueZ 5 native HSP (headset) support;
    - BlueZ 5 HFP (hands-free) profile support via oFono;
    - systemd socket activation support;
    - Better support for multichannel and 2.1 profiles;
    - Remap optimisations;
    - Many minor improvements, bug fixes, and i18n updates.
    
    - Switched to ${BP} variable.
    - Patch 0001-configure.ac-Check-only-for-libsystemd-not-libsystem.patch
    removed, no longer necessary.
    - Patch CVE-2014-3970.patch included upstrem, removed.
    - Slightly changed copyright notice, only a clarification.
    
    libsamplerate based resamplers are now deprecated,
    because they offer no particular advantage over speex.
    Dependency to libsamplerate0 dropped.
    
    [ RB: disable systemd until systemd.bbclass can handle user units ]
    
    Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Saul Wold <sgw@linux.intel.com> 

