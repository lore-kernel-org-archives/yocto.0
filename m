Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4B42E00D59; Mon, 16 Sep 2019 00:56:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B931E00D33
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 00:56:31 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8G7uUQc019761
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 00:56:30 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Mon, 16 Sep 2019 00:56:30 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 16 Sep 2019 15:56:28 +0800
Message-ID: <1568620588-32639-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH] dpdk: Skip build if necessary kernel options is not included
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
X-List-Received-Date: Mon, 16 Sep 2019 07:56:31 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

dpdk depends on some kernel configuration options without which it is not able
to successfully build.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 recipes-extended/dpdk/dpdk.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-extended/dpdk/dpdk.inc b/recipes-extended/dpdk/dpdk.inc
index 3b997eb..9c9b397 100644
--- a/recipes-extended/dpdk/dpdk.inc
+++ b/recipes-extended/dpdk/dpdk.inc
@@ -1,6 +1,11 @@
 DESCRIPTION = "Intel(r) Data Plane Development Kit"
 HOMEPAGE = "http://dpdk.org"
 
+python () {
+    if not bb.utils.contains('KERNEL_FEATURES', 'features/intel-dpdk/intel-dpdk.scc', True, False, d):
+        raise bb.parse.SkipPackage("dpdk requires features/intel-dpdk/intel-dpdk.scc in KERNEL_FEATURES to build")
+}
+
 STABLE = ""
 BRANCH = "master"
 S = "${WORKDIR}/git"
-- 
2.7.4


