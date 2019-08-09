Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2E7EE00DE1; Thu,  8 Aug 2019 18:19:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C20E00D89
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 18:19:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x791JPmW015344
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Aug 2019 18:19:26 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 8 Aug 2019 18:19:25 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Aug 2019 09:19:23 +0800
Message-ID: <1565313563-24482-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH] xmlsec1: upgrade 1.2.27 -> 1.2.28
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
X-List-Received-Date: Fri, 09 Aug 2019 01:19:27 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/xmlsec1/{xmlsec1_1.2.27.bb => xmlsec1_1.2.28.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/xmlsec1/{xmlsec1_1.2.27.bb => xmlsec1_1.2.28.bb} (93%)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb b/recipes-security/xmlsec1/xmlsec1_1.2.28.bb
similarity index 93%
rename from recipes-security/xmlsec1/xmlsec1_1.2.27.bb
rename to recipes-security/xmlsec1/xmlsec1_1.2.28.bb
index eac8d6b..0a4c56a 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.28.bb
@@ -20,8 +20,8 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
     file://run-ptest \
     "
 
-SRC_URI[md5sum] = "508bee7e4f1b99f2d50aaa7d38ede56e"
-SRC_URI[sha256sum] = "97d756bad8e92588e6997d2227797eaa900d05e34a426829b149f65d87118eb6"
+SRC_URI[md5sum] = "69b8d95c009a404462e19f335e650241"
+SRC_URI[sha256sum] = "13eec4811ea30e3f0e16a734d1dbf7f9d246a71d540b48d143a07b489f6222d4"
 
 inherit autotools-brokensep ptest pkgconfig
 
-- 
2.7.4


