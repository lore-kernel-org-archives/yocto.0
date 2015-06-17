Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFEA2E009C8; Tue, 16 Jun 2015 23:49:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jun 2015 23:49:12 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC1EE0095D
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 23:49:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,625,1427731200"; d="scan'208";a="97186399"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 17 Jun 2015 14:52:17 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t5H6kVJv010792
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 14:46:31 +0800
Received: from localhost.localdomain (10.167.226.26) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Wed, 17 Jun 2015 14:48:11 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 17 Jun 2015 14:48:02 +0800
Message-ID: <1434523682-2966-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.26]
Subject: [meta-cgl][PATCH] openais: upgrade from 1.1.3 to 1.1.4
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
X-List-Received-Date: Wed, 17 Jun 2015 06:49:15 -0000
Content-Type: text/plain

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb | 19 -------------------
 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb | 18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 19 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
 create mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb

diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
deleted file mode 100644
index f4563c9..0000000
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-DESCRIPTION = "Implementation of the Service Availability Forum Application Interface Specification (AIS)"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=4cb00dd52a063edbece6ae248a2ba663"
-DEPENDS = "cluster-glue corosync"
-
-#	ftp://ftp@openais.org/downloads/openais-${PV}/openais-${PV}.tar.gz
-
-SRC_URI = " \
-	ftp://ftp@tux.rainside.sk/gentoo/distfiles/openais-${PV}.tar.gz \
-	file://fix-lcrso-linkage.patch \
-    file://build-cleanup-configure-ac.patch \
-    file://openais-fix-bash.patch \
-	"
-SRC_URI[md5sum] = "13d8d590f806fb396d750b086c6c0b78"
-SRC_URI[sha256sum] = "eeef58dd2df3eb16ba68b3fbdc6f0d4dfb537443f1c091ec6f0431594f2f00b6"
-
-inherit autotools pkgconfig
-
-FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
new file mode 100644
index 0000000..69934a5
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -0,0 +1,18 @@
+DESCRIPTION = "Implementation of the Service Availability Forum Application Interface Specification (AIS)"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=4cb00dd52a063edbece6ae248a2ba663"
+DEPENDS = "cluster-glue corosync"
+
+
+SRC_URI = " \
+    ftp://ftp@tux.rainside.sk/gentoo/distfiles/openais-${PV}.tar.gz \
+    file://fix-lcrso-linkage.patch \
+    file://build-cleanup-configure-ac.patch \
+    file://openais-fix-bash.patch \
+	"
+SRC_URI[md5sum] = "e500ad3c49fdc45d8653f864e80ed82c"
+SRC_URI[sha256sum] = "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a362712e738c06934"
+
+inherit autotools pkgconfig
+
+FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-- 
1.8.4.2


