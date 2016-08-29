Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5209E00F18; Mon, 29 Aug 2016 04:32:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A697FE00F10
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 04:31:59 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id hh10so8859448pac.1
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 04:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=lYXviff3BL+3D9r/orC5QUKPfGemetIOPlRzHJjsOFo=;
	b=kOj1n4OjyhJ8O4kGJh8ed+jB/K7GnCOFTVpdw2Rk+RgboYtz26ZkvBLbeW9J5T8vix
	X077dijcWTWlO9JSHNogGA2ZUkICbim4N4kz3Djn/XNd049IY114bhTIXE2GFlNsxx9T
	sj3+Sbf+gFNkZZ41YfKntDqecrKrt5n1DWzlOkI5tN04xlhUnEkMZl4wYXgfOi3UnlCh
	BeIxr8bT4Fj0m7EvLNDCwvjKNpWEV99WexwC+WSihoCXyYgzdxxibwhNsAlecO0gZJ2K
	RHUOjJbXxcGEcf+kLG8Ywi+ae0hGmxrAfpl1rmZ9UmlwbdN4ULseIbZ91gDAPv6K7/9l
	TkUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lYXviff3BL+3D9r/orC5QUKPfGemetIOPlRzHJjsOFo=;
	b=j9KYRJw0rfYbuofz8QUhjAwaNL3cCXuUbmcq0wXekkEg3kCXEd6LlJ/kL3/MW9Nkrb
	xRDyPOoNo2lI2HhUNQkYhkuykkA431GhG4l6j3rv7w3uA4Y7C8N3tq0VtSSCmlpEKETD
	9MgdogYMsiuOzq3sUZoH+JLoYMJ+iz70glmBIZDd2Z7o/WEHaDR4rzWsPldGXKmOhI8Y
	lWhGryih47fKX53wPtdIVIObeWJgQYu0ezlAeVsr1IZcKBg/m9449/WLXZgtmOPyQGxR
	yc+5p4kvTGqG/gcLykeGjLA8LN7Ls7zzvUIT83C+qbSD2lH1e4klCdjb7c59Nr4h9I/R
	/Shw==
X-Gm-Message-State: AE9vXwPGh1j2223ZYRD7qCSiQLNo8LLm5X+s+lJv+XI6He7r4bAwCzCSnWIKhw4jDzdJ8g==
X-Received: by 10.66.131.4 with SMTP id oi4mr20594953pab.143.1472470318655;
	Mon, 29 Aug 2016 04:31:58 -0700 (PDT)
Received: from kdekidd0.inp-wifi.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	yv9sm48787013pab.0.2016.08.29.04.31.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 04:31:58 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 17:01:52 +0530
Message-Id: <1472470312-22247-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Sujith Haridasan <Sujith_Haridasan@mentor.com>,
	Christopher Larson <chris_larson@mentor.com>
Subject: [meta][PATCH] ruby: ensure that .ext/rdoc is gone in compile
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
X-List-Received-Date: Mon, 29 Aug 2016 11:32:02 -0000

From: Christopher Larson <chris_larson@mentor.com>

rdoc gets unhappy if this already exists, so remove it before building.

Without this, it's possible to hit this error:

    Directory .ext/rdoc already exists, but it looks like it isn't an RDoc
    directory.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Sujith Haridasan <Sujith_Haridasan@mentor.com>
---
 meta/recipes-devtools/ruby/ruby.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/recipes-devtools/ruby/ruby.inc b/meta/recipes-devtools/ruby/ruby.inc
index fde67e9..d8f6882 100644
--- a/meta/recipes-devtools/ruby/ruby.inc
+++ b/meta/recipes-devtools/ruby/ruby.inc
@@ -37,3 +37,7 @@ do_configure_prepend() {
     sed -i "s#%%TARGET_CFLAGS%%#$TARGET_CFLAGS#; s#%%TARGET_LDFLAGS%%#$TARGET_LDFLAGS#" ${S}/common.mk
     rm -rf ${S}/ruby/
 }
+
+do_compile_prepend () {
+    rm -rf .ext/rdoc
+}
-- 
1.9.1


