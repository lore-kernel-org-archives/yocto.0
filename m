Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.268.1579641155176758582
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 13:12:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koncepto.io header.s=default header.b=QzlQJaiB;
 spf=fail (domain: koncepto.io, ip: 140.211.169.56, mailfrom: pjtexier@koncepto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3EE9E015DA; Tue, 21 Jan 2020 13:12:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 433 seconds by postgrey-1.32 at yocto-www; Tue, 21 Jan 2020 13:12:33 PST
Received: from koncepto.io (koncepto.io [195.154.119.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C3E8E00CA2
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 13:12:33 -0800 (PST)
Received: from menoah.home (lfbn-bor-1-1001-35.w90-120.abo.wanadoo.fr [90.120.192.35])
	by koncepto.io (Postfix) with ESMTPSA id E59526035C;
	Tue, 21 Jan 2020 22:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=koncepto.io;
	s=default; t=1579640718;
	bh=vQ4xVuOMcwSIKQKb3Zx2s6zYS3842VeNPtvofR92xqE=;
	h=From:To:Cc:Subject:Date:From;
	b=QzlQJaiBdH/9b3TLI1HyZY2rdxKpIPSXOQf1D55aGPxq7WdWosWnG0n3qTow9283q
	 jF9pwN8KjQ3tdvk4NYno7rkWlfXmPMXE3/PG8DnT1OvN8KDvPka1NCLzKFEuydUQVX
	 CFlokB44XK/1HDt0YHaJUkYGM4kM6Nd0bAJi0V6/lxa/6UgdplcO+rA8hFm5hadSLE
	 fLud5k/beCm3+TAY1s6Lwk+3TVTg/Y9W46Qc1KtsunIIqIv0CKxK+1UZYhYcuWshiv
	 V7YuSCl71FcP1gqF4Kvn/zFmNJMzTO8/ucEkffQwx8YIaT02BgEDCrky2MKTmJOct/
	 jxGVTvrQ6mUWw==
From: "Pierre-Jean Texier" <pjtexier@koncepto.io>
To: yocto@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Cc: Pierre-Jean Texier <pjtexier@koncepto.io>
Subject: [psplash][PATCH] Makefile.am: use BUILT_SOURCES instead of BUILD_SOURCES
Date: Tue, 21 Jan 2020 22:05:08 +0100
Message-Id: <1579640708-15189-1-git-send-email-pjtexier@koncepto.io>
X-Mailer: git-send-email 2.7.4

Since commit f7a354dd7991bda57ab8b26d6491687d777f88da ("Generate image headers from their PNG source, while still including them in dist tarball")
headers files are generated from autotools by using BUILD_SOURCES variable.

But when generating header files, it is important to generate the files before the
rest of the sources are compiled. So, the BUILT_SOURCES variable must be used in
this case.

Fixes:

psplash.c:17:10: fatal error: psplash-bar-img.h: No such file or directory
 #include "psplash-bar-img.h"

Signed-off-by: Pierre-Jean Texier <pjtexier@koncepto.io>
---
 Makefile.am | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile.am b/Makefile.am
index e756ed1..fb43847 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -6,7 +6,7 @@ psplash_SOURCES = psplash.c psplash.h psplash-fb.c psplash-fb.h \
                   psplash-console.c psplash-console.h           \
 		  psplash-colors.h psplash-config.h		\
 		  psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h
-BUILD_SOURCES = psplash-poky-img.h psplash-bar-img.h
+BUILT_SOURCES = psplash-poky-img.h psplash-bar-img.h
 
 psplash_write_SOURCES = psplash-write.c psplash.h
 
-- 
2.7.4

