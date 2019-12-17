Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1875.1576578164032764628
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:22:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=dTcHaEgM;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFD3FE0125E; Tue, 17 Dec 2019 02:22:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191A7E00E1F
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:22:43 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id c9so10663351wrw.8
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nGCraLU4Q/x1+gyR2T6uHwtwDIt3fv2HTwk+gvxi22A=;
        b=dTcHaEgMXXsMcqvh09uRMDXghldCzaXs2eExEKSWOtpf7qMWY6rO3n/E7hA61AB89v
         oCCzwNO+EDzHpAIngBUKxYPaY4jwuHHyxHXQ7lhBCk/XcWNBPsbHpgw8VjCUYFQRsBhW
         iKBlxZUqyJB9SWHh/HEA4vOymR+85hWnge7IN9WtQ6pscsVUvmOr3XF5gZ5NgXWOUGwu
         /e2MZ2bt8CqM66B+rc7nA8pEkIUu06Ef0gkavMHpTVKZE2LzUUeWp3vAySgZ2oigG2Nj
         iEbbAky2r7uJY4aX5w/bqGxCmXGJeDLl8pHjlULS8lGTMwNRiCvMPg8+tdoVDYUo/lI3
         0IRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nGCraLU4Q/x1+gyR2T6uHwtwDIt3fv2HTwk+gvxi22A=;
        b=SgjoCtRAZFxYKyFY2QCGO1fZPn9KN8/voNhOq8CXG7x09pHdAA+b8LpEAWO1egJ8q2
         LJrmrRQ3/QlgYnB94sPHbgMTisceCZbAjOfoYQ81TMrRpNMW0PlFcj9OWvmSyfrbKh7/
         HmkzeA2l2XxlyOeQbbf7j9tiZPpLnrWQoltYwBSS9nstgKbEyNtO5enfVcLdSQTL/ugw
         zOLdPrVkmIxKHgbn6Ne/t7XX4ql4CimwbnUh0AEU7/8WpUlNNxy+vzr4qv1RCe/9zcFH
         n06UJHtNnCKCo8JM2nUqogc88foseLxftw5XSMfHvvLc6X7M7L/tOZPHq8WyK6Y9ft7K
         XwHQ==
X-Gm-Message-State: APjAAAWtOKxlqz7f/xHJceOSdvFuQN/pmYDqFJNZMjeNH7UvHW1Xe+8e
	f00rYqOMt9qIXWeuOHRAi9MjaT28OF0=
X-Google-Smtp-Source: APXvYqx5Kp9naOAgG9P5DuPs6p69u0op011l4diALFauEluKzD2VzjYjLBoElbzsTC7Pi1OqSXN8lg==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr37003879wrm.241.1576578161978;
        Tue, 17 Dec 2019 02:22:41 -0800 (PST)
Received: from agherzan-lnxU.hanover.local ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id c17sm24566978wrr.87.2019.12.17.02.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 02:22:41 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <agherzan@hanoverdisplays.com>
Subject: [psplash][PATCH 3/3] Add configure flags for fullscreen logo and no startup message
Date: Tue, 17 Dec 2019 10:22:37 +0000
Message-Id: <20191217102237.29511-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217102237.29511-1-andrei@gherzan.ro>
References: <20191217102237.29511-1-andrei@gherzan.ro>

From: Andrei Gherzan <agherzan@hanoverdisplays.com>

Signed-off-by: Andrei Gherzan <agherzan@hanoverdisplays.com>
---
 Makefile.am      |  2 +-
 configure.ac     | 18 ++++++++++++++++++
 psplash-config.h |  4 ++++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/Makefile.am b/Makefile.am
index 3721a6e..3f1cfc2 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,6 +1,6 @@
 bin_PROGRAMS=psplash psplash-write
 
-AM_CFLAGS = $(GCC_FLAGS) -D_GNU_SOURCE -DFONT_HEADER=\"$(FONT_NAME)-font.h\" -DFONT_DEF=$(FONT_NAME)_font
+AM_CFLAGS = $(GCC_FLAGS) $(EXTRA_GCC_FLAGS) -D_GNU_SOURCE -DFONT_HEADER=\"$(FONT_NAME)-font.h\" -DFONT_DEF=$(FONT_NAME)_font
 
 psplash_SOURCES = psplash.c psplash.h psplash-fb.c psplash-fb.h \
                   psplash-console.c psplash-console.h           \
diff --git a/configure.ac b/configure.ac
index 9e78ac0..e2b7f58 100644
--- a/configure.ac
+++ b/configure.ac
@@ -20,6 +20,24 @@ AC_ARG_WITH([font],
     [FONT_NAME=radeon])
 AC_SUBST([FONT_NAME])
 
+AC_ARG_ENABLE([startup-msg],
+    AS_HELP_STRING([--disable-startup-msg], [Disable text banner output on startup]),
+    [disable_startup_msg=true],
+    [disable_startup_msg=false])
+AS_IF([test x$disable_startup_msg = xtrue], [
+    EXTRA_GCC_FLAGS="$EXTRA_GCC_FLAGS -DPSPLASH_DISABLE_STARTUP_MSG"
+])
+
+AC_ARG_ENABLE([img-fullscreen],
+    AS_HELP_STRING([--enable-img-fullscreen], [Enable the logo image in fullscreen mode)]),
+    [img_fullscreen=true],
+    [img_fullscreen=false])
+AS_IF([test x$img_fullscreen = xtrue], [
+    EXTRA_GCC_FLAGS="$EXTRA_GCC_FLAGS -DPSPLASH_IMG_FULLSCREEN=1"
+])
+
+AC_SUBST(EXTRA_GCC_FLAGS)
+
 AC_OUTPUT([
 Makefile
 ])
diff --git a/psplash-config.h b/psplash-config.h
index 82bb76d..ecbf3df 100644
--- a/psplash-config.h
+++ b/psplash-config.h
@@ -20,10 +20,14 @@
 #define _HAVE_PSPLASH_CONFIG_H
 
 /* Text to output on program start; if undefined, output nothing */
+#ifndef PSPLASH_DISABLE_STARTUP_MSG
 #define PSPLASH_STARTUP_MSG ""
+#endif
 
 /* Bool indicating if the image is fullscreen, as opposed to split screen */
+#ifndef PSPLASH_IMG_FULLSCREEN
 #define PSPLASH_IMG_FULLSCREEN 0
+#endif
 
 /* Position of the image split from top edge, numerator of fraction */
 #define PSPLASH_IMG_SPLIT_NUMERATOR 5
-- 
2.17.1

