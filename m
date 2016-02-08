Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D860E00D78; Sun,  7 Feb 2016 21:26:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F37BE00C28
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2016 21:26:12 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id F1B2E8487E30
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 00:26:11 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 08 Feb 2016 05:26:11 -0000
Message-ID: <20160208052611.26761.76494@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 08 Feb 2016 05:26:16 -0000
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
python3-pip           8.0.0        8.0.2                 Alejandro Hernandez
python3-setuptools    19.4         20.0                  Alejandro Hernandez
ruby                  2.2.2        2.2.4                 Alejandro Hernandez
python-pygobject      2.28.3       3.19.2                Alejandro Hernandez  Newer versions of python-py...
python-setuptools     19.4         20.0                  Alejandro Hernandez
liberation-fonts      1.04         2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
iso-codes             3.64         3.65                  Alexander Kanavin
libwnck3              3.14.0       3.14.1                Alexander Kanavin
webkitgtk             2.10.5       2.10.7                Alexander Kanavin
mkelfimage            4.0+gitX     4.3+gitAUTOINC+1b...  Alexander Kanavin    mkelfimage has been removed...
apt                   1.0.10.1     1.2.2                 Aníbal Limón
dpkg                  1.18.2       1.18.4                Aníbal Limón
nettle                3.1.1        3.2                   Armin Kuster
linux-libc-headers    4.4          4.4.1                 Bruce Ashfield
linux-yocto-rt        4.4+gitX     4.4.1+gitAUTOINC+...  Bruce Ashfield
linux-yocto           4.4+gitX     4.4.1+gitAUTOINC+...  Bruce Ashfield
linux-yocto-tiny      4.4+gitX     4.4.1+gitAUTOINC+...  Bruce Ashfield
guilt-native          0.35+gitX    0.36+gitAUTOINC+2...  Bruce Ashfield
grep                  2.22         2.23                  Chen Qi
diffstat              1.60         1.61                  Chen Qi
coreutils             8.24         8.25                  Chen Qi
cups                  2.0.4        2.1.3                 Chen Qi
findutils             4.5.14       4.5.19                Chen Qi
ncurses               6.0          6.0+20151024          Hongxu Jia
gnupg                 2.1.10       2.1.11                Hongxu Jia
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
ghostscript           9.16         9.18                  Hongxu Jia
elfutils              0.164        0.165                 Hongxu Jia
libinput              1.1.4        1.1.901               Jussi Kukkonen
wayland               1.9.0        1.9.92                Jussi Kukkonen
gtk-icon-utils-na...  3.18.6       3.18.7                Jussi Kukkonen
cmake                 3.4.2        3.4.3                 Jussi Kukkonen
docbook-xsl-style...  1.78.1       1.79.1                Jussi Kukkonen
vala                  0.30.0       0.30.1                Jussi Kukkonen
weston                1.9.0        1.9.92                Jussi Kukkonen
gtk+3                 3.18.6       3.18.7                Jussi Kukkonen
pixman                0.32.8       0.34.0                Jussi Kukkonen
xkeyboard-config      2.16         2.17                  Jussi Kukkonen
glew                  1.12.0       1.13.0                Jussi Kukkonen
vte                   0.28.2       0.42.3                Jussi Kukkonen       matchbox-terminal needs to ...
linuxdoc-tools-na...  0.9.69       0.9.71                Jussi Kukkonen
slang                 2.2.4        2.3.0                 Kai Kang
libsdl2               2.0.3        2.0.4                 Kai Kang
uclibc                1.0.11+gitX  1.0.12+gitAUTOINC...  Khem Raj
rpm                   5.4.14       5.4.15                Mark Hatle           5.4.15 has a package databa...
prelink               1.0+gitX     20151030.+gitAUTO...  Mark Hatle
mdadm                 3.3.4        3.4                   Maxin B. John
db                    6.0.30       6.1.26                Maxin B. John        Updating to 6.1.x requires ...
quota                 4.02         4.03                  Maxin B. John
iproute2              4.3.0        4.4.0                 Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   3+gitAUTOINC+84bb...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   3+gitAUTOINC+2158...  Maxin B. John
gstreamer1.0          1.7.1+gitX   20010312+gitAUTOI...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   3+gitAUTOINC+6662...  Maxin B. John
gstreamer1.0-libav    1.7.1+gitX   3+gitAUTOINC+3dc2...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX   3+gitAUTOINC+3bb5...  Maxin B. John
ffmpeg                2.8.5        2.8.6                 No maintainer
uclibc-initial        1.0.11+gitX  1.0.12+gitAUTOINC...  No maintainer
bash-completion       2.1          20080705              No maintainer
apt-native            1.0.10.1     1.2.2                 No maintainer
cmake-native          3.4.2        3.4.3                 No maintainer
ifupdown              0.8.2        0.8.10                No maintainer
libsolv               0.6.17+gitX  0.6.18+gitAUTOINC...  No maintainer
debianutils           4.5.1        4.7                   No maintainer
sgmlspl-native        1.1+gitX     1.03+gitAUTOINC+f...  No maintainer
adt-installer         0.3.0        0.3.1                 Randy Witt
ltp                   20150903     20160126              Robert Yang
libbsd                0.8.1        0.8.2                 Robert Yang
libcap                2.24         2.25                  Robert Yang
git                   2.7.0        2.7.1                 Robert Yang
mklibs-native         0.1.40       0.1.41                Robert Yang
lsbinitscripts        9.64         9.65                  Ross Burton
base-passwd           3.5.29       3.5.39                Ross Burton          Version 3.5.38 requires cde...
alsa-plugins          1.0.29       1.1.0                 Tanu Kaskinen
alsa-tools            1.0.29       1.1.0                 Tanu Kaskinen
alsa-utils-scripts    1.0.29       1.1.0                 Tanu Kaskinen
pulseaudio            6.0          8.0                   Tanu Kaskinen
alsa-utils            1.0.29       1.1.0                 Tanu Kaskinen
chkconfig             1.3.58       1.7                   Wenzong Fan          Version 1.5 requires selinux
ccache                3.2.3        3.2.4                 Wenzong Fan
gettext               0.19.6       0.19.7                Wenzong Fan

Upgradable count: 73
Upgradable total count: 82

The based commit is:

commit d53a0d410ae2390528f1090a131cd3e16d7ebcc5
Author: Armin Kuster <akuster@mvista.com>
Date:   Sun Jan 31 11:55:30 2016 -0800

    glibc-locale: fix QA warning
    
    WARNING: QA Issue: glibc-locale: /glibc-binary-localedata-sd-in/usr/lib/locale/sd_IN/LC_CTYPE is owned by uid 1000, which is the same as the user running bitbake. This may be due to host contamination [host-user-contaminated]
    
    fix type
    Signed-off-by: Armin Kuster <akuster@mvista.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

