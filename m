Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1798E00D47; Sun, 22 Sep 2019 07:58:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6036E0074B
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:58:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MEwfL2020746
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:58:41 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:41 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:57:01 +0800
Message-ID: <1569164228-26934-9-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 8/15] openssh: conditional enable fips mode
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
X-List-Received-Date: Sun, 22 Sep 2019 14:58:44 -0000
Content-Type: text/plain

Enable fips mode according to the existence of "/etc/system-fips"

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch        | 63 ++++++++++++++++++++++
 recipes-connectivity/openssh/openssh_fips.inc      |  1 +
 2 files changed, 64 insertions(+)
 create mode 100644 recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
new file mode 100644
index 0000000..b47e184
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
@@ -0,0 +1,63 @@
+From ea3e5eceab28ad2c00d438efbcea2be37a1b2969 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Sun, 22 Sep 2019 14:31:51 +0800
+Subject: [PATCH] conditional enable fips mode
+
+Insert ssh_enable_fips_mode to ssh_malloc_init where each main app will invoke,
+enable fips mode according to the existence of "/etc/system-fips"
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ xmalloc.c | 24 ++++++++++++++++++++++++
+ 1 file changed, 24 insertions(+)
+
+diff --git a/xmalloc.c b/xmalloc.c
+index 5cc0310..0218ccd 100644
+--- a/xmalloc.c
++++ b/xmalloc.c
+@@ -23,12 +23,20 @@
+ #include <stdlib.h>
+ #include <string.h>
+ 
++#include <openssl/err.h>
++#include <openssl/crypto.h>
++#include <unistd.h>
++
+ #include "xmalloc.h"
+ #include "log.h"
+ 
++void ssh_enable_fips_mode(void);
++
+ void
+ ssh_malloc_init(void)
+ {
++	ssh_enable_fips_mode();
++
+ #if defined(__OpenBSD__)
+ 	extern char *malloc_options;
+ 
+@@ -116,3 +124,19 @@ xasprintf(char **ret, const char *fmt, ...)
+ 
+ 	return (i);
+ }
++
++void
++ssh_enable_fips_mode(void)
++{
++    if (access("/etc/system-fips", F_OK) == 0) {
++        if (!FIPS_mode_set(1)) {
++            /* make sure the error stack is available for some hint as
++             * to why this operation failed
++             */
++            ERR_load_crypto_strings();
++            ERR_print_errors_fp(stdout);
++            fatal("FIPS_mode_set(): failed to enter FIPS mode!\n");
++            exit(1);
++        }
++    }
++}
+-- 
+2.7.4
+
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index df84c39..33a84c9 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -5,6 +5,7 @@ DEPENDS += " \
 "
 SRC_URI += " \
     file://0001-openssh-8.0p1-fips.patch \
+    file://0001-conditional-enable-fips-mode.patch \
 "
 
 do_install_append() {
-- 
2.7.4


