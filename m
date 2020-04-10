Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1965.1586556798413500539
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2020 15:13:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=i9LK/tcT;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AFDFE019B4; Fri, 10 Apr 2020 15:13:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E14E019AE
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 15:13:17 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id w12so2280734otm.13
        for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 15:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ePzg/UcKTjBKgmBTAvPA4+HSCvo5B4VzzFPoG6Ev1eE=;
        b=i9LK/tcT9qqoFaQT276ix/hqNVvv58Wrra6+89v/+9cvga/vCO01sw8avzoREJo9qr
         KtaZqdk7PWQDresp31gUT6BufJsNvbpSO2V/XLw7Gt8XHF9AoFiKK/ZbxbebDXBWDnOx
         AJx3sCuT14iPOPODRcjD/NcEf5aZsnbGqbxsftAkc0HN9f7oZwB4L1wBlQTQqr+EQt9e
         73OjoaQcXePMzvvz03wro4aKS9Q44IWaKUyNKKRyJj1lxkNpn2FtRJ0QiBUtecvFiQxF
         sBk32hzM4tYJtgaFHfuVeV95UHn2aRnjCMnrqs8cgpbD9W2i6aXLbW2zc9gq/FSMdEKm
         3JTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ePzg/UcKTjBKgmBTAvPA4+HSCvo5B4VzzFPoG6Ev1eE=;
        b=cGlHcCat6uDp0GDOMYvDn+ip0ec6pBLh+eBoomQWtSJX3IUmrHjptpKrfpLfFeqPDX
         wfIgFzioDRBPv4L4UV2m5rDnIcTFC1yX0ILPVg8J7162g1oqX5ux53eDzjEdVH3KVhak
         dJ8fYe7iknd78AwxlLPZryxQ3xX2xVmoRkYqO8XpjH/edA2GWxFHEMr08pUo/25LWa2m
         ATw6+W5r/+rLz1r6p4RPCCs9IEcF7ZusNTFBdNQH/DOF4XCzWGh0IJXrlvZmDd0LABri
         btMmCVSGZzzhtJ3C+EtzcR537aTaX63d7foKY0Fymz/h75/htHI/8+36Tg9DbJHJGi2h
         knsw==
X-Gm-Message-State: AGi0PubeWfwq3TVrKxYIDiPy6nM/yU1hof7eNS7hKHp1oW39ALHbg1St
	Zjk4WiIyoQ2V7/uJH9rJD40FdAA3mtg=
X-Google-Smtp-Source: APiQypL09C4iC5JARMqmhcQPvILF5LeO66ds/rskt7ftZYTxJKp9dp4n78PSStYb5FNWKXd67x9sHg==
X-Received: by 2002:a9d:4102:: with SMTP id o2mr5551742ote.98.1586556796104;
        Fri, 10 Apr 2020 15:13:16 -0700 (PDT)
Received: from blackbox.rga.ip ([2806:109f:4:5e7a:908a:c7ff:fe6a:e9f5])
        by smtp.gmail.com with ESMTPSA id y18sm1832678otj.71.2020.04.10.15.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 15:13:15 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	nicolas.dechesne@linaro.org,
	Randy.MacLeod@windriver.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [PATCHv1][ptest-runner 2/2] Add support to specify multiple folder for ptest-runner
Date: Fri, 10 Apr 2020 17:13:09 -0500
Message-Id: <20200410221309.35676-2-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200410221309.35676-1-anibal.limon@linaro.org>
References: <20200410221309.35676-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Enables multiple folders in -d option the current use case is to be able
specify multilib folders in the same run.

The -d option allows directories without whitespaces inside, example to
run after compile:

$ ./ptest-runner -d "test/data tests/data2/"

[YOCTO #12604]

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 main.c                          | 91 ++++++++++++++++++++++-----------
 ptest_list.c                    | 17 ++++++
 ptest_list.h                    |  1 +
 tests/data2/go/ptest/run-ptest  |  3 ++
 tests/data2/lua/ptest/run-ptest |  3 ++
 utils.h                         |  4 +-
 6 files changed, 87 insertions(+), 32 deletions(-)
 create mode 100755 tests/data2/go/ptest/run-ptest
 create mode 100755 tests/data2/lua/ptest/run-ptest

diff --git a/main.c b/main.c
index 01d60f7..e3a1b69 100644
--- a/main.c
+++ b/main.c
@@ -47,10 +47,43 @@
 static inline void
 print_usage(FILE *stream, char *progname)
 {
-	fprintf(stream, "Usage: %s [-d directory] [-e exclude] [-l list] [-t ti=
meout]"
+	fprintf(stream, "Usage: %s [-d directory directory2 ...] [-e exclude] [=
-l list] [-t timeout]"
 			" [-x xml-filename] [-h] [ptest1 ptest2 ...]\n", progname);
 }
=20
+static char **
+str2array(char *str, const char *delim, int *num)
+{
+	char *c, *tok;
+	char **array;
+	int i;
+
+	c =3D str;
+	*num =3D 1;
+	while (*c) {
+		if (isspace(*c))
+			(*num)++;
+		c++;
+	}
+
+
+	array =3D malloc((size_t)*num * sizeof(char**));
+	CHECK_ALLOCATION(array, 1, 1);
+
+	i =3D 0;
+	tok =3D strtok_r(str, delim, &c);
+	array[i] =3D strdup(tok);
+	CHECK_ALLOCATION(array[i], 1, 1);
+	i++;
+	while ((tok =3D strtok_r(NULL, " ", &c)) !=3D NULL) {
+		array[i] =3D strdup(tok);
+		CHECK_ALLOCATION(array[i], 1, 1);
+		i++;
+	}
+
+	return array;
+}
+
 int
 main(int argc, char *argv[])
 {
@@ -59,7 +92,6 @@ main(int argc, char *argv[])
 	int i;
 	int rc;
 	int ptest_exclude_num =3D 0;
-	char *c, *tok;
=20
 #ifdef MEMCHECK
 	mtrace();
@@ -68,7 +100,11 @@ main(int argc, char *argv[])
 	struct ptest_list *head, *run;
 	struct ptest_options opts;
=20
-	opts.directory =3D strdup(DEFAULT_DIRECTORY);
+	opts.dirs =3D malloc(sizeof(char **) * 1);
+	CHECK_ALLOCATION(opts.dirs, 1, 1);
+	opts.dirs[0] =3D strdup(DEFAULT_DIRECTORY);
+	CHECK_ALLOCATION(opts.dirs[0], 1, 1);
+	opts.dirs_no =3D 1;
 	opts.exclude =3D NULL;
 	opts.list =3D 0;
 	opts.timeout =3D DEFAULT_TIMEOUT;
@@ -78,34 +114,12 @@ main(int argc, char *argv[])
 	while ((opt =3D getopt(argc, argv, "d:e:lt:x:h")) !=3D -1) {
 		switch (opt) {
 			case 'd':
-				free(opts.directory);
-				opts.directory =3D realpath(optarg, NULL);
-				CHECK_ALLOCATION(opts.directory, 1, 1);
+				free(opts.dirs[0]);
+				free(opts.dirs);
+				opts.dirs =3D str2array(optarg, " ", &(opts.dirs_no));=20
 			break;
 			case 'e':
-				c =3D optarg;
-				ptest_exclude_num =3D 1;
-
-				while (*c) {
-					if (isspace(*c))
-						ptest_exclude_num++;
-					c++;
-				}
-
-
-				opts.exclude =3D malloc((size_t)ptest_exclude_num * sizeof(char));
-				CHECK_ALLOCATION(opts.exclude, 1, 1);
-
-				i =3D 0;
-				tok =3D strtok_r(optarg, " ", &c);
-				opts.exclude[i] =3D strdup(tok);
-				CHECK_ALLOCATION(opts.exclude[i], 1, 1);
-				i++;
-				while ((tok =3D strtok_r(NULL, " ", &c)) !=3D NULL) {
-					opts.exclude[i] =3D strdup(tok);
-					CHECK_ALLOCATION(opts.exclude[i], 1, 1);
-					i++;
-				}
+				opts.exclude =3D str2array(optarg, " ", &ptest_exclude_num);
 			break;
 			case 'l':
 				opts.list =3D 1;
@@ -140,10 +154,25 @@ main(int argc, char *argv[])
 		}
 	}
=20
-	head =3D get_available_ptests(opts.directory);
+	head =3D NULL;
+	for (i =3D 0; i < opts.dirs_no; i ++) {
+		struct ptest_list *tmp;
+
+		tmp =3D get_available_ptests(opts.dirs[i]);
+		if (tmp =3D=3D NULL) {
+			fprintf(stderr, PRINT_PTESTS_NOT_FOUND_DIR, opts.dirs[i]);
+			continue;
+		}
+
+
+		if (head =3D=3D NULL)
+			head =3D tmp;
+		else
+			head =3D ptest_list_extend(head, tmp);
+	}
 	if (head =3D=3D NULL || ptest_list_length(head) =3D=3D 0) {
 		fprintf(stderr, PRINT_PTESTS_NOT_FOUND);
-		return 1;
+			return 1;
 	}
=20
 	if (opts.list) {
diff --git a/ptest_list.c b/ptest_list.c
index a5632f8..917ef4f 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -216,3 +216,20 @@ ptest_list_remove(struct ptest_list *head, char *pte=
st, int free)
=20
 	return p;
 }
+
+struct ptest_list *
+ptest_list_extend(struct ptest_list *head, struct ptest_list *extend)
+{
+	struct ptest_list *p, *q;=20
+
+	VALIDATE_PTR_RNULL(head);
+	VALIDATE_PTR_RNULL(extend);
+
+	for (p =3D head; p->next !=3D NULL; p =3D p->next);
+	q =3D extend->next;
+	p->next =3D q;
+
+	free(extend);
+
+	return head;
+}
diff --git a/ptest_list.h b/ptest_list.h
index e1caffc..02a64bb 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -64,5 +64,6 @@ extern struct ptest_list *ptest_list_search(struct ptes=
t_list *, char *);
 extern struct ptest_list *ptest_list_search_by_file(struct ptest_list *,=
 char *, struct stat);
 extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, ch=
ar *);
 extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *,=
 int);
+extern struct ptest_list *ptest_list_extend(struct ptest_list *, struct =
ptest_list *);
=20
 #endif // PTEST_RUNNER_LIST_H
diff --git a/tests/data2/go/ptest/run-ptest b/tests/data2/go/ptest/run-pt=
est
new file mode 100755
index 0000000..d8a9ca2
--- /dev/null
+++ b/tests/data2/go/ptest/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+echo "go"
diff --git a/tests/data2/lua/ptest/run-ptest b/tests/data2/lua/ptest/run-=
ptest
new file mode 100755
index 0000000..07a7713
--- /dev/null
+++ b/tests/data2/lua/ptest/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+echo "lua"
diff --git a/utils.h b/utils.h
index aa53707..39832e6 100644
--- a/utils.h
+++ b/utils.h
@@ -27,13 +27,15 @@
 #include "ptest_list.h"
=20
 #define PRINT_PTESTS_NOT_FOUND "No ptests found.\n"
+#define PRINT_PTESTS_NOT_FOUND_DIR "Warning: ptests not found in, %s.\n"
 #define PRINT_PTESTS_AVAILABLE "Available ptests:\n"
=20
 #define CHECK_ALLOCATION(p, size, exit_on_null) \
 	check_allocation1(p, size, __FILE__, __LINE__, exit_on_null)
=20
 struct ptest_options {
-	char *directory;
+	char **dirs;
+	int dirs_no;
 	char **exclude;
 	int list;
 	int timeout;
--=20
2.26.0

