Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1808.1576577986675014149
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:19:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=Db9AlrcW;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8590AE01261; Tue, 17 Dec 2019 02:19:46 -0800 (PST)
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
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00A6E0125D
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:42 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id f129so2448157wmf.2
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nGCraLU4Q/x1+gyR2T6uHwtwDIt3fv2HTwk+gvxi22A=;
        b=Db9AlrcWa27Dj6jgnMltuWuXfP/mYVkd3PxuuWa97KlcM117YcSGztVzZDfV4VqBU0
         YsxSx7GNxPe7cmmaocHaAQvT+GWoLRNjsyfepW76FTOW2bfuBsVfotzZ7K3edjKBAMec
         Fh5p9Yvu9zaCQKWW1p0SYHmvnZtOfaY2clFPXt5xmMYzpUXy3BwLwokxoSlKuXMncWrg
         p9IxsV10TOMqPVL6kcPYz0mGq2msnPqs2A/b98iORtVJ4KZion32n9Or76989wt3w1VD
         kvgYQktzv1S0Uf8rhR9lC3dphYV+loDDwkW0wILw5++DxuJ4yYbNh/FseK1pLRVe/KHH
         BpBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nGCraLU4Q/x1+gyR2T6uHwtwDIt3fv2HTwk+gvxi22A=;
        b=JjFj40jt1OKCLSxR8LKGbrMLuvF1rjddZLS8oX74tneOzMduBeiz6/JOH3x2k6+f9k
         XPSrT/EH7cwMYsQGb3xqOppSeHF/kmn5c2fZNBMRbbf0zA/WwmYjVznRkfC3RmJ395BJ
         LJdDFxMwQElHh0HwM8B+UG2CQjYoHKo1RlVflBkf+oWQYJqv6borW5dOKuy6tCGcRjOD
         eXYP2Ct8yZ4TteW+wXjytClDVdSsZnDtFhiCMBRrWPNac2wMxbNsPyAnXb6250U/Xn+V
         C/FXcJ7fSN+CjSIOtsL9NBEZp+ovykGm6V/QX+ZZS8Lt/S7pX/AEqxHawY/KGq38pOOv
         /GFg==
X-Gm-Message-State: APjAAAVXpT25eBtbmWZKKmjCxZDOEkVysN6tvy26njrJirg7LEKOCgQj
	rfGXgzLrfp8j8To9VyiEnneSu+J0BLk=
X-Google-Smtp-Source: APXvYqz1Jj/E5LFPqHA/NmV/vP5KYcoJ32TcH4PpWPg038LgM8NvwzLdAukLuYjdtnd0Egn03frDCw==
X-Received: by 2002:a05:600c:145:: with SMTP id w5mr4784318wmm.157.1576577981619;
        Tue, 17 Dec 2019 02:19:41 -0800 (PST)
Received: from agherzan-lnxU.hanover.local ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id d8sm24759223wre.13.2019.12.17.02.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 02:19:41 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: Andrei Gherzan <agherzan@hanoverdisplays.com>
Subject: [PATCH 3/3] Add configure flags for fullscreen logo and no startup message
Date: Tue, 17 Dec 2019 10:19:17 +0000
Message-Id: <20191217101917.29395-3-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217101917.29395-1-andrei@gherzan.ro>
References: <20191217101917.29395-1-andrei@gherzan.ro>

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

