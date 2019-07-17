Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8719E00D83; Wed, 17 Jul 2019 11:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 913A8E00A5C
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 11:35:34 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x6HIZXhV004939
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Jul 2019 11:35:33 -0700 (PDT)
Received: from fidler.wrs.com (172.25.44.5) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 17 Jul 2019 11:35:32 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Wed, 17 Jul 2019 14:35:28 -0400
Message-ID: <20190717183530.24893-2-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH 2/4] main code: fix clang warnings
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
X-List-Received-Date: Wed, 17 Jul 2019 18:35:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Fix basic errors found when building with the clang compiler
with the option -Weverything. There are a few warnings that remain
that are not variable casting, macro fixes, or similarily simple
changes.

Makefile: add -lutil for 'check' builds for clang/gcc
builds.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 Makefile     |  4 +++-
 main.c       |  9 ++++-----
 ptest_list.c | 17 +++++++++++++++--
 ptest_list.h | 29 ++++++++++++++++++++++-------
 utils.c      | 38 +++++++++++++++++++++-----------------
 utils.h      |  4 ++--
 6 files changed, 67 insertions(+), 34 deletions(-)

diff --git a/Makefile b/Makefile
index 439eb79..c92261b 100644
--- a/Makefile
+++ b/Makefile
@@ -3,6 +3,8 @@ MEMCHECK=$(shell echo $$MEMCHECK)
 
 CC=cc
 CFLAGS=-std=gnu99 -pedantic -Wall -Werror -I .
+# CC=clang
+# CFLAGS=-std=gnu99 -Weverything -I .
 ifeq ($(RELEASE), 1)
 CFLAGS+= -O2 -DRELEASE
 else
@@ -22,7 +24,7 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c tests/utils.c $(BASE_SOURCES)
 TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
 TEST_EXECUTABLE=ptest-runner-test
 TEST_LDFLAGS=-lm -lrt -lpthread
-TEST_LIBSTATIC=-lcheck -lsubunit
+TEST_LIBSTATIC=-lcheck -lsubunit -lutil
 
 TEST_DATA=$(shell echo `pwd`/tests/data)
 
diff --git a/main.c b/main.c
index 83cd8f2..01d60f7 100644
--- a/main.c
+++ b/main.c
@@ -93,7 +93,7 @@ main(int argc, char *argv[])
 				}
 
 
-				opts.exclude = malloc(ptest_exclude_num * sizeof(char));
+				opts.exclude = malloc((size_t)ptest_exclude_num * sizeof(char));
 				CHECK_ALLOCATION(opts.exclude, 1, 1);
 
 				i = 0;
@@ -116,7 +116,7 @@ main(int argc, char *argv[])
 			case 'h':
 				print_usage(stdout, argv[0]);
 				exit(0);
-			break;
+			/* break; not needed, not reachable after exit() */
 			case 'x':
 				free(opts.xml_filename);
 				opts.xml_filename = strdup(optarg);
@@ -125,13 +125,12 @@ main(int argc, char *argv[])
 			default:
 				print_usage(stdout, argv[0]);
 				exit(1);
-			break;
 		}
 	}
 
 	ptest_num = argc - optind;
 	if (ptest_num > 0) {
-		size_t size = ptest_num * sizeof(char *);
+		size_t size = sizeof(char *) * (unsigned int) ptest_num;
 		opts.ptests = calloc(1, size);
 		CHECK_ALLOCATION(opts.ptests, size, 1);
 
@@ -163,7 +162,7 @@ main(int argc, char *argv[])
 		}
 
 		run = filter_ptests(head, opts.ptests, ptest_num);
-		CHECK_ALLOCATION(run, ptest_num, 1);
+		CHECK_ALLOCATION(run, (size_t) ptest_num, 1);
 		ptest_list_free_all(head);
 	}
 
diff --git a/ptest_list.c b/ptest_list.c
index d48349f..a5632f8 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -29,8 +29,21 @@
 #include "utils.h"
 #include "ptest_list.h"
 
-#define VALIDATE_PTR_RINT(ptr) if (ptr == NULL) { errno = EINVAL; return -1; } 
-#define VALIDATE_PTR_RNULL(ptr) if (ptr == NULL) { errno = EINVAL; return NULL; } 
+#define VALIDATE_PTR_RINT(ptr) \
+	do { \
+		if (ptr == NULL) { \
+			errno = EINVAL; \
+			return -1; \
+		} \
+	} while (0)
+
+#define VALIDATE_PTR_RNULL(ptr) \
+	do { \
+		if (ptr == NULL) { \
+			errno = EINVAL; \
+			return NULL; \
+		} \
+	} while (0)
 
 struct ptest_list *
 ptest_list_alloc()
diff --git a/ptest_list.h b/ptest_list.h
index b4b1ac6..e1caffc 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -21,13 +21,28 @@
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
 
-#ifndef _PTEST_RUNNER_LIST_H_
-#define _PTEST_RUNNER_LIST_H_
+#ifndef PTEST_RUNNER_LIST_H
+#define PTEST_RUNNER_LIST_H
 
-#define PTEST_LIST_FREE_CLEAN(x) { ptest_list_free(x); x = NULL; }
-#define PTEST_LIST_FREE_ALL_CLEAN(x) { ptest_list_free_all(x); x = NULL; }
+#define FLUSH_PRINTF(...) \
+    do { \
+        printf(__VA_ARGS__); \
+        fflush(stdout); \
+    } while (0)
 
-#define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p != NULL; p = p->next) { 
+#define PTEST_LIST_FREE_CLEAN(x) \
+	do { \
+		ptest_list_free(x); \
+		x = NULL; \
+	} while (0)
+
+#define PTEST_LIST_FREE_ALL_CLEAN(x) \
+	do { \
+		ptest_list_free_all(x); \
+		x = NULL; \
+	} while (0)
+
+#define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p != NULL; p = p->next) {
 #define PTEST_LIST_ITERATE_END }
 
 #include <sys/stat.h>
@@ -40,7 +55,7 @@ struct ptest_list {
 	struct ptest_list *prev;
 };
 
-extern struct ptest_list *ptest_list_alloc();
+extern struct ptest_list *ptest_list_alloc(void);
 extern void ptest_list_free(struct ptest_list *);
 extern int ptest_list_free_all(struct ptest_list *);
 
@@ -50,4 +65,4 @@ extern struct ptest_list *ptest_list_search_by_file(struct ptest_list *, char *,
 extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, char *);
 extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *, int);
 
-#endif // _PTEST_RUNNER_LIST_H_
+#endif // PTEST_RUNNER_LIST_H
diff --git a/utils.c b/utils.c
index f11ce39..92654bf 100644
--- a/utils.c
+++ b/utils.c
@@ -22,7 +22,7 @@
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
 
-#define _GNU_SOURCE 
+#define _GNU_SOURCE
 
 #include <stdio.h>
 
@@ -84,7 +84,7 @@ get_available_ptests(const char *dir)
 	int n, i;
 	struct dirent **namelist;
 	int fail;
-	int saved_errno;
+	int saved_errno = -1; /* Initalize to invalid errno. */
 
 	do
 	{
@@ -190,9 +190,9 @@ print_ptests(struct ptest_list *head, FILE *fp)
 	} else {
 		struct ptest_list *n;
 		fprintf(fp, PRINT_PTESTS_AVAILABLE);
-		PTEST_LIST_ITERATE_START(head, n);
+		PTEST_LIST_ITERATE_START(head, n)
 			fprintf(fp, "%s\t%s\n", n->ptest, n->run_ptest);
-		PTEST_LIST_ITERATE_END;
+		PTEST_LIST_ITERATE_END
 		return 0;
 	}
 }
@@ -201,7 +201,7 @@ struct ptest_list *
 filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
 {
 	struct ptest_list *head_new = NULL, *n;
-	int fail = 0, i, saved_errno;
+	int fail = 0, i, saved_errno = 0;
 
 	do {
 		if (head == NULL || ptests == NULL || ptest_num <= 0) {
@@ -260,7 +260,7 @@ close_fds(void)
 	getrlimit(RLIMIT_NOFILE, &curr_lim);
 
 	int fd;
-	for (fd=3; fd < curr_lim.rlim_cur; fd++) {
+	for (fd=3; fd < (int)curr_lim.rlim_cur; fd++) {
 		(void) close(fd);
    	}
 }
@@ -277,10 +277,14 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
 	dup2(fd_stdout, STDERR_FILENO);
+
+	/* since it isn't use by the child, close(fd_stderr) ? */
+	close(fd_stderr); /* try using to see if this fixes bash run-read. rwm todo */
 	close_fds();
+
 	execv(run_ptest, argv);
 
-	exit(1);
+	/* exit(1); not needed? */
 }
 
 static inline int
@@ -293,7 +297,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 	int looping = 1;
 	int r;
 
-	int status;
+	int status = -1;
 	int waitflags;
 
 	pfds[0].fd = fds[0];
@@ -332,13 +336,13 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 			if (pfds[0].revents != 0) {
 				while ((n = read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, n, 1, fps[0]);
+					fwrite(buf, (size_t)n, 1, fps[0]);
 			}
 
 			if (pfds[1].revents != 0) {
 				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
 					fflush(fps[0]);
-					fwrite(buf, n, 1, fps[1]);
+					fwrite(buf, (size_t)n, 1, fps[1]);
 					fflush(fps[1]);
 				}
 			}
@@ -376,7 +380,7 @@ setup_slave_pty(FILE *fp) {
 		/* If the tty group does not exist, don't change the
 		 * group on the slave pty, only the owner
 		 */
-		gid = -1;
+		gid = (gid_t)-1;
 	}
 
 	/* chown/chmod the corresponding pty, if possible.
@@ -403,7 +407,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 		const char *progname, FILE *fp, FILE *fp_stderr)
 {
 	int rc = 0;
-	FILE *xh;
+	FILE *xh = NULL;
 
 	struct ptest_list *p;
 	char stime[GET_STIME_BUF_SIZE];
@@ -413,7 +417,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	int pipefd_stderr[2];
 	int timeouted;
 	time_t sttime, entime;
-	int duration;
+	time_t duration;
 	int slave;
 	int pgid = -1;
 
@@ -434,7 +438,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 			break;
 		}
 		fprintf(fp, "START: %s\n", progname);
-		PTEST_LIST_ITERATE_START(head, p);
+		PTEST_LIST_ITERATE_START(head, p)
 			char *ptest_dir = strdup(p->run_ptest);
 			if (ptest_dir == NULL) {
 				rc = -1;
@@ -495,17 +499,17 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 					fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
 					rc += 1;
 				}
-				fprintf(fps[0], "DURATION: %d\n", duration);
+				fprintf(fps[0], "DURATION: %d\n", (int) duration);
 				if (timeouted)
 					fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
 
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir, timeouted, duration);
+					xml_add_case(xh, status, ptest_dir, timeouted, (int) duration);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
 			}
-		PTEST_LIST_ITERATE_END;
+		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
 
 		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
diff --git a/utils.h b/utils.h
index 6175ed1..f6a56f1 100644
--- a/utils.h
+++ b/utils.h
@@ -21,8 +21,8 @@
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
 
-#ifndef _PTEST_RUNNER_UTILS_H_
-#define _PTEST_RUNNER_UTILS_H_
+#ifndef PTEST_RUNNER_UTILS_H
+#define PTEST_RUNNER_UTILS_H
 
 #include "ptest_list.h"
 
-- 
2.17.0


