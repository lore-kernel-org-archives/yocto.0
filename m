Return-Path: <luca.boccassi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 296D4E00D07; Thu, 28 Feb 2019 05:50:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (luca.boccassi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A168DE00D00
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 05:49:59 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id z84so8996450wmg.4
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 05:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=7xERxKr4L5jXse+z2Lpal2eY6seGVWHdL3FYiGVK2ro=;
	b=E+kg91nWZeSLB9ToUgGUbCgd4rBuzdiP+mC4zX/jv5HhBraiVHGFxwc+3E+R8N70e/
	3BoMvhzoOz8qukg2Gj2m8Lne7cZLJPk+B+zRB17uS7YUe19T328lHfUtO68r8wYjTuPB
	S4g5wE7mn4jQB+9pmEeBcWUbbdaP1AReG5AwzhJX2C7XvPfPga9BdoFoWcyhAg5lMGdJ
	PbcLyOo3kRzxnFHwWlNcDk+wQ4UgQXTcMzOeQeRs+OlLIg0R6u0yPHtRHkAUoLCIbyz1
	BfHg6is63fZUcQ1wyrnsGSnvDFAhdID0zLvy851oiWfvVKfdD31e+r1WjGfNQ3vqFdz3
	if1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=7xERxKr4L5jXse+z2Lpal2eY6seGVWHdL3FYiGVK2ro=;
	b=bF46Tkn2Yho99u+pLFN29LPUIr89y0jUlo+AW0zuPNr+eM+Ibj1efFh7udoz8PckOI
	WJYW1Kl7aKtff5dlGzKqauuArV/Pl7cGtuadZmDg308j+eUhpXYzLGWHIwpe3TPOvS3t
	9icmiwJZLk4xZKqHESbQfs+yAg7PJT8byfY4rUuby0rVPjppAj11gHTukR9dx9NtyYGW
	0hQ2lNd3l1iVQoqmUqUSfyugE2pw4O5BH5rVmbHVYreTqdB6A6aBzwirCnGUlRGPquZl
	wejBrkmQGRQrFHj1VMfXDFVJYSh85aNOUxMeWTm2twdPoysSeCcuVLj2XtzMB1m4l/u/
	HaaA==
X-Gm-Message-State: AHQUAuaBzbrS2ubFmvZde5GtV9qJLUv2FbkWEbHTwRE7MFUfbfb3F8fg
	HAZtoKdV8XGDfg08iFnHa2SJFs4Qjj4=
X-Google-Smtp-Source: AHgI3Ib9wOMBAXumt+pUbWyq/1/CrxvQdm8WEo+AHOFyEYmoGntnzDISrMpaKMq10nnn5lzBsKmcug==
X-Received: by 2002:a1c:a9d0:: with SMTP id s199mr2971546wme.142.1551361798090;
	Thu, 28 Feb 2019 05:49:58 -0800 (PST)
Received: from localhost ([2a01:4b00:f419:6f00:b00c:66c8:99df:336])
	by smtp.gmail.com with ESMTPSA id y8sm10479547wrm.8.2019.02.28.05.49.55
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 28 Feb 2019 05:49:56 -0800 (PST)
From: luca.boccassi@gmail.com
To: yocto@yoctoproject.org
Date: Thu, 28 Feb 2019 13:49:47 +0000
Message-Id: <20190228134947.17858-1-luca.boccassi@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH meta-selinux] Backport patches from upstream to fix build with musl
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
X-List-Received-Date: Thu, 28 Feb 2019 13:50:01 -0000
Content-Transfer-Encoding: 8bit

From: Luca Boccassi <luca.boccassi@microsoft.com>

Audit 2.8.4 fails to build with musl. The fixes have been committed
to the upstream master branch and can be backported.
Building with glibc is unaffected.

Signed-off-by: Luca Boccassi <luca.boccassi@microsoft.com>
---
 ...dupa-as-suggested-in-pull-request-25.patch |  47 ++++++
 ...tue-functions-for-strndupa-rawmemchr.patch | 134 ++++++++++++++++++
 recipes-security/audit/audit_2.8.4.bb         |   2 +
 3 files changed, 183 insertions(+)
 create mode 100644 recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
 create mode 100644 recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch

diff --git a/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch b/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
new file mode 100644
index 0000000..38029aa
--- /dev/null
+++ b/recipes-security/audit/audit/0001-Remove-strdupa-as-suggested-in-pull-request-25.patch
@@ -0,0 +1,47 @@
+From a1782b58b687b74249dc8b2411a3f646b821ebd6 Mon Sep 17 00:00:00 2001
+From: Steve Grubb <sgrubb@redhat.com>
+Date: Thu, 4 Oct 2018 08:45:47 -0400
+Subject: [PATCH] Remove strdupa as suggested in pull request #25
+
+---
+ src/auditd.c | 11 ++++++-----
+ 1 file changed, 6 insertions(+), 5 deletions(-)
+
+Origin: https://github.com/linux-audit/audit-userspace/commit/a1782b58b687b74249dc8b2411a3f646b821ebd6
+Applied-Upstream: yes
+
+diff --git a/src/auditd.c b/src/auditd.c
+index b0952db..c826ec0 100644
+--- a/src/auditd.c
++++ b/src/auditd.c
+@@ -209,21 +209,22 @@ static void cont_handler(struct ev_loop *loop, struct ev_signal *sig,
+ 
+ static int extract_type(const char *str)
+ {
+-	const char *tptr, *ptr2, *ptr = str;
++	const char *ptr2, *ptr = str;
+ 	if (*str == 'n') {
+ 		ptr = strchr(str+1, ' ');
+ 		if (ptr == NULL)
+ 			return -1; // Malformed - bomb out
+ 		ptr++;
+ 	}
++
+ 	// ptr should be at 't'
+ 	ptr2 = strchr(ptr, ' ');
+-	// get type=xxx in a buffer
+-	tptr = strndupa(ptr, ptr2 - ptr);
++
+ 	// find =
+-	str = strchr(tptr, '=');
+-	if (str == NULL)
++	str = strchr(ptr, '=');
++	if (str == NULL || str >= ptr2)
+ 		return -1; // Malformed - bomb out
++
+ 	// name is 1 past
+ 	str++;
+ 	return audit_name_to_msg_type(str);
+-- 
+2.20.1
+
diff --git a/recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch b/recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch
new file mode 100644
index 0000000..c948aa3
--- /dev/null
+++ b/recipes-security/audit/audit/0002-Add-substitue-functions-for-strndupa-rawmemchr.patch
@@ -0,0 +1,134 @@
+From 5346b6af0ca67a2965ca5846ae150f3021a2aa17 Mon Sep 17 00:00:00 2001
+From: Steve Grubb <sgrubb@redhat.com>
+Date: Tue, 26 Feb 2019 18:33:33 -0500
+Subject: [PATCH] Add substitue functions for strndupa & rawmemchr
+
+---
+Origin: https://github.com/linux-audit/audit-userspace/commit/d579a08bb1cde71f939c13ac6b2261052ae9f77e
+Applied-Upstream: yes
+
+ auparse/auparse.c   | 12 +++++++++++-
+ auparse/interpret.c |  9 ++++++++-
+ configure.ac        | 14 +++++++++++++-
+ src/ausearch-lol.c  | 12 +++++++++++-
+ 4 files changed, 43 insertions(+), 4 deletions(-)
+
+diff --git a/auparse/auparse.c b/auparse/auparse.c
+index f84712e..3764046 100644
+--- a/auparse/auparse.c
++++ b/auparse/auparse.c
+@@ -1,5 +1,5 @@
+ /* auparse.c --
+- * Copyright 2006-08,2012-17 Red Hat Inc., Durham, North Carolina.
++ * Copyright 2006-08,2012-19 Red Hat Inc., Durham, North Carolina.
+  * All Rights Reserved.
+  *
+  * This library is free software; you can redistribute it and/or
+@@ -1100,6 +1100,16 @@ static int str2event(char *s, au_event_t *e)
+ 	return 0;
+ }
+ 
++#ifndef HAVE_STRNDUPA
++static inline char *strndupa(const char *old, size_t n)
++{
++	size_t len = strnlen(old, n);
++	char *tmp = alloca(len + 1);
++	tmp[len] = 0;
++	return memcpy(tmp, old, len);
++}
++#endif
++
+ /* Returns 0 on success and 1 on error */
+ static int extract_timestamp(const char *b, au_event_t *e)
+ {
+diff --git a/auparse/interpret.c b/auparse/interpret.c
+index 1846f9d..8540bd1 100644
+--- a/auparse/interpret.c
++++ b/auparse/interpret.c
+@@ -853,6 +853,13 @@ err_out:
+ 		return print_escaped(id->val);
+ }
+ 
++// rawmemchr is faster. Let's use it if we have it.
++#ifdef HAVE_RAWMEMCHR
++#define STRCHR rawmemchr
++#else
++#define STRCHR strchr
++#endif
++
+ static const char *print_proctitle(const char *val)
+ {
+ 	char *out = (char *)print_escaped(val);
+@@ -863,7 +870,7 @@ static const char *print_proctitle(const char *val)
+ 		// Proctitle has arguments separated by NUL bytes
+ 		// We need to write over the NUL bytes with a space
+ 		// so that we can see the arguments
+-		while ((ptr  = rawmemchr(ptr, '\0'))) {
++		while ((ptr  = STRCHR(ptr, '\0'))) {
+ 			if (ptr >= end)
+ 				break;
+ 			*ptr = ' ';
+diff --git a/configure.ac b/configure.ac
+index ede7109..97b547f 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1,7 +1,7 @@
+ dnl
+ define([AC_INIT_NOTICE],
+ [### Generated automatically using autoconf version] AC_ACVERSION [
+-### Copyright 2005-18 Steve Grubb <sgrubb@redhat.com>
++### Copyright 2005-19 Steve Grubb <sgrubb@redhat.com>
+ ###
+ ### Permission is hereby granted, free of charge, to any person obtaining a
+ ### copy of this software and associated documentation files (the "Software"),
+@@ -72,6 +72,18 @@ dnl; posix_fallocate is used in audisp-remote
+ AC_CHECK_FUNCS([posix_fallocate])
+ dnl; signalfd is needed for libev
+ AC_CHECK_FUNC([signalfd], [], [ AC_MSG_ERROR([The signalfd system call is necessary for auditd]) ])
++dnl; check if rawmemchr is available
++AC_CHECK_FUNCS([rawmemchr])
++dnl; check if strndupa is available
++AC_LINK_IFELSE(
++  [AC_LANG_SOURCE(
++    [[
++      #define _GNU_SOURCE
++      #include <string.h>
++      int main() { (void) strndupa("test", 10); return 0; }]])],
++ [AC_DEFINE(HAVE_STRNDUPA, 1, [Let us know if we have it or not])],
++ []
++)
+ 
+ ALLWARNS=""
+ ALLDEBUG="-g"
+diff --git a/src/ausearch-lol.c b/src/ausearch-lol.c
+index 4fbfbae..5eecefe 100644
+--- a/src/ausearch-lol.c
++++ b/src/ausearch-lol.c
+@@ -1,6 +1,6 @@
+ /*
+ * ausearch-lol.c - linked list of linked lists library
+-* Copyright (c) 2008,2010,2014,2016 Red Hat Inc., Durham, North Carolina.
++* Copyright (c) 2008,2010,2014,2016,2019 Red Hat Inc., Durham, North Carolina.
+ * All Rights Reserved. 
+ *
+ * This software may be freely redistributed and/or modified under the
+@@ -131,6 +131,16 @@ static int inline events_are_equal(event *e1, event *e2)
+ 	return 1;
+ }
+ 
++#ifndef HAVE_STRNDUPA
++static inline char *strndupa(const char *old, size_t n)
++{
++	size_t len = strnlen(old, n);
++	char *tmp = alloca(len + 1);
++	tmp[len] = 0;
++	return memcpy(tmp, old, len);
++}
++#endif
++
+ /*
+  * This function will look at the line and pick out pieces of it.
+  */
+-- 
+2.20.1
+
diff --git a/recipes-security/audit/audit_2.8.4.bb b/recipes-security/audit/audit_2.8.4.bb
index c756552..c29bb74 100644
--- a/recipes-security/audit/audit_2.8.4.bb
+++ b/recipes-security/audit/audit_2.8.4.bb
@@ -11,6 +11,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://audit-python-configure.patch \
            file://audit-python.patch \
            file://fix-swig-host-contamination.patch \
+           file://0001-Remove-strdupa-as-suggested-in-pull-request-25.patch \
+           file://0002-Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
2.20.1


