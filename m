Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB7B3E00DAA; Sun, 14 Aug 2016 21:32:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC76E00D4A
	for <yocto@yoctoproject.org>; Sun, 14 Aug 2016 21:32:11 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 79FF8807CE93
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2016 00:32:10 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 15 Aug 2016 04:32:10 -0000
Message-ID: <20160815043210.5855.23837@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 15 Aug 2016 04:32:16 -0000
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

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
perl                  5.22.1         5.24.1                Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
python-git            2.0.7          2.0.8                 Alejandro Hernandez
python3-setuptools    22.0.5         25.2.0                Alejandro Hernandez
nfs-utils             1.3.3          1.3.4                 Alejandro Hernandez
ruby                  2.2.5          2.3.1                 Alejandro Hernandez
python-setuptools     22.0.5         25.2.0                Alejandro Hernandez
python3-numpy         1.11.0         1.11.1                Alejandro Hernandez
python3-git           2.0.7          2.0.8                 Alejandro Hernandez
texinfo               6.0            6.1                   Alejandro Hernandez
perl-native           5.22.1         5.24.1                Alejandro Hernandez
lighttpd              1.4.39         1.4.41                Alexander Kanavin
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
ffmpeg                3.1.1          3.1.2                 Alexander Kanavin
bash-completion       2.3            2.4                   Alexander Kanavin
btrfs-tools           4.6.1          4.7                   Alexander Kanavin
gnutls                3.5.1          3.5.3                 Alexander Kanavin
gobject-introspec...  1.48.0         1.49.1                Alexander Kanavin
iso-codes             3.68           3.69                  Alexander Kanavin
bdwgc                 7.4.4          7.6.0                 Alexander Kanavin
mpg123                1.23.5         1.23.6                Alexander Kanavin
libwebp               0.5.0          0.5.1                 Alexander Kanavin
libidn                1.32           1.33                  Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
nss                   3.24           3.25                  Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
dpkg                  1.18.7         1.18.10               Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
linux-libc-headers    4.4            4.7                   Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
systemd-boot          230+gitX       231+gitAUTOINC+38...  Chen Qi
util-linux            2.28           2.28.1                Chen Qi
kmod                  22+gitX        23+gitAUTOINC+65a...  Chen Qi
diffutils             3.3            3.4                   Chen Qi
curl                  7.50.0         7.50.1                Chen Qi
kmod-native           22+gitX        23+gitAUTOINC+65a...  Chen Qi
build-appliance-i...  15.0.0         15.0.1                Cristian Iorga
u-boot-fw-utils       v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
man-pages             4.06           4.07                  Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
ncurses               6.0+20160319   6.0+20160625          Hongxu Jia
gnupg                 2.1.12         2.1.14                Hongxu Jia
libinput              1.3.0          1.4.1                 Jussi Kukkonen
gtk-icon-utils-na...  3.20.6         3.20.8                Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
openssh               7.2p2          7.3p1                 Jussi Kukkonen
libdrm                2.4.68         2.4.70                Jussi Kukkonen
gnome-themes-stan...  3.18.0         3.20.2                Jussi Kukkonen
wayland-protocols     1.5            1.6                   Jussi Kukkonen
gtk+3                 3.20.6         3.20.8                Jussi Kukkonen
json-glib             1.2.0          1.2.2                 Jussi Kukkonen
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Jussi Kukkonen
fontconfig            2.12.0         2.12.1                Jussi Kukkonen
vte                   0.44.1         0.44.2                Jussi Kukkonen
linuxdoc-tools-na...  0.9.69         0.9.72                Jussi Kukkonen
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.16         5.4.17                Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
libpfm4               4.6.0          4.7.0                 Matthew McClintock
iproute2              4.6.0          4.7.0                 Maxin B. John
libpcap               1.7.4          1.8.0                 Maxin B. John
ifupdown              0.8.2          0.8.13                Maxin B. John
gstreamer1.0-omx      1.2.0          1.9.1                 Maxin B. John
libpng                1.6.23         1.6.24                Maxin B. John
sqlite3               3.13.0         3.14.1                Maxin B. John
gstreamer1.0-plug...  1.8.2+gitX     1.9.1+gitAUTOINC+...  Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
lttng-tools           2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
subversion            1.9.3          1.9.4                 Richard Purdie
lttng-modules         2.7.3+gitX     2.8.0+gitAUTOINC+...  Richard Purdie
gdb                   7.11           7.11.1                Richard Purdie
lttng-ust             2.7.1+gitX     2.8.1+gitAUTOINC+...  Richard Purdie
nasm                  2.11.08        2.12.02               Richard Purdie
ltp                   20160126       20160510              Robert Yang
e2fsprogs             1.43           1.43.1                Robert Yang
git                   2.9.2          2.9.3                 Robert Yang
lsbinitscripts        9.64           9.68                  Ross Burton
alsa-lib              1.1.1          1.1.2                 Tanu Kaskinen
alsa-utils            1.1.1          1.1.2                 Tanu Kaskinen
alsa-utils-scripts    1.1.1          1.1.2                 Tanu Kaskinen
chkconfig             1.3.58         1.8                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 80
Upgradable total count: 85

The based commit is:

commit a92c196449c516fe51786d429078bbb1213bb029
Author: Stephano Cetola <stephano.cetola@linux.intel.com>
Date:   Wed Aug 10 13:03:16 2016 -0700

    Allow for simultaneous do_rootfs tasks with rpm
    
    Give each rootfs its own RPM channel to use.  This puts the RPM metadata
    in a private subdirectory of $WORKDIR, rather than living in DEPLOY_DIR
    where other tasks may race with it.
    
    This allows us to reduce the time that the rpm.lock is held to only the
    time needed to hardlink the RPMs, allowing the majority of the rootfs
    operation to run in parallel.
    
    Also, this fixes the smart tests by generating an index for all packages
    at the time of the test, rather than using the one provided by the
    rootfs process.
    
    Original credit for the enhancement should go to Steven Walter
    stevenrwalter@gmail.com.
    
    Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


