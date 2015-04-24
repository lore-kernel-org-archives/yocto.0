Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0C2AE009EF; Fri, 24 Apr 2015 13:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F27E7E009CD
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:33 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkE9-0004Fb-E2 from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:33 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:32 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:23 +0300
Message-ID: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/9] packagegroup-cgl-*: fix LIC_FILES_CHKSUM variables
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:43 -0000
Content-Type: text/plain

LIC_FILES_CHKSUM variables in all packagegroup files reference wrong
location of the COPYING.MIT file resulting in warnings during build. Fix
them by pointing to the main COPYING.MIT file in OE-Core.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb       | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb   | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb   | 2 +-
 meta-cgl-common/packagegroups/packagegroup-cgl.bb              | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index 532712e..f823ece 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -2,7 +2,7 @@ SUMMARY = "Application packages required to satisfy the Carrier Grade Linux (CGL
 DESCRIPTION = "This package group includes the application with which the user interacts \
                when using a Linux operation system."
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
 inherit pkgconfig
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
index 2925535..bff7c4c 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "This package group contains hardened device drivers, HW configura
                management, standard, high availability, service and co-processor interfaces."
 
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
 
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index d0a5213..effdb81 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -2,7 +2,7 @@ SUMMARY = "Middleware packages required to satisfy the Carrier Grade Linux (CGL)
 DESCRIPTION = "This package group contains high availability application and platform \
                interfaces, databases, application servers, communication protocols etc."
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
 
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
index 591f120..84e747f 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
@@ -2,7 +2,7 @@ SUMMARY = "Software development tools packages required to satisfy the Carrier G
 DESCRIPTION = "This package group contains programs or applications used to create, debug, maintain, \
                or otherwise support other programs and applications."
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
 
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl.bb b/meta-cgl-common/packagegroups/packagegroup-cgl.bb
index 3a64bbf..2c999e0 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl.bb
@@ -2,7 +2,7 @@ SUMMARY = "Packages required to satisfy the Carrier Grade Linux (CGL) specificat
 DESCRIPTION = "This package group is the one that gathers all the available \
                package groups."
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20421"
 
 inherit packagegroup
 
-- 
2.1.4


