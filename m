Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE74AE00A92; Sun, 20 Nov 2016 21:36:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC33E00A1E
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 21:36:41 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 3C1E68480BAB
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 00:36:40 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 21 Nov 2016 05:36:40 -0000
Message-ID: <20161121053640.1799.804@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 21 Nov 2016 05:36:44 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade at this time, they can fill
RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"

You can check the detail information at:

http://recipes.yoctoproject.org/

Package               Version        Upstream version      Maintainer          NoUpgradeReason
--------------------  -------------  --------------------  ------------------  ------------------------------
liberation-fonts      1.04           2.00.1                Alexander Kanavin   2.x depends on fontforge pa...
iso-codes             3.70           3.71                  Alexander Kanavin
ca-certificates       20160104       20161102              Alexander Kanavin
openssl               1.0.2j         1.1.0c                Alexander Kanavin
gnutls                3.5.5          3.5.6                 Alexander Kanavin
btrfs-tools           4.8.2          4.8.3                 Alexander Kanavin
gnome-desktop3        3.22.1         3.22.2                Alexander Kanavin
webkitgtk             2.14.1         2.14.2                Alexander Kanavin
lighttpd              1.4.42         1.4.43                Alexander Kanavin
msmtp                 1.6.5          1.6.6                 Alexander Kanavin
icu                   57.1           58.1                  Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
gobject-introspec...  1.48.0         1.50.0                Alexander Kanavin
cmake                 3.6.2          3.7.0                 Alexander Kanavin
sysprof               3.20.0+gitX    3.22.2+gitAUTOINC...  Alexander Kanavin
cmake-native          3.6.2          3.7.0                 Alexander Kanavin
epiphany              3.22.1         3.22.2                Alexander Kanavin
tiff                  4.0.6          4.0.7                 Alexander Kanavin
mkelfimage            4.0+gitX       4.5+gitAUTOINC+0b...  Alexander Kanavin   mkelfimage has been removed...
perl                  5.22.1         5.24.1                Aníbal Limón
apt                   1.2.12         1.3.1                 Aníbal Limón
apt-native            1.2.12         1.3.1                 Aníbal Limón
dpkg                  1.18.7         1.18.15               Aníbal Limón
perl-native           5.22.1         5.24.1                Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
nettle                3.2            3.3                   Armin Kuster
linux-libc-headers    4.8            4.8.9                 Bruce Ashfield
linux-yocto           4.8.6+gitX     4.8.8+gitAUTOINC+...  Bruce Ashfield
linux-yocto-rt        4.8.6+gitX     4.8.8+gitAUTOINC+...  Bruce Ashfield
linux-yocto-tiny      4.8.6+gitX     4.8.8+gitAUTOINC+...  Bruce Ashfield
systemd-bootchart     230+gitX       231+gitAUTOINC+9e...  Chen Qi
pciutils              3.5.1          3.5.2                 Chen Qi
systemd-boot          230+gitX       232+gitAUTOINC+a1...  Chen Qi
dbus-glib             0.106          0.108                 Chen Qi
dbus-test             1.10.10        1.10.12               Chen Qi
dbus                  1.10.10        1.10.12               Chen Qi
busybox               1.25.0+gitX    1.25.1+gitAUTOINC...  Chen Qi
cups                  2.1.4          2.2.1                 Chen Qi
systemd               230+gitX       232+gitAUTOINC+a1...  Chen Qi
util-linux            2.28.1         2.29                  Chen Qi
sudo                  1.8.17p1       1.8.18p1              Chen Qi
sysstat               11.4.0         11.5.2                Chen Qi
flex                  2.6.0          2.6.2                 Chen Qi
diffutils             3.4            3.5                   Chen Qi
build-appliance-i...  15.0.0         16.0.0                Cristian Iorga
chkconfig             1.3.58         1.8                   Dengke Du           Version 1.5 requires selinux
ltp                   20160126       20160920              Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
python3-pygobject     3.20.1         3.22.0                Edwin Plauchu
python3-git           2.0.7          2.1.0                 Edwin Plauchu
swig                  3.0.8          3.0.10                Edwin Plauchu
python3-pip           8.1.2          9.0.1                 Edwin Plauchu
python3-setuptools    22.0.5         28.8.0                Edwin Plauchu
python3-numpy         1.11.0         1.11.2                Edwin Plauchu
python3-mako          1.0.4          1.0.6                 Edwin Plauchu
pax-utils             1.1.6          1.1.7                 Hongxu Jia
gnupg                 2.1.14         2.1.16                Hongxu Jia
dhcp                  4.3.4          4.3.5                 Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia          Versions after 0.9.* use YU...
elfutils              0.166          0.167                 Hongxu Jia
gpgme                 1.6.0          1.8.0                 Hongxu Jia
libgpg-error          1.24           1.25                  Hongxu Jia
bash                  4.3.30         4.4                   Hongxu Jia
ghostscript           9.19           9.20rc1               Hongxu Jia
ncurses               6.0+20160625   6.0+20160917          Hongxu Jia
readline              6.3            7.0                   Hongxu Jia
man-pages             4.07           4.08                  Hongxu Jia
pigz                  2.3.3          2.3.4                 Hongxu Jia
python-git            2.0.7          2.1.0                 Jose Lamego
python-numpy          1.11.1         1.11.2                Jose Lamego
python-scons          2.5.0          2.5.1                 Jose Lamego
python-pexpect        4.2.0          4.2.1                 Jose Lamego
python-setuptools     22.0.5         28.8.0                Jose Lamego
python-scons-native   2.5.0          2.5.1                 Jose Lamego
python-mako           1.0.4          1.0.6                 Jose Lamego
libinput              1.5.0          1.5.1                 Jussi Kukkonen
weston                1.11.1         1.12.0                Jussi Kukkonen
gtk-icon-utils-na...  3.22.1         3.22.4                Jussi Kukkonen
xf86-video-intel      2.99.917+gitX  20040721+gitAUTOI...  Jussi Kukkonen
xf86-input-evdev      2.10.3         2.10.4                Jussi Kukkonen
xf86-input-keyboard   1.8.1          1.9.0                 Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.9.0                 Jussi Kukkonen
xf86-video-vmware     13.1.0         13.2.1                Jussi Kukkonen
glib-2.0              2.50.1         2.50.2                Jussi Kukkonen
libxi                 1.7.7          1.7.8                 Jussi Kukkonen
xkeyboard-config      2.18           2.19                  Jussi Kukkonen
mesa                  12.0.3         13.0.1                Jussi Kukkonen
vte                   0.44.2         0.46.1                Jussi Kukkonen
xserver-xorg          1.18.4         1.19.0                Jussi Kukkonen
shared-mime-info      1.6            1.7                   Jussi Kukkonen
gtk+3                 3.22.1         3.22.4                Jussi Kukkonen
libnotify             0.7.6          0.7.7                 Jussi Kukkonen
cogl-1.0              1.22.0         1.22.2                Jussi Kukkonen
libdrm                2.4.71         2.4.73                Jussi Kukkonen
gsettings-desktop...  3.20.0         3.22.0                Jussi Kukkonen
libxkbcommon          0.6.1          0.7.0                 Jussi Kukkonen
xf86-input-mouse      1.9.1          1.9.2                 Jussi Kukkonen
menu-cache            1.0.1          1.0.2                 Jussi Kukkonen
mesa-gl               12.0.3         13.0.1                Jussi Kukkonen
mpfr                  3.1.4          3.1.5                 Khem Raj
gdb                   7.11.1         7.12                  Khem Raj
texinfo               6.0            6.3                   Leonardo Sandoval
nfs-utils             1.3.3          1.3.4                 Mariano Lopez
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.35         6.2.23                Mark Hatle          latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.8.0                 Matthew McClintock
gstreamer1.0-plug...  1.8.3          1.10.1                Maxin B. John
bluez5                5.42           5.43                  Maxin B. John
iproute2              4.7.0          4.8.0                 Maxin B. John
ofono                 1.18           1.19                  Maxin B. John
gstreamer1.0-libav    1.8.3          1.10.1                Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.1                Maxin B. John
gstreamer1.0          1.8.3          1.10.1                Maxin B. John
iw                    4.7            4.9                   Maxin B. John
sqlite3               3.14.1         3.15.1                Maxin B. John
libsolv               0.6.23         0.6.24                Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.1                Maxin B. John
ifupdown              0.8.2          0.8.16                Maxin B. John
gstreamer1.0-rtsp...  1.8.3          1.10.1                Maxin B. John
taglib                1.11           1.11.1                Maxin B. John
harfbuzz              1.3.2          1.3.3                 Maxin B. John
gstreamer1.0-omx      1.2.0          1.10.1                Maxin B. John
wpa-supplicant        2.5            2.6                   Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.1                Maxin B. John
gdb-cross-canadia...  7.11.1         7.12                  No maintainer
gdb-cross-i586        7.11.1         7.12                  No maintainer
lttng-tools           2.8.1+gitX     2.8.2+gitAUTOINC+...  Richard Purdie
lttng-modules         2.8.0+gitX     2.8.3+gitAUTOINC+...  Richard Purdie
quilt                 0.64           0.65                  Robert Yang
strace                4.13           4.14                  Robert Yang
debianutils           4.8            4.8.1                 Robert Yang
hdparm                9.48           9.50                  Robert Yang
less                  481            487                   Robert Yang
slang                 2.3.0          2.3.1                 Robert Yang
e2fsprogs             1.43           1.43.3                Robert Yang
file                  5.28           5.29                  Robert Yang
git                   2.9.3          2.10.2                Robert Yang
guile                 2.0.12         2.0.13                Robert Yang
quilt-native          0.64           0.65                  Robert Yang
mklibs-native         0.1.41         0.1.42                Robert Yang
base-passwd           3.5.29         3.5.41                Ross Burton         Version 3.5.38 requires cde...
lsbinitscripts        9.68           9.69                  Ross Burton

Upgradable count: 139
Upgradable total count: 145

The based commit is:

commit a675b2c89e477af088faee9b3be96eae19a85f0b
Author: Markus Lehtonen <markus.lehtonen@linux.intel.com>
Date:   Thu Nov 10 16:57:29 2016 +0200

    sanity.bbclass: fix logging of an error
    
    Fixes a crash in exception handler. All bb logging functions need an
    string instances as arguments.
    
    Signed-off-by: Markus Lehtonen <markus.lehtonen@linux.intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


