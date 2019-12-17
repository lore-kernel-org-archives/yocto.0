Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1801.1576577968595349244
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:19:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=PhXu2y3V;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15D53E0125E; Tue, 17 Dec 2019 02:19:28 -0800 (PST)
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
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8F3E0085D
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:24 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id z3so3119722wru.3
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=c3wgxV+jVYmzeITt9wqGvb8218yk0usD1J4bFfk63cs=;
        b=PhXu2y3V30p0rGx32itz8VAA8lNykmNkixjnIFWSH9R/Ucl2qqmkZWw/uSzlLAvypO
         lINZGI1pTGzmpicA0bXitNYPbLrsf8i4nZZMAJcA6+lcVXZp30miO6Y+T66bguAisuTF
         1o3JWyorWF4DbPoH64IBEauy179zk/BCrLsG3j0F1rZpBSfkZnXohzkEgNvsBCdcWw/G
         q5pfVe1RHOh8Fl+ApfbzIdMeZdDg0uMoJ8wI9uZPqcEZ52BfGnQcIbVHx0jlG38st4zb
         ti4O6VdxC97N7Igo4Om9pys3/IUJoB9QNaBN0X5VHEVnkdl0mQA8Zs2diCLyc93rXqT5
         3w1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=c3wgxV+jVYmzeITt9wqGvb8218yk0usD1J4bFfk63cs=;
        b=tpzDxLnkXuW/gxAZxWeJ5AZ4By+qPwuwtNCR/RtdqaxFo5CRi4f6fPLLfMLBZG1IGC
         brKms9tM8Z2OLukNeDzhNHTGQY7WKI5EHcQxAvIxoP2JFJfXu5HaGK4V2fLZybyJqL4p
         cV9bK/zgPzQjYKKYtGOb1LrnNvkB8lqcZXR/Sc8mrSn/fK1jhVda2O3nojb2Y5iGiSEo
         FpqgrsmpBQxVVxjdPWcKLa74S86iEjrExjwAB9HzYRk+TfMSaeEY3rrcC8OQ3y/fcNJP
         IiI1HYzTULuATiRHoccCEVZNc+7vkrVPyLBlNTx15jR0tkrFwd6rQY90k3FsXeTvoKUz
         DLYA==
X-Gm-Message-State: APjAAAU1AvdBRq2coD12gXHykWfqtoOHH+gZ8foa3SjvXQkzW7E66xTu
	sRpI6NVQLWGDddjVRHMhNFtIucEBmys=
X-Google-Smtp-Source: APXvYqysAkYyfg7ATkT2XncihWp0pfPahMjXLHw+DU3YmFndxALVg7ac4vHyLlFR9hx+CszSy7yCGQ==
X-Received: by 2002:a5d:46d0:: with SMTP id g16mr37840156wrs.287.1576577963102;
        Tue, 17 Dec 2019 02:19:23 -0800 (PST)
Received: from agherzan-lnxU.hanover.local ([81.145.148.228])
        by smtp.gmail.com with ESMTPSA id d8sm24759223wre.13.2019.12.17.02.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 02:19:22 -0800 (PST)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Cc: David Steinberg <david@sonabuzz.com>
Subject: [PATCH 1/3] Support --with-font configure option to use other font headers
Date: Tue, 17 Dec 2019 10:19:15 +0000
Message-Id: <20191217101917.29395-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.17.1

From: David Steinberg <david@sonabuzz.com>

Signed-off-by: David Steinberg <david@sonabuzz.com>
---
 Makefile.am  | 4 ++--
 configure.ac | 6 ++++++
 psplash.c    | 6 +++---
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/Makefile.am b/Makefile.am
index a14152a..3721a6e 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,11 +1,11 @@
 bin_PROGRAMS=psplash psplash-write
 
-AM_CFLAGS = $(GCC_FLAGS) -D_GNU_SOURCE
+AM_CFLAGS = $(GCC_FLAGS) -D_GNU_SOURCE -DFONT_HEADER=\"$(FONT_NAME)-font.h\" -DFONT_DEF=$(FONT_NAME)_font
 
 psplash_SOURCES = psplash.c psplash.h psplash-fb.c psplash-fb.h \
                   psplash-console.c psplash-console.h           \
 		  psplash-colors.h psplash-config.h		\
-		  psplash-poky-img.h psplash-bar-img.h radeon-font.h
+		  psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h
 
 psplash_write_SOURCES = psplash-write.c psplash.h
 
diff --git a/configure.ac b/configure.ac
index 1c4d919..9e78ac0 100644
--- a/configure.ac
+++ b/configure.ac
@@ -14,6 +14,12 @@ fi
 
 AC_SUBST(GCC_FLAGS)
 
+AC_ARG_WITH([font],
+    AS_HELP_STRING([--with-font], [Set font to use (default is 'radeon')]),
+    [FONT_NAME=$withval],
+    [FONT_NAME=radeon])
+AC_SUBST([FONT_NAME])
+
 AC_OUTPUT([
 Makefile
 ])
diff --git a/psplash.c b/psplash.c
index 992e199..f6442f1 100644
--- a/psplash.c
+++ b/psplash.c
@@ -23,7 +23,7 @@
 #include "psplash-colors.h"
 #include "psplash-poky-img.h"
 #include "psplash-bar-img.h"
-#include "radeon-font.h"
+#include FONT_HEADER
 
 #define SPLIT_LINE_POS(fb)                                  \
 	(  (fb)->height                                     \
@@ -45,7 +45,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 {
   int w, h;
 
-  psplash_fb_text_size (&w, &h, &radeon_font, msg);
+  psplash_fb_text_size (&w, &h, &FONT_DEF, msg);
 
   DBG("displaying '%s' %ix%i\n", msg, w, h);
 
@@ -62,7 +62,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 			(fb->width-w)/2, 
 			SPLIT_LINE_POS(fb) - h,
 			PSPLASH_TEXT_COLOR,
-			&radeon_font,
+			&FONT_DEF,
 			msg);
 }
 
-- 
2.17.1

