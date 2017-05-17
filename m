Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2293E00BAD; Wed, 17 May 2017 00:57:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7611E00B43
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:56:49 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4H7um3N014227
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:56:48 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Wed, 17 May 2017 00:56:47 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 17 May 2017 15:56:41 +0800
Message-ID: <8e4ad559ae8543501c07c6d12a09e72688ceb72a.1495007644.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495007644.git.jackie.huang@windriver.com>
References: <cover.1495007644.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 2/2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Wed, 17 May 2017 07:57:00 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

eCryptfs is a stacked cryptographic filesystem that ships
in Linux kernel versions 2.6.19 and above. This package
provides the mount helper and supporting libraries to
perform key management and mount functions.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../ecryptfs-utils/ecryptfs-utils_111.bb           | 52 +++++++++++++++++
 .../files/ecryptfs-utils-CVE-2016-6224.patch       | 65 ++++++++++++++++++++++
 2 files changed, 117 insertions(+)
 create mode 100644 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
 create mode 100644 recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
new file mode 100644
index 0000000..49c2605
--- /dev/null
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -0,0 +1,52 @@
+SUMMARY = "The eCryptfs mount helper and support libraries"
+DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
+    that ships in Linux kernel versions 2.6.19 and above. This \
+    package provides the mount helper and supporting libraries \
+    to perform key management and mount functions."
+HOMEPAGE = "https://launchpad.net/ecryptfs"
+SECTION = "base"
+
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
+
+DEPENDS = "keyutils libgcrypt libpam nss intltool-native glib-2.0-native"
+
+inherit autotools pkgconfig
+
+SRC_URI = "\
+    https://launchpad.net/ecryptfs/trunk/${PV}/+download/${BPN}_${PV}.orig.tar.gz \
+    file://ecryptfs-utils-CVE-2016-6224.patch \
+    "
+
+SRC_URI[md5sum] = "83513228984f671930752c3518cac6fd"
+SRC_URI[sha256sum] = "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f118750a987f"
+
+PARALLEL_MAKEINST=""
+
+EXTRA_OECONF = "\
+    --libdir=${base_libdir} \
+    --disable-pywrap \
+    --disable-nls \
+    --enable-openssl=no \
+    "
+
+do_configure_prepend() {
+    export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
+    export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -lsoftokn3 -lnssutil3"
+    export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
+    export KEYUTILS_LIBS="-L${STAGING_LIBDIR} -lkeyutils"
+}
+
+do_install_append() {
+    chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
+    mkdir -p ${D}/${libdir}
+    mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
+    sed -i -e 's:-I${STAGING_INCDIR}::' \
+           -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/libecryptfs.pc
+    sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:" ${D}${bindir}/ecryptfs-setup-swap
+}
+
+FILES_${PN} += "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
+
+RDEPENDS_${PN} += "cryptsetup"
+RRECOMMENDS_${PN} = "gettext-runtime"
diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
new file mode 100644
index 0000000..4252f97
--- /dev/null
+++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
@@ -0,0 +1,65 @@
+From 558a513ba3100ea5190de1a24cf1fed663367765 Mon Sep 17 00:00:00 2001
+From: Li Zhou <li.zhou@windriver.com>
+Date: Mon, 5 Sep 2016 10:28:08 +0800
+Subject: [PATCH] ecryptfs-utils: CVE-2016-6224
+
+src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions from
+being automatically enabled by systemd. This bug affected GPT partitioned
+NVMe/MMC drives and resulted in the swap partition being used without
+encryption. It also resulted in a usability issue in that users were
+erroneously prompted to enter a pass-phrase to unlock their swap partition
+at boot. (LP: #1597154)
+
+the patch comes from:
+https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
+https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
+
+Upstream-Status: backport
+
+Signed-off-by: Li Zhou <li.zhou@windriver.com>
+---
+ ChangeLog                     |  9 +++++++++
+ src/utils/ecryptfs-setup-swap | 10 ++++++++--
+ 2 files changed, 17 insertions(+), 2 deletions(-)
+
+diff --git a/ChangeLog b/ChangeLog
+index d255a94..2c9c73e 100644
+--- a/ChangeLog
++++ b/ChangeLog
+@@ -1,3 +1,12 @@
++ecryptfs-utils-112
++  [ Jason Gerard DeRose ]
++  * src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions from
++    being automatically enabled by systemd. This bug affected GPT partitioned
++    NVMe/MMC drives and resulted in the swap partition being used without
++    encryption. It also resulted in a usability issue in that users were
++    erroneously prompted to enter a pass-phrase to unlock their swap partition
++    at boot. (LP: #1597154)
++
+ ecryptfs-utils-74
+   [ Michal Hlavinka ]
+   * Changes for RH/Fedora release
+diff --git a/src/utils/ecryptfs-setup-swap b/src/utils/ecryptfs-setup-swap
+index 41cf18a..e4785d7 100755
+--- a/src/utils/ecryptfs-setup-swap
++++ b/src/utils/ecryptfs-setup-swap
+@@ -166,8 +166,14 @@ for swap in $swaps; do
+ 	# If this is a GPT partition, mark it as no-auto mounting, to avoid
+ 	# auto-activating it on boot
+ 	if [ "$(blkid -p -s PART_ENTRY_SCHEME -o value "$swap")" = "gpt" ]; then
+-		drive="${swap%[0-9]*}"
+-		partno="${swap#$drive}"
++		# Correctly handle NVMe/MMC drives, as well as any similar physical
++		# block device that follow the "/dev/foo0p1" pattern (LP: #1597154)
++		if echo "$swap" | grep -qE "^/dev/.+[0-9]+p[0-9]+$"; then
++			drive=$(echo "$swap" | sed "s:\(.\+[0-9]\)p[0-9]\+:\1:")
++		else
++			drive=$(echo "$swap" | sed "s:\(.\+[^0-9]\)[0-9]\+:\1:")
++		fi
++		partno=$(echo "$swap" | sed "s:.\+[^0-9]\([0-9]\+\):\1:")
+ 		if [ -b "$drive" ]; then
+ 			if printf "x\np\n" | fdisk "$drive" | grep -q "^$swap .* GUID:.*\b63\b"; then
+ 				echo "$swap is already marked as no-auto"
+-- 
+1.9.1
+
-- 
2.11.0


