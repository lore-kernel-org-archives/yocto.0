Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.971.1616525844628562763
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 11:57:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linaro.org header.s=google header.b=DJJFAa+i;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E876338C058A
	for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 18:57:23 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id a8so18130062oic.11
        for <yocto@yoctoproject.org>; Tue, 23 Mar 2021 11:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T9OOPrhWXPEebvMh2qrk2WXtSsCnPMxaFP2k2uygzTM=;
        b=DJJFAa+iiV6OIeSfPOoS6UzMmF7g3TsMRhyOQ6tc1AId5Fczgw7C14wkVe9VgQya18
         05j181noemZthYTOI5GrBjoFL1HaRbzDQgyQhLXQjQyKEJNeYPzM7TF3gFBzyM8iCnBw
         rhO8fBUt01g03pYHSbwZhtRYhoIrT1mUYpaSeyw3FZ8U2rtH1EpBjeGRiRY8s60w2JuF
         ohWJzubvGVK/Nz6Q7KTYteqxKX5FiRQmlMssF/hmu8NjYi4LwbKCYUiAoiU/Vtn3ef+1
         sqxIFyzBvi8k9U4S9HoZ8un3IpuuBwRPnEhLUxiZ+wOWhOiAjZADH52NONB7jjK3tyKU
         edVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T9OOPrhWXPEebvMh2qrk2WXtSsCnPMxaFP2k2uygzTM=;
        b=UqiEO8M3QaMWo7Zp0RSjXULzkz3a6QlWArmGK8z0LisUUK/EqxA8eWS1E9DjQ5PQAz
         7iOPvl2TwZKda6JLUtrKVrb7qycNpF55OHY1Vd0UebPyZvuNqKVcKI/M/YB6/ulbRZ4F
         G/9WduJ9ugkviX8HamxoTKuqoWAkegcaNMeMBFu57ZhhhW8tQlMB58/og53UlCvfgQqC
         n6Ee76M401295MjnyLP9zHD96cLvTVrHxpw6jrArqaPash/ch4cj9VpKLMIrKww1ofKq
         yi4ZygKweXDQvYZvMECeGnGd/iqBTo8eF6Z5HXWA3HbOl/OHKPGU8clbsWQi7m14W10I
         dHLQ==
X-Gm-Message-State: AOAM530wZjLsChzIdVJjyM0b4EF757DLvjyhrs2o4fWP7vhxClSxvvZ1
	XeIG1zbrgOaM2RJ3l0r6HVWn5QfQEDloSucL
X-Google-Smtp-Source: ABdhPJxusRnOUiWGs7qLkW2j2bEGzB6Qj5cMuK70Ad36FL15TXPRKq6wZQoqYYrB7PKMyMB5Jp9Xuw==
X-Received: by 2002:aca:f48f:: with SMTP id s137mr4346363oih.101.1616525842648;
        Tue, 23 Mar 2021 11:57:22 -0700 (PDT)
Received: from blackbox.Home ([2806:10b7:2:e880:2c32:cfff:fe8e:de1f])
        by smtp.gmail.com with ESMTPSA id r10sm917744ots.33.2021.03.23.11.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 11:57:22 -0700 (PDT)
From: "Anibal Limon" <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Cc: yifan.yu@windriver.com,
	Randy.MacLeod@windriver.com,
	nicolas.dechesne@linaro.org,
	richard.purdie@linuxfoundation.org,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCH 1/2] Add support to specify timeout by ptest
Date: Tue, 23 Mar 2021 12:57:18 -0600
Message-Id: <20210323185719.2949300-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The ptest-runner has a default timeout of 300 secs and can be override
usint -t option in the runner.

There is a need to specify timeout by ptest because not all ptests takes
the sametime also are affected by machine. So add support to read a file
inside ptest folder (timeout-ptest) and override global timeout with it.

For example in glib-2.0,

  /usr/lib/glib-2.0/ptest/run-ptest
  /usr/lib/glib-2.0/ptest/timeout-ptest

Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
---
 main.c       |  2 +-
 ptest_list.c |  3 ++-
 ptest_list.h |  3 ++-
 utils.c      | 69 +++++++++++++++++++++++++++++++++++++---------------
 utils.h      |  2 +-
 5 files changed, 55 insertions(+), 24 deletions(-)

diff --git a/main.c b/main.c
index e3a1b69..467548e 100644
--- a/main.c
+++ b/main.c
@@ -158,7 +158,7 @@ main(int argc, char *argv[])
 	for (i =3D 0; i < opts.dirs_no; i ++) {
 		struct ptest_list *tmp;
=20
-		tmp =3D get_available_ptests(opts.dirs[i]);
+		tmp =3D get_available_ptests(opts.dirs[i], opts.timeout);
 		if (tmp =3D=3D NULL) {
 			fprintf(stderr, PRINT_PTESTS_NOT_FOUND_DIR, opts.dirs[i]);
 			continue;
diff --git a/ptest_list.c b/ptest_list.c
index 917ef4f..b689670 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -166,7 +166,7 @@ ptest_list_search_by_file(struct ptest_list *head, ch=
ar *run_ptest, struct stat
 }
=20
 struct ptest_list *
-ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
+ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest, in=
t timeout)
 {
 	struct ptest_list *n, *p;=20
=20
@@ -179,6 +179,7 @@ ptest_list_add(struct ptest_list *head, char *ptest, =
char *run_ptest)
=20
 	n->ptest =3D ptest;
 	n->run_ptest =3D run_ptest;
+	n->timeout =3D timeout;
=20
 	n->prev =3D NULL;
 	n->next =3D NULL;
diff --git a/ptest_list.h b/ptest_list.h
index 02a64bb..e583d9f 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -50,6 +50,7 @@
 struct ptest_list {
 	char *ptest;
 	char *run_ptest;
+	int timeout;
=20
 	struct ptest_list *next;
 	struct ptest_list *prev;
@@ -62,7 +63,7 @@ extern int ptest_list_free_all(struct ptest_list *);
 extern int ptest_list_length(struct ptest_list *);
 extern struct ptest_list *ptest_list_search(struct ptest_list *, char *)=
;
 extern struct ptest_list *ptest_list_search_by_file(struct ptest_list *,=
 char *, struct stat);
-extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, ch=
ar *);
+extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, ch=
ar *, int);
 extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *,=
 int);
 extern struct ptest_list *ptest_list_extend(struct ptest_list *, struct =
ptest_list *);
=20
diff --git a/utils.c b/utils.c
index 1a3c90f..424115f 100644
--- a/utils.c
+++ b/utils.c
@@ -84,9 +84,30 @@ check_allocation1(void *p, size_t size, char *file, in=
t line, int exit_on_null)
 	}
 }
=20
+static inline char *
+get_ptest_file(char **ptest_file, struct stat *st_buf, const char *main_=
dir,
+		const char *ptest_dir, const char *file_name)
+{
+	if (asprintf(ptest_file, "%s/%s/ptest/%s",
+	    main_dir, ptest_dir, file_name) =3D=3D -1)  {
+		return NULL;
+	}
+
+	if (stat(*ptest_file, st_buf) =3D=3D -1) {
+		free(*ptest_file);
+		return NULL;
+	}
+
+	if (!S_ISREG(st_buf->st_mode)) {
+		free(*ptest_file);
+		return NULL;
+	}
+
+	return *ptest_file;
+}
=20
 struct ptest_list *
-get_available_ptests(const char *dir)
+get_available_ptests(const char *dir, int global_timeout)
 {
 	struct ptest_list *head;
 	struct stat st_buf;
@@ -123,10 +144,11 @@ get_available_ptests(const char *dir)
 			break;
 		}
=20
-
 		fail =3D 0;
 		for (i =3D 0; i < n; i++) {
 			char *run_ptest;
+			char *timeout_ptest;
+			int timeout;
=20
 			char *d_name =3D strdup(namelist[i]->d_name);
 			CHECK_ALLOCATION(d_name, sizeof(namelist[i]->d_name), 0);
@@ -142,34 +164,38 @@ get_available_ptests(const char *dir)
 				continue;
 			}
=20
-			if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest",
-			    realdir, d_name) =3D=3D -1)  {
-				fail =3D 1;
+			if (get_ptest_file(&run_ptest, &st_buf, realdir, d_name, "run-ptest")=
 =3D=3D NULL) {
 				saved_errno =3D errno;
 				free(d_name);
-				break;
-			}
-
-			if (stat(run_ptest, &st_buf) =3D=3D -1) {
-				free(run_ptest);
-				free(d_name);
 				continue;
 			}
=20
-			if (!S_ISREG(st_buf.st_mode)) {
+			if (ptest_list_search_by_file(head, run_ptest, st_buf)) {
 				free(run_ptest);
 				free(d_name);
 				continue;
 			}
=20
-			if (ptest_list_search_by_file(head, run_ptest, st_buf)) {
-				free(run_ptest);
-				free(d_name);
-				continue;
+			timeout =3D global_timeout;
+			if (get_ptest_file(&timeout_ptest, &st_buf, realdir, d_name, "timeout=
-ptest")) {
+				FILE *f =3D fopen(timeout_ptest, "r");
+
+				if (f =3D=3D NULL) {
+					fail =3D 1;
+					saved_errno =3D errno;
+					free(run_ptest);
+					free(d_name);
+					free(timeout_ptest);
+					break;
+				}
+				fscanf(f, "%d", &timeout);
+				fclose(f);
+
+				free(timeout_ptest);
 			}
=20
 			struct ptest_list *p =3D ptest_list_add(head,
-				d_name, run_ptest);
+				d_name, run_ptest, timeout);
 			CHECK_ALLOCATION(p, sizeof(struct ptest_list *), 0);
 			if (p =3D=3D NULL) {
 				fail =3D 1;
@@ -229,6 +255,7 @@ filter_ptests(struct ptest_list *head, char **ptests,=
 int ptest_num)
 		for (i =3D 0; i < ptest_num; i++) {
 			char *ptest;
 			char *run_ptest;
+			int timeout;
=20
 			n =3D ptest_list_search(head, ptests[i]);
 			if (n =3D=3D NULL) {
@@ -239,13 +266,14 @@ filter_ptests(struct ptest_list *head, char **ptest=
s, int ptest_num)
=20
 			ptest =3D strdup(n->ptest);
 			run_ptest =3D strdup(n->run_ptest);
+			timeout =3D n->timeout;
 			if (ptest =3D=3D NULL || run_ptest =3D=3D NULL) {
 				saved_errno =3D errno;
 				fail =3D 1;
 				break;
 			}
=20
-			if (ptest_list_add(head_new, ptest, run_ptest) =3D=3D NULL) {
+			if (ptest_list_add(head_new, ptest, run_ptest, timeout) =3D=3D NULL) =
{
 				saved_errno =3D errno;
 				fail =3D 1;
 				break;
@@ -509,8 +537,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
=20
-
-				status =3D wait_child(child, opts.timeout);
+				status =3D wait_child(child, p->timeout);
=20
 				entime =3D time(NULL);
 				duration =3D entime - sttime;
@@ -528,6 +555,8 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
=20
 				fprintf(fp, "END: %s\n", ptest_dir);
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, entime));
+
+				free(ptest_dir);
 			}
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
diff --git a/utils.h b/utils.h
index 39832e6..69940d0 100644
--- a/utils.h
+++ b/utils.h
@@ -45,7 +45,7 @@ struct ptest_options {
=20
=20
 extern void check_allocation1(void *, size_t, char *, int, int);
-extern struct ptest_list *get_available_ptests(const char *);
+extern struct ptest_list *get_available_ptests(const char *, int);
 extern int print_ptests(struct ptest_list *, FILE *);
 extern struct ptest_list *filter_ptests(struct ptest_list *, char **, in=
t);
 extern int run_ptests(struct ptest_list *, const struct ptest_options,
--=20
2.31.0

