Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B658BE00E1E; Wed, 17 Jul 2019 11:36:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABBB8E00E1E
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 11:36:21 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6HIZilf030433
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Jul 2019 11:35:54 -0700
Received: from fidler.wrs.com (172.25.44.5) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 17 Jul 2019 11:35:33 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Wed, 17 Jul 2019 14:35:29 -0400
Message-ID: <20190717183530.24893-3-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH 3/4] tests: fix clang warnings.
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
X-List-Received-Date: Wed, 17 Jul 2019 18:36:33 -0000
Content-Type: text/plain

Make tests build using: clang -Weverything
There are a few warnings that remain that are not
variable casting or macro fixes.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 tests/main.c  |  5 +----
 tests/utils.c | 19 +++++++++----------
 2 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/tests/main.c b/tests/main.c
index c3b4da5..e1a8b69 100644
--- a/tests/main.c
+++ b/tests/main.c
@@ -62,13 +62,10 @@ main(int argc, char *argv[])
 				opts_directory = strdup(optarg);
 			break;
 			case 'h':
-				print_usage(stdout, argv[0]);
-				exit(0);
-			break;
+				/* fall though !! */
 			default:
 				print_usage(stdout, argv[0]);
 				exit(1);
-			break;
 		}
 	}
 
diff --git a/tests/utils.c b/tests/utils.c
index 3ba64d6..571d488 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -33,7 +33,6 @@
 #include "utils.h"
 
 #define PRINT_PTEST_BUF_SIZE 8192
-#define PRINT_PTEST_MAX_LINE 512
 
 extern char *opts_directory;
 
@@ -247,15 +246,15 @@ END_TEST
 static int
 filecmp(FILE *fp1, FILE *fp2)
 {
-    char f1, f2;
-    while (1) {
-			  int end = 0;
-        if ((f1 = getc(fp1)) == EOF) end++;
-        if ((f2 = getc(fp2)) == EOF) end++;
-
-				if (end == 2) return 0;
-				if (end == 1) return 1;
-        if (f1 != f2) return 2;
+	int f1, f2;
+	while (1) {
+		int end = 0;
+		if ((f1 = getc(fp1)) == EOF) end++;
+		if ((f2 = getc(fp2)) == EOF) end++;
+
+		if (end == 2) return 0;
+		if (end == 1) return 1;
+		if (f1 != f2) return 2;
     }
 }
 
-- 
2.17.0


