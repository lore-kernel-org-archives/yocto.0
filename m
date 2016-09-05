Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DEAE00E06; Sun,  4 Sep 2016 21:35:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 586DEE00DF0
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2016 21:35:04 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 429EF84AD8EA
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 00:35:03 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 05 Sep 2016 04:35:03 -0000
Message-ID: <20160905043503.1664.33072@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 05 Sep 2016 04:35:08 -0000
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
python3-setuptools    22.0.5         26.1.1                Alejandro Hernandez
texinfo               6.0            6.1                   Alejandro Hernandez
swig                  3.0.8          3.0.10                Alejandro Hernandez
nfs-utils             1.3.3          1.3.4                 Alejandro Hernandez
ruby                  2.2.5          2.3.1                 Alejandro Hernandez
python-setuptools     22.0.5         26.1.1                Alejandro Hernandez
perl                  5.22.1         5.24.1                Alejandro Hernandez
python3-numpy         1.11.0         1.11.1                Alejandro Hernandez
python3-git           2.0.7          2.0.8                 Alejandro Hernandez
perl-native           5.22.1         5.24.1                Alejandro Hernandez
python-pexpect        4.2.0          4.2.1                 Alejandro Hernandez
python-git            2.0.7          2.0.8                 Alejandro Hernandez
liberation-fonts      1.04           2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
dtc                   1.4.1+gitX     1.4.2+gitAUTOINC+...  Alexander Kanavin
kexec-tools           2.0.12         2.0.13                Alexander Kanavin
sysprof               3.20.0+gitX    3.21.91+gitAUTOIN...  Alexander Kanavin
openssl               1.0.2h         1.1.0                 Alexander Kanavin
gnutls                3.5.1          3.5.3                 Alexander Kanavin
mkelfimage            4.0+gitX       4.4+gitAUTOINC+58...  Alexander Kanavin    mkelfimage has been removed...
libksba               1.3.4          1.3.5                 Alexander Kanavin
qemu                  2.6.0          2.7.0                 Aníbal Limón
dpkg                  1.18.7         1.18.10               Aníbal Limón
pinentry              0.9.2          0.9.7                 Armin Kuster
guilt-native          0.35+gitX      0.36+gitAUTOINC+2...  Bruce Ashfield
linux-libc-headers    4.4            4.7.2                 Bruce Ashfield
linux-yocto-dev       4.6-rc++gitX   4.7                   Bruce Ashfield
sysstat               11.3.5         11.4.0                Chen Qi
systemd               230+gitX       231+gitAUTOINC+38...  Chen Qi
systemd-boot          230+gitX       231+gitAUTOINC+38...  Chen Qi
diffutils             3.4            3.5                   Chen Qi
gawk                  4.1.3          4.1.4                 Chen Qi
build-appliance-i...  15.0.0         15.0.1                Cristian Iorga
ltp                   20160126       20160510              Dengke Du
linuxdoc-tools-na...  0.9.69         0.9.72                Dengke Du
chkconfig             1.3.58         1.8                   Dengke Du            Version 1.5 requires selinux
sgmlspl-native        1.1+gitX       1.03+gitAUTOINC+f...  Dengke Du
u-boot-fw-utils       v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
u-boot                v2016.03+gitX  v2016.07+gitAUTOI...  Denys Dmytriyenko
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
elfutils              0.166          0.167                 Hongxu Jia
gnupg                 2.1.14         2.1.15                Hongxu Jia
pango                 1.40.1         1.40.2                Jussi Kukkonen
libinput              1.4.1          1.4.2                 Jussi Kukkonen
wayland               1.11.0         1.11.92               Jussi Kukkonen
weston                1.11.0         1.11.92               Jussi Kukkonen
xf86-input-synaptics  1.8.3          1.8.99.1              Jussi Kukkonen
libevdev              1.5.2          1.5.4                 Jussi Kukkonen
libxfont              1.5.1          1.5.2                 Jussi Kukkonen
cogl-1.0              1.22.0         1.22.2                Jussi Kukkonen
prelink               1.0+gitX       20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.16         5.4.17                Mark Hatle
db                    6.0.30         6.2.23                Mark Hatle           latest db does not work wit...
libpfm4               4.6.0          4.7.0                 Matthew McClintock
libpcap               1.7.4          1.8.0                 Maxin B. John
ifupdown              0.8.2          0.8.13                Maxin B. John
gstreamer1.0-omx      1.2.0          1.9.2                 Maxin B. John
libpng                1.6.24         1.6.25                Maxin B. John
serf                  1.3.8          1.3.9                 Maxin B. John
orc                   0.4.25         0.4.26                Maxin B. John
gdb-cross-canadia...  7.11           7.11.1                No maintainer
gdb-cross-i586        7.11           7.11.1                No maintainer
gdb                   7.11           7.11.1                Richard Purdie
e2fsprogs             1.43           1.43.3                Robert Yang
git                   2.9.3          2.10.0                Robert Yang
autogen-native        5.18.10        5.18.12               Robert Yang
lsbinitscripts        9.68           9.69                  Ross Burton
base-passwd           3.5.29         3.5.40                Ross Burton          Version 3.5.38 requires cde...

Upgradable count: 62
Upgradable total count: 68

The based commit is:

commit 9b08503eabf78bc1b114416523b41dcce3449f58
Author: Ed Bartosh <ed.bartosh@linux.intel.com>
Date:   Thu Sep 1 11:56:03 2016 +0300

    toaster: fire TaskArtifacts event
    
    Fire TaskArtifact MetaData event for deployment tasks when task
    either completed or skipped. Event contains full task id
    (recipe+task) and list of deployment artifacts from sstate
    manifest.
    
    This should allow Toaster to always get notified about deployment
    artifacts produced by the build.
    
    [YOCTO #9869]
    
    Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


