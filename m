Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0ABE00D4E; Sun, 22 Sep 2019 07:59:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6709BE00D46
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:58:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8MEwNS7027458
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:58:33 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:12 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:56:59 +0800
Message-ID: <1569164228-26934-7-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 6/15] kernel: enable fips mode
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
X-List-Received-Date: Sun, 22 Sep 2019 14:59:00 -0000
Content-Type: text/plain

A kernel compiled with CONFIG_CRYPTO_FIPS=y can be booted in fips mode
by specifying fips=1 as kernel parameter. [1][2]

/proc/sys/crypto/fips_enabled, that is presumably used by the Red Hat
modified version of OpenSSL.[3]

[1] https://www.linux.org/docs/man8/fipscheck.html
[2] https://cateee.net/lkddb/web-lkddb/CRYPTO_FIPS.html
[3] https://mta.openssl.org/pipermail/openssl-users/2017-May/005840.html

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/fips_kernel.bbclass                | 4 ++++
 conf/layer.conf                            | 4 ++++
 recipes-kernel/linux/files/crypto_fips.cfg | 3 +++
 recipes-kernel/linux/files/crypto_fips.scc | 1 +
 4 files changed, 12 insertions(+)
 create mode 100644 classes/fips_kernel.bbclass
 create mode 100644 recipes-kernel/linux/files/crypto_fips.cfg
 create mode 100644 recipes-kernel/linux/files/crypto_fips.scc

diff --git a/classes/fips_kernel.bbclass b/classes/fips_kernel.bbclass
new file mode 100644
index 0000000..064088f
--- /dev/null
+++ b/classes/fips_kernel.bbclass
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${LAYER_PATH_meta-openssl-one-zero-two-fips}/recipes-kernel/linux/files/:"
+SRC_URI_append = " \
+    file://crypto_fips.scc \
+"
diff --git a/conf/layer.conf b/conf/layer.conf
index 27a872e..b64c036 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,3 +18,7 @@ LAYERDEPENDS_meta-openssl-one-zero-two-fips = " \
         meta-openssl-one-zero-two \
         wr-template \
 "
+
+LAYER_PATH_meta-openssl-one-zero-two-fips = "${LAYERDIR}"
+
+KERNEL_CLASSES_append = " ${@bb.utils.contains('OPENSSL_FIPS_ENABLED', '1', ' fips_kernel', '',d)}"
diff --git a/recipes-kernel/linux/files/crypto_fips.cfg b/recipes-kernel/linux/files/crypto_fips.cfg
new file mode 100644
index 0000000..cffdc02
--- /dev/null
+++ b/recipes-kernel/linux/files/crypto_fips.cfg
@@ -0,0 +1,3 @@
+CONFIG_CRYPTO_FIPS=y
+CONFIG_MODULE_SIG=y
+# CONFIG_CRYPTO_MANAGER_DISABLE_TESTS is not set
diff --git a/recipes-kernel/linux/files/crypto_fips.scc b/recipes-kernel/linux/files/crypto_fips.scc
new file mode 100644
index 0000000..f64380a
--- /dev/null
+++ b/recipes-kernel/linux/files/crypto_fips.scc
@@ -0,0 +1 @@
+kconf non-hardware crypto_fips.cfg
-- 
2.7.4


