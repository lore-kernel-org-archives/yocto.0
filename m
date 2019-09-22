Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A46E00D38; Sun, 22 Sep 2019 07:58:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D967E0074B
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:58:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MEwdh3007712
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:58:40 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:39 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:57:00 +0800
Message-ID: <1569164228-26934-8-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 7/15] kernel: workaround alg self-tests failure in fips mode
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
X-List-Received-Date: Sun, 22 Sep 2019 14:58:42 -0000
Content-Type: text/plain

While kernel enable fips mode, it start alg self-test, and there is
a kernel panic at ecdh-generic
...
[    0.311313] alg: ecdh: test failed on vector 2, err=-14
[    0.311898] Kernel panic - not syncing: alg: self-tests for ecdh-generic (ecdh) failed in fips mode!
...

Continue without Jitter RNG for fips to workaround alg self-tests failure,
after applying the fix:
...
[    0.306633] DRBG: Continuing without Jitter RNG
[    0.310550] alg: self-tests for ecdh-generic (ecdh) passed
...

Refer: https://lore.kernel.org/patchwork/patch/568693/

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-fips-continuing-without-Jitter-RNG.patch  | 34 ++++++++++++++++++++++
 recipes-kernel/linux/files/crypto_fips.scc         |  1 +
 2 files changed, 35 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-fips-continuing-without-Jitter-RNG.patch

diff --git a/recipes-kernel/linux/files/0001-fips-continuing-without-Jitter-RNG.patch b/recipes-kernel/linux/files/0001-fips-continuing-without-Jitter-RNG.patch
new file mode 100644
index 0000000..140d6a1
--- /dev/null
+++ b/recipes-kernel/linux/files/0001-fips-continuing-without-Jitter-RNG.patch
@@ -0,0 +1,34 @@
+From fd82384acc0405ead38ea0d9712c9a1b57913c35 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Sun, 22 Sep 2019 10:57:02 +0800
+Subject: [PATCH] fips: continuing without Jitter RNG
+
+Continue without Jitter RNG for fips to workaround alg self-tests failure
+...
+[    0.311313] alg: ecdh: test failed on vector 2, err=-14
+[    0.311898] Kernel panic - not syncing: alg: self-tests for ecdh-generic (ecdh) failed in fips mode!
+...
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ crypto/drbg.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/crypto/drbg.c b/crypto/drbg.c
+index b6929eb..d677da5 100644
+--- a/crypto/drbg.c
++++ b/crypto/drbg.c
+@@ -1577,7 +1577,7 @@ static int drbg_instantiate(struct drbg_state *drbg, struct drbg_string *pers,
+ 		if (IS_ERR(drbg->jent)) {
+ 			ret = PTR_ERR(drbg->jent);
+ 			drbg->jent = NULL;
+-			if (fips_enabled || ret != -ENOENT)
++			if (ret != -ENOENT)
+ 				goto free_everything;
+ 			pr_info("DRBG: Continuing without Jitter RNG\n");
+ 		}
+-- 
+2.7.4
+
diff --git a/recipes-kernel/linux/files/crypto_fips.scc b/recipes-kernel/linux/files/crypto_fips.scc
index f64380a..85f8f44 100644
--- a/recipes-kernel/linux/files/crypto_fips.scc
+++ b/recipes-kernel/linux/files/crypto_fips.scc
@@ -1 +1,2 @@
 kconf non-hardware crypto_fips.cfg
+patch 0001-fips-continuing-without-Jitter-RNG.patch
-- 
2.7.4


