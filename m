Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D819E00929; Sun,  1 Jul 2018 21:35:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1067E00791
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 21:35:52 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id ADFB584A5214
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 00:35:51 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 02 Jul 2018 04:35:51 -0000
Message-ID: <20180702043551.22821.78317@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 02 Jul 2018 04:35:54 -0000
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

Package               Version          Upstream version      Maintainer           NoUpgradeReason
--------------------  ---------------  --------------------  -------------------  ------------------------------
libgloss              3.0.0            3.0.0.20180226        Alejandro Hernandez
newlib                3.0.0            3.0.0.20180226        Alejandro Hernandez
usbutils              009              010                   Alexander Kanavin
webkitgtk             2.20.2           2.20.3                Alexander Kanavin
ca-certificates       20170717         20180409              Alexander Kanavin
gdbm                  1.14.1           1.16                  Alexander Kanavin
vala                  0.40.4           0.40.7                Alexander Kanavin
createrepo-c          0.10.0+gitX      0.11.0                Alexander Kanavin
dnf                   2.7.5            3.0.2                 Alexander Kanavin
librepo               1.8.1            1.9.0                 Alexander Kanavin
ffmpeg                4.0              4.0.1                 Alexander Kanavin
icu                   61.1             62.1                  Alexander Kanavin
btrfs-tools           4.16.1           4.17                  Alexander Kanavin
procps                3.3.14           3.3.15                Alexander Kanavin
psmisc                23.0             23.1                  Alexander Kanavin
sysprof               3.26.1           3.28.1                Alexander Kanavin    Waiting for resolution of h...
cantarell-fonts       0.0.24           0.0.25                Alexander Kanavin
epiphany              3.28.1.1         3.28.3.1              Alexander Kanavin
libdnf                0.11.1           0.15.2                Alexander Kanavin
busybox               1.27.2           1.29.0                Andrej Valek
apt                   1.2.24           1.6.2                 Aníbal Limón
apt-native            1.2.24           1.6.2                 Aníbal Limón
dpkg                  1.18.24          1.19.0.5              Aníbal Limón
gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
xf86-input-mouse      1.9.2            1.9.3                 Armin Kuster
xf86-video-fbdev      0.4.4            0.5.0                 Armin Kuster
nss                   3.37.1           3.38                  Armin Kuster
bind                  9.10.6           9.13.1                Armin Kuster
xserver-xorg          1.19.6           1.20.0                Armin Kuster
linux-libc-headers    4.15.7           4.17.3                Bruce Ashfield
connman               1.35             1.36                  Changhyeok Bae
ethtool               4.16             4.17                  Changhyeok Bae
iputils               s20161105        s20180629             Changhyeok Bae
pciutils              3.5.6            3.6.0                 Chen Qi
acl                   2.2.52           2.2.53                Chen Qi
attr                  2.4.47           2.4.48                Chen Qi
systemd-boot          237              239                   Chen Qi
cups                  2.2.6            2.2.8                 Chen Qi
flex                  2.6.0            2.6.4                 Chen Qi
systemd               237              239                   Chen Qi
bison                 3.0.4            3.0.5                 Chen Qi
sed                   4.2.2            4.5                   Chen Qi
shadow                4.2.1            4.6                   Chen Qi
sysstat               11.7.3           11.7.4                Chen Qi
coreutils             8.29             8.30                  Chen Qi
lzop                  1.03             1.04                  Denys Dmytriyenko
xz                    5.2.3            5.2.4                 Denys Dmytriyenko
python3-dbus          1.2.6            1.2.8                 Derek Straka
python-numpy          1.14.2           1.14.5                Derek Straka
python3-pygobject     3.28.1           3.28.3                Derek Straka
python3               3.5.5            3.7.0                 Derek Straka
python                2.7.14           2.7.15                Derek Straka
python3-git           2.1.8            2.1.10                Derek Straka
python3-pip           9.0.3            10.0.1                Derek Straka
python-setuptools     39.0.1           39.2.0                Derek Straka
python3-numpy         1.14.2           1.14.5                Derek Straka
python3-pycairo       1.15.6           1.17.0                Derek Straka
python3-setuptools    39.0.1           39.2.0                Derek Straka
python3-native        3.5.5            3.7.0                 Derek Straka
python-native         2.7.14           2.7.15                Derek Straka
acpica                20180508         20180629              Fathi Boudra
gnupg                 2.2.5            2.2.8                 Hongxu Jia
dhcp                  4.3.6            4.4.1                 Hongxu Jia
man-db                2.8.2            2.8.3                 Hongxu Jia
gpgme                 1.10.0           1.11.1                Hongxu Jia
elfutils              0.170            0.173                 Hongxu Jia
ncurses               6.1              6.1+20180630          Hongxu Jia
man-pages             4.14             4.16                  Hongxu Jia
help2man-native       1.47.5           1.47.6                Hongxu Jia
libgcrypt             1.8.2            1.8.3                 Hongxu Jia
llvm                  6.0              6.0-new-commits-a...  Khem Raj
mpfr                  3.1.5            4.0.1                 Khem Raj
re2c                  0.16             1.0.1                 Khem Raj
go-native             1.10.2           1.10.3                Khem Raj
go                    1.10.2           1.10.3                Khem Raj
pango                 1.40.14          1.42.1                Maxin B. John
piglit                1.0+gitrX        1.0-new-commits-a...  Maxin B. John
libinput              1.11.0           1.11.1                Maxin B. John
vulkan-demos          git              git-new-commits-a...  Maxin B. John
perl                  5.24.1           5.28.0                Maxin B. John
matchbox-terminal     0.1              0.2                   Maxin B. John
puzzles               0.0+gitX         0.0-new-commits-a...  Maxin B. John
shared-mime-info      1.9              1.10                  Maxin B. John
ifupdown              0.8.16           0.8.33                Maxin B. John
glib-networking       2.54.1           2.56.1                Maxin B. John
libical               2.0.0            3.0.3                 Maxin B. John
fontconfig            2.12.6           2.13.0                Maxin B. John
vulkan                1.0.65.2         1.1.73.0              Maxin B. John
gdk-pixbuf            2.36.11          2.36.12               Maxin B. John
librsvg               2.40.20          2.42.5                Maxin B. John        Versions from 2.41.0 requir...
pkgconf               1.4.2            1.5.1                 Maxin B. John
sqlite3               3.23.1           3.24.0                Maxin B. John
freetype              2.9              2.9.1                 Maxin B. John
harfbuzz              1.7.5            1.8.1                 Maxin B. John
perl-native           5.24.1           5.28.0                Maxin B. John
systemtap-native      3.2              3.3                   No maintainer
gcc-source-7.3.0      7.3.0            8.1.0                 No maintainer
go-cross-canadian...  1.10.2           1.10.3                No maintainer
go-cross-i586         1.10.2           1.10.3                No maintainer
go-crosssdk-x86_64    1.10.2           1.10.3                No maintainer
go-runtime            1.10.2           1.10.3                No maintainer
mesa                  18.1.2           18.1.3                Otavio Salvador
cmake                 3.10.3           3.11.4                Otavio Salvador
cmake-native          3.10.3           3.11.4                Otavio Salvador
mesa-gl               18.1.2           18.1.3                Otavio Salvador
build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
build-appliance-i...  15.0.0           19.0.0                Richard Purdie
lttng-tools           2.9.5            2.10.4                Richard Purdie
gnu-config            20150728+gitX    20150728-new-comm...  Robert Yang
nfs-utils             2.1.1            2.3.2                 Robert Yang
squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
strace                4.22             4.23                  Robert Yang
automake              1.15.1           1.16.1                Robert Yang
e2fsprogs             1.43.8           1.44.2                Robert Yang
ccache                3.3.5            3.4.2                 Robert Yang
base-passwd           3.5.29           3.5.45                Ross Burton          Version 3.5.38 requires cde...
tcf-agent             1.4.0+gitX       1.7.0                 Ross Burton
bc                    1.06             1.07.1                Ross Burton
lsbinitscripts        9.79             10.00.0               Ross Burton
sysvinit              2.88dsf          2.90                  Ross Burton
pulseaudio            11.1             12.0                  Tanu Kaskinen
systemtap-uprobes     3.2              3.3                   Victor Kamensky
systemtap             3.2              3.3                   Victor Kamensky
chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux

Upgradable count: 120
Upgradable total count: 124

The based commit is:

commit 6f8f984ba363f764e83290b972ec31a90aad1603
Author: Arsalan H. Awan <Arsalan_Awan@mentor.com>
Date:   Thu Jun 28 19:16:36 2018 +0500

    initrdscripts/init-live.sh: fix mounts w/ spaces fail to move to real rootfs
    
    When there are spaces in the mount points of devices e.g.:
    
     a partition mounted at "/run/media/My Root Partition-sda1",
    
    the initrd fails to move such mount points over to the
    corresponding directories at /media under the real root filesystem,
    and the mount points would appear at the same location as they were
    mounted on when detected by initrd, for example:
     here: "/run/media/My Root Partition-sda1"
     instead of here: "/media/My Root Partition-sda1"
    
    This causes issues such as:
    
      * The disks/partitions cannot be formated with any filesystem
        using e.g. mkfs.ext4 or mke2fs in general. When tried to do so
        by making sure the device is not mounted, it failed with
        errors such as:
    
        > /dev/sda1 is apparently in use by the system; will not make a
          filesystem here!
        > /dev/sda1: Device or resource busy while setting up superblock
    
      * The read/write operations become extremely slow. e.g. Under testing,
        it took approx. 2 hours just to copy 700 MB of data to the partition,
        and it took more than 40 minutes to delete that data from it.
        Same operations took under 5 minutes on a partition that had no
        spaces in its mount point (or that was successfully moved to real
        root by initrd and appeared under /media instead of /run/media).
    
    This commit fixes such issues by quoting the arguments of failing mount
    move commands and by parsing OCT or HEX encoded special characters
    such as spaces to ASCII charecters in the mount points as kernel
    populates the procfs like so.
    
    Signed-off-by: Arsalan H. Awan <Arsalan_Awan@mentor.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Jose Lamego <jose.a.lamego@intel.com> 


