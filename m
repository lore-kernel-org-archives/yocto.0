Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F477E00474; Sun, 19 Jun 2016 21:00:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 164C4E0043B
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2016 21:00:25 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id ACF0980B974D
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 00:00:23 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 04:00:23 -0000
Message-ID: <20160620040023.3278.28168@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Jun 2016 04:00:29 -0000
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

Package               Version            Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------------  --------------------  -------------------  ------------------------------
texinfo               6.0                6.1                   Alejandro Hernandez
ruby                  2.2.5              2.3.1                 Alejandro Hernandez
python3-git           1.0.2              2.0.5                 Alejandro Hernandez
perl                  5.22.1             5.24.0                Alejandro Hernandez
python-dbus           1.2.0              1.2.4                 Alejandro Hernandez
python-git            1.0.2              2.0.5                 Alejandro Hernandez
python-mako           1.0.3              1.0.4                 Alejandro Hernandez
python-numpy          1.10.4             1.11.0                Alejandro Hernandez
python-pygobject      3.18.2             3.21.0                Alejandro Hernandez
python-scons          2.4.1              2.5.0                 Alejandro Hernandez
python3-mako          1.0.3              1.0.4                 Alejandro Hernandez
python-pexpect        4.0.1              4.1.0                 Alejandro Hernandez
python3-setuptools    19.4               22.0.0                Alejandro Hernandez
python3-pip           8.0.0              8.1.2                 Alejandro Hernandez
eudev                 3.1.5              3.2                   Alejandro Hernandez
python-setuptools     19.4               22.0.0                Alejandro Hernandez
perl-native           5.22.1             5.24.0                Alejandro Hernandez
python-scons-native   2.4.1              2.5.0                 Alejandro Hernandez
liberation-fonts      1.04               2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
bjam-native           1.60.0             1.61.0                Alexander Kanavin
gnome-desktop3        3.18.2             3.20.2                Alexander Kanavin
watchdog              5.14               5.15                  Alexander Kanavin
ffmpeg                3.0                3.0.2                 Alexander Kanavin
kexec-tools           2.0.11             2.0.12                Alexander Kanavin
btrfs-tools           4.4                4.5.3                 Alexander Kanavin
sysprof               1.2.0+gitX         3.20.0+gitAUTOINC...  Alexander Kanavin
systemtap-uprobes     2.9                3.0                   Alexander Kanavin
systemtap             2.9                3.0                   Alexander Kanavin
mkelfimage            4.0+gitX           4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
hwlatdetect           0.96               2.0                   Alexander Kanavin
rt-tests              0.96               2.0                   Alexander Kanavin
webkitgtk             2.12.1             2.12.3                Alexander Kanavin
boost                 1.60.0             1.61.0                Alexander Kanavin
gdbm                  1.11               1.12                  Alexander Kanavin
icu                   56.1               57.1                  Alexander Kanavin
libksba               1.3.3              1.3.4                 Alexander Kanavin
libxslt               1.1.28             1.1.29                Alexander Kanavin
gnutls                3.4.9              3.5.0                 Alexander Kanavin
msmtp                 1.6.4              1.6.5                 Alexander Kanavin
epiphany              3.18.4             3.20.2                Alexander Kanavin
gobject-introspec...  1.46.0             1.48.0                Alexander Kanavin
cantarell-fonts       0.0.21+gitX        0.13+gitAUTOINC+7...  Alexander Kanavin
iso-codes             3.65               3.68                  Alexander Kanavin
apt                   1.0.10.1           1.2.12                Aníbal Limón
dpkg                  1.18.4             1.18.7                Aníbal Limón
apt-native            1.0.10.1           1.2.12                Aníbal Limón
pinentry              0.9.2              0.9.7                 Armin Kuster
linux-libc-headers    4.4                4.6.1                 Bruce Ashfield
guilt-native          0.35+gitX          0.36+gitAUTOINC+2...  Bruce Ashfield
pciutils              3.4.1              3.5.1                 Chen Qi
resolvconf            1.78               1.79                  Chen Qi
dbus-test             1.10.6             1.10.8                Chen Qi
dbus                  1.10.6             1.10.8                Chen Qi
systemd               229+gitX           230+gitAUTOINC+3a...  Chen Qi
util-linux            2.27.1             2.28                  Chen Qi
tar                   1.28               1.29                  Chen Qi
curl                  7.47.1             7.49.1                Chen Qi
byacc                 20150711           20160324              Chen Qi
gzip                  1.6                1.8                   Chen Qi
sudo                  1.8.15             1.8.16                Chen Qi
sysstat               11.2.0             11.3.4                Chen Qi
grep                  2.23               2.25                  Chen Qi
build-appliance-i...  14.0.0             15.0.0                Cristian Iorga
u-boot-fw-utils       v2016.03+gitX      v2016.05+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX      v2016.05+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX      v2016.05+gitAUTOI...  Denys Dmytriyenko
dhcp                  4.3.3              4.3.4                 Hongxu Jia
libxml2               2.9.3              2.9.4                 Hongxu Jia
ncurses               6.0+20160213       6.0+20160319          Hongxu Jia
gnupg                 2.1.11             2.1.12                Hongxu Jia
pax-utils             1.1.5              1.1.6                 Hongxu Jia
createrepo            0.4.11             0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
libgcrypt             1.6.5              1.7.0                 Hongxu Jia
ghostscript           9.18               9.19                  Hongxu Jia
libnewt-python        0.52.18            0.52.19               Hongxu Jia
man-pages             4.04               4.06                  Hongxu Jia
libnewt               0.52.18            0.52.19               Hongxu Jia
help2man-native       1.47.3             1.47.4                Hongxu Jia
libinput              1.3.0              1.3.1                 Jussi Kukkonen
wayland               1.10.0             1.11.0                Jussi Kukkonen
weston                1.10.0             1.11.0                Jussi Kukkonen
gtk-icon-utils-na...  3.18.8             3.20.6                Jussi Kukkonen
xf86-input-evdev      2.10.2             2.10.3                Jussi Kukkonen
xf86-input-synaptics  1.8.3              1.8.99.1              Jussi Kukkonen
matchbox-theme-sato   0.2+gitX           2+gitAUTOINC+e3cc...  Jussi Kukkonen
libxfixes             5.0.1              5.0.2                 Jussi Kukkonen
matchbox-terminal     0.0+gitX           2+gitAUTOINC+452b...  Jussi Kukkonen
matchbox-config-gtk   0.0+gitX           2+gitAUTOINC+3ed7...  Jussi Kukkonen
sato-screenshot       0.1+gitX           2+gitAUTOINC+3a96...  Jussi Kukkonen
settings-daemon       0.0+gitX           2+gitAUTOINC+957f...  Jussi Kukkonen
at-spi2-atk           2.18.1             2.20.1                Jussi Kukkonen
at-spi2-core          2.18.3             2.20.2                Jussi Kukkonen
atk                   2.18.0             2.20.0                Jussi Kukkonen
vala                  0.30.1             0.32.0                Jussi Kukkonen
augeas                1.4.0              1.5.0                 Jussi Kukkonen
gsettings-desktop...  3.20.0             3.21.2                Jussi Kukkonen
vte                   0.28.2             0.44.2                Jussi Kukkonen       matchbox-terminal needs to ...
dosfstools            3.0.28             4.0                   Jussi Kukkonen
wayland-protocols     1.3                1.4                   Jussi Kukkonen
gtk+3                 3.18.8             3.20.6                Jussi Kukkonen
cairo                 1.14.6             1.15.2                Jussi Kukkonen
clutter-gtk-1.0       1.6.6              1.8.0                 Jussi Kukkonen
sgmlspl-native        1.1+gitX           1.03+gitAUTOINC+f...  Jussi Kukkonen
linuxdoc-tools-na...  0.9.69             0.9.72                Jussi Kukkonen
xf86-input-libinput   0.16.0             0.19.0                Jussi Kukkonen
slang                 2.2.4              2.3.0                 Kai Kang
uclibc                1.0.12+gitX        1.0.15                Khem Raj
uclibc-initial        1.0.12+gitX        1.0.15                Khem Raj
prelink               1.0+gitX           20151030.+gitAUTO...  Mark Hatle
db                    6.0.30             6.2.23                Mark Hatle
rpm                   5.4.16             5.4.17                Mark Hatle
libpfm4               4.6.0              4.7.0                 Matthew McClintock
iw                    4.3                4.7                   Maxin B. John
gstreamer1.0-plug...  1.7.2+gitX         1.8.1+gitAUTOINC+...  Maxin B. John
ofono                 1.17               1.18                  Maxin B. John
ifupdown              0.8.2              0.8.12                Maxin B. John
mc                    4.8.16             4.8.17                Maxin B. John
gdb-cross-canadia...  7.11               20131001              No maintainer
gdb-cross-i586        7.11               20131001              No maintainer
gcc-source-5.3.0      5.3.0              6.1.0                 No maintainer
lttng-tools           2.7.1+gitX         2.8.0+gitAUTOINC+...  Richard Purdie
lttng-ust             2.7.1+gitX         2.8.0+gitAUTOINC+...  Richard Purdie
gdb                   7.11               20131001              Richard Purdie
nasm                  2.11.08            2.12.01               Richard Purdie
subversion            1.9.3              1.9.4                 Richard Purdie
lttng-modules         2.7.3+gitX         2.8.0+gitAUTOINC+...  Richard Purdie
gnu-efi               3.0.3              3.0.4                 Robert Yang
e2fsprogs             1.42.99+1.43+gitX  1.43                  Robert Yang
file                  5.25               5.27                  Robert Yang
git                   2.8.2              2.8.3                 Robert Yang
make                  4.1                4.2                   Robert Yang
tcl                   8.6.4              8.6.5                 Robert Yang
libbsd                0.8.2              0.8.3                 Robert Yang
libcap                2.24               2.25                  Robert Yang
strace                4.11               4.12                  Robert Yang
ltp                   20160126           20160510              Robert Yang
autogen-native        5.18.6             5.18.10               Robert Yang
mklibs-native         0.1.40             0.1.41                Robert Yang
base-passwd           3.5.29             3.5.39                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.64               9.66                  Ross Burton
alsa-utils            1.1.0              1.1.1                 Tanu Kaskinen
pulseaudio            8.0                8.99.2                Tanu Kaskinen
alsa-plugins          1.1.0              1.1.1                 Tanu Kaskinen
alsa-utils-scripts    1.1.0              1.1.1                 Tanu Kaskinen
ccache                3.2.4              3.2.5                 Wenzong Fan
gettext               0.19.6             0.19.7                Wenzong Fan
chkconfig             1.3.58             1.7                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 141
Upgradable total count: 147

The based commit is:

commit 642bd49964690259328f506df41a1764c5ac6226
Author: Jose Pardeiro <jpardeiro@rapyuta-robotics.com>
Date:   Fri Jun 17 17:01:17 2016 +0200

    cmake.bbclass: set the modules directory correctly
    
    The CMake recipes contain a mismatch between the environmental variable
    which defines where the Modules are installed and the location where they
    actually are. This patch fixes the environmental variable to point to the
    proper folder defined according to the cmake version.
    
    Signed-off-by: Jose Pardeiro <jpardeiro@rapyuta-robotics.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

