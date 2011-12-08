Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E5DE011B0
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2011 16:31:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="84751250"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2011 16:31:30 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:31 -0800
Message-Id: <4157c57dc7c90fb96256c1653eb89ae6273c875d.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 3/7] linux-firmware: append support for the iwlwifi-6000g2a-5 firmware
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 08 Dec 2011 00:31:31 -0000

Add firmware required by the Intel Centrino Adnanced-N 6205 mini-pcie card.
The content is already available in the linux-firmware repository, this patch
just adds the meta-data to include the right files and define a package.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux-firmware/linux-firmware_git.bbappend     |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend

diff --git a/meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
new file mode 100644
index 0000000..97e64a5
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -0,0 +1,18 @@
+FILESEXTRAPATHS_prepend := "${THISDIR/${PN}:"
+
+# This exists in Yocto 1.1, but include it here for completeness
+LIC_FILES_CHKSUM += "file://LICENCE.iwlwifi_firmware;md5=311cc823df5b1be4f00fbf0f17d96a6b"
+
+FWPATH = "/lib/firmware"
+
+do_install_append() {
+	install -m 0644 LICENCE.iwlwifi_firmware ${D}${FWPATH}
+	install -m 0644 iwlwifi-6000g2a-5.ucode ${D}${FWPATH}
+}
+
+PACKAGES =+ "${PN}-iwlwifi-6000g2a-5"
+
+FILES_${PN}-iwlwifi-6000g2a-5 = "  \
+  ${FWPATH}/LICENCE.iwlwifi_firmware \
+  ${FWPATH}/iwlwifi-6000g2a-5.ucode  \
+"
-- 
1.7.6.4


