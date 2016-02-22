Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D057E00B99; Sun, 21 Feb 2016 21:25:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C67BBE00B63
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 21:25:20 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 1CD75849E0D8
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 00:25:19 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 22 Feb 2016 05:25:19 -0000
Message-ID: <20160222052519.14847.23733@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Feb 2016 05:25:21 -0000
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

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
texinfo               6.0          6.1                   Alejandro Hernandez
python-git            1.0.1        1.0.2                 Alejandro Hernandez
python3-pip           8.0.0        8.0.2                 Alejandro Hernandez
python3-setuptools    19.4         20.1.1                Alejandro Hernandez
ruby                  2.2.2        2.3.0                 Alejandro Hernandez
python-pygobject      2.28.3       3.19.90               Alejandro Hernandez  Newer versions of python-py...
pcmanfm               1.2.3        1.2.4                 Alejandro Hernandez
python-setuptools     19.4         20.1.1                Alejandro Hernandez
liberation-fonts      1.04         2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
libfm-extra           1.2.3        1.2.4                 Alexander Kanavin
libfm                 1.2.3        1.2.4                 Alexander Kanavin
epiphany              3.18.3       3.18.4                Alexander Kanavin
nspr                  4.11         4.12                  Alexander Kanavin
mkelfimage            4.0+gitX     4.3+gitAUTOINC+1b...  Alexander Kanavin    mkelfimage has been removed...
apt                   1.0.10.1     1.2.3                 Aníbal Limón
pinentry              0.9.2        0.9.7                 Armin Kuster
nettle                3.1.1        3.2                   Armin Kuster
guilt-native          0.35+gitX    0.36+gitAUTOINC+2...  Bruce Ashfield
linux-libc-headers    4.4          4.4.2                 Bruce Ashfield
systemd               228+gitX     229+gitAUTOINC+95...  Chen Qi
pax-utils             1.1.4        1.1.5                 Hongxu Jia
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
gnupg                 2.1.10       2.1.11                Hongxu Jia
ghostscript           9.16         9.18                  Hongxu Jia
ncurses               6.0          6.0+20160213          Hongxu Jia
elfutils              0.164        0.165                 Hongxu Jia
libinput              1.1.4        1.1.902               Jussi Kukkonen
wayland               1.9.0        1.10.0                Jussi Kukkonen
xserver-xorg          1.18.0       1.18.1                Jussi Kukkonen
weston                1.9.0        1.10.0                Jussi Kukkonen
clutter-gst-3.0       3.0.14       3.0.16                Jussi Kukkonen
gtk-icon-utils-na...  3.18.6       3.18.7                Jussi Kukkonen
docbook-xsl-style...  1.78.1       1.79.1                Jussi Kukkonen
gsettings-desktop...  3.19.3       3.19.90               Jussi Kukkonen
libdrm                2.4.66       2.4.67                Jussi Kukkonen
vala                  0.30.0       0.30.1                Jussi Kukkonen
pixman                0.32.8       0.34.0                Jussi Kukkonen
xkeyboard-config      2.16         2.17                  Jussi Kukkonen
vte                   0.28.2       0.42.4                Jussi Kukkonen       matchbox-terminal needs to ...
linuxdoc-tools-na...  0.9.69       0.9.71                Jussi Kukkonen
slang                 2.2.4        2.3.0                 Kai Kang
prelink               1.0+gitX     20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.14       5.4.15                Mark Hatle           5.4.15 has a package databa...
libpfm4               4.6.0        4.7.0                 Matthew McClintock
db                    6.0.30       6.1.26                Maxin B. John        Updating to 6.1.x requires ...
gstreamer1.0          1.7.1+gitX   1.7.2+gitAUTOINC+...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   1.7.2+gitAUTOINC+...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   1.7.2                 Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   1.7.2+gitAUTOINC+...  Maxin B. John
harfbuzz              1.1.3        1.2.0                 Maxin B. John
gstreamer1.0-libav    1.7.1+gitX   1.7.2                 Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   1.7.2+gitAUTOINC+...  Maxin B. John
ffmpeg                2.8.6        3.0                   No maintainer
apt-native            1.0.10.1     1.2.3                 No maintainer
ifupdown              0.8.2        0.8.10                No maintainer
libsolv               0.6.17+gitX  0.6.19+gitAUTOINC...  No maintainer
sgmlspl-native        1.1+gitX     1.03+gitAUTOINC+f...  No maintainer
adt-installer         0.3.0        0.3.1                 Randy Witt
libcap                2.24         2.25                  Robert Yang
git                   2.7.0        2.7.1                 Robert Yang
mklibs-native         0.1.40       0.1.41                Robert Yang
lsbinitscripts        9.64         9.65                  Ross Burton
base-passwd           3.5.29       3.5.39                Ross Burton          Version 3.5.38 requires cde...
ccache                3.2.3        3.2.4                 Wenzong Fan
gettext               0.19.6       0.19.7                Wenzong Fan
chkconfig             1.3.58       1.7                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 57
Upgradable total count: 66

The based commit is:

commit 2735d096aef2d039d711c13c311bb6dba979f437
Author: Khem Raj <raj.khem@gmail.com>
Date:   Wed Feb 17 08:33:40 2016 +0000

    libnewt: Fix build with PIE flags
    
    security flags add -pie -fpie to CFLAGS which is not
    right options for compiling .so files, they are only
    useful for compiling executables
    
    Signed-off-by: Khem Raj <raj.khem@gmail.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

