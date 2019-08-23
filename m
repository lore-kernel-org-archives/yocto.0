Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA336E00D38; Thu, 22 Aug 2019 18:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89DD0E00D33
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 18:59:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7N1x0Wr021326
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 18:59:36 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 18:59:06 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 Aug 2019 09:59:04 +0800
Message-ID: <1566525544-10898-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH] selinux-sandbox: add runtime dependency on python-core
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
X-List-Received-Date: Fri, 23 Aug 2019 01:59:47 -0000
Content-Type: text/plain

Fixes:
ERROR: QA Issue: /usr/share/sandbox/start contained in package selinux-sandbox requires /usr/bin/python,
    but no providers found in RDEPENDS_selinux-sandbox?  [file-rdeps]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-sandbox.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-sandbox.inc b/recipes-security/selinux/selinux-sandbox.inc
index 8616dd7..854640c 100644
--- a/recipes-security/selinux/selinux-sandbox.inc
+++ b/recipes-security/selinux/selinux-sandbox.inc
@@ -13,6 +13,7 @@ SRC_URI += "file://sandbox-de-bashify.patch \
 DEPENDS += "libcap-ng libselinux"
 
 RDEPENDS_${PN} += "\
+        python-core \
         python-math \
         python-shell \
         python-subprocess \
-- 
2.7.4


