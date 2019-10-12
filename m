Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D5D3E00CB9; Sat, 12 Oct 2019 01:17:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9EFE00A4C
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 01:17:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9C8HCOM004956
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 12 Oct 2019 01:17:13 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sat, 12 Oct 2019 01:17:12 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Date: Sat, 12 Oct 2019 16:17:08 +0800
Message-ID: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 1/3] fix typo: openssl-fips -> openssl-fips-dev
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
X-List-Received-Date: Sat, 12 Oct 2019 08:17:17 -0000
Content-Type: text/plain

The working fips package is openssl-fips-dev rather than openssl-fips.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.build                             | 2 +-
 templates/feature/openssl-fips/image.inc | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/README.build b/README.build
index 50bd9a5..b4e8f2e 100644
--- a/README.build
+++ b/README.build
@@ -132,7 +132,7 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
     prebuilt tar archive.
 
     For Yocto, in your build directory, edit conf/local.conf, add:
-      IMAGE_INSTALL_append = " openssl-fips"
+      IMAGE_INSTALL_append = " openssl-fips-dev"
       OPENSSL_FIPS_ENABLED = "1"
       OPENSSL_FIPS_PREBUILT = "<path>"
 
diff --git a/templates/feature/openssl-fips/image.inc b/templates/feature/openssl-fips/image.inc
index 0d62e44..3616432 100644
--- a/templates/feature/openssl-fips/image.inc
+++ b/templates/feature/openssl-fips/image.inc
@@ -1 +1 @@
-IMAGE_INSTALL += "openssl-fips"
+IMAGE_INSTALL += "openssl-fips-dev"
-- 
2.7.4


