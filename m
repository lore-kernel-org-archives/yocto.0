Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 228ADE00A4F; Sun, 12 Mar 2017 21:02:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 127F1E00A3B
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 21:02:18 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 952EE80A28B4
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 00:02:17 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 13 Mar 2017 04:02:17 -0000
Message-ID: <20170313040217.19662.87947@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 13 Mar 2017 04:02:21 -0000
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
python3               3.5.2        3.6.0                 Alejandro Hernandez
python3-native        3.5.2        3.6.0                 Alejandro Hernandez
gnutls                3.5.9        3.5.10                Alexander Kanavin
dtc                   1.4.2        1.4.4                 Alexander Kanavin
btrfs-tools           4.9.1        4.10                  Alexander Kanavin
mobile-broadband-...  20151214     20170310              Alexander Kanavin
openssl               1.0.2k       1.1.0e                Alexander Kanavin
mpg123                1.23.8       1.24.0                Alexander Kanavin
vala                  0.34.4       0.34.6                Alexander Kanavin
libiconv              1.14         1.15                  Alexander Kanavin
ed                    1.14.1       1.14.2                Alexander Kanavin
lzo                   2.09         2.10                  Alexander Kanavin
kconfig-frontends     3.12.0.0     4.7.0.0               Alexander Kanavin
gperf                 3.0.4        3.1                   Alexander Kanavin
mkelfimage            4.0+gitX     4.5+gitAUTOINC+0b...  Alexander Kanavin    mkelfimage has been removed...
libarchive            3.2.2        3.3.1                 Alexander Kanavin
dpkg                  1.18.10      1.18.23               Aníbal Limón
pinentry              0.9.2        1.0.0                 Armin Kuster
linux-libc-headers    4.10         4.10.1                Bruce Ashfield
libunwind             1.1+gitX     1.2+gitAUTOINC+cc...  Bruce Ashfield
coreutils             8.26         8.27                  Chen Qi
systemd-boot          232          233                   Chen Qi
util-linux            2.29.1       2.29.2                Chen Qi
pciutils              3.5.2        3.5.4                 Chen Qi
kmod                  23+gitX      24+gitAUTOINC+ef4...  Chen Qi
sed                   4.2.2        4.4                   Chen Qi
sysstat               11.5.4       11.5.5                Chen Qi
systemd               232          233                   Chen Qi
curl                  7.53.0       7.53.1                Chen Qi
busybox               1.25.0+gitX  1.26.2+gitAUTOINC...  Chen Qi
flex                  2.6.0        2.6.3                 Chen Qi
dbus-test             1.10.14      1.10.16               Chen Qi
dbus                  1.10.14      1.10.16               Chen Qi
grep                  2.27         3.0                   Chen Qi
byacc                 20161202     20170201              Chen Qi
kmod-native           23+gitX      24+gitAUTOINC+ef4...  Chen Qi
build-appliance-i...  15.0.0       16.0.1                Cristian Iorga
python3-setuptools    32.1.1       34.3.1                Edwin Plauchu
python-setuptools     32.1.1       34.3.1                Edwin Plauchu
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
libgpg-error          1.26         1.27                  Hongxu Jia
bash                  4.3.30       4.4                   Hongxu Jia
gnupg                 2.1.18       2.1.19                Hongxu Jia
python-git            2.1.1        2.1.3                 Jose Lamego
python3-git           2.1.1        2.1.3                 Jose Lamego
pango                 1.40.3       1.40.4                Jussi Kukkonen
libinput              1.6.1        1.6.902               Jussi Kukkonen
xserver-xorg          1.19.1       1.19.2                Jussi Kukkonen
gtk-icon-utils-na...  3.22.8       3.22.9                Jussi Kukkonen
libx11-diet           1.6.4        1.6.5                 Jussi Kukkonen
libx11                1.6.4        1.6.5                 Jussi Kukkonen
gtk+3                 3.22.8       3.22.9                Jussi Kukkonen
libevent              2.0.22       2.1.8                 Jussi Kukkonen
xf86-input-libinput   0.24.0       0.25.0                Jussi Kukkonen
libepoxy              1.4.0        1.4.1                 Jussi Kukkonen
nfs-utils             1.3.4        2.1.1                 Mariano Lopez
prelink               1.0+gitX     20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.16       5.4.17                Mark Hatle
db                    6.0.35       6.2.23                Mark Hatle           latest db does not work wit...
libpfm4               4.6.0        4.8.0                 Matthew McClintock
ifupdown              0.8.16       0.8.19                Maxin B. John
bluez5                5.43         5.44                  Maxin B. John
libsolv               0.6.24       0.6.26                Maxin B. John
harfbuzz              1.4.1        1.4.4                 Maxin B. John
mc                    4.8.18       4.8.19                Maxin B. John
libpcre2              10.22        10.23                 No maintainer
linux-yocto-rt        4.10+gitX    4.10.1+gitAUTOINC...  No maintainer
linux-yocto-tiny      4.10+gitX    4.10.1+gitAUTOINC...  No maintainer
linux-yocto           4.10+gitX    4.10.1+gitAUTOINC...  No maintainer
go-native             1.4.3        1.8                   No maintainer
vulkan                1.0.39.1     20141209              No maintainer
git                   2.11.1       2.12.0                Robert Yang
lsbinitscripts        9.68         9.70                  Ross Burton
base-passwd           3.5.29       3.5.43                Ross Burton          Version 3.5.38 requires cde...

Upgradable count: 70
Upgradable total count: 74

The based commit is:

commit a47e64d985a610535449730806651f5bfd75d9ec
Author: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Date:   Fri Mar 10 13:23:51 2017 +0200

    libcomps: add a recipe
    
    libcomps is required by dnf.
    
    Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


