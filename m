Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCE18E00971; Sun, 18 Sep 2016 21:34:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA7DE008F6
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 21:33:55 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id D0F6984D126A
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 00:33:53 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 19 Sep 2016 04:33:53 -0000
Message-ID: <20160919043353.3985.88195@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 19 Sep 2016 04:34:01 -0000
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
texinfo               6.0            6.3                   Alejandro Hernandez
python-git            2.0.7          2.0.8                 Alejandro Hernandez
nfs-utils             1.3.3          1.3.4                 Alejandro Hernandez
perl                  5.22.1         5.24.1                Alejandro Hernandez
python3-git           2.0.7          2.0.8                 Alejandro Hernandez
python-pexpect        4.2.0          4.2.1                 Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
python3-setuptools    22.0.5         27.2.0                Alejandro Hernandez
python-setuptools     22.0.5         27.2.0                Alejandro Hernandez
python3-numpy         1.11.0         1.11.1                Alejandro Hernandez
perl-native           5.22.1         5.24.1                Alejandro Hernandez
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
openssl               1.0.2h         1.1.0                 Alexander Kanavin
gnutls                3.5.3          3.5.4                 Alexander Kanavin
cmake                 3.6.1          3.6.2                 Alexander Kanavin
dtc                   1.4.1+gitX     1.4.2+gitAUTOINC+...  Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
btrfs-tools           4.7.1          4.7.2                 Alexander Kanavin
epiphany              3.20.3         3.22.0                Alexander Kanavin
sysprof               3.20.0+gitX    3.21.91+gitAUTOIN...  Alexander Kanavin
cmake-native          3.6.1          3.6.2                 Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
libksba               1.3.4          1.3.5                 Alexander Kanavin
dpkg                  1.18.7         1.18.10               Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
linux-libc-headers    4.8-rc4        7                     Bruce Ashfield
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
curl                  7.50.1         7.50.3                Chen Qi
systemd-boot          230+gitX       231+gitAUTOINC+38...  Chen Qi
dbus-glib             0.106          0.108                 Chen Qi
cups                  2.1.4          2.2.0                 Chen Qi
diffutils             3.4            3.5                   Chen Qi
gawk                  4.1.3          4.1.4                 Chen Qi
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
util-linux            2.28.1         2.28.2                Chen Qi
systemd-bootchart     230+gitX       231+gitAUTOINC+9e...  Chen Qi
build-appliance-i...  15.0.0         15.0.1                Cristian Iorga
chkconfig             1.3.58         1.8                   Dengke Du            Version 1.5 requires selinux
ltp                   20160126       20160510              Dengke Du
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Dengke Du
linuxdoc-tools-na...  0.9.69         0.9.72                Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.09+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.09+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.09+gitAUTOI...  Denys Dmytriyenko
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
elfutils              0.166          0.167                 Hongxu Jia
bash                  4.3.30         4.4                   Hongxu Jia
ghostscript           9.19           9.20rc1               Hongxu Jia
readline              6.3            7.0                   Hongxu Jia
ncurses               6.0+20160625   6.0+20160910          Hongxu Jia
gnupg                 2.1.14         2.1.15                Hongxu Jia
pango                 1.40.1         1.40.3                Jussi Kukkonen
libinput              1.4.1          1.5.0                 Jussi Kukkonen
wayland               1.11.0         1.11.94               Jussi Kukkonen
weston                1.11.0         1.11.94               Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
libevdev              1.5.2          1.5.4                 Jussi Kukkonen
libxfont              1.5.1          1.5.2                 Jussi Kukkonen
freetype              2.6.5          2.7                   Jussi Kukkonen
shared-mime-info      1.6            1.7                   Jussi Kukkonen
mesa                  12.0.1         12.0.3                Jussi Kukkonen
xserver-xorg          1.18.4         1.18.99.2             Jussi Kukkonen
clutter-gst-3.0       3.0.18         3.0.20                Jussi Kukkonen
gtk+                  2.24.30        2.24.31               Jussi Kukkonen
clutter-gtk-1.0       1.8.0          1.8.2                 Jussi Kukkonen
cogl-1.0              1.22.0         1.22.2                Jussi Kukkonen
mesa-gl               12.0.1         12.0.3                Jussi Kukkonen
xf86-input-libinput   0.19.0         0.19.1                Jussi Kukkonen
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
rpm                   5.4.16         5.4.17                Mark Hatle
libpfm4               4.6.0          4.7.0                 Matthew McClintock
acpid                 2.0.27         2.0.28                Maxin B. John
harfbuzz              1.3.0          1.3.1                 Maxin B. John
libpcap               1.7.4          1.8.0                 Maxin B. John
ifupdown              0.8.2          0.8.13                Maxin B. John
serf                  1.3.8          1.3.9                 Maxin B. John
sqlite3               3.14.1         3.14.2                Maxin B. John
libpng                1.6.24         1.6.25                Maxin B. John
orc                   0.4.25         0.4.26                Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
gdb                   7.11           7.11.1                Richard Purdie
e2fsprogs             1.43           1.43.3                Robert Yang
git                   2.9.3          2.10.0                Robert Yang
autogen-native        5.18.10        5.18.12               Robert Yang
base-passwd           3.5.29         3.5.40                Ross Burton          Version 3.5.38 requires cde...
lsbinitscripts        9.68           9.69                  Ross Burton
libsamplerate0        0.1.8          0.1.9                 Tanu Kaskinen

Upgradable count: 83
Upgradable total count: 89

The based commit is:

commit d77fe838ab7631a19e90ff4226f0712e54aa4e22
Author: Ross Burton <ross.burton@intel.com>
Date:   Fri Feb 12 14:55:50 2016 +0000

    scripts: add tool to scan for bashisms recipe shell scripts
    
    Shell functions in bitbake are executed with /bin/sh so should be POSIX
    compliant and not use Bash extensions, or at least only use extensions that are
    implemented in both dash and ash (busybox).
    
    This tool will extract all of the shell scripts from all recipes and run them
    through checkbashisms (it assumes that checkbashisms is on $PATH).
    
    There is a whitelist to filter out false-positives such as the use of $HOSTNAME
    (a bashism) in functions where we have defined it, or using the 'type' builtin
    which is supported by ash/dash.
    
    [ YOCTO #8851 ]
    
    Signed-off-by: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


