Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27108E00C05; Tue, 23 Apr 2019 19:04:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C383CE00B81
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 19:04:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3O23a1a020541
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 19:03:52 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 23 Apr 2019 19:03:28 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 24 Apr 2019 10:03:24 +0800
Message-ID: <1556071405-32093-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH 1/2] meta-tpm/conf/layer.conf: update layer dependencies
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
X-List-Received-Date: Wed, 24 Apr 2019 02:04:03 -0000
Content-Type: text/plain

Add openembedded-layer to layer dependencies.

Fix the following build errors:

ERROR: Required build target 'tpm2-pkcs11' has no buildable providers.
Missing or unbuildable dependency chain was: ['tpm2-pkcs11', 'dstat']

ERROR: Required build target 'cryptsetup-tpm-incubator' has no buildable providers.
Missing or unbuildable dependency chain was: ['cryptsetup-tpm-incubator', 'libdevmapper']

ERROR: Required build target 'tpm2-totp' has no buildable providers.
Missing or unbuildable dependency chain was: ['tpm2-totp', 'qrencode']

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-tpm/conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 15a2bef..bf9a76e 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -12,4 +12,5 @@ LAYERSERIES_COMPAT_tpm-layer = "thud warrior"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
+    openembedded-layer \
 "
-- 
2.7.4


