Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308D3E00B97; Sun, 17 Jan 2016 21:27:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65398E00B88
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 21:27:47 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 5B532849DF5E
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 00:27:47 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 18 Jan 2016 05:27:47 -0000
Message-ID: <20160118052747.8190.76443@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 18 Jan 2016 05:27:50 -0000
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

Package               Version         Upstream version      Maintainer           NoUpgradeReason
--------------------  --------------  --------------------  -------------------  ------------------------------
python                2.7.9           2.7.11                Alejandro Hernandez
perl                  5.22.0          5.22.1                Alejandro Hernandez
python-mako           1.0.1           1.0.3                 Alejandro Hernandez
python-nose           1.3.6           1.3.7                 Alejandro Hernandez
python-numpy          1.10.1          1.10.4                Alejandro Hernandez
python-pycurl         7.19.5.2        7.21.5                Alejandro Hernandez
python-pygobject      2.28.3          3.19.2                Alejandro Hernandez  Newer versions of python-py...
python-scons          2.3.6           2.4.1                 Alejandro Hernandez
python3               3.5.0           3.5.1                 Alejandro Hernandez
swig                  3.0.6           3.0.8                 Alejandro Hernandez
python3-setuptools    18.7.1          19.4                  Alejandro Hernandez
python-setuptools     18.7.1          19.4                  Alejandro Hernandez
liberation-fonts      1.04            2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
mkelfimage            4.0+gitX        4.2+gitAUTOINC+43...  Alexander Kanavin    mkelfimage has been removed...
nss                   3.19.2          3.21                  Alexander Kanavin
apt                   1.0.10.1        1.2                   Aníbal Limón
dpkg                  1.18.2          1.18.4                Aníbal Limón
pinentry              0.9.2           0.9.7                 Armin Kuster
linux-libc-headers    4.1             4.4                   Bruce Ashfield
guilt-native          0.35+gitX       0.36+gitAUTOINC+2...  Bruce Ashfield
cups                  2.0.4           2.1.2                 Chen Qi
dbus-glib             0.104           0.106                 Chen Qi
dbus-test             1.8.20          1.10.6                Chen Qi
dbus                  1.8.20          1.10.6                Chen Qi
diffstat              1.60            1.61                  Chen Qi
findutils             4.5.14          4.5.19                Chen Qi
sysstat               11.2.0          11.2.0-1              Chen Qi
build-appliance-i...  12.0.1          14.0.0                Cristian Iorga
ncurses               6.0             6.0.20150627          Hongxu Jia
createrepo            0.4.11          0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
ghostscript           9.16            9.18                  Hongxu Jia
waffle                1.5.1           1.5.2                 Jussi Kukkonen
libinput              0.21.0          1.1.4                 Jussi Kukkonen
wayland               1.8.1           1.9.0                 Jussi Kukkonen
weston                1.8.0           1.9.0                 Jussi Kukkonen
gtk-icon-utils-na...  3.18.2          3.18.6                Jussi Kukkonen
glib-2.0              2.46.1          2.46.2                Jussi Kukkonen
pixman                0.32.8          0.33.6                Jussi Kukkonen
cmake                 3.3.2           3.4.1                 Jussi Kukkonen
docbook-xsl-style...  1.78.1          1.79.1                Jussi Kukkonen
libav                 9.18            11.4                  Jussi Kukkonen
at-spi2-core          2.18.1          2.18.3                Jussi Kukkonen
libdrm                2.4.65          2.4.66                Jussi Kukkonen
vala                  0.28.0          0.30.0                Jussi Kukkonen
libsoup-2.4           2.52.1          2.52.2                Jussi Kukkonen
vte                   0.28.2          0.42.1                Jussi Kukkonen       matchbox-terminal needs to ...
gdk-pixbuf            2.32.1          2.32.3                Jussi Kukkonen
gtk+3                 3.18.2          3.18.6                Jussi Kukkonen
gtk+                  2.24.28         2.24.29               Jussi Kukkonen
freetype              2.6             2.6.2                 Jussi Kukkonen
glew                  1.12.0          1.13.0                Jussi Kukkonen
linuxdoc-tools-na...  0.9.69          0.9.71                Jussi Kukkonen
slang                 2.2.4           2.3.0                 Kai Kang
libsdl2               2.0.3           2.0.4                 Kai Kang
prelink               1.0+gitX        20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.14          5.4.15                Mark Hatle           5.4.15 has a package databa...
acpid                 2.0.25          2.0.26                Maxin B. John
iproute2              4.3.0           4.4.0                 Maxin B. John
libpng12              1.2.55          1.2.56                Maxin B. John
libpng                1.6.20          1.6.21                Maxin B. John
db                    6.0.30          6.1.26                Maxin B. John        Updating to 6.1.x requires ...
sqlite3               3.10.0          3.10.1                Maxin B. John
quota                 4.02            4.03                  Maxin B. John
bootchart2            0.14.7          0.14.8                No maintainer
ifupdown              0.8.2           0.8.8                 No maintainer
libsolv               0.6.14+gitX     13.1+gitAUTOINC+d...  No maintainer
pbzip2                1.1.12          1.1.13                No maintainer
uclibc-initial        1.0.10+gitX     1.0.11+gitAUTOINC...  No maintainer
apt-native            1.0.10.1        1.2                   No maintainer
cmake-native          3.3.2           3.4.1                 No maintainer
sgmlspl-native        1.1+gitX        1.03+gitAUTOINC+f...  No maintainer
perl-native           5.22.0          5.22.1                No maintainer
python-scons-native   2.3.6           2.4.1                 No maintainer
python3-native        3.5.0           3.5.1                 No maintainer
python-native         2.7.9           2.7.11                No maintainer
elfutils              0.164           0.165                 No maintainer
adt-installer         0.3.0           0.3.1                 Randy Witt
e2fsprogs             1.42+1.43-gitX  20011130              Robert Yang
strace                4.10            4.11                  Robert Yang
base-passwd           3.5.29          3.5.39                Ross Burton          Version 3.5.38 requires cde...
uclibc                1.0.10+gitX     1.0.11+gitAUTOINC...  Ross Burton
lsbinitscripts        9.64            9.65                  Ross Burton
alsa-tools            1.0.29          1.1.0                 Tanu Kaskinen
alsa-utils            1.0.29          1.1.0                 Tanu Kaskinen
pulseaudio            6.0             7.99.2                Tanu Kaskinen
alsa-plugins          1.0.29          1.1.0                 Tanu Kaskinen
alsa-utils-scripts    1.0.29          1.1.0                 Tanu Kaskinen
ccache                3.2.3           3.2.4                 Wenzong Fan
gettext               0.19.6          0.19.7                Wenzong Fan
chkconfig             1.3.58          1.7                   Wenzong Fan          Version 1.5 requires selinux

Upgradable count: 81
Upgradable total count: 90

The based commit is:

commit a42229df424552955c0ac62da1063461f97f5938
Author: Armin Kuster <akuster@mvista.com>
Date:   Fri Jan 15 16:59:49 2016 -0800

    openssh: CVE-2016-1907
    
    This issue requires three commits:
    https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c
    https://anongit.mindrot.org/openssh.git/commit/?id=f98a09cacff7baad8748c9aa217afd155a4d493f
    https://anongit.mindrot.org/openssh.git/commit/?id=2fecfd486bdba9f51b3a789277bb0733ca36e1c0
    
    Signed-off-by: Armin Kuster <akuster@mvista.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

