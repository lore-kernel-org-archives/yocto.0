Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 525B4E00D81; Thu,  7 Dec 2017 15:42:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C720E00D7B
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 15:42:54 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id f69so6123793oig.10
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 15:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=g+LQFZRAjBpZ8Sr4fW6ulBWYc6DLmnxA/pXZB1LkntE=;
	b=O4xHNL8R9KNn0kiNk7Z+mz7CtR2SwxWLM4SQLJnvY6HsH6sriS4szrSQl5aIPe1mPd
	+LSqqdfGAmw91m5i2tM9LHD8+nHRWGKsju/1wyyuqbpQFEnro9k3ib867ub8e8xDqypn
	zwkPimxYhxl2XaVI5T/5BqXeVz3t3i29fLt6eEohiTxtaKj0/91irI+azZ2aQpV0ieH6
	zRh2UwxmzptbuuPm6EkA3n/t9jd3YwZZw2DEL+0e9x+512irWrgJzQ6FYOLx0HS6cUC5
	A43PnKCpJVLhRKTmkYZcGty5wTFDlpctWphceTPW8LblRYX/Nd6plb5mMCVQfq9EARAb
	VPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=g+LQFZRAjBpZ8Sr4fW6ulBWYc6DLmnxA/pXZB1LkntE=;
	b=WEy20XEtl9NpXnqw5I+uNUURbeqJ/pnnUN5tHLZ9Err3uSIver2uOe/DOrPKBW/Fp6
	agc/T+jjZxvBQBDbqIowTy8T/7wV3Mlf13/+1FsN9F+sgfmvzAYpkqzTzLATycmFNIHQ
	zgnYuXMla+m1D4mDGh700W3574OqejE2DXpgJ5og1HSa7mlK4GoWNd2Ntde2JmG5Lrv0
	14dfxyxIFpRa1AmtXAOnSg5BBGLvD3BM47sZFrf19ipSf3+lnW0KNq92buEoyAAyoa3m
	aiLNWTaAZ/FgblEuOAMsI6iVTHDxxTCt/X09sXnbInIi3IPO5VOp3od+009qCb4F8nrQ
	g7+g==
X-Gm-Message-State: AJaThX76mTibB5MkvSp11a+vKCChM572W8Q1KGLG4vfMg24Y/FUbbE8O
	UPOfHObbkCoj1kwS2kMPm2zCT5nv
X-Google-Smtp-Source: AGs4zMb01zs6udAjInbksZ6KDYir6MT+bYsGWpZCOuudwaM/pLnQ3ft+YBXtqMSGef5Hh5KN/mWeGA==
X-Received: by 10.202.253.70 with SMTP id b67mr26105514oii.180.1512690173331; 
	Thu, 07 Dec 2017 15:42:53 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id 68sm2780011oik.1.2017.12.07.15.42.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 15:42:52 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 17:42:45 -0600
Message-Id: <20171207234246.6364-2-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171207234246.6364-1-limon.anibal@gmail.com>
References: <20171207234246.6364-1-limon.anibal@gmail.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCHv2 2/3] Add support to avoid load/run twice a run_ptest script
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
X-List-Received-Date: Thu, 07 Dec 2017 23:42:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

In some ptest packages exists symlink in the ptest directory causing
to load/run twice the same ptest,

For example in perl5:

/usr/lib/perl -> /usr/lib/perl5

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 ptest_list.c       | 40 ++++++++++++++++++++++++++++++++++++++++
 ptest_list.h       |  3 +++
 tests/data/python3 |  1 +
 tests/utils.c      |  1 +
 utils.c            |  6 ++++++
 5 files changed, 51 insertions(+)
 create mode 120000 tests/data/python3

diff --git a/ptest_list.c b/ptest_list.c
index 2e1aa30..3e393d5 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -110,6 +110,46 @@ ptest_list_search(struct ptest_list *head, char *ptest)
 	return q;
 }
 
+
+struct ptest_list *
+ptest_list_search_by_file(struct ptest_list *head, char *run_ptest, struct stat st_buf)
+{
+	struct ptest_list *q = NULL;
+	struct ptest_list *p;
+	struct stat st_buf_p;
+
+	VALIDATE_PTR_RNULL(head);
+	VALIDATE_PTR_RNULL(run_ptest);
+
+	for (p = head; p != NULL; p = p->next) {
+		if (p->ptest == NULL) 
+			continue;
+
+		if (stat(p->run_ptest, &st_buf_p) == -1)
+			continue;
+
+		if (strcmp(p->run_ptest, run_ptest) == 0) {
+			q = p;
+			break;
+		}
+
+		/* *
+		 * In some ptest packages exists symlink in the ptest directory
+		 * causing to load/run twice the same ptest, 
+		 *
+		 * For example in perl5:
+		 * /usr/lib/perl -> /usr/lib/perl5
+		 * */
+		if (st_buf.st_dev == st_buf_p.st_dev &&
+		    st_buf.st_ino == st_buf_p.st_ino) {
+			q = p;
+			break;
+		}
+	}
+
+	return q;
+}
+
 struct ptest_list *
 ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
 {
diff --git a/ptest_list.h b/ptest_list.h
index 8b39485..03d7539 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -28,6 +28,8 @@
 #define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p != NULL; p = p->next) { 
 #define PTEST_LIST_ITERATE_END }
 
+#include <sys/stat.h>
+
 struct ptest_list {
 	char *ptest;
 	char *run_ptest;
@@ -42,6 +44,7 @@ extern int ptest_list_free_all(struct ptest_list *);
 
 extern int ptest_list_length(struct ptest_list *);
 extern struct ptest_list *ptest_list_search(struct ptest_list *, char *);
+extern struct ptest_list *ptest_list_search_by_file(struct ptest_list *, char *, struct stat);
 extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, char *);
 extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *, int);
 
diff --git a/tests/data/python3 b/tests/data/python3
new file mode 120000
index 0000000..d8654aa
--- /dev/null
+++ b/tests/data/python3
@@ -0,0 +1 @@
+python
\ No newline at end of file
diff --git a/tests/utils.c b/tests/utils.c
index ecf3e8a..cf09379 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -48,6 +48,7 @@ static int ptests_found_length = 6;
 static char *ptests_not_found[] = {
 	"busybox",
 	"perl",
+	"python3",
 	NULL,
 };
 
diff --git a/utils.c b/utils.c
index 933eced..ed2eff7 100644
--- a/utils.c
+++ b/utils.c
@@ -143,6 +143,12 @@ get_available_ptests(const char *dir)
 				continue;
 			}
 
+			if (ptest_list_search_by_file(head, run_ptest, st_buf)) {
+				free(run_ptest);
+				free(d_name);
+				continue;
+			}
+
 			struct ptest_list *p = ptest_list_add(head,
 				d_name, run_ptest);
 			CHECK_ALLOCATION(p, sizeof(struct ptest_list *), 0);
-- 
2.11.0


