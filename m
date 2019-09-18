Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 759F7E00D8C; Wed, 18 Sep 2019 08:54:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 364 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Sep 2019 08:54:29 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25C7DE00D8A
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 08:54:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id C4E17184CA
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:24 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id ifCuOZnLXNrS for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:23 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 9BE25184C6
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:22 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E805C1A07D
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:21 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DD0811A077
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:21 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:21 +0200 (CEST)
Received: from saur.se.axis.com (saur.se.axis.com [10.92.3.10])
	by seth.se.axis.com (Postfix) with ESMTP id D12502FA2
	for <yocto@lists.yoctoproject.org>;
	Wed, 18 Sep 2019 17:48:21 +0200 (CEST)
Received: from saur.se.axis.com (localhost [127.0.0.1])
	by saur.se.axis.com (8.15.2/8.15.2) with ESMTPS id x8IFmL7A005472
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2019 17:48:21 +0200
Received: (from pkj@localhost)
	by saur.se.axis.com (8.15.2/8.15.2/Submit) id x8IFmLJR005471
	for yocto@lists.yoctoproject.org; Wed, 18 Sep 2019 17:48:21 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 18 Sep 2019 17:48:18 +0200
Message-Id: <20190918154818.5425-1-pkj@axis.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][master][warrior][PATCH] tar: Make it build with GCC 8.3
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
X-List-Received-Date: Wed, 18 Sep 2019 15:54:32 -0000
Content-Transfer-Encoding: 8bit

From: Joakim Roubert <joakimr@axis.com>

This avoids the following error:

  lib/argp-parse.c: In function 'argp_version_parser':
  lib/argp-parse.c:158:2: error: format not a string literal and no
  format arguments [-Werror=format-security]
    __argp_error (state, dgettext (state->root_argp->argp_domain,
    ^~~~~~~~~~~~

Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 ...-lib-argp-parse.c-Fix-compiler-error.patch | 34 +++++++++++++++++++
 recipes-extended/tar/tar_1.17.bb              |  1 +
 2 files changed, 35 insertions(+)
 create mode 100644 recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch

diff --git a/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch b/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch
new file mode 100644
index 0000000..3de9fd1
--- /dev/null
+++ b/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch
@@ -0,0 +1,34 @@
+From 153c0aab9e2a4a97b1a2c6b530594cd9a211e9ec Mon Sep 17 00:00:00 2001
+From: Joakim Roubert <joakimr@axis.com>
+Date: Thu, 6 Dec 2018 10:33:14 +0100
+Subject: [PATCH] lib/argp-parse.c: Fix compiler error
+
+This avoids the following error:
+
+  lib/argp-parse.c: In function 'argp_version_parser':
+  lib/argp-parse.c:158:2: error: format not a string literal and no
+  format arguments [-Werror=format-security]
+    __argp_error (state, dgettext (state->root_argp->argp_domain,
+    ^~~~~~~~~~~~
+
+Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
+---
+ lib/argp-parse.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/argp-parse.c b/lib/argp-parse.c
+index a7de729..09511ba 100644
+--- a/lib/argp-parse.c
++++ b/lib/argp-parse.c
+@@ -155,7 +155,7 @@ argp_version_parser (int key, char *arg, struct argp_state *state)
+       else if (argp_program_version)
+ 	fprintf (state->out_stream, "%s\n", argp_program_version);
+       else
+-	__argp_error (state, dgettext (state->root_argp->argp_domain,
++	__argp_error (state, "%s", dgettext (state->root_argp->argp_domain,
+ 				       "(PROGRAM ERROR) No version known!?"));
+       if (! (state->flags & ARGP_NO_EXIT))
+ 	exit (0);
+-- 
+2.11.0
+
diff --git a/recipes-extended/tar/tar_1.17.bb b/recipes-extended/tar/tar_1.17.bb
index b9ca206..1ee5e34 100644
--- a/recipes-extended/tar/tar_1.17.bb
+++ b/recipes-extended/tar/tar_1.17.bb
@@ -8,6 +8,7 @@ PR = "r3"
 SRC_URI += "file://m4extensions.patch \
     file://gcc43build.patch \
     file://avoid_heap_overflow.patch \
+    file://0001-lib-argp-parse.c-Fix-compiler-error.patch \
     "
 
 SRC_URI[md5sum] = "c6c4f1c075dbf0f75c29737faa58f290"
-- 
2.21.0


