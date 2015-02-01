Return-Path: <recipe-report@packages.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F231E0092E; Sun,  1 Feb 2015 04:22:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 446 seconds by postgrey-1.32 at yocto-www;
	Sun, 01 Feb 2015 04:22:17 PST
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBB3E003D4
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 04:22:17 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id C7BF583498C3
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 07:14:49 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@packages.yoctoproject.org
To: yocto@yoctoproject.org
Date: Sun, 01 Feb 2015 12:14:49 -0000
Message-ID: <20150201121449.18995.32719@packages.yoctoproject.org>
X-Mailman-Approved-At: Mon, 02 Feb 2015 05:27:42 -0800
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
X-List-Received-Date: Sun, 01 Feb 2015 12:22:22 -0000
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

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
gnome-icon-theme      2.31.0         3.7.4                 Alejandro Hernandez  waiting for the sato gtk3 port
nfs-utils             1.3.1          1.3.2                 Alejandro Hernandez
midori                0.5.8          0.5.9                 Alejandro Hernandez
screen                4.0.3          4.2.1                 Aníbal Limón
jpeg                  8d             9                     Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
apt                   0.9.9.4        1.0.9.6               Aníbal Limón
dpkg                  1.17.21        1.17.23               Aníbal Limón
nettle                2.7.1          3.0                   Armin Kuster         3.0.0 breaks gnutls, api ch...
linux-libc-headers    3.17.7         3.18.5                Bruce Ashfield
sysstat               11.0.2         11.1.2                Chen Qi
resolvconf            1.76           1.76.1                Chen Qi
busybox               1.22.1         1.23.1                Chen Qi
console-tools         0.3.2          1999.03.02            Chen Qi
systemd               216+gitX       218+gitAUTOINC+a3...  Chen Qi
dbus-test             1.8.10         1.9.6                 Chong Lu
dbus                  1.8.10         1.9.6                 Chong Lu             D-BUS 1.9.x is the developm...
bison                 2.7.1          3.0.4                 Chong Lu
libatomics-ops        7.2            7.4.0                 Cristian Iorga
pulseaudio            5.0            5.99.3                Cristian Iorga
speex                 1.2rc1         1.2rc2                Cristian Iorga
db                    6.0.30         6.1.19                Cristian Iorga       API compatibility issue
libical               1.0.0          1.0.1                 Cristian Iorga
neon                  0.30.0         0.30.1                Cristian Iorga
quota                 4.01           4.02                  Cristian Iorga
harfbuzz              0.9.37         0.9.38                Cristian Iorga
bluez4                4.101          5.27                  Cristian Iorga       BlueZ 5.x is not backward-c...
gst-plugin-bluetooth  4.101          5.27                  Cristian Iorga
connman               1.26           1.27                  Cristian Iorga
iproute2              3.17.0         3.18.0                Cristian Iorga
neard                 0.14           0.15                  Cristian Iorga
ofono                 1.15           1.16                  Cristian Iorga
gst-fluendo-mpegd...  0.10.72        0.10.85               Cristian Iorga
flac                  1.3.0          1.3.1                 Cristian Iorga
gst-fluendo-mp3       0.10.31        0.10.32               Cristian Iorga
hwlatdetect           0.89           0.90                  Darren Hart
rt-tests              0.89           0.90                  Darren Hart
linux-yocto-dev       3.17++gitX     3.17.6++5ff54d8fb...  Darren Hart
linux-yocto-rt        3.14.24+gitX   3.14.29+gitAUTOIN...  Darren Hart
linux-yocto-tiny      3.17.6+gitX    2012+gitAUTOINC+5...  Darren Hart
linux-yocto           3.14.24+gitX   3.14.29+gitAUTOIN...  Darren Hart
kernelshark           1.2+gitX       2.5.1+gitAUTOINC+...  Darren Hart          0.2 is the latest version.
trace-cmd             2.3.2+gitX     2.5.1+gitAUTOINC+...  Darren Hart
u-boot-fw-utils       v2014.07+gitX  v2015.01+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2014.07+gitX  v2015.01+gitAUTOI...  Denys Dmytriyenko
u-boot                v2014.07+gitX  v2015.01+gitAUTOI...  Denys Dmytriyenko
qmmp                  0.7.7          0.8.3                 Hongxu Jia
patch                 2.7.1          2.7.4                 Hongxu Jia
perl                  5.20.0         5.21.8                Hongxu Jia
createrepo            0.4.11         0.10.3                Hongxu Jia           Versions after 0.9.* use YU...
bash                  4.3            4.3.30                Hongxu Jia           The latest version in yocto...
groff                 1.22.2         1.22.3                Hongxu Jia           1.18.1.4 is latest GPLv2 Ve...
man-pages             3.76           3.78                  Hongxu Jia
man                   1.6g           2.5a6                 Hongxu Jia
pigz                  2.3.1          2.3.3                 Hongxu Jia
socat                 1.7.2.4        1.7.3.0               Hongxu Jia
adt-installer         0.2.0          1.1                   Jessica Zhang
libsdl                1.2.15         1.2.15-1              Kai Kang
bind                  9.9.5          21                    Kai Kang
python-numpy          1.7.0          1.9.1                 Khem Raj
rpm                   5.4.14         5.4.15-0.20140824     Mark Hatle
libpfm4               4.3.0          4.6.0                 Matthew McClintock
gcc-sanitizers        4.9.1          4.9.2                 No Maintainer
libav                 9.16           11.2                  Paul Eggleton
x264                  r2265+gitX     r2491                 Paul Eggleton
qt-mobility-embedded  1.2.0          1.2.2-20120224        Paul Eggleton
qt-mobility-x11       1.2.0          1.2.2-20120224        Paul Eggleton
unfs3                 0.9.22.r490    0.9.22.r494           Paul Eggleton
gpgme                 1.4.3          1.5.3                 Paul Eggleton
yasm                  1.2.0          1.3.0                 Paul Eggleton
augeas                1.2.0          1.3.0                 Paul Eggleton
libevdev              1.3            1.3.2                 Paul Eggleton
ethtool               3.16           3.18                  Paul Eggleton
dropbear              2014.66        2015.67               Paul Eggleton
cmake                 2.8.12.2       3.1.1                 Paul Eggleton
dosfstools            2.11           3.0.26                Paul Eggleton
python-distribute     0.6.32         0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22        1.4.0                 Richard Purdie
python-pycurl         7.19.5         7.19.5.1              Richard Purdie
python-pygobject      2.28.3         3.13.3                Richard Purdie       Newer versions of python-py...
python-scons          2.3.2          2.3.4                 Richard Purdie
python3               3.3.3          3.4.2rc1              Richard Purdie
python                2.7.3          3.4.2rc1              Richard Purdie
subversion            1.8.10         1.8.11                Richard Purdie
tcf-agent             0.4.0+gitX     8.0+gitAUTOINC+cd...  Richard Purdie
libdrm                2.4.58         2.4.59                Richard Purdie
btrfs-tools           3.14.2+gitX    3.18.2+gitAUTOINC...  Richard Purdie
lttng-modules         2.5.2          2.6.0                 Richard Purdie
lttng-tools           2.5.3          2.6.0                 Richard Purdie
lttng-ust             2.5.2          2.6.0                 Richard Purdie
gcc-source            4.9.1          4.9.2                 Richard Purdie
gcc                   4.9.1          4.9.2                 Richard Purdie
libgcc                4.9.1          4.9.2                 Richard Purdie
bdwgc                 7.4.2          gc-7.2d               Richard Purdie
gdb                   7.8.1          7.8.2                 Richard Purdie
libtool               2.4.4          2.4.5                 Robert Yang
tzdata                2014j          2015a                 Robert Yang
glib-2.0              2.42.1         2.43.3                Robert Yang
gmp                   6.0.0          6.0.0a                Robert Yang
binutils              2.24           2.25                  Robert Yang
e2fsprogs             1.42.9         1.42.12               Robert Yang
git                   2.2.1          2.2.2                 Robert Yang
puzzles               r10116         r10286                Ross Burton
webkit-gtk            1.8.3          1.10.2                Ross Burton          >= 1.10.2 needs ruby
at-spi2-atk           2.14.1         2.15.4                Ross Burton
at-spi2-core          2.14.1         2.15.4                Ross Burton
atk                   2.14.0         2.15.4                Ross Burton
gnutls                3.3.11         3.3.12                Ross Burton
vala                  0.26.1         0.27.1                Ross Burton
icu                   54.1           55                    Ross Burton
libsoup-2.4           2.46.0         2.49.1                Ross Burton
vte                   0.28.2         0.39.1                Ross Burton          Pending Glib-2.0 Update
libpam                1.1.6          1.1.8                 Ross Burton
gdk-pixbuf            2.30.8         2.31.2                Ross Burton
gtk+3                 3.12.2         3.15.4                Ross Burton
gtk+                  2.24.25        3.15.4                Ross Burton          Do not upgrade to version: ...
gtk-engines           2.20.2         2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
libnotify             0.6.0          0.7.6                 Ross Burton
cairo                 1.12.18        5c-1.5                Ross Burton
clutter-1.0           1.20.0         1.21.4                Ross Burton
clutter-gst-1.0       1.6.0          3.0.4                 Ross Burton
clutter-gtk-1.0       1.4.4          1.6.0                 Ross Burton
fontconfig            2.11.1         2.11.92               Ross Burton
freetype              2.5.4          2.5.5                 Ross Burton
mesa-gl               10.3.4         10.4.3                Ross Burton
mesa                  10.3.4         10.4.3                Ross Burton
liberation-fonts      1.04           2.00.1                Ross Burton          2.00.0 - fontforge package ...
waffle                1.3.0          1.5.1                 Ross Burton
libinput              0.7.0          0.9.0                 Ross Burton
wayland               1.6.0          1.6.92                Ross Burton
weston                1.6.0          1.6.92                Ross Burton
x11-common            0.1            1:7.6                 Ross Burton
xf86-video-vmware     13.0.2         13.1.0                Ross Burton
glib-networking       2.38.0         2.43.1                Ross Burton          Pending Glib-2.0 Update
libxshmfence          1.1            1.2                   Ross Burton
xkeyboard-config      2.13           2.14                  Ross Burton
xserver-xorg          1.16.2         1.16.99.902           Ross Burton
xproto                7.0.26         7.0.27                Ross Burton
xf86-video-omap       0.4.2+gitrX    0.4.3+gitrAUTOINC...  Ross Burton
tiff                  4.0.3          4.0.4beta             Saul Wold
ca-certificates       20140325       20141019              Saul Wold
nspr                  4.10.7         4.10.8                Saul Wold
lsbinitscripts        9.60           9.61                  Saul Wold
libunique             1.1.6          3.0.2                 Saul Wold            Do not upgrade to version: ...
glew                  1.11.0         1.12.0                Saul Wold
mx-1.0                1.4.7+gitX     1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
openssl               1.0.1j         1.0.2                 Saul Wold
base-passwd           3.5.29         3.5.37                Saul Wold
initscripts           1.0            9.40                  Saul Wold
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  Saul Wold
blktrace              1.0.5+gitX     1.1.0+gitAUTOINC+...  Tom Zanussi
chkconfig             1.3.58         1.3.63                Wenzong Fan
ccache                3.1.9          3.2.1                 Wenzong Fan

Upgradable count: 132
Upgradable total count: 152

The based commit is:

commit b219377defc9517af360986352bd7da1a7906f10
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu Jan 29 14:32:15 2015 +0000

    scripts/send-error-report: Set exit code if error occurs
    
    If an error occurs, set an error exit code so the world knows about it. This fixes
    issues where the autobuilder doesn't notice these failures.
    
    [YOCTO #7265]
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Saul Wold <sgw@linux.intel.com> 

