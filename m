Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9509E0093B; Sun,  4 Dec 2016 21:36:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C0DE008D3
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 21:36:06 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 40D0B84821F7
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 00:36:05 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 05 Dec 2016 05:36:05 -0000
Message-ID: <20161205053605.23154.58071@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Dec 2016 05:36:11 -0000
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
liburcu               0.9.2          0.9.3                 Alexander Kanavin
ca-certificates       20161102       20161130              Alexander Kanavin
openssl               1.0.2j         1.1.0c                Alexander Kanavin
babeltrace            1.4.0          1.5.0                 Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
btrfs-tools           4.8.4          4.8.5                 Alexander Kanavin
cmake                 3.7.0          3.7.1                 Alexander Kanavin
sysprof               3.22.2         3.22.3                Alexander Kanavin
cmake-native          3.7.0          3.7.1                 Alexander Kanavin
tiff                  4.0.6          4.0.7                 Alexander Kanavin
mkelfimage            4.0+gitX       4.5+gitAUTOINC+0b...  Alexander Kanavin   mkelfimage has been removed...
perl                  5.24.0         5.24.1                Aníbal Limón
dpkg                  1.18.7         1.18.15               Aníbal Limón
perl-native           5.24.0         5.24.1                Aníbal Limón
pinentry              0.9.2          1.0.0                 Armin Kuster
linux-yocto           4.8.8+gitX     4.8.10+gitAUTOINC...  Bruce Ashfield
linux-libc-headers    4.8            4.8.12                Bruce Ashfield
linux-yocto-rt        4.8.8+gitX     4.8.10+gitAUTOINC...  Bruce Ashfield
linux-yocto-tiny      4.8.8+gitX     4.8.10+gitAUTOINC...  Bruce Ashfield
systemd-bootchart     230+gitX       231+gitAUTOINC+9e...  Chen Qi
pciutils              3.5.1          3.5.2                 Chen Qi
busybox               1.25.0+gitX    1.25.1+gitAUTOINC...  Chen Qi
systemd-boot          230+gitX       232+gitAUTOINC+a1...  Chen Qi
dbus-glib             0.106          0.108                 Chen Qi
dbus-test             1.10.10        1.10.14               Chen Qi
dbus                  1.10.10        1.10.14               Chen Qi
byacc                 20160606       20161202              Chen Qi
cups                  2.1.4          2.2.1                 Chen Qi
diffutils             3.4            3.5                   Chen Qi
systemd               230+gitX       232+gitAUTOINC+a1...  Chen Qi
util-linux            2.28.1         2.29                  Chen Qi
sudo                  1.8.17p1       1.8.18p1              Chen Qi
sysstat               11.4.0         11.5.2                Chen Qi
flex                  2.6.0          2.6.2                 Chen Qi
coreutils             8.25           8.26                  Chen Qi
build-appliance-i...  15.0.0         16.0.0                Cristian Iorga
chkconfig             1.3.58         1.8                   Dengke Du           Version 1.5 requires selinux
ltp                   20160126       20160920              Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.11+gitAUTOI...  Denys Dmytriyenko
python3-setuptools    28.8.0         30.2.0                Edwin Plauchu
python-setuptools     28.8.0         30.2.0                Edwin Plauchu
pax-utils             1.1.6          1.1.7                 Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia          Versions after 0.9.* use YU...
elfutils              0.166          0.167                 Hongxu Jia
gpgme                 1.6.0          1.8.0                 Hongxu Jia
bash                  4.3.30         4.4                   Hongxu Jia
ghostscript           9.19           9.20rc1               Hongxu Jia
ncurses               6.0+20160625   6.0+20161126          Hongxu Jia
man-pages             4.07           4.08                  Hongxu Jia
rpcbind               0.2.3          0.2.4                 Hongxu Jia
dhcp                  4.3.4          4.3.5                 Hongxu Jia
gnupg                 2.1.14         2.1.16                Hongxu Jia
libinput              1.5.0          1.5.2                 Jussi Kukkonen
weston                1.11.1         1.12.0                Jussi Kukkonen
gtk-icon-utils-na...  3.22.1         3.22.4                Jussi Kukkonen
xf86-input-evdev      2.10.3         2.10.4                Jussi Kukkonen
xf86-input-keyboard   1.8.1          1.9.0                 Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.9.0                 Jussi Kukkonen
xf86-video-intel      2.99.917+gitX  20040721+gitAUTOI...  Jussi Kukkonen
xf86-video-omap       0.4.4          0.4.5                 Jussi Kukkonen
xf86-video-vmware     13.1.0         13.2.1                Jussi Kukkonen
libevdev              1.5.4          1.5.5                 Jussi Kukkonen
glib-2.0              2.50.1         2.50.2                Jussi Kukkonen
libxi                 1.7.7          1.7.8                 Jussi Kukkonen
libxkbcommon          0.6.1          0.7.0                 Jussi Kukkonen
xkeyboard-config      2.18           2.19                  Jussi Kukkonen
mesa                  13.0.1         13.0.2                Jussi Kukkonen
vte                   0.44.2         0.46.1                Jussi Kukkonen
gsettings-desktop...  3.20.0         3.22.0                Jussi Kukkonen
xserver-xorg          1.18.4         1.19.0                Jussi Kukkonen
shared-mime-info      1.6            1.7                   Jussi Kukkonen
gtk+3                 3.22.1         3.22.4                Jussi Kukkonen
libnotify             0.7.6          0.7.7                 Jussi Kukkonen
cogl-1.0              1.22.0         1.22.2                Jussi Kukkonen
libdrm                2.4.73         2.4.74                Jussi Kukkonen
xf86-input-mouse      1.9.1          1.9.2                 Jussi Kukkonen
menu-cache            1.0.1          1.0.2                 Jussi Kukkonen
mesa-gl               13.0.1         13.0.2                Jussi Kukkonen
mpfr                  3.1.4          3.1.5                 Khem Raj
gdb                   7.11.1         7.12                  Khem Raj
texinfo               6.0            6.3                   Leonardo Sandoval
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.35         6.2.23                Mark Hatle          latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.8.0                 Matthew McClintock
gstreamer1.0-rtsp...  1.8.3          1.10.2                Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.2                Maxin B. John
iproute2              4.7.0          4.8.0                 Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.2                Maxin B. John
gstreamer1.0          1.8.3          1.10.2                Maxin B. John
libunistring          0.9.6          0.9.7                 Maxin B. John
sqlite3               3.14.1         3.15.2                Maxin B. John
ifupdown              0.8.2          0.8.16                Maxin B. John
gstreamer1.0-omx      1.2.0          1.10.2                Maxin B. John
wpa-supplicant        2.5            2.6                   Maxin B. John
gstreamer1.0-libav    1.8.3          1.10.2                Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.2                Maxin B. John
gstreamer1.0-plug...  1.8.3          1.10.2                Maxin B. John
gdb-cross-canadia...  7.11.1         7.12                  No maintainer
gdb-cross-i586        7.11.1         7.12                  No maintainer
subversion            1.9.4          1.9.5                 Richard Purdie
lttng-modules         2.8.0+gitX     2.9.0+gitAUTOINC+...  Richard Purdie
lttng-tools           2.8.1+gitX     2.9.0+gitAUTOINC+...  Richard Purdie
lttng-ust             2.8.1+gitX     2.9.0+gitAUTOINC+...  Richard Purdie
tzcode-native         2016i          2016j                 Robert Yang
quilt                 0.64           0.65                  Robert Yang
debianutils           4.8            4.8.1                 Robert Yang
strace                4.13           4.14                  Robert Yang
hdparm                9.48           9.50                  Robert Yang
less                  481            487                   Robert Yang
slang                 2.3.0          2.3.1a                Robert Yang
e2fsprogs             1.43           1.43.3                Robert Yang
tzdata                2016i          2016j                 Robert Yang
file                  5.28           5.29                  Robert Yang
git                   2.9.3          2.11.0                Robert Yang
guile                 2.0.12         2.0.13                Robert Yang
mklibs-native         0.1.41         0.1.43                Robert Yang
quilt-native          0.64           0.65                  Robert Yang
lsbinitscripts        9.68           9.69                  Ross Burton

Upgradable count: 117
Upgradable total count: 122

The based commit is:

commit 11063a01d4511b2688ea7ba2d7359e4e07328c66
Author: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Date:   Fri Nov 25 18:10:40 2016 -0600

    ruby: upgrade to 2.3.1
    
    Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


