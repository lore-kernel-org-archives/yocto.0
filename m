Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B57CE009EA; Fri, 24 Apr 2015 13:29:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCEBE00988
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:29:38 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YlkEE-0004Fb-4D from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 24 Apr 2015 13:29:38 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 24 Apr 2015 21:29:35 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2015 23:29:31 +0300
Message-ID: <1429907371-14096-9-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
References: <1429907371-14096-1-git-send-email-dmitry_eremin@mentor.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 9/9] pacemaker: fix runtime dependencies on bash
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
X-List-Received-Date: Fri, 24 Apr 2015 20:29:47 -0000
Content-Type: text/plain

Add bash to the pacemaker-tests RDEPENDS. Also make all scripts that are
installed in main pacemaker package use sh instead of bash.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 .../pacemaker-1.0.9.1/pacemaker-no-bash.patch      | 40 ++++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     |  3 +-
 2 files changed, 42 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch
new file mode 100644
index 0000000..6f9639d
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-no-bash.patch
@@ -0,0 +1,40 @@
+Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_failcount
+===================================================================
+--- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_failcount
++++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_failcount
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ 
+ options=""
+ target=`uname -n`
+Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_master
+===================================================================
+--- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_master
++++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_master
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ 
+ TEMP=`getopt -o DGQVN:U:v:i:l:r: --long resource:,node:,uname:,attr-value:,delete-attr,get-value,attr-id:,lifetime:,quiet \
+      -n 'crm_master' -- "$@"`
+Index: pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_standby
+===================================================================
+--- pacemaker-1.0-Pacemaker-1.0.9.1.orig/tools/crm_standby
++++ pacemaker-1.0-Pacemaker-1.0.9.1/tools/crm_standby
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ 
+ op=""
+ options=""
+Index: pacemaker-1.0-Pacemaker-1.0.9.1/extra/resources/o2cb
+===================================================================
+--- pacemaker-1.0-Pacemaker-1.0.9.1.orig/extra/resources/o2cb
++++ pacemaker-1.0-Pacemaker-1.0.9.1/extra/resources/o2cb
+@@ -1,4 +1,4 @@
+-#!/bin/bash
++#!/bin/sh
+ # Copyright (c) 2005,2008 Oracle 
+ # Copyright (c) 2008 Andrew Beekhof
+ #                    All Rights Reserved.
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
index 174ebd1..43769bf 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
@@ -26,6 +26,7 @@ SRC_URI = " \
     file://fix-header-defs-lookup.patch \
     file://pacemaker-remove-ptest-functionality.patch \
     file://pacemaker-fix-xml-config.patch \
+    file://pacemaker-no-bash.patch \
 	file://volatiles \
 	"
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
@@ -80,5 +81,5 @@ RDEPENDS_${PN}-hb2openais += "python-core"
 FILES_${PN}-haresources2cib = "${libdir}/heartbeat/haresources2cib.py"
 RDEPENDS_${PN}-haresources2cib += "python-core"
 FILES_${PN}-tests = "${datadir}/pacemaker/tests ${datadir}/pacemaker/stonithdtest ${libdir}/heartbeat/atest ${libdir}/heartbeat/stonithdtest/*"
-RDEPENDS_${PN}-test += "python-core"
+RDEPENDS_${PN}-tests += "python-core bash"
 FILES_${PN}-snmp = "${datadir}/snmp/mibs/PCMK-MIB.txt"
-- 
2.1.4


