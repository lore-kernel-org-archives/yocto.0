Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97347E00BAD; Wed, 25 Apr 2018 10:19:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A74E006B4
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:19:12 -0700 (PDT)
Received: by mail-ot0-f196.google.com with SMTP id l22-v6so15648463otj.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=clrQysUKnWaPkvJHhr3s5NWLJgL60/3v3QoROMVp5so=;
	b=E4Qn772imvzc/tTs3B8bav7JhxFa2igcsUAKrzoCIWeehND9rPq72HzUgNvD7YokZS
	YVSD/2FgLr8YUbzaY68nmV25+LtUo/xHdDT/igqt42QPVLjytdjIpGW5GjAhJF8GKaEX
	J/hpEUF2zVTEP+r6yYPVJrDPZxyU53S3asLJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=clrQysUKnWaPkvJHhr3s5NWLJgL60/3v3QoROMVp5so=;
	b=ZxCQrNTitGvb5PGmUGgS+cDYcohbPH36a54ldwfs3WaAnQHsPYjxWosrH/R2j20iGY
	vtAt8OG8VZ5Rq/gEst49fFax7NP5wNdReozxdlUo32jA+Hci4tNuTH9bm/G0gSgJBhs6
	Z3fUoPC9RGF75am/waBRGZJiaegY2WC8yYx3nzEzrPoNskgs7StKFBebR5toNcHnbhDv
	oEulrLNCj1Rpo/TwYRJXBNh0/0iF3T1Da7xWgsYewzYFbQPmAeS3NvJ44pcw0+hU+Cm/
	zoekTZ4H+rQoYXuXgtGktvBD38OThHhLe1u94zndpFT3xQEpTOCS0yu9D0EcOWR885r+
	zDNg==
X-Gm-Message-State: ALQs6tDCmWU/1PDoIp5oupAAUVO8+D5S8Ms55cO7LHjEEv4kmIujKbrf
	/UeIcdBtwJjX5cQsydqEniSUndfhZTY=
X-Google-Smtp-Source: AIpwx49M+RAs0NNES/C+4cnNcuF/siXHmoTb3xTVfx7ibX0o6acSu4mDl3t6zRmD+/l63PVFG5yycw==
X-Received: by 2002:a9d:40d:: with SMTP id 13-v6mr21269447otc.42.1524676751857;
	Wed, 25 Apr 2018 10:19:11 -0700 (PDT)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	q75-v6sm8301748ota.69.2018.04.25.10.19.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 10:19:11 -0700 (PDT)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Wed, 25 Apr 2018 12:19:05 -0500
Message-Id: <20180425171905.6408-2-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180425171905.6408-1-anibal.limon@linaro.org>
References: <20180425171905.6408-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Subject: [PATCH][ptest-runner 2/2] main.c: Add option (-e) to exclude certain tests for execution
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
X-List-Received-Date: Wed, 25 Apr 2018 17:19:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

You can specify a set of ptests to be excluded, it will not fail
if some ptest excluded isn't found in the list of execution.

$ ./ptest-runner -e "hang glibc" -d tests/data

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 main.c  | 38 +++++++++++++++++++++++++++++++++++---
 utils.h |  1 +
 2 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/main.c b/main.c
index 593aff1..83600b7 100644
--- a/main.c
+++ b/main.c
@@ -19,6 +19,7 @@
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
 
+#include <ctype.h>
 #include <limits.h>
 #include <unistd.h>
 #include <string.h>
@@ -42,8 +43,8 @@
 static inline void
 print_usage(FILE *stream, char *progname)
 {
-	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] [-x xml-filename]"
-			" [-h] [ptest1 ptest2 ...]\n", progname);
+	fprintf(stream, "Usage: %s [-d directory] [-e exclude] [-l list] [-t timeout]"
+			" [-x xml-filename] [-h] [ptest1 ptest2 ...]\n", progname);
 }
 
 int
@@ -53,6 +54,8 @@ main(int argc, char *argv[])
 	int ptest_num = 0;
 	int i;
 	int rc;
+	int ptest_exclude_num = 0;
+	char *c, *tok;
 
 #ifdef MEMCHECK
 	mtrace();
@@ -62,18 +65,44 @@ main(int argc, char *argv[])
 	struct ptest_options opts;
 
 	opts.directory = strdup(DEFAULT_DIRECTORY);
+	opts.exclude = NULL;
 	opts.list = 0;
 	opts.timeout = DEFAULT_TIMEOUT;
 	opts.ptests = NULL;
 	opts.xml_filename = NULL;
 
-	while ((opt = getopt(argc, argv, "d:lt:x:h")) != -1) {
+	while ((opt = getopt(argc, argv, "d:e:lt:x:h")) != -1) {
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
 				opts.directory = realpath(optarg, NULL);
 				CHECK_ALLOCATION(opts.directory, 1, 1);
 			break;
+			case 'e':
+				c = optarg;
+				ptest_exclude_num = 1;
+
+				while (*c) {
+					if (isspace(*c))
+						ptest_exclude_num++;
+					c++;
+				}
+
+
+				opts.exclude = malloc(ptest_exclude_num * sizeof(char));
+				CHECK_ALLOCATION(opts.exclude, 1, 1);
+
+				i = 0;
+				tok = strtok_r(optarg, " ", &c);
+				opts.exclude[i] = strdup(tok);
+				CHECK_ALLOCATION(opts.exclude[i], 1, 1);
+				i++;
+				while ((tok = strtok_r(NULL, " ", &c)) != NULL) {
+					opts.exclude[i] = strdup(tok);
+					CHECK_ALLOCATION(opts.exclude[i], 1, 1);
+					i++;
+				}
+			break;
 			case 'l':
 				opts.list = 1;
 			break;
@@ -134,6 +163,9 @@ main(int argc, char *argv[])
 		ptest_list_free_all(head);
 	}
 
+	for (i = 0; i < ptest_exclude_num; i++)
+		ptest_list_remove(run, opts.exclude[i], 1);
+
 	rc = run_ptests(run, opts, argv[0], stdout, stderr);
 
 	ptest_list_free_all(run);
diff --git a/utils.h b/utils.h
index 8fa20a8..ee85163 100644
--- a/utils.h
+++ b/utils.h
@@ -32,6 +32,7 @@
 
 struct ptest_options {
 	char *directory;
+	char **exclude;
 	int list;
 	int timeout;
 	char **ptests;
-- 
2.11.0


