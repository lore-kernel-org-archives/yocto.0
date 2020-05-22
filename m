Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.7182.1590119688026784532
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 May 2020 20:54:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zangrc.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B9CAE01BDE; Thu, 21 May 2020 20:54:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	*  1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www; Thu, 21 May 2020 20:54:46 PDT
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAF8E01BD8
	for <yocto@yoctoproject.org>; Thu, 21 May 2020 20:54:45 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.73,420,1583164800"; 
   d="scan'208";a="92771395"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 22 May 2020 11:53:39 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (unknown [10.167.33.201])
	by cn.fujitsu.com (Postfix) with ESMTP id 702B746B5FAD;
	Fri, 22 May 2020 11:53:35 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 22 May 2020 11:53:36 +0800
From: "zangrc" <zangrc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
CC: <anibal.limon@linaro.org>, Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
Subject: [yocto] [ptest-runner] Added output processing to pytest
Date: Fri, 22 May 2020 20:53:29 +0800
Message-ID: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD06.g08.fujitsu.local (10.167.33.205) To
 G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201)
X-yoursite-MailScanner-ID: 702B746B5FAD.A3F37
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Content-Type: text/plain

Because there are quite a few OSS that use pytest for testing, and the
test output of pytest is not consistent with the output format of
automake, so the output of pytest needs to be processed. The following
is the solution given by Richard Purdie:

teaching ptest runner how to handle the alternate output
format(triggered by run-ptest-XXX instead of run-ptest)

Signed-off-by: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
---
 utils.c | 59 ++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 56 insertions(+), 3 deletions(-)

diff --git a/utils.c b/utils.c
index a8ba190..fa4a483 100644
--- a/utils.c
+++ b/utils.c
@@ -74,6 +74,33 @@ check_allocation1(void *p, size_t size, char *file, int line, int exit_on_null)
 	}
 }
 
+char *
+get_ptest_path(const char *dir, const char *d_name) {
+	struct stat st_buf;
+	char *run_ptest_default;
+	char *run_ptest_pytest;
+	char *run_ptest;
+	
+	if (asprintf(&run_ptest_default, "%s/%s/ptest/run-ptest",
+	    dir, d_name) == -1)  {
+		return run_ptest;
+	}
+	
+	if (asprintf(&run_ptest_pytest, "%s/%s/ptest/run-ptest-pytest",
+	    dir, d_name) == -1)  {
+		return run_ptest;
+	}
+			
+	if (stat(run_ptest_pytest, &st_buf) != -1) {
+		free(run_ptest_default);
+		run_ptest = run_ptest_pytest;
+	} else {
+		free(run_ptest_pytest);
+		run_ptest = run_ptest_default;
+	}
+	
+	return run_ptest;
+}
 
 struct ptest_list *
 get_available_ptests(const char *dir)
@@ -129,8 +156,8 @@ get_available_ptests(const char *dir)
 				continue;
 			}
 
-			if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest",
-			    dir, d_name) == -1)  {
+			run_ptest = get_ptest_path(dir, d_name);
+			if (run_ptest == NULL)  {
 				fail = 1;
 				saved_errno = errno;
 				free(d_name);
@@ -282,7 +309,22 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
 	close(fd_stderr); /* try using to see if this fixes bash run-read. rwm todo */
 	close_fds();
 
-	execv(run_ptest, argv);
+	if (is_end_with(run_ptest, "run-ptest-pytest") == 1) {
+		char *cmd;
+		char pytest_append[] = "| sed -e 's/\\[...%\\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF==\"PASS\" || $NF==\"FAIL\" || $NF==\"SKIP\" || $NF==\"XFAIL\" || $NF==\"XPASS\"){printf \"%s: %s\\n\", $NF, $0}else{print}}'| awk '{if ($NF==\"PASS\" || $NF==\"FAIL\" || $NF==\"SKIP\" || $NF==\"XFAIL\" || $NF==\"XPASS\") {$NF=\"\";print $0}else{print}}'";
+		if (asprintf(&cmd, "sh %s %s", run_ptest, pytest_append) == -1) {
+			exit(-1);
+		}
+		if (system(cmd) == -1) {
+			free(cmd);
+			exit(-1);
+		}
+		free(cmd);
+	} else {
+		if (execv(run_ptest, argv) == -1 ) {
+			exit(-1);
+		}
+	}
 
 	/* exit(1); not needed? */
 }
@@ -400,6 +442,17 @@ setup_slave_pty(FILE *fp) {
 	return (slave);
 }
 
+int 
+is_end_with(const char *str1, const char *str2)
+{
+	char *head;
+	head = strstr(str1, str2);
+	if (head != NULL && strlen(head) == strlen(str2)) {
+		return 1;
+	} else {
+		return 0;
+	}
+}
 
 int
 run_ptests(struct ptest_list *head, const struct ptest_options opts,
-- 
2.17.1



