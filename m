Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA321E00D8B; Wed,  9 Oct 2019 01:28:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C1BE00C4F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 01:28:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x998SoOP026132
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Oct 2019 01:28:50 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Wed, 9 Oct 2019 01:28:49 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 9 Oct 2019 16:28:47 +0800
Message-ID: <1570609727-34587-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH] README.build/image.inc: add missing openssl-fips to image
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
X-List-Received-Date: Wed, 09 Oct 2019 08:28:53 -0000
Content-Type: text/plain

For Yocto and WRLinux, openssl fips works only if installing
package openssl-fips

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.build                             | 1 +
 templates/feature/openssl-fips/image.inc | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 templates/feature/openssl-fips/image.inc

diff --git a/README.build b/README.build
index c65555e..50bd9a5 100644
--- a/README.build
+++ b/README.build
@@ -132,6 +132,7 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
     prebuilt tar archive.
 
     For Yocto, in your build directory, edit conf/local.conf, add:
+      IMAGE_INSTALL_append = " openssl-fips"
       OPENSSL_FIPS_ENABLED = "1"
       OPENSSL_FIPS_PREBUILT = "<path>"
 
diff --git a/templates/feature/openssl-fips/image.inc b/templates/feature/openssl-fips/image.inc
new file mode 100644
index 0000000..0d62e44
--- /dev/null
+++ b/templates/feature/openssl-fips/image.inc
@@ -0,0 +1 @@
+IMAGE_INSTALL += "openssl-fips"
-- 
2.7.4


