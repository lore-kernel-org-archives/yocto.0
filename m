Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A612EE00927; Wed, 22 Jul 2015 07:56:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 540DCE008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 07:56:43 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 22 Jul 2015 16:56:39 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id BA0E128E77D;
	Wed, 22 Jul 2015 16:56:39 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Wed, 22 Jul 2015 16:56:38 +0200
Message-ID: <1437576998-16832-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] virtual/kernel: fix missing append for SRC_URI variable
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
X-List-Received-Date: Wed, 22 Jul 2015 14:56:45 -0000
Content-Type: text/plain

The problem this patch solves is the fact that the SRC_URI defined
in the recipe simply overwritten the content of the variable and the
cfg fragments were not made available for the configure step to apply
them.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
index 8fa27b5..56aa1e7 100644
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
@@ -1,7 +1,7 @@
 require recipes-kernel/linux/cgl-common.inc
 require recipes-kernel/linux/linux-qoriq.inc
 
-SRC_URI = "git://git.freescale.com/ppc/sdk/linux.git;nobranch=1 \
+SRC_URI += "git://git.freescale.com/ppc/sdk/linux.git;nobranch=1 \
     file://powerpc-Fix-64-bit-builds-with-binutils-2.24.patch \
     file://Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch \
 "
-- 
1.9.1


