Return-Path: <Li.Zhou@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85BDCE00DB1; Thu, 22 Aug 2019 02:54:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 476AEE00DA3
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 02:54:24 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7M9sNPR004247
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 02:54:24 -0700 (PDT)
Received: from pek-lpggp2.wrs.com (128.224.153.75) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 02:54:22 -0700
From: Li Zhou <li.zhou@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Aug 2019 17:54:09 +0800
Message-ID: <1566467649-80835-1-git-send-email-li.zhou@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.153.75]
Subject: [meta-cgl][PATCH] kernel: fix the recipe that changes signatures
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
X-List-Received-Date: Thu, 22 Aug 2019 09:54:27 -0000
Content-Type: text/plain

When test using "yocto-check-layer-wrapper .../meta-cgl
--dependency xxx", error occurs:
FAIL: test_signatures (common.CommonCheckLayer)
   linux-yocto:do_fetch: 84ac07191eb371845b8773179913d4f1 -> c36d7d453aca36c5e8dd30644a2e9963
...
      basehash changed from 3a89fab4c77b51a9ef3ece5eb1270759 to 1e9697c5c2a85520ea36ec5845125f8e
      Variable SRC_URI value changed:...

test_signatures are tests to be sure that BSP and DISTRO layers do not
come with recipes that change signatures, so here remove the NULL
SRC_URI operation.

Signed-off-by: Li Zhou <li.zhou@windriver.com>
---
 meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 9d1735f..2b9c157 100644
--- a/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -1,3 +1 @@
 require cgl-common.inc
-
-SRC_URI += ""
-- 
1.9.1


