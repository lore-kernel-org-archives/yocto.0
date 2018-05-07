Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D32FE00A75; Sun,  6 May 2018 21:39:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77448E00A39
	for <yocto@yoctoproject.org>; Sun,  6 May 2018 21:39:16 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 5D064875E8B5
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 00:39:15 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 07 May 2018 04:39:15 -0000
Message-ID: <20180507043915.3774.28672@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 07 May 2018 04:39:17 -0000
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

Package               Version          Upstream version      Maintainer            NoUpgradeReason
--------------------  ---------------  --------------------  --------------------  ------------------------------
rt-tests              1.1              1.3                   Alexander Kanavin
pcmanfm               1.2.5            1.3.0                 Alexander Kanavin
hwlatdetect           1.1              1.3                   Alexander Kanavin
ca-certificates       20170717         20180409              Alexander Kanavin
webkitgtk             2.20.0           2.20.1                Alexander Kanavin
vala                  0.40.2           0.40.4                Alexander Kanavin
libfm-extra           1.2.5            1.3.0.2               Alexander Kanavin
libfm                 1.2.5            1.3.0.2               Alexander Kanavin
libwebp               0.6.1            1.0.0                 Alexander Kanavin
gnome-desktop3        3.28.0           3.28.1                Alexander Kanavin
ffmpeg                3.4.2            4.0                   Alexander Kanavin
meson                 0.45.1           0.46.0                Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
gobject-introspec...  1.56.0           1.56.1                Alexander Kanavin
procps                3.3.12           3.3.14                Alexander Kanavin
btrfs-tools           4.15.1           4.16.1                Alexander Kanavin
sysprof               3.26.1           3.28.1                Alexander Kanavin     Waiting for resolution of h...
epiphany              3.28.0.1         3.28.1.1              Alexander Kanavin
apt                   1.2.24           1.6.1                 Aníbal Limón
apt-native            1.2.24           1.6.1                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gst-validate          1.12.4           1.14.0                Anuj Mittal
gstreamer1.0          1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-omx      1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-vaapi    1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-rtsp...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-python   1.12.4           1.14.0                Anuj Mittal
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
gstreamer1.0-libav    1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
gstreamer1.0-plug...  1.12.4           1.14.0                Anuj Mittal
tzcode-native         2018d            2018e                 Armin Kuster
openssh               7.6p1            7.7p1                 Armin Kuster
busybox               1.27.2           1.28.3                Armin Kuster
nss                   3.35             3.36.1                Armin Kuster
xserver-xorg          1.19.6           1.19.99.905           Armin Kuster
kexec-tools           2.0.16           2.0.17                Armin Kuster
bind                  9.10.6           9.12.1                Armin Kuster
tzdata                2018d            2018e                 Armin Kuster
xf86-input-libinput   0.26.0           0.27.1                Armin Kuster
linux-libc-headers    4.15.7           4.16.7                Bruce Ashfield
kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
iproute2              4.15.0           4.16.0                Changhyeok Bae
ethtool               4.15             4.16                  Changhyeok Bae
base-passwd           3.5.29           3.5.45                Chang Rebecca Swe...  Version 3.5.38 requires cde...
sysvinit              2.88dsf          2.89                  Chang Rebecca Swe...
sudo                  1.8.22           1.8.23                Chen Qi
systemd-boot          237              238                   Chen Qi
dbus-test             1.12.2           1.12.8                Chen Qi
cups                  2.2.6            2.2.7                 Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
gawk                  4.2.0            4.2.1                 Chen Qi
systemd               237              238                   Chen Qi
util-linux            2.31             2.32                  Chen Qi
sed                   4.2.2            4.5                   Chen Qi
sysstat               11.7.1           11.7.3                Chen Qi
dbus-glib             0.108            0.110                 Chen Qi
dbus                  1.12.2           1.12.8                Chen Qi
build-appliance-i...  15.0.0           18.0.2                Cristian Iorga
lzop                  1.03             1.04                  Denys Dmytriyenko
hdparm                9.55             9.56                  Denys Dmytriyenko
xz                    5.2.3            5.3.1alpha            Denys Dmytriyenko
mtd-utils             2.0.1+X          2.0.2                 Denys Dmytriyenko
python3-dbus          1.2.6            1.2.8                 Derek Straka
python3-pygobject     3.28.1           3.28.2                Derek Straka
python3               3.5.5            3.6.5                 Derek Straka
python                2.7.14           2.7.15                Derek Straka
python3-git           2.1.8            2.1.9                 Derek Straka
python3-pip           9.0.3            10.0.1                Derek Straka
python-setuptools     39.0.1           39.1.0                Derek Straka
python-numpy          1.14.2           1.14.3                Derek Straka
python3-numpy         1.14.2           1.14.3                Derek Straka
python3-setuptools    39.0.1           39.1.0                Derek Straka
python3-pycairo       1.15.6           1.17.0                Derek Straka
python3-native        3.5.5            3.6.5                 Derek Straka
python-native         2.7.14           2.7.15                Derek Straka
acpica                20170303         20180427              Fathi Boudra
gnupg                 2.2.5            2.2.7                 Hongxu Jia
dhcp                  4.3.6            4.4.1                 Hongxu Jia
man-db                2.8.2            2.8.3                 Hongxu Jia
gpgme                 1.10.0           1.11.1                Hongxu Jia
ncurses               6.1              6.1+20180210          Hongxu Jia
man-pages             4.14             4.16                  Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
libgpg-error          1.28             1.31                  Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
qemu                  2.11.1           2.12.0                Juro Bystricky
llvm                  6.0              6.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
gdb                   8.0.1            8.1                   Khem Raj
libnsl2               1.0.5+gitX       1.2.0                 Khem Raj
pango                 1.40.14          1.42.1                Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.9.4            1.10.6                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.2                Maxin B. John
gtk-icon-utils-na...  3.22.29          3.22.30               Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
acpid                 2.0.28           2.0.29                Maxin B. John
glib-networking       2.54.1           2.56.0                Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
cronie                1.5.1            1.5.2                 Maxin B. John
sqlite3               3.23.0           3.23.1                Maxin B. John
ptest-runner          2.1.1+gitX       2.2                   Maxin B. John
vte                   0.52.0           0.52.1                Maxin B. John
vulkan                1.0.65.2         1.1.73.0              Maxin B. John
libepoxy              1.5.0            1.5.1                 Maxin B. John
libsoup-2.4           2.62.0           2.62.1                Maxin B. John
clutter-gst-3.0       3.0.24           3.0.26                Maxin B. John
gdk-pixbuf            2.36.11          2.36.12               Maxin B. John
gtk+3                 3.22.29          3.22.30               Maxin B. John
librsvg               2.40.20          2.42.3                Maxin B. John         Versions from 2.41.0 requir...
fontconfig            2.12.6           2.13.0                Maxin B. John
freetype              2.9              2.9.1                 Maxin B. John
harfbuzz              1.7.5            1.7.6                 Maxin B. John
perl-native           5.24.1           5.26.2                Maxin B. John
libtirpc              1.0.2            1.0.3                 Maxin B. John
gdb-cross-canadia...  8.0.1            8.1                   No maintainer
gdb-cross-i586        8.0.1            8.1                   No maintainer
gcc-source-7.3.0      7.3.0            8.1.0                 No maintainer
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.10.3           3.11.1                Otavio Salvador
cmake-native          3.10.3           3.11.1                Otavio Salvador
tcf-agent             1.4.0+gitX       1.7.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
subversion            1.9.7            1.10.0                Richard Purdie
lttng-tools           2.9.5            2.10.4                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.1                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.20             4.22                  Robert Yang
automake              1.15.1           1.16.1                Robert Yang
ccache                3.3.5            3.4.2                 Robert Yang
e2fsprogs             1.43.8           1.44.1                Robert Yang
git                   2.16.1           2.17.0                Robert Yang
alsa-tools            1.1.5            1.1.6                 Tanu Kaskinen
alsa-plugins          1.1.5            1.1.6                 Tanu Kaskinen
alsa-utils-scripts    1.1.5            1.1.6                 Tanu Kaskinen
alsa-lib              1.1.5            1.1.6                 Tanu Kaskinen
alsa-utils            1.1.5            1.1.6                 Tanu Kaskinen
libvorbis             1.3.5            1.3.6                 Tanu Kaskinen
liburi-perl           1.73             1.74                  Tim Orling
gnu-efi               3.0.6            3.0.8                 Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao               Version 1.5 requires selinux
file                  5.32             5.33                  Yi Zhao
wget                  1.19.4           1.19.5                Yi Zhao

Upgradable count: 146
Upgradable total count: 150

The based commit is:

commit ae8b78f2ef5df4b24f8e2294c5e2760367b8bf8d
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu May 3 14:02:44 2018 +0100

    settings-daemon: Drop pointless apply=yes in SRC_URI
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


