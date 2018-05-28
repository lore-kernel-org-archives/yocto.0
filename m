Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D25E00A51; Sun, 27 May 2018 21:31:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA23E008E1
	for <yocto@yoctoproject.org>; Sun, 27 May 2018 21:31:19 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 8961780D1E12
	for <yocto@yoctoproject.org>; Mon, 28 May 2018 00:31:18 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 28 May 2018 04:31:18 -0000
Message-ID: <20180528043118.3300.55543@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 28 May 2018 04:31:20 -0000
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
usbutils              009              010                   Alexander Kanavin
hwlatdetect           1.1              1.3                   Alexander Kanavin
rt-tests              1.1              1.3                   Alexander Kanavin
ca-certificates       20170717         20180409              Alexander Kanavin
webkitgtk             2.20.1           2.20.2                Alexander Kanavin
gnome-desktop3        3.28.1           3.28.2                Alexander Kanavin
vala                  0.40.4           0.40.6                Alexander Kanavin
meson                 0.46.0           0.46.1                Alexander Kanavin
babeltrace            1.5.5            2.0.0                 Alexander Kanavin
dtc                   1.4.5            1.4.6                 Alexander Kanavin
procps                3.3.14           3.3.15                Alexander Kanavin
psmisc                23.0             23.1                  Alexander Kanavin
btrfs-tools           4.15.1           4.16.1                Alexander Kanavin
sysprof               3.26.1           3.28.1                Alexander Kanavin     Waiting for resolution of h...
cantarell-fonts       0.0.24           0.0.25                Alexander Kanavin
epiphany              3.28.1.1         3.28.2.1              Alexander Kanavin
libidn                1.34             1.35                  Alexander Kanavin
apt                   1.2.24           1.6.1                 Aníbal Limón
apt-native            1.2.24           1.6.1                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
gstreamer1.0-plug...  1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-plug...  1.14.0           1.14.1                Anuj Mittal
gst-validate          1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-rtsp...  1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-libav    1.14.0           1.14.1                Anuj Mittal
gstreamer1.0          1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-vaapi    1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-python   1.14.0           1.14.1                Anuj Mittal
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
gstreamer1.0-omx      1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-plug...  1.14.0           1.14.1                Anuj Mittal
gstreamer1.0-plug...  1.14.0           1.14.1                Anuj Mittal
openssh               7.6p1            7.7p1                 Armin Kuster
xf86-video-vmware     13.2.1           13.3.0                Armin Kuster
curl                  7.59.0           7.60.0                Armin Kuster
busybox               1.27.2           1.28.4                Armin Kuster
libdmx                1.1.3            1.1.4                 Armin Kuster
nss                   3.35             3.37.1                Armin Kuster
xserver-xorg          1.19.6           1.20.0                Armin Kuster
kexec-tools           2.0.16           2.0.17                Armin Kuster
bind                  9.10.6           9.13.0                Armin Kuster
xf86-input-libinput   0.26.0           0.27.1                Armin Kuster
linux-libc-headers    4.15.7           4.16.12               Bruce Ashfield
kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
linux-yocto           4.15.13+gitX     4.15.18               Bruce Ashfield
linux-yocto-rt        4.15.13+gitX     4.15.18               Bruce Ashfield
linux-yocto-tiny      4.15.13+gitX     4.15.18               Bruce Ashfield
kmscube               git              git-new-commits-a...  Carlos Rafael Giani
connman               1.35             1.36                  Changhyeok Bae
iproute2              4.15.0           4.16.0                Changhyeok Bae
ethtool               4.15             4.16                  Changhyeok Bae
base-passwd           3.5.29           3.5.45                Chang Rebecca Swe...  Version 3.5.38 requires cde...
lsbinitscripts        9.79             9.80                  Chang Rebecca Swe...
sysvinit              2.88dsf          2.89                  Chang Rebecca Swe...
systemd-boot          237              238                   Chen Qi
cups                  2.2.6            2.2.7                 Chen Qi
systemd               237              238                   Chen Qi
sed                   4.2.2            4.5                   Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
lz4                   1.8.1.2          1.8.2                 Denys Dmytriyenko
lzop                  1.03             1.04                  Denys Dmytriyenko
hdparm                9.55             9.56                  Denys Dmytriyenko
xz                    5.2.3            5.3.1alpha            Denys Dmytriyenko
wayland-protocols     1.13             1.14                  Denys Dmytriyenko
mtd-utils             2.0.1+X          2.0.2                 Denys Dmytriyenko
python3-dbus          1.2.6            1.2.8                 Derek Straka
python-numpy          1.14.2           1.14.3                Derek Straka
python3-pygobject     3.28.1           3.28.2                Derek Straka
python3               3.5.5            3.6.5                 Derek Straka
python                2.7.14           2.7.15                Derek Straka
python3-git           2.1.8            2.1.10                Derek Straka
python3-pip           9.0.3            10.0.1                Derek Straka
python-setuptools     39.0.1           39.2.0                Derek Straka
python3-numpy         1.14.2           1.14.3                Derek Straka
python3-setuptools    39.0.1           39.2.0                Derek Straka
python3-pycairo       1.15.6           1.17.0                Derek Straka
python3-native        3.5.5            3.6.5                 Derek Straka
python-native         2.7.14           2.7.15                Derek Straka
acpica                20170303         20180508              Fathi Boudra
gnupg                 2.2.5            2.2.7                 Hongxu Jia
dhcp                  4.3.6            4.4.1                 Hongxu Jia
man-db                2.8.2            2.8.3                 Hongxu Jia
gpgme                 1.10.0           1.11.1                Hongxu Jia
ncurses               6.1              6.1+20180210          Hongxu Jia
man-pages             4.14             4.16                  Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
bc                    1.06             1.07.1                Jose Lamego
llvm                  6.0              6.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
u-boot-fw-utils       2018.03          2018.05               Marek Vasut
u-boot                2018.03          2018.05               Marek Vasut
u-boot-mkimage        2018.03          2018.05               Marek Vasut
pango                 1.40.14          1.42.1                Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
acpid                 2.0.28           2.0.29                Maxin B. John
libinput              1.9.4            1.10.7                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.26.2                Maxin B. John
libsoup-2.4           2.62.0           2.62.2                Maxin B. John
cronie                1.5.1            1.5.2                 Maxin B. John
gtk-icon-utils-na...  3.22.29          3.22.30               Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
ifupdown              0.8.16           0.8.33                Maxin B. John
glib-networking       2.54.1           2.56.1                Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
freetype              2.9              2.9.1                 Maxin B. John
libunistring          0.9.9            0.9.10                Maxin B. John
vte                   0.52.0           0.52.2                Maxin B. John
vulkan                1.0.65.2         1.1.73.0              Maxin B. John
libepoxy              1.5.0            1.5.2                 Maxin B. John
xdg-utils             1.1.2            1.1.3                 Maxin B. John
gdk-pixbuf            2.36.11          2.36.12               Maxin B. John
gtk+3                 3.22.29          3.22.30               Maxin B. John
librsvg               2.40.20          2.42.4                Maxin B. John         Versions from 2.41.0 requir...
fontconfig            2.12.6           2.13.0                Maxin B. John
harfbuzz              1.7.5            1.7.6                 Maxin B. John
perl-native           5.24.1           5.26.2                Maxin B. John
libxcrypt             4.0.0            4.0.1                 No maintainer
gcc-source-7.3.0      7.3.0            8.1.0                 No maintainer
mesa                  18.0.2           18.1.0                Otavio Salvador
linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
cmake                 3.10.3           3.11.2                Otavio Salvador
cmake-native          3.10.3           3.11.2                Otavio Salvador
libdrm                2.4.91           2.4.92                Otavio Salvador
mesa-gl               18.0.2           18.1.0                Otavio Salvador
tcf-agent             1.4.0+gitX       1.7.0                 Randy Witt
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Randy Witt
subversion            1.9.7            1.10.0                Richard Purdie
build-appliance-i...  15.0.0           19.0.0                Richard Purdie
qemu                  2.11.1           2.12.0                Richard Purdie
lttng-tools           2.9.5            2.10.4                Richard Purdie
lttng-modules         2.10.5           2.10.6                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.2                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
automake              1.15.1           1.16.1                Robert Yang
e2fsprogs             1.43.8           1.44.2                Robert Yang
ccache                3.3.5            3.4.2                 Robert Yang
git                   2.16.1           2.17.0                Robert Yang
alsa-plugins          1.1.5            1.1.6                 Tanu Kaskinen
alsa-utils-scripts    1.1.5            1.1.6                 Tanu Kaskinen
alsa-utils            1.1.5            1.1.6                 Tanu Kaskinen
libvorbis             1.3.5            1.3.6                 Tanu Kaskinen
pulseaudio            11.1             11.99.1               Tanu Kaskinen
liberror-perl         0.17025          0.17026               Tim Orling
gnu-efi               3.0.6            3.0.8                 Yi Zhao
chkconfig             1.3.58           1.8                   Yi Zhao               Version 1.5 requires selinux
debianutils           4.8.4            4.8.6                 Yi Zhao
ltp                   20180118         20180515              Yi Zhao
libbsd                0.8.7            0.9.1                 Yi Zhao
file                  5.32             5.33                  Yi Zhao
wget                  1.19.4           1.19.5                Yi Zhao

Upgradable count: 149
Upgradable total count: 153

The based commit is:

commit 9da097b0de6425464ebd3f0539b7495b11d139b5
Author: Dan McGregor <dan.mcgregor@usask.ca>
Date:   Wed May 16 10:54:58 2018 -0600

    libnss-mdns: fix postinst and postrm
    
    Don't blindly add mdns_minimal, instead check for existing
    mdns_minimal instances. Fixes continuously appending mdns settings
    to nssswitch.conf when upgrading.
    
    Signed-off-by: Dan McGregor <dan.mcgregor@usask.ca>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


