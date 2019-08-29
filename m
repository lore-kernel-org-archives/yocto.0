Return-Path: <yuanc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3163CE00DF0; Thu, 29 Aug 2019 00:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65E2AE00AB4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 00:06:34 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.64,442,1559491200"; d="scan'208";a="74512526"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 29 Aug 2019 15:06:29 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 863854CE0882
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 15:06:25 +0800 (CST)
Received: from localhost.localdomain (10.167.225.21) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Thu, 29 Aug 2019 15:06:27 +0800
From: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Aug 2019 16:06:11 +0900
Message-ID: <20190829070611.15125-1-yuanc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.167.225.21]
X-yoursite-MailScanner-ID: 863854CE0882.AEFA7
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: yuanc.fnst@cn.fujitsu.com
Subject: [meta-security] [PATCH] checksec: upgrade 1.11.1 -> 2.1.0
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
X-List-Received-Date: Thu, 29 Aug 2019 07:06:35 -0000
Content-Type: text/plain

Signed-off-by: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
---
 .../checksec/{checksec_1.11.1.bb => checksec_2.1.0.bb}          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/checksec/{checksec_1.11.1.bb => checksec_2.1.0.bb} (91%)

diff --git a/recipes-security/checksec/checksec_1.11.1.bb b/recipes-security/checksec/checksec_2.1.0.bb
similarity index 91%
rename from recipes-security/checksec/checksec_1.11.1.bb
rename to recipes-security/checksec/checksec_2.1.0.bb
index 835dffc..5c6528e 100644
--- a/recipes-security/checksec/checksec_1.11.1.bb
+++ b/recipes-security/checksec/checksec_2.1.0.bb
@@ -6,7 +6,7 @@ HOMEPAGE="https://github.com/slimm609/checksec.sh"
 
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=93fddcca19f6c897871f9b5f9a035f4a"
 
-SRCREV = "3c15cb89641c700096fdec0c1904a0cf9b83c5e2"
+SRCREV = "04582bad41589ad479ca8b1f0170ed317475b5a5"
 SRC_URI = "git://github.com/slimm609/checksec.sh"
 
 S = "${WORKDIR}/git"
-- 
2.17.1




