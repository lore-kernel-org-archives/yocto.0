Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6678.1574699873844289259
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:37:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKX63qff;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A5BE00F45; Mon, 25 Nov 2019 08:37:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3628E00F22
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:37:50 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id j18so296208wmk.1
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sCSbTD/07R+PJxAbREObxV2vsUj941ddV1iLSGGX3ck=;
        b=EKX63qffs2+8LdCyWZhx3L4IJXw0w8c4ctX65TQgkrwhJvzJO/vA7gggQKe5YB/GlE
         hHakKP0m1h/ZldmcEmiOYdXv67IhnVFSmXkXEcllFF63SxGX3Ehb8sGKaN9bRok4/8ZW
         FA52jdP8uGC9a09YWiirEdpuzLNUMIjQj1SGR8TLGJz2rfSVIffq4uVUx9qklKhZa1Mx
         +TDHAelGO4IOGiZEHn4CSTz1dKWCXClMfuGbHE+0dIw+4jHHQysLaD8wYT+ExUdVDS5k
         r/QM72Ts/Lu2Z8/Y1K3Z4dz+5KnNqKOyOB8zUCdBSRSJToExpkYzZI7uW+YToX2pcsp5
         d8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=sCSbTD/07R+PJxAbREObxV2vsUj941ddV1iLSGGX3ck=;
        b=tGBLd9oA6uL1AC+j1RJRyF6N4WUlCNtjZN4ksgz/tZjgxl5kREhN3E0dsEF+8mXVDk
         pmXUBuUo5sOQaYsu9vTUvv7ESkcD6X9yTibw4fEnOu4JP2Qn3m0LPmz8XPI+0j4WMkV6
         AgbelByRRfy26jX8jXojTeqh+T+cV/D3MZDqNyQ0fz1XH3jUDhGiYNnbBdGBH+IKj0zr
         4lVLgOiLN77QA0BVVs/CeYZ1m2U8hBLxgSDq5IEvkSChjtwWYR2d/NQ+lcPs0KqmQzZ1
         iVFj+faMypdKS/9qFFVP6PREU2++6dAZNfkUNnY0ErSZ7ean5IC3CKLunz4dBiBUBDKl
         afKw==
X-Gm-Message-State: APjAAAWkjZ6XM4L5kDbprgI/KVU6kZrUd4SmoM1kGo3x9M4Hs/7EVgVR
	9nEoe/PVl4I5X5hqQJ/JJDf5muJ+
X-Google-Smtp-Source: APXvYqxQiVUdDkPxf1qu+b84wiyW3Y0Nsjq/tofp2Rda4HpCNBKC1wVITUkUSjXl2EvC0ph3PWn42Q==
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr21729800wmj.137.1574699869194;
        Mon, 25 Nov 2019 08:37:49 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id t185sm9400479wmf.45.2019.11.25.08.37.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 08:37:48 -0800 (PST)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-gplv2][patch 2/2] rsync: update to latest gplv2 git version + fixes
Date: Mon, 25 Nov 2019 21:39:28 +0500
Message-Id: <20191125163928.4685-2-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20191125163928.4685-1-kergoth@gmail.com>
References: <20191125163928.4685-1-kergoth@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

This fixes some issues with the gplv2 version that we ran into at Mentor.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 ...oss-compiling-tell-the-user-to-run-mkroun.patch |  71 +++++++++++
 ...-creation-of-rounding.h-to-use-a-set-of-c.patch | 142 +++++++++++++++++++++
 .../0003-Renamed-mkrounding.c-to-rounding.c.patch  | 104 +++++++++++++++
 .../0004-Improved-the-manpage-install-rules.patch  |  31 +++++
 recipes-devtools/rsync/rsync-2.6.9/addrinfo.h      | 115 +++++++++++++++++
 .../rsync-2.6.9/force-protocol-version-29.patch    |  12 ++
 recipes-devtools/rsync/rsync.inc                   |  20 ---
 recipes-devtools/rsync/rsync_2.6.9+git.bb          |  47 +++++++
 recipes-devtools/rsync/rsync_2.6.9.bb              |  16 ---
 9 files changed, 522 insertions(+), 36 deletions(-)
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/0001-If-we-re-cross-compiling-tell-the-user-to-run-mkroun.patch
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/0002-Changed-the-creation-of-rounding.h-to-use-a-set-of-c.patch
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/0003-Renamed-mkrounding.c-to-rounding.c.patch
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/0004-Improved-the-manpage-install-rules.patch
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/addrinfo.h
 create mode 100644 recipes-devtools/rsync/rsync-2.6.9/force-protocol-version-29.patch
 delete mode 100644 recipes-devtools/rsync/rsync.inc
 create mode 100644 recipes-devtools/rsync/rsync_2.6.9+git.bb
 delete mode 100644 recipes-devtools/rsync/rsync_2.6.9.bb

diff --git a/recipes-devtools/rsync/rsync-2.6.9/0001-If-we-re-cross-compiling-tell-the-user-to-run-mkroun.patch b/recipes-devtools/rsync/rsync-2.6.9/0001-If-we-re-cross-compiling-tell-the-user-to-run-mkroun.patch
new file mode 100644
index 00000000..1542f193
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/0001-If-we-re-cross-compiling-tell-the-user-to-run-mkroun.patch
@@ -0,0 +1,71 @@
+From 32da44bde46b8b78b25d37a172e7a57257ca5b8b Mon Sep 17 00:00:00 2001
+From: Wayne Davison <wayned@samba.org>
+Date: Tue, 1 Jan 2008 08:59:26 -0800
+Subject: [PATCH 1/4] If we're cross-compiling, tell the user to run
+ mkrounding on the target machine to build the
+ rounding.h file. (cherry picked from commit
+ f859d3ded6285c499898540ca4fb16f1e1a7d26b)
+
+Conflicts:
+
+	NEWS
+	configure.in
+---
+ Makefile.in  |    9 ++++++++-
+ NEWS         |    6 ++++++
+ configure.in |    2 ++
+ 3 files changed, 16 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index e9bd2c1..c2f779f 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -77,7 +77,14 @@ $(OBJS): $(HEADERS)
+ flist.o: rounding.h
+ 
+ rounding.h: mkrounding$(EXEEXT)
+-	./mkrounding$(EXEEXT) >rounding.h
++	@if test x@cross_compiling@ = xno; then \
++	    ./mkrounding$(EXEEXT) >rounding.h; \
++	else \
++	    echo "Copy the mkrounding$(EXEEXT) command to the target machine and run it like this:"; \
++	    echo "    ./mkrounding$(EXEEXT) >rounding.h"; \
++	    echo "Then copy the resulting rounding.h file to this build machine and rerun \"make\"."; \
++	    exit 1; \
++	fi
+ 
+ mkrounding$(EXEEXT): mkrounding.c rsync.h
+ 	@sed '1,/^struct file_struct/d; /^}/,$$d' <$(srcdir)/rsync.h >mkrounding.h
+diff --git a/NEWS b/NEWS
+index 9d23af0..bf6067e 100644
+--- a/NEWS
++++ b/NEWS
+@@ -4,6 +4,12 @@ Changes since 2.6.9:
+ 
+   BUG FIXES:
+ 
++    - If a file's data arrived successfully on the receiving side but the
++      rename of the tempory file to the destination file failed AND the
++      --remove-souce-files (or the deprecated --remove-sent-files) option
++      was specified, rsync no longer erroneously removes the associated
++      source file.
++
+     - Fixed the output of -ii when combined with one of the --*-dest options:
+       it now itemizes all the items, not just the changed ones.
+ 
+diff --git a/configure.in b/configure.in
+index 890a76b..aee2693 100644
+--- a/configure.in
++++ b/configure.in
+@@ -805,6 +805,8 @@ AC_SUBST(OBJ_SAVE)
+ AC_SUBST(OBJ_RESTORE)
+ AC_SUBST(CC_SHOBJ_FLAG)
+ AC_SUBST(BUILD_POPT)
++AC_SUBST(cross_compiling)
++
+ 
+ AC_CONFIG_FILES([Makefile lib/dummy zlib/dummy popt/dummy shconfig])
+ AC_OUTPUT
+-- 
+1.7.9.5
+
diff --git a/recipes-devtools/rsync/rsync-2.6.9/0002-Changed-the-creation-of-rounding.h-to-use-a-set-of-c.patch b/recipes-devtools/rsync/rsync-2.6.9/0002-Changed-the-creation-of-rounding.h-to-use-a-set-of-c.patch
new file mode 100644
index 00000000..438f12d6
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/0002-Changed-the-creation-of-rounding.h-to-use-a-set-of-c.patch
@@ -0,0 +1,142 @@
+From 30932a3a7a3843c23577d0fdc6d61311b0454766 Mon Sep 17 00:00:00 2001
+From: Wayne Davison <wayned@samba.org>
+Date: Tue, 1 Jan 2008 10:27:19 -0800
+Subject: [PATCH 2/4] Changed the creation of rounding.h to use a set of
+ compile-time checks similar to how configure determines
+ the size of variables.
+
+Conflicts:
+
+	.gitignore
+	Makefile.in
+	configure.in
+---
+ Makefile.in  |   27 ++++++++++++++-------------
+ configure.in |    1 -
+ mkrounding.c |   46 +++++++++-------------------------------------
+ 3 files changed, 23 insertions(+), 51 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index c2f779f..a660a75 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -76,21 +76,22 @@ $(OBJS): $(HEADERS)
+ 
+ flist.o: rounding.h
+ 
+-rounding.h: mkrounding$(EXEEXT)
+-	@if test x@cross_compiling@ = xno; then \
+-	    ./mkrounding$(EXEEXT) >rounding.h; \
+-	else \
+-	    echo "Copy the mkrounding$(EXEEXT) command to the target machine and run it like this:"; \
+-	    echo "    ./mkrounding$(EXEEXT) >rounding.h"; \
+-	    echo "Then copy the resulting rounding.h file to this build machine and rerun \"make\"."; \
++rounding.h: mkrounding.c rsync.h
++	@for r in 0 1 3; do \
++	    if $(CC) $(CFLAGS) $(LDFLAGS) -o mkrounding -DEXTRA_ROUNDING=$$r -I. $(srcdir)/mkrounding.c >/dev/null 2>&1; then \
++		echo "#define EXTRA_ROUNDING $$r" >rounding.h; \
++		if test -f "$$HOME/build_farm/build_test.fns"; then \
++		    echo "EXTRA_ROUNDING is $$r" >&2; \
++		fi; \
++		break; \
++	    fi; \
++	done
++	@rm -f mkrounding
++	@if test -f rounding.h; then : ; else \
++	    echo "Failed to create rounding.h!"; \
+ 	    exit 1; \
+ 	fi
+ 
+-mkrounding$(EXEEXT): mkrounding.c rsync.h
+-	@sed '1,/^struct file_struct/d; /^}/,$$d' <$(srcdir)/rsync.h >mkrounding.h
+-	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ -I. $(srcdir)/mkrounding.c
+-	@rm mkrounding.h
+-
+ tls$(EXEEXT): $(TLS_OBJ)
+ 	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(TLS_OBJ) $(LIBS)
+ 
+@@ -119,7 +120,7 @@ proto:
+ 
+ clean: cleantests
+ 	rm -f *~ $(OBJS) $(TLS_OBJ) $(CHECK_PROGS) $(CHECK_OBJS) \
+-		mkrounding mkrounding.h rounding.h
++		mkrounding rounding.h
+ 
+ cleantests:
+ 	rm -rf ./testtmp*
+diff --git a/configure.in b/configure.in
+index aee2693..61458cf 100644
+--- a/configure.in
++++ b/configure.in
+@@ -805,7 +805,6 @@ AC_SUBST(OBJ_SAVE)
+ AC_SUBST(OBJ_RESTORE)
+ AC_SUBST(CC_SHOBJ_FLAG)
+ AC_SUBST(BUILD_POPT)
+-AC_SUBST(cross_compiling)
+ 
+ 
+ AC_CONFIG_FILES([Makefile lib/dummy zlib/dummy popt/dummy shconfig])
+diff --git a/mkrounding.c b/mkrounding.c
+index a5a5229..ec0f277 100644
+--- a/mkrounding.c
++++ b/mkrounding.c
+@@ -1,47 +1,19 @@
+ #include "rsync.h"
+ 
+-struct test1 {
+-    union file_extras extras1[1];
+-    struct {
+-#	include "mkrounding.h"
+-    } file;
+-};
+-
+-struct test2 {
+-    union file_extras extras2[2];
+-    struct {
+-#	include "mkrounding.h"
+-    } file;
+-};
++#define ARRAY_LEN (EXTRA_ROUNDING+1)
++#define SIZEOF(x) ((long int)sizeof (x))
+ 
+-struct test4 {
+-    union file_extras extras4[4];
+-    struct {
+-#	include "mkrounding.h"
+-    } file;
++struct test {
++    union file_extras extras[ARRAY_LEN];
++    struct file_struct file;
+ };
+ 
+-#define SIZE_TEST(n) (sizeof (struct test ## n) == EXTRA_LEN * n + sizeof (struct file_struct))
++#define ACTUAL_SIZE	SIZEOF(struct test)
++#define EXPECTED_SIZE	(SIZEOF(union file_extras) * ARRAY_LEN + SIZEOF(struct file_struct))
+ 
+  int main(UNUSED(int argc), UNUSED(char *argv[]))
+ {
+-    int cnt;
+-    if (SIZE_TEST(1))
+-	cnt = 0;
+-    else if (SIZE_TEST(2))
+-	cnt = 1;
+-    else if (SIZE_TEST(4))
+-	cnt = 3;
+-    else {
+-	fprintf(stderr, "Unable to determine required file_extras rounding!\n");
+-	cnt = 3;
+-    }
+-    if (cnt)
+-	fprintf(stderr, "Rounding file_extras in multiples of %d", cnt + 1);
+-    else
+-	fprintf(stderr, "No rounding needed for file_extras");
+-    fprintf(stderr, " (EXTRA_LEN=%d, FILE_STRUCT_LEN=%d)\n",
+-	    (int)EXTRA_LEN, (int)FILE_STRUCT_LEN);
+-    printf("#define EXTRA_ROUNDING %d\n", cnt);
++    static int test_array[1 - 2 * (ACTUAL_SIZE != EXPECTED_SIZE)];
++    test_array[0] = 0;
+     return 0;
+ }
+-- 
+1.7.9.5
+
diff --git a/recipes-devtools/rsync/rsync-2.6.9/0003-Renamed-mkrounding.c-to-rounding.c.patch b/recipes-devtools/rsync/rsync-2.6.9/0003-Renamed-mkrounding.c-to-rounding.c.patch
new file mode 100644
index 00000000..60d718e8
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/0003-Renamed-mkrounding.c-to-rounding.c.patch
@@ -0,0 +1,104 @@
+From f41f666ea6b6bec85b40d4abb483b55438897f62 Mon Sep 17 00:00:00 2001
+From: Wayne Davison <wayned@samba.org>
+Date: Tue, 1 Jan 2008 10:34:27 -0800
+Subject: [PATCH 3/4] Renamed mkrounding.c to rounding.c. (cherry picked from
+ commit a5fd4b6e6e3d4649f0f65cd4a0385283fe69154c)
+
+Conflicts:
+
+	Makefile.in
+---
+ Makefile.in  |    8 ++++----
+ mkrounding.c |   19 -------------------
+ rounding.c   |   19 +++++++++++++++++++
+ 3 files changed, 23 insertions(+), 23 deletions(-)
+ delete mode 100644 mkrounding.c
+ create mode 100644 rounding.c
+
+diff --git a/Makefile.in b/Makefile.in
+index a660a75..8b5e2f1 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -76,9 +76,9 @@ $(OBJS): $(HEADERS)
+ 
+ flist.o: rounding.h
+ 
+-rounding.h: mkrounding.c rsync.h
++rounding.h: rounding.c rsync.h
+ 	@for r in 0 1 3; do \
+-	    if $(CC) $(CFLAGS) $(LDFLAGS) -o mkrounding -DEXTRA_ROUNDING=$$r -I. $(srcdir)/mkrounding.c >/dev/null 2>&1; then \
++	    if $(CC) $(CFLAGS) $(LDFLAGS) -o rounding -DEXTRA_ROUNDING=$$r -I. $(srcdir)/rounding.c >/dev/null 2>&1; then \
+ 		echo "#define EXTRA_ROUNDING $$r" >rounding.h; \
+ 		if test -f "$$HOME/build_farm/build_test.fns"; then \
+ 		    echo "EXTRA_ROUNDING is $$r" >&2; \
+@@ -86,7 +86,7 @@ rounding.h: mkrounding.c rsync.h
+ 		break; \
+ 	    fi; \
+ 	done
+-	@rm -f mkrounding
++	@rm -f rounding
+ 	@if test -f rounding.h; then : ; else \
+ 	    echo "Failed to create rounding.h!"; \
+ 	    exit 1; \
+@@ -120,7 +120,7 @@ proto:
+ 
+ clean: cleantests
+ 	rm -f *~ $(OBJS) $(TLS_OBJ) $(CHECK_PROGS) $(CHECK_OBJS) \
+-		mkrounding rounding.h
++		rounding rounding.h
+ 
+ cleantests:
+ 	rm -rf ./testtmp*
+diff --git a/mkrounding.c b/mkrounding.c
+deleted file mode 100644
+index ec0f277..0000000
+--- a/mkrounding.c
++++ /dev/null
+@@ -1,19 +0,0 @@
+-#include "rsync.h"
+-
+-#define ARRAY_LEN (EXTRA_ROUNDING+1)
+-#define SIZEOF(x) ((long int)sizeof (x))
+-
+-struct test {
+-    union file_extras extras[ARRAY_LEN];
+-    struct file_struct file;
+-};
+-
+-#define ACTUAL_SIZE	SIZEOF(struct test)
+-#define EXPECTED_SIZE	(SIZEOF(union file_extras) * ARRAY_LEN + SIZEOF(struct file_struct))
+-
+- int main(UNUSED(int argc), UNUSED(char *argv[]))
+-{
+-    static int test_array[1 - 2 * (ACTUAL_SIZE != EXPECTED_SIZE)];
+-    test_array[0] = 0;
+-    return 0;
+-}
+diff --git a/rounding.c b/rounding.c
+new file mode 100644
+index 0000000..ec0f277
+--- /dev/null
++++ b/rounding.c
+@@ -0,0 +1,19 @@
++#include "rsync.h"
++
++#define ARRAY_LEN (EXTRA_ROUNDING+1)
++#define SIZEOF(x) ((long int)sizeof (x))
++
++struct test {
++    union file_extras extras[ARRAY_LEN];
++    struct file_struct file;
++};
++
++#define ACTUAL_SIZE	SIZEOF(struct test)
++#define EXPECTED_SIZE	(SIZEOF(union file_extras) * ARRAY_LEN + SIZEOF(struct file_struct))
++
++ int main(UNUSED(int argc), UNUSED(char *argv[]))
++{
++    static int test_array[1 - 2 * (ACTUAL_SIZE != EXPECTED_SIZE)];
++    test_array[0] = 0;
++    return 0;
++}
+-- 
+1.7.9.5
+
diff --git a/recipes-devtools/rsync/rsync-2.6.9/0004-Improved-the-manpage-install-rules.patch b/recipes-devtools/rsync/rsync-2.6.9/0004-Improved-the-manpage-install-rules.patch
new file mode 100644
index 00000000..83163713
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/0004-Improved-the-manpage-install-rules.patch
@@ -0,0 +1,31 @@
+From ae41600a129cc0ada5ce33b1c5c1afc8c3c9cb63 Mon Sep 17 00:00:00 2001
+From: Wayne Davison <wayned@samba.org>
+Date: Fri, 9 Nov 2007 18:12:40 +0000
+Subject: [PATCH 4/4] Improved the manpage install rules. (cherry picked from
+ commit c8dccf8fb4949ad8f2c25f86808b517a5b30faf9)
+
+Conflicts:
+
+	Makefile.in
+---
+ Makefile.in |    4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 8b5e2f1..de37ddc 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -63,8 +63,8 @@ install: all
+ 	${INSTALLCMD} ${INSTALL_STRIP} -m 755 rsync$(EXEEXT) ${DESTDIR}${bindir}
+ 	-mkdir -p ${DESTDIR}${mandir}/man1
+ 	-mkdir -p ${DESTDIR}${mandir}/man5
+-	${INSTALLMAN} -m 644 $(srcdir)/rsync.1 ${DESTDIR}${mandir}/man1
+-	${INSTALLMAN} -m 644 $(srcdir)/rsyncd.conf.5 ${DESTDIR}${mandir}/man5
++	if test -f $(srcdir)/rsync.1; then ${INSTALLMAN} -m 644 $(srcdir)/rsync.1 ${DESTDIR}${mandir}/man1; fi
++	if test -f $(srcdir)/rsyncd.conf.5; then ${INSTALLMAN} -m 644 $(srcdir)/rsyncd.conf.5 ${DESTDIR}${mandir}/man5; fi
+ 
+ install-strip:
+ 	$(MAKE) INSTALL_STRIP='-s' install
+-- 
+1.7.9.5
+
diff --git a/recipes-devtools/rsync/rsync-2.6.9/addrinfo.h b/recipes-devtools/rsync/rsync-2.6.9/addrinfo.h
new file mode 100644
index 00000000..1cf241f6
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/addrinfo.h
@@ -0,0 +1,115 @@
+/*
+ * Copyright (C) 1995, 1996, 1997, 1998, and 1999 WIDE Project.
+ * All rights reserved.
+ * 
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of the project nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * 
+ * THIS SOFTWARE IS PROVIDED BY THE PROJECT AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+/**
+ * @file addrinfo.h
+ *
+ * Replacement getaddrinfo() for machines that don't have it.  The new
+ * getaddrinfo()/getnameinfo() interface is implemented on top of the
+ * traditional resolver calls.
+ **/
+
+#ifndef HAVE_GETADDRINFO
+
+#ifndef EAI_ADDRFAMILY
+/*
+ * Error return codes from getaddrinfo()
+ */
+#define	EAI_ADDRFAMILY	 1	/* address family for hostname not supported */
+#define	EAI_AGAIN	 2	/* temporary failure in name resolution */
+#define	EAI_BADFLAGS	 3	/* invalid value for ai_flags */
+#define	EAI_FAIL	 4	/* non-recoverable failure in name resolution */
+#define	EAI_FAMILY	 5	/* ai_family not supported */
+#define	EAI_MEMORY	 6	/* memory allocation failure */
+#define	EAI_NODATA	 7	/* no address associated with hostname */
+#define	EAI_NONAME	 8	/* hostname nor servname provided, or not known */
+#define	EAI_SERVICE	 9	/* servname not supported for ai_socktype */
+#define	EAI_SOCKTYPE	10	/* ai_socktype not supported */
+#define	EAI_SYSTEM	11	/* system error returned in errno */
+#define EAI_BADHINTS	12
+#define EAI_PROTOCOL	13
+#define EAI_MAX		14
+#endif /* ndef EAI_ADDRFAMILY */
+
+/*
+ * Flag values for getaddrinfo()
+ */
+
+#ifndef AI_PASSIVE
+
+#define	AI_PASSIVE	0x00000001 /* get address to use bind() */
+#define	AI_CANONNAME	0x00000002 /* fill ai_canonname */
+#define	AI_NUMERICHOST	0x00000004 /* prevent name resolution */
+/* valid flags for addrinfo */
+#define	AI_MASK		(AI_PASSIVE | AI_CANONNAME | AI_NUMERICHOST)
+
+#define	AI_ALL		0x00000100 /* IPv6 and IPv4-mapped (with AI_V4MAPPED) */
+#define	AI_V4MAPPED_CFG	0x00000200 /* accept IPv4-mapped if kernel supports */
+#define	AI_ADDRCONFIG	0x00000400 /* only if any address is assigned */
+#define	AI_V4MAPPED	0x00000800 /* accept IPv4-mapped IPv6 address */
+/* special recommended flags for getipnodebyname */
+#define	AI_DEFAULT	(AI_V4MAPPED_CFG | AI_ADDRCONFIG)
+
+/*
+ * Constants for getnameinfo()
+ */
+#define	NI_MAXHOST	1025
+#define	NI_MAXSERV	32
+
+/*
+ * Flag values for getnameinfo()
+ */
+#define	NI_NOFQDN	0x00000001
+#define	NI_NUMERICHOST	0x00000002
+#define	NI_NAMEREQD	0x00000004
+#define	NI_NUMERICSERV	0x00000008
+#define	NI_DGRAM	0x00000010
+
+struct addrinfo {
+	int	ai_flags;	/* AI_PASSIVE, AI_CANONNAME */
+	int	ai_family;	/* PF_xxx */
+	int	ai_socktype;	/* SOCK_xxx */
+	int	ai_protocol;	/* 0 or IPPROTO_xxx for IPv4 and IPv6 */
+	size_t	ai_addrlen;	/* length of ai_addr */
+	char	*ai_canonname;	/* canonical name for hostname */
+	struct sockaddr *ai_addr;	/* binary address */
+	struct addrinfo *ai_next;	/* next structure in linked list */
+};
+
+extern void freehostent(struct hostent *);
+extern char *gai_strerror(int);
+#endif /* AI_PASSIVE */
+#endif /* HAVE_GETADDRINFO */
+
+#ifndef HAVE_SOCKADDR_STORAGE
+struct sockaddr_storage {
+	unsigned long	align;
+	unsigned char	fill[128 - sizeof (unsigned long)];
+};
+#endif
diff --git a/recipes-devtools/rsync/rsync-2.6.9/force-protocol-version-29.patch b/recipes-devtools/rsync/rsync-2.6.9/force-protocol-version-29.patch
new file mode 100644
index 00000000..ec198748
--- /dev/null
+++ b/recipes-devtools/rsync/rsync-2.6.9/force-protocol-version-29.patch
@@ -0,0 +1,12 @@
+diff -Naur old/rsync.h new/rsync.h
+--- old/rsync.h	2014-04-08 18:21:34.000000000 +1100
++++ new/rsync.h	2014-04-15 20:28:02.000000000 +1100
+@@ -82,7 +82,7 @@
+ 			     == ((unsigned)(b2) & (unsigned)(mask)))
+ 
+ /* update this if you make incompatible changes */
+-#define PROTOCOL_VERSION 30
++#define PROTOCOL_VERSION 29
+ 
+ /* We refuse to interoperate with versions that are not in this range.
+  * Note that we assume we'll work with later versions: the onus is on
diff --git a/recipes-devtools/rsync/rsync.inc b/recipes-devtools/rsync/rsync.inc
deleted file mode 100644
index 26c023af..00000000
--- a/recipes-devtools/rsync/rsync.inc
+++ /dev/null
@@ -1,20 +0,0 @@
-SUMMARY = "File synchronization tool"
-HOMEPAGE = "http://rsync.samba.org/"
-BUGTRACKER = "http://rsync.samba.org/bugzilla.html"
-SECTION = "console/network"
-
-DEPENDS = "popt"
-
-SRC_URI = "https://download.samba.org/pub/${BPN}/src/${BP}.tar.gz \
-           file://rsyncd.conf"
-
-inherit autotools
-
-do_install_append() {
-	install -d ${D}${sysconfdir}
-	install -m 0644 ${WORKDIR}/rsyncd.conf ${D}${sysconfdir}
-}
-
-EXTRA_OEMAKE='STRIP=""'
-
-PACKAGECONFIG[ipv6] = "--enable-ipv6,--disable-ipv6,"
diff --git a/recipes-devtools/rsync/rsync_2.6.9+git.bb b/recipes-devtools/rsync/rsync_2.6.9+git.bb
new file mode 100644
index 00000000..2f428efb
--- /dev/null
+++ b/recipes-devtools/rsync/rsync_2.6.9+git.bb
@@ -0,0 +1,47 @@
+SUMMARY = "File synchronization tool"
+HOMEPAGE = "http://rsync.samba.org/"
+BUGTRACKER = "http://rsync.samba.org/bugzilla.html"
+SECTION = "console/network"
+
+DEPENDS = "popt"
+
+SRC_URI = "git://git.samba.org/rsync.git;protocol=https \
+           file://rsyncd.conf \
+           file://addrinfo.h \
+           file://rsync-2.6.9-fname-obo.patch \
+           file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
+           file://0001-If-we-re-cross-compiling-tell-the-user-to-run-mkroun.patch \
+           file://0002-Changed-the-creation-of-rounding.h-to-use-a-set-of-c.patch \
+           file://0003-Renamed-mkrounding.c-to-rounding.c.patch \
+           file://0004-Improved-the-manpage-install-rules.patch \
+           file://force-protocol-version-29.patch \
+"
+FILESPATH =. "${@base_set_filespath(["${FILE_DIRNAME}/${BPN}-2.6.9"], d)}:"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=6d5a9d4c4d3af25cd68fd83e8a8cb09c"
+
+SRCREV = "496c809f8cf529c5a95f9578b34a9299b0d92ffb"
+PV .= "${SRCPV}"
+
+S = "${WORKDIR}/git"
+
+inherit autotools
+
+EXTRA_OEMAKE = 'STRIP=""'
+
+PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)}"
+PACKAGECONFIG[ipv6] = "--enable-ipv6,--disable-ipv6,"
+
+do_configure_prepend () {
+	install ${WORKDIR}/addrinfo.h ${S}/lib/
+}
+
+do_configure_append () {
+	oe_runmake proto
+}
+
+do_install_append() {
+	install -d ${D}${sysconfdir}
+	install -m 0644 ${WORKDIR}/rsyncd.conf ${D}${sysconfdir}
+}
diff --git a/recipes-devtools/rsync/rsync_2.6.9.bb b/recipes-devtools/rsync/rsync_2.6.9.bb
deleted file mode 100644
index 5c6c9d9a..00000000
--- a/recipes-devtools/rsync/rsync_2.6.9.bb
+++ /dev/null
@@ -1,16 +0,0 @@
-require rsync.inc
-
-SRC_URI += "file://rsync-2.6.9-fname-obo.patch \
-            file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
-            file://rsyncd.conf \
-"
-
-SRC_URI[md5sum] = "996d8d8831dbca17910094e56dcb5942"
-SRC_URI[sha256sum] = "ca437301becd890e73300bc69a39189ff1564baa761948ff149b3dd7bde633f9"
-
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=6d5a9d4c4d3af25cd68fd83e8a8cb09c"
-
-PR = "r4"
-
-PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)}"
-- 
2.11.1

