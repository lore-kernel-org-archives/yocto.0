Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABC9BE00E17; Thu, 14 Apr 2016 03:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DACFE00EA9
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:59:29 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CnBACRdw9X/0oKEKxehQgGuBqEDoYOggIBAQEBAQGBDYVBKIEWDgXKYgEBCCCGIYlWhQoFjVKKOYFUjDuJT4U/jymCZhmBTGqIfH4BAQE
X-IPAS-Result: A2CnBACRdw9X/0oKEKxehQgGuBqEDoYOggIBAQEBAQGBDYVBKIEWDgXKYgEBCCCGIYlWhQoFjVKKOYFUjDuJT4U/jymCZhmBTGqIfH4BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:59:41 +0200
Message-ID: <1460631581-16990-1-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 5/5] psplash: fix remaining unused-parameter warnings
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
X-List-Received-Date: Thu, 14 Apr 2016 10:59:40 -0000
Content-Type: text/plain

Define UNUSED macro for GCC's ((__unused__)) attribute and use it for
the remaining unused-parameter warnings. These unused parameters are
required due to the definition of the sighandler_t.

This fixes following unused-parameter warnings:

psplash.c: In function 'psplash_exit':
psplash.c:36:19: warning: unused parameter 'signum' [-Wunused-parameter]

psplash-console.c: In function 'vt_request':
psplash-console.c:27:17: warning: unused parameter 'sig'
[-Wunused-parameter]

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 psplash-console.c | 2 +-
 psplash.c         | 2 +-
 psplash.h         | 6 ++++++
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/psplash-console.c b/psplash-console.c
index 9b7dfb9..055f5b0 100644
--- a/psplash-console.c
+++ b/psplash-console.c
@@ -24,7 +24,7 @@ static int VTNumInitial   = -1;
 static int Visible        =  1;
 
 static void
-vt_request (int sig)
+vt_request (int UNUSED(sig))
 {
   DBG("mark, visible:%i", Visible);
 
diff --git a/psplash.c b/psplash.c
index c72d120..04d3d49 100644
--- a/psplash.c
+++ b/psplash.c
@@ -33,7 +33,7 @@
 	)
 
 void
-psplash_exit (int signum)
+psplash_exit (int UNUSED(signum))
 {
   DBG("mark");
 
diff --git a/psplash.h b/psplash.h
index 22d73a3..7b1298f 100644
--- a/psplash.h
+++ b/psplash.h
@@ -69,6 +69,12 @@ typedef int            bool;
 #define DBG(x, a...) do {} while (0)
 #endif
 
+#ifdef __GNUC__
+#  define UNUSED(x) UNUSED_ ## x __attribute__((__unused__))
+#else
+#  define UNUSED(x) UNUSED_ ## x
+#endif
+
 typedef struct PSplashFont
 {
     char *name;				/* Font name. */
-- 
2.1.4


