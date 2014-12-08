Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2974BE0091D; Mon,  8 Dec 2014 02:34:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9296DE007DF
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 02:34:38 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44669582"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 08 Dec 2014 18:31:16 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sB8AYCXj010109
	for <yocto@yoctoproject.org>; Mon, 8 Dec 2014 18:34:12 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 8 Dec 2014 18:34:37 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 8 Dec 2014 18:33:57 +0800
Message-ID: <1418034837-1966-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH] openais: upgrade to 1.1.4
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
X-List-Received-Date: Mon, 08 Dec 2014 10:34:45 -0000
Content-Type: text/plain

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb | 18 ------------------
 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 18 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
 create mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb

diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
deleted file mode 100644
index 2a03b9a..0000000
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.3.bb
+++ /dev/null
@@ -1,18 +0,0 @@
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
-	"
-SRC_URI[md5sum] = "13d8d590f806fb396d750b086c6c0b78"
-SRC_URI[sha256sum] = "eeef58dd2df3eb16ba68b3fbdc6f0d4dfb537443f1c091ec6f0431594f2f00b6"
-
-inherit autotools pkgconfig
-
-FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
new file mode 100644
index 0000000..23d704d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -0,0 +1,16 @@
+DESCRIPTION = "Implementation of the Service Availability Forum Application Interface Specification (AIS)"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=4cb00dd52a063edbece6ae248a2ba663"
+DEPENDS = "cluster-glue corosync"
+
+SRC_URI = "ftp://ftp@tux.rainside.sk/gentoo/distfiles/${BP}.tar.gz \
+    file://fix-lcrso-linkage.patch \
+    file://build-cleanup-configure-ac.patch \
+	"
+SRC_URI[md5sum] = "e500ad3c49fdc45d8653f864e80ed82c"
+SRC_URI[sha256sum] = "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a362712e738c06934"
+
+inherit autotools pkgconfig
+
+EXTRA_OECONF = '--with-initddir=/etc/init.d'
+FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-- 
1.8.4.2


