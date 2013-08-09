Return-Path: <Holger.Behrens@windriver.com>
Received: from mail7.windriver.com (mail7.windriver.com [128.224.252.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42DE9E015F0
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail7.windriver.com (8.14.5/8.14.3) with ESMTP id r79An13p010432
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 06:49:02 -0400 (EDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:49:01 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:46 +0200
Message-ID: <1376045330-17216-4-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 4/8] linux-yocto: keep support for version 3.4 (LTSI) around
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
X-List-Received-Date: Fri, 09 Aug 2013 10:49:06 -0000
Content-Type: text/plain

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..c09d607
--- /dev/null
+++ b/meta-ivi-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,25 @@
+PRINC := "${@int(PRINC) + 2}"
+
+# find defconfig path
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+# Kernel configs
+SRC_URI_append_beagleboard = " \
+	file://beagle_qemu.cfg \
+	"
+
+SRC_URI_append_vexpressa9 = " \
+	file://vexpress_a9.cfg  \
+	"
+
+SRC_URI_append_qemux86 = " \
+	file://qemux86.cfg  \
+	"
+
+SRC_URI_append_qemux86-64 = " \
+	file://qemux86_64.cfg  \
+	"
+
+KMACHINE_vexpressa9 = "beagleboard"
+SRCREV_machine_vexpressa9 ?= "${AUTOREV}"
+COMPATIBLE_MACHINE_vexpressa9 = "vexpressa9"
-- 
1.7.9.5


