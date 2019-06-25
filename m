Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D89BAE00D35; Tue, 25 Jun 2019 02:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A1C8E00D00
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 02:44:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5P9hgPu023050
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 25 Jun 2019 02:43:42 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Tue, 25 Jun 2019 02:43:41 -0700
From: <zhe.he@windriver.com>
To: <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
Date: Tue, 25 Jun 2019 17:43:40 +0800
Message-ID: <1561455820-9421-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] dpdk: Remove 18.05
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
X-List-Received-Date: Tue, 25 Jun 2019 09:44:03 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

We have already had 18.11 and 18.05 is not a stable version.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 recipes-extended/dpdk/dpdk_18.05.bb | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 recipes-extended/dpdk/dpdk_18.05.bb

diff --git a/recipes-extended/dpdk/dpdk_18.05.bb b/recipes-extended/dpdk/dpdk_18.05.bb
deleted file mode 100644
index b6897a8..0000000
--- a/recipes-extended/dpdk/dpdk_18.05.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-include dpdk.inc
-
-SRCREV = "a5dce55556286cc56655320d975c67b0dbe08693"
-
-LICENSE = "BSD-3-Clause & LGPLv2.1 & GPLv2"
-LIC_FILES_CHKSUM = "file://license/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-                    file://license/lgpl-2.1.txt;md5=4b54a1fd55a448865a0b32d41598759d \
-                    file://license/bsd-3-clause.txt;md5=0f00d99239d922ffd13cabef83b33444"
-
-SRC_URI += "\
-            file://dpdk-16.07-dpdk-fix-for-parellel-make-issue.patch \
-            file://dpdk-17.02-dpdk-fix-installation-warning-and-issue.patch \
-            file://dpdk-16.04-dpdk-enable-ip_fragmentation-in-common_base-config.patch \
-            file://0001-examples-Fix-maybe-uninitialized-warning.patch \
-            "
-- 
2.7.4


