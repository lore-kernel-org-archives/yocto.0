Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24CF5E00D4F; Mon, 16 Sep 2019 23:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95351E00D33
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 23:38:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8H6bLtm032533
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Sep 2019 23:37:43 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Mon, 16 Sep 2019 23:37:12 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2019 14:37:10 +0800
Message-ID: <1568702230-38966-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
References: <1568687654-21734-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH] README.build: add steps to include openssl102
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
X-List-Received-Date: Tue, 17 Sep 2019 06:38:13 -0000
Content-Type: text/plain

The openssl fips only works with old openssl(<=1.0.2),
update steps to clarify it for Yocto and Wind River Linux

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.build | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/README.build b/README.build
index bc8fcf3..3da03da 100644
--- a/README.build
+++ b/README.build
@@ -40,13 +40,15 @@ The easiest way to do this with Yocto is include this layer [1]
 and meta-openssl102 [2], and install packagegroup-core-buildessential
 to image [3]
 
-[1] git://git.yoctoproject.org/meta-openssl102
-[2] git://git.yoctoproject.org/meta-openssl102-fips
+[1] git://git.yoctoproject.org/meta-openssl102-fips
+[2] git://git.yoctoproject.org/meta-openssl102
+    Manually set 1.0.2% to openssl preferred version
+    echo "PREFERRED_VERSION_openssl = '1.0.2%'" >> conf/local.conf
 [3] echo "IMAGE_INSTALL += 'packagegroup-core-buildessential'" >> conf/local.conf
 
 The easiest way to do this with Wind River Linux is include:
 
-    --templates features/target-toolchain --layers meta-openssl102-fips
+    --templates features/target-toolchain --templates feature/openssl102 --layers meta-openssl102-fips
 
     Note: do not include template feature/openssl-fips
 
-- 
2.7.4


