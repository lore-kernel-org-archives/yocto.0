Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55AD2E00D71; Thu,  7 Dec 2017 10:51:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (limon.anibal[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37BD9E00D6E
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 10:51:44 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id 184so5619628oii.2
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 10:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=j9ZxNLi9YpxS/9mRLcMwvKh7u2cKika0PWaw6YPI+xI=;
	b=dm/RgD++o1ZczTWt4XGMOBh/rtW5dSTS7MJJqbq1IgTbwnmrxDIXszqHulWf+bKhHN
	WFgJGOGb96T7XP1awlKp+aT4PqLIahL/xFMSdH2UQaE+ddVCo7M/yI31E49yrvn+pd76
	rKyg8Rf65IFqfPFVHCHLYf2lJyIgrLdmBbT9kAPx9SxH8bimXdYEntwPxYRbZ0+RyaA7
	3jw4hemI00Bqwk508IsCerv0a5dEnIqasoHrkOLIIZDbdHZqI6TruBQuAXHsxM7Enpd4
	B/fCpqFrG2BMMOjgigif0xMr1zzJtYRp2qMWZfKa/v8RLFIothZTn2Y5f6PSpPAsoSPE
	+Hfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=j9ZxNLi9YpxS/9mRLcMwvKh7u2cKika0PWaw6YPI+xI=;
	b=lwsou3QfKegsdY+r9Ix8doYLWAehZuGpsPwp6nTKJxLIH4D9E80GaZnP1WcnfRhuAB
	/GtAJQ8acpZWJBGQYcRIXLDZFZi/1ubU9D3CNvuVporPwlnltfbHqiyfTyJNx3a06Z7X
	RV6XuYljUd5sTbl/j6z8zxt0fVLJQRepPKwtu7ktXRwbcQj1JAtw1GF9KlC3Pap4Zu/s
	RCdR18iW4QCKkh88ROEgczhw6zg0k3wPRmP1TWb9ICxDpUPIebzgzInHlsq+2DOs14hu
	a+EjRImKNVGKWUHWLTGWhmgShAZgaiENZwNY4NXZQbk3NtUaw+TVENUktKNBiQEHiJ+s
	1pQA==
X-Gm-Message-State: AJaThX40rZLtEsqG/y/Q1MfFT05ee6pxSHj925jxANcMXFmwsTFkG37W
	AQIERETxXt45Qe8e50ANIml5Z8fL
X-Google-Smtp-Source: AGs4zMbmjHvc+UbmW5mfEI41vysmeW1PPOAOoozpeJb7w0Xr/dUuWF8fngUYw2VkMIvYHgZG6JF80Q==
X-Received: by 10.202.92.66 with SMTP id q63mr23978612oib.78.1512672703245;
	Thu, 07 Dec 2017 10:51:43 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	n74sm2592453ota.72.2017.12.07.10.51.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 10:51:42 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 12:51:10 -0600
Message-Id: <20171207185111.14402-2-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171207185111.14402-1-limon.anibal@gmail.com>
References: <20171207185111.14402-1-limon.anibal@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner 2/3] Add support to avoid load/run twice a run_ptest script
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
X-List-Received-Date: Thu, 07 Dec 2017 18:51:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

In some ptest packages exists symlink in the ptest directory causing
to load/run twice the same ptest,

For example in perl5:

/usr/lib/perl -> /usr/lib/perl5

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 ptest_list.c  | 40 ++++++++++++++++++++++++++++++++++++++++
 ptest_list.h  |  3 +++
 tests/utils.c |  1 +
 utils.c       |  6 ++++++
 4 files changed, 50 insertions(+)

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


