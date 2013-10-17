Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24951E016B5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 15:16:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9HMGceZ002539
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 15:16:38 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 17 Oct 2013 15:16:38 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
Date: Thu, 17 Oct 2013 15:11:25 -0700
Message-ID: <1382047885-13770-1-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Subject: [PATCH] perf: fix bench numa compilation
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
X-List-Received-Date: Thu, 17 Oct 2013 22:16:39 -0000
Content-Type: text/plain

From: Riccardo Magliocchetti <riccardo.magliocchetti@gmail.com>

Taken from: https://lkml.org/lkml/2013/6/20/80

Fix the following errors on gcc 4.8.1 / x86:

bench/numa.c: In function worker_thread:
bench/numa.c:1113:20: error: comparison between signed and unsigned integer expressions [-Werror=sign-compare]
    if (diff.tv_sec >= g->p.nr_secs) {
                    ^
bench/numa.c:1161:6: error: format %lx expects argument of type long unsigned int, but argument 5 has type u64 [-Werror=format=]
      process_nr, thread_nr, runtime_ns_max / bytes_done, val);
      ^
Signed-off-by: Riccardo Magliocchetti <riccardo.magliocchetti@gmail.com>
Signed-off-by: Yang Shi <yang.shi@windriver.com>
---
 tools/perf/bench/numa.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/bench/numa.c b/tools/perf/bench/numa.c
index 30d1c32..f5c0834 100644
--- a/tools/perf/bench/numa.c
+++ b/tools/perf/bench/numa.c
@@ -21,6 +21,7 @@
 #include <string.h>
 #include <unistd.h>
 #include <pthread.h>
+#include <inttypes.h>
 #include <sys/mman.h>
 #include <sys/time.h>
 #include <sys/wait.h>
@@ -1110,7 +1111,7 @@ static void *worker_thread(void *__tdata)
 		/* Check whether our max runtime timed out: */
 		if (g->p.nr_secs) {
 			timersub(&stop, &start0, &diff);
-			if (diff.tv_sec >= g->p.nr_secs) {
+			if (diff.tv_sec >= (long int)g->p.nr_secs) {
 				g->stop_work = true;
 				break;
 			}
@@ -1157,7 +1158,7 @@ static void *worker_thread(void *__tdata)
 			runtime_ns_max += diff.tv_usec * 1000;
 
 			if (details >= 0) {
-				printf(" #%2d / %2d: %14.2lf nsecs/op [val: %016lx]\n",
+				printf(" #%2d / %2d: %14.2lf nsecs/op [val: %016"PRIu64"x]\n",
 					process_nr, thread_nr, runtime_ns_max / bytes_done, val);
 			}
 			fflush(stdout);
-- 
1.8.3.4


