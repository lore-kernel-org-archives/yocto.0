Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web12.2007.1626860810652574523
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=P4v4oHMu;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1F09B829F8;
	Wed, 21 Jul 2021 11:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860809;
	bh=wDRKdgtinByn/TDYhoftliHYVJO7HQ3qh/XweaErDxQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=P4v4oHMuPu8u5x0p8ijAFlxbEt2buiGu8d1WBTr4pLaOy7IZxfxpsoq3E57RW/f2V
	 Ipt5h7JIK+WFzTOj3EHMYkHJXECQ/OHu7Jx8kHsoegvA+PDguo9OM6UqNMlwnEUXWp
	 q7EzeYf7dLdx0nSBeNJK0DRRutmr6w6I1YeDV0ua1VvKR3MVYqHIqphCajS3Ayll9B
	 HkvHvTK8YvvqnNCNGAS4Ylu+v4UY7Nr98cu4lATQve7/aS04cpWNrT0pbEInbb6xcb
	 ozzDhPEHW4D+3Hc3UXyGBpOChFvRxQibrGmpX7IfgzyqSXBHSeUBrmF8KCrZSibiyj
	 R1/UgGILq80hg==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [ptest-runner 4/5] mem: Refactor ptest_list cleanup
Date: Wed, 21 Jul 2021 11:46:26 +0200
Message-Id: <20210721094627.29833-5-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

From: Adrian Freihofer <adrian.freihofer@siemens.com>

Try to make memory management more robust by assigning always NULL to
struct ptest_list pointers. It's a refactoring which probably improves
the code but does not fix a concrete bug.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 main.c             |  9 +++++----
 ptest_list.c       | 13 ++++---------
 ptest_list.h       |  8 +-------
 tests/ptest_list.c | 13 +++++++------
 tests/utils.c      | 22 +++++++++++-----------
 utils.c            |  6 +++---
 6 files changed, 31 insertions(+), 40 deletions(-)

diff --git a/main.c b/main.c
index e73626c..efa21b2 100644
--- a/main.c
+++ b/main.c
@@ -116,7 +116,8 @@ main(int argc, char *argv[])
 	mtrace();
 #endif
=20
-	struct ptest_list *head, *run;
+	struct ptest_list *head =3D NULL;
+	struct ptest_list *run =3D NULL;
 	__attribute__ ((__cleanup__(cleanup_ptest_opts))) struct ptest_options =
opts;
=20
 	opts.dirs =3D malloc(sizeof(char **) * 1);
@@ -175,7 +176,7 @@ main(int argc, char *argv[])
=20
 	head =3D NULL;
 	for (i =3D 0; i < opts.dirs_no; i ++) {
-		struct ptest_list *tmp;
+		struct ptest_list *tmp =3D NULL;
=20
 		tmp =3D get_available_ptests(opts.dirs[i], opts.timeout);
 		if (tmp =3D=3D NULL) {
@@ -211,7 +212,7 @@ main(int argc, char *argv[])
=20
 		run =3D filter_ptests(head, opts.ptests, ptest_num);
 		CHECK_ALLOCATION(run, (size_t) ptest_num, 1);
-		ptest_list_free_all(head);
+		ptest_list_free_all(&head);
 	}
=20
 	for (i =3D 0; i < ptest_exclude_num; i++)
@@ -219,7 +220,7 @@ main(int argc, char *argv[])
=20
 	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
=20
-	ptest_list_free_all(run);
+	ptest_list_free_all(&run);
=20
 	return rc;
 }
diff --git a/ptest_list.c b/ptest_list.c
index b689670..87b8c71 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -69,24 +69,19 @@ ptest_list_free(struct ptest_list *p)
 	free(p);
 }
=20
-int
-ptest_list_free_all(struct ptest_list *head)
+void
+ptest_list_free_all(struct ptest_list **head)
 {
-	int i =3D 0;
 	struct ptest_list *p, *q;
=20
-	VALIDATE_PTR_RINT(head);
-
-	p =3D head;
+	p =3D *head;
 	while (p !=3D NULL) {
 		q =3D p;
 		p =3D p->next;
=20
 		ptest_list_free(q);
-		i++;
 	}
-
-	return i;
+	*head =3D NULL;
 }
=20
 int
diff --git a/ptest_list.h b/ptest_list.h
index e583d9f..949250c 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -36,12 +36,6 @@
 		x =3D NULL; \
 	} while (0)
=20
-#define PTEST_LIST_FREE_ALL_CLEAN(x) \
-	do { \
-		ptest_list_free_all(x); \
-		x =3D NULL; \
-	} while (0)
-
 #define PTEST_LIST_ITERATE_START(head, p) for (p =3D head->next; p !=3D =
NULL; p =3D p->next) {
 #define PTEST_LIST_ITERATE_END }
=20
@@ -58,7 +52,7 @@ struct ptest_list {
=20
 extern struct ptest_list *ptest_list_alloc(void);
 extern void ptest_list_free(struct ptest_list *);
-extern int ptest_list_free_all(struct ptest_list *);
+extern void ptest_list_free_all(struct ptest_list **);
=20
 extern int ptest_list_length(struct ptest_list *);
 extern struct ptest_list *ptest_list_search(struct ptest_list *, char *)=
;
diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 37d19ae..6bbc13b 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -53,7 +53,7 @@ START_TEST(test_add)
 {
 	struct ptest_list *head =3D ptest_list_alloc();
 	ck_assert(ptest_list_add(head, strdup("perl"), NULL, 1) !=3D NULL);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -62,14 +62,15 @@ START_TEST(test_free_all)
 	struct ptest_list *head =3D NULL;
 	int i;
 =20
-	ck_assert(ptest_list_free_all(head) =3D=3D -1);
+ 	ptest_list_free_all(&head);
+	ck_assert(head =3D=3D NULL);
 	ck_assert(errno =3D=3D EINVAL);
=20
 	head =3D ptest_list_alloc();
 	for (i =3D 0; i < ptests_num; i++)
 		ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
=20
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -87,7 +88,7 @@ START_TEST(test_length)
 		ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
=20
 	ck_assert_int_eq(ptest_list_length(head), ptests_num);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -109,7 +110,7 @@ START_TEST(test_search)
 	for (i =3D ptests_num - 1; i >=3D 0; i--)
 		ck_assert(ptest_list_search(head, ptest_names[i]) !=3D NULL);
=20
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -141,7 +142,7 @@ START_TEST(test_remove)
 	ck_assert_int_eq(ptest_list_length(head), n);
=20
 	ck_assert(ptest_list_search(head, "busybox") !=3D NULL);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
diff --git a/tests/utils.c b/tests/utils.c
index 8df1b54..4e244fe 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -88,13 +88,13 @@ START_TEST(test_get_available_ptests)
 	for (i =3D 0; ptests_not_found[i] !=3D NULL; i++)
 		ck_assert(ptest_list_search(head, ptests_not_found[i]) =3D=3D NULL);
=20
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
 START_TEST(test_print_ptests)
 {
-	struct ptest_list *head;
+	struct ptest_list *head =3D NULL;
=20
 	char *buf;
 	size_t size =3D PRINT_PTEST_BUF_SIZE;
@@ -116,14 +116,14 @@ START_TEST(test_print_ptests)
=20
 	head =3D ptest_list_alloc();
 	ck_assert(print_ptests(head, fp) =3D=3D 1);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 	line =3D fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp);
 	ck_assert(line !=3D NULL);
 	ck_assert(strcmp(line, PRINT_PTESTS_NOT_FOUND) =3D=3D 0);
=20
 	head =3D get_available_ptests(opts_directory, 1);
 	ck_assert(print_ptests(head, fp) =3D=3D 0);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 	line =3D fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp);
 	ck_assert(line !=3D NULL);
 	ck_assert(strcmp(line, PRINT_PTESTS_AVAILABLE) =3D=3D 0);
@@ -144,7 +144,7 @@ END_TEST
 START_TEST(test_filter_ptests)
 {
 	struct ptest_list *head =3D get_available_ptests(opts_directory, 1);
-	struct ptest_list *head_new;
+	struct ptest_list *head_new =3D NULL;
 	char *ptest_not_exists[] =3D {
 		"glib",
 	};
@@ -161,8 +161,8 @@ START_TEST(test_filter_ptests)
 	ck_assert(head_new !=3D NULL);
 	ck_assert(ptest_list_length(head_new) =3D=3D 3);
=20
-	ptest_list_free_all(head);
-	ptest_list_free_all(head_new);
+	ptest_list_free_all(&head);
+	ptest_list_free_all(&head_new);
 }
 END_TEST
=20
@@ -191,7 +191,7 @@ START_TEST(test_run_ptests)
=20
 	rc =3D run_ptests(head, opts, "test_run_ptests", fp_stdout, fp_stderr);
 	ck_assert(rc =3D=3D 0);
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
=20
 	fclose(fp_stdout);
 	free(buf_stdout);
@@ -227,7 +227,7 @@ START_TEST(test_run_timeout_duration_ptest)
=20
 	test_ptest_expected_failure(head, timeout, "hang", search_for_timeout_a=
nd_duration);
=20
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -255,7 +255,7 @@ START_TEST(test_run_fail_ptest)
=20
 	test_ptest_expected_failure(head, timeout, "fail", search_for_fail);
=20
-	ptest_list_free_all(head);
+	ptest_list_free_all(&head);
 }
 END_TEST
=20
@@ -354,7 +354,7 @@ test_ptest_expected_failure(struct ptest_list *head, =
const int timeout, char *pr
 			fp_stdout
 		);
=20
-		PTEST_LIST_FREE_ALL_CLEAN(filtered);
+		ptest_list_free_all(&filtered);
 	}
=20
 	fclose(fp_stdout);
diff --git a/utils.c b/utils.c
index a23679a..4737bcd 100644
--- a/utils.c
+++ b/utils.c
@@ -110,7 +110,7 @@ get_ptest_file(char **ptest_file, struct stat *st_buf=
, const char *main_dir,
 struct ptest_list *
 get_available_ptests(const char *dir, int global_timeout)
 {
-	struct ptest_list *head;
+	struct ptest_list *head =3D NULL;
 	struct stat st_buf;
=20
 	int n, i;
@@ -212,7 +212,7 @@ get_available_ptests(const char *dir, int global_time=
out)
 		free(namelist);
=20
 		if (fail) {
-			PTEST_LIST_FREE_ALL_CLEAN(head);
+			ptest_list_free_all(&head);
 			errno =3D saved_errno;
 			break;
 		}
@@ -282,7 +282,7 @@ filter_ptests(struct ptest_list *head, char **ptests,=
 int ptest_num)
 		}
=20
 		if (fail) {
-			PTEST_LIST_FREE_ALL_CLEAN(head_new);
+			ptest_list_free_all(&head_new);
 			errno =3D saved_errno;
 		}=20
 	} while (0);
--=20
2.20.1

