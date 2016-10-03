Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19B88E00BE1; Sun,  2 Oct 2016 21:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D019E00B8D
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 21:37:25 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id E736E84AB637
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 00:37:23 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 03 Oct 2016 04:37:23 -0000
Message-ID: <20161003043723.14302.4767@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 03 Oct 2016 04:37:31 -0000
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
gobject-introspec...  1.48.0         1.50.0                Alexander Kanavin
boost                 1.61.0         1.62.0                Alexander Kanavin
openssl               1.0.2j         1.1.0b                Alexander Kanavin
gnome-desktop3        3.20.2         3.22.0                Alexander Kanavin
gnutls                3.5.3          3.5.4                 Alexander Kanavin
vala                  0.32.1         0.34.0                Alexander Kanavin
bjam-native           1.61.0         1.62.0                Alexander Kanavin
nspr                  4.12           4.13                  Alexander Kanavin
nss                   3.25           3.26                  Alexander Kanavin
webkitgtk             2.12.5         2.14.0                Alexander Kanavin
ffmpeg                3.1.3          3.1.4                 Alexander Kanavin
dtc                   1.4.1+gitX     1.4.2+gitAUTOINC+...  Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
epiphany              3.20.3         3.22.0                Alexander Kanavin
sysprof               3.20.0+gitX    3.22.0+gitAUTOINC...  Alexander Kanavin
cmake-native          3.6.1          3.6.2                 Alexander Kanavin
btrfs-tools           4.7.1          4.7.3                 Alexander Kanavin
mpg123                1.23.6         1.23.8                Alexander Kanavin
cmake                 3.6.1          3.6.2                 Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin   mkelfimage has been removed...
libksba               1.3.4          1.3.5                 Alexander Kanavin
perl                  5.22.1         5.24.1                Aníbal Limón
apt                   1.2.12         1.3                   Aníbal Limón
apt-native            1.2.12         1.3                   Aníbal Limón
dpkg                  1.18.7         1.18.10               Aníbal Limón
perl-native           5.22.1         5.24.1                Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
nettle                3.2            3.3                   Armin Kuster
linux-libc-headers    4.8-rc4        8                     Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
cups                  2.1.4          2.2.0                 Chen Qi
curl                  7.50.1         7.50.3                Chen Qi
systemd-boot          230+gitX       231+gitAUTOINC+38...  Chen Qi
dbus-glib             0.106          0.108                 Chen Qi
gawk                  4.1.3          4.1.4                 Chen Qi
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
util-linux            2.28.1         2.28.2                Chen Qi
sudo                  1.8.17p1       1.8.18                Chen Qi
sysstat               11.4.0         11.5.1                Chen Qi
systemd-bootchart     230+gitX       231+gitAUTOINC+9e...  Chen Qi
diffutils             3.4            3.5                   Chen Qi
grep                  2.25           2.26                  Chen Qi
build-appliance-i...  15.0.0         15.0.1                Cristian Iorga
docbook-sgml-dtd-...  3.1            3.1">3.1/<            Dengke Du
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Dengke Du
linuxdoc-tools-na...  0.9.69         0.9.72                Dengke Du
chkconfig             1.3.58         1.8                   Dengke Du           Version 1.5 requires selinux
ltp                   20160126       20160920              Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.09.01+gitAU...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.09.01+gitAU...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.09.01+gitAU...  Denys Dmytriyenko
python3-pygobject     3.20.1         3.22.0                Edwin Plauchu
python3-git           2.0.7          2.0.8                 Edwin Plauchu
swig                  3.0.8          3.0.10                Edwin Plauchu
python3-setuptools    22.0.5         28.2.0                Edwin Plauchu
python3-numpy         1.11.0         1.11.1                Edwin Plauchu
createrepo            0.4.11         0.10.4                Hongxu Jia          Versions after 0.9.* use YU...
elfutils              0.166          0.167                 Hongxu Jia
gpgme                 1.6.0          1.7.0                 Hongxu Jia
bash                  4.3.30         4.4                   Hongxu Jia
ghostscript           9.19           9.20rc1               Hongxu Jia
ncurses               6.0+20160625   6.0+20160917          Hongxu Jia
readline              6.3            7.0                   Hongxu Jia
pigz                  2.3.3          2.3.4                 Hongxu Jia
gnupg                 2.1.14         2.1.15                Hongxu Jia
python-git            2.0.7          2.0.8                 Jose Lamego
python-pexpect        4.2.0          4.2.1                 Jose Lamego
python-setuptools     22.0.5         28.2.0                Jose Lamego
pango                 1.40.1         1.40.3                Jussi Kukkonen
atk                   2.20.0         2.22.0                Jussi Kukkonen
libinput              1.4.1          1.5.0                 Jussi Kukkonen
wayland               1.11.0         1.12.0                Jussi Kukkonen
weston                1.11.0         1.12.0                Jussi Kukkonen
gtk-icon-utils-na...  3.20.9         3.22.1                Jussi Kukkonen
xf86-input-evdev      2.10.3         2.10.4                Jussi Kukkonen
at-spi2-atk           2.20.1         2.22.0                Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
at-spi2-core          2.20.2         2.22.0                Jussi Kukkonen
libevdev              1.5.2          1.5.4                 Jussi Kukkonen
glib-2.0              2.48.2         2.50.0                Jussi Kukkonen
glib-networking       2.48.2         2.50.0                Jussi Kukkonen
libsoup-2.4           2.54.1         2.56.0                Jussi Kukkonen
xkeyboard-config      2.18           2.19                  Jussi Kukkonen
shared-mime-info      1.6            1.7                   Jussi Kukkonen
mesa                  12.0.1         12.0.3                Jussi Kukkonen
vte                   0.44.2         0.46.0                Jussi Kukkonen
xproto                7.0.29         7.0.31                Jussi Kukkonen
xserver-xorg          1.18.4         1.18.99.901           Jussi Kukkonen
clutter-gst-3.0       3.0.18         3.0.20                Jussi Kukkonen
gdk-pixbuf            2.34.0         2.36.0                Jussi Kukkonen
adwaita-icon-theme    3.20           3.22.0                Jussi Kukkonen
mesa-gl               12.0.1         12.0.3                Jussi Kukkonen
libxfont              1.5.1          1.5.2                 Jussi Kukkonen
gtk+3                 3.20.9         3.22.1                Jussi Kukkonen
gtk+                  2.24.30        2.24.31               Jussi Kukkonen
clutter-gtk-1.0       1.8.0          1.8.2                 Jussi Kukkonen
cogl-1.0              1.22.0         1.22.2                Jussi Kukkonen
gsettings-desktop...  3.20.0         3.22.0                Jussi Kukkonen
freetype              2.6.5          2.7                   Jussi Kukkonen
xf86-input-libinput   0.19.0         0.20.0                Jussi Kukkonen
texinfo               6.0            6.3                   Leonardo Sandoval
nfs-utils             1.3.3          1.3.4                 Mariano Lopez
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.35         6.2.23                Mark Hatle          latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.7.0                 Matthew McClintock
acpid                 2.0.27         2.0.28                Maxin B. John
bluez5                5.41           5.42                  Maxin B. John
libpcap               1.7.4          1.8.0                 Maxin B. John
ifupdown              0.8.2          0.8.16                Maxin B. John
wpa-supplicant        2.5            2.6                   Maxin B. John
neon                  0.30.1         0.30.2                Maxin B. John
sqlite3               3.14.1         3.14.2                Maxin B. John
mc                    4.8.17         4.8.18                Maxin B. John
serf                  1.3.8          1.3.9                 Maxin B. John
libpng                1.6.24         1.6.25                Maxin B. John
harfbuzz              1.3.0          1.3.2                 Maxin B. John
libjpeg-turbo         1.5.0          1.5.1                 Maxin B. John
orc                   0.4.25         0.4.26                Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
mpfr                  3.1.4          3.1.5                 Richard Purdie
gdb                   7.11           7.11.1                Richard Purdie
git                   2.9.3          2.10.0                Robert Yang
autogen-native        5.18.10        5.18.12               Robert Yang
e2fsprogs             1.43           1.43.3                Robert Yang
mklibs-native         0.1.41         0.1.42                Robert Yang
base-passwd           3.5.29         3.5.40                Ross Burton         Version 3.5.38 requires cde...
lsbinitscripts        9.68           9.69                  Ross Burton

Upgradable count: 124
Upgradable total count: 130

The based commit is:

commit 21cc2a3f63ea260dbf6b50e2fd4dd50cacdd9935
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Sep 30 17:43:28 2016 +0100

    machine-sdk: Clear ABIEXTENSION to avoid sstate checksum mismatch issues
    
    When switching MACHINE, nativeksdk recipes could end up being rebuilt. Clear
    ABIEXTENSION to avoid this problem and ensure sstate checksum consistency.
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


