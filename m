Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB887E00C1E; Thu,  3 Jan 2019 10:02:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AFD0E00BE8
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 10:02:23 -0800 (PST)
Received: by mail-ot1-f65.google.com with SMTP id u16so30061108otk.8
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 10:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=V1GUlkYJENVQ0VyozbDyAuVS4Yc6o1ni9OmGovRnFss=;
	b=NA8vHN6TFLbKulug6Od5ESJG7JM4m6W0Sq+eXgyrHg0bYsFwMnxklIsjioieSeBdYL
	GE6L1JK55xuS4lKGGY+oZM4SJW6JqWhpMzf+Gsy88w1gXb+NeMAFxPh7MR84/Tw78Z4t
	/7AKgQxU0K1mYwbTK6vv9n8vT3su1kpfZSU/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=V1GUlkYJENVQ0VyozbDyAuVS4Yc6o1ni9OmGovRnFss=;
	b=PdgZ0fK6hFS9HRdqV4e7y6dqz3MqNP89/VG0sk5Z7OLMugahR0JYbX8KHmOMatOXeF
	Y6wTEO/b5dcLsiAlh7l8wpWZ6q88JAEVekXdBeQrFfgL13ediXbIANq+tQDN/d92QvUu
	M6skOp0WgYl1cPmJErG5GSaKINNlGS2sELuRKPm6NPTOg/LWZH/9LATfRVb7sTRFFHW0
	qRfx2mKh8aote9paaSn5hSlxG+GqceazsZGzrZSBqpMbYZrHwuwM1tY9lgqlL1EN7Hr0
	nOelvIXw/h9/xheOXtGLZN4XpXYas2favNmk60Qw06E23+ZOXDw5iKNsoyJECU2CCe5a
	byFA==
X-Gm-Message-State: AJcUukdXfGwD+5ba8qcks60noVfHkApEswBaLjkAJvQvDgwIEaTonlEy
	XRUyOl1Mmy6uITIfOyPvWRcB/n4HU4Y=
X-Google-Smtp-Source: ALg8bN6FZMDayOzKp5A1PTkhgWmBlz1HTsL1F992AYwUs0npwMLbq0xFrhWwU76+VEkwl6wCdVLRTg==
X-Received: by 2002:a9d:67cf:: with SMTP id c15mr31575248otn.38.1546538542631; 
	Thu, 03 Jan 2019 10:02:22 -0800 (PST)
Received: from blackbox.Home ([200.68.140.47])
	by smtp.gmail.com with ESMTPSA id
	v3sm50734701oib.57.2019.01.03.10.02.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Jan 2019 10:02:22 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Thu,  3 Jan 2019 12:02:18 -0600
Message-Id: <20190103180218.6968-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
Subject: [PATCH][ptest-runner] ptest-runner: Add support timeout failure type to XML result file
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
X-List-Received-Date: Thu, 03 Jan 2019 18:02:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The ptest-runner support logging results to stdout and to a XML file
in stdout the ptest is mark as:

...
ERROR: Exit status is 1
TIMEOUT: ptest-directory
...

Add the same support in XML file for example,

...
<testcase classname='ptest-directory' name='run-ptest'>
  <failure type='exit_code' message='run-ptest exited with code: 1'></failure>
  <failure type='timeout'/>
</testcase>
...

[YOCTO #13088]

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 tests/data/reference.xml |  1 +
 tests/utils.c            |  4 ++--
 utils.c                  | 28 ++++++++++++++++------------
 utils.h                  |  2 +-
 4 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/tests/data/reference.xml b/tests/data/reference.xml
index 91522c7..17f91c2 100644
--- a/tests/data/reference.xml
+++ b/tests/data/reference.xml
@@ -4,5 +4,6 @@
 	</testcase>
 	<testcase classname='test2' name='run-ptest'>
 		<failure type='exit_code' message='run-ptest exited with code: 1'></failure>
+		<failure type='timeout'/>
 	</testcase>
 </testsuite>
diff --git a/tests/utils.c b/tests/utils.c
index cf09379..662abe8 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -257,8 +257,8 @@ START_TEST(test_xml_pass)
 	FILE *xp;
 	xp = xml_create(2, "./test.xml");
 	ck_assert(xp != NULL);
-	xml_add_case(xp, 0,"test1");
-	xml_add_case(xp, 1,"test2");
+	xml_add_case(xp, 0,"test1", 0);
+	xml_add_case(xp, 1,"test2", 1);
 	xml_finish(xp);
 
 	FILE *fp, *fr;
diff --git a/utils.c b/utils.c
index ed2eff7..4a38ea1 100644
--- a/utils.c
+++ b/utils.c
@@ -260,14 +260,13 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 
 static inline int
 wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
-		int timeout, int *fds, FILE **fps)
+		int timeout, int *fds, FILE **fps, int *timeouted)
 {
 	struct pollfd pfds[2];
 	struct timespec sentinel;
 	clockid_t clock = CLOCK_MONOTONIC;
 	int r;
 
-	int timeouted = 0;
 	int status;
 	int waitflags;
 
@@ -281,6 +280,8 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 		clock_gettime(clock, &sentinel);
 	}
 
+	*timeouted = 0;
+
 	while (1) {
 		waitflags = WNOHANG;
 
@@ -305,7 +306,7 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 
 			clock_gettime(clock, &time);
 			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
-				timeouted = 1;
+				*timeouted = 1;
 				kill(pid, SIGKILL);
 				waitflags = 0;
 			}
@@ -315,11 +316,6 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
 			break;
 	}
 
-	if (status) {
-		fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
-		if (timeouted)
-			fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
-	}
 
 	return status;
 }
@@ -337,6 +333,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 	pid_t child;
 	int pipefd_stdout[2];
 	int pipefd_stderr[2];
+	int timeouted;
 
 	if (opts.xml_filename) {
 		xh = xml_create(ptest_list_length(head), opts.xml_filename);
@@ -380,12 +377,17 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
 
 				status = wait_child(ptest_dir, p->run_ptest, child,
-						opts.timeout, fds, fps);
-				if (status)
+						opts.timeout, fds, fps, &timeouted);
+
+				if (status) {
+					fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
 					rc += 1;
+				}
+				if (timeouted)
+					fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
 
 				if (opts.xml_filename)
-					xml_add_case(xh, status, ptest_dir);
+					xml_add_case(xh, status, ptest_dir, timeouted);
 
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
@@ -424,7 +426,7 @@ xml_create(int test_count, char *xml_filename)
 }
 
 void
-xml_add_case(FILE *xh, int status, const char *ptest_dir)
+xml_add_case(FILE *xh, int status, const char *ptest_dir, int timeouted)
 {
 	fprintf(xh, "\t<testcase classname='%s' name='run-ptest'>\n", ptest_dir);
 
@@ -433,6 +435,8 @@ xml_add_case(FILE *xh, int status, const char *ptest_dir)
 		fprintf(xh, " message='run-ptest exited with code: %d'>", status);
 		fprintf(xh, "</failure>\n");
 	}
+	if (timeouted)
+		fprintf(xh, "\t\t<failure type='timeout'/>\n");
 
 	fprintf(xh, "\t</testcase>\n");
 }
diff --git a/utils.h b/utils.h
index ee85163..880105f 100644
--- a/utils.h
+++ b/utils.h
@@ -48,7 +48,7 @@ extern int run_ptests(struct ptest_list *, const struct ptest_options,
 		const char *, FILE *, FILE *);
 
 extern FILE *xml_create(int, char *);
-extern void xml_add_case(FILE *, int, const char *);
+extern void xml_add_case(FILE *, int, const char *, int);
 extern void xml_finish(FILE *);
 
 #endif
-- 
2.19.2


