Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16381.1579887927850077624
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 09:45:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koncepto.io header.s=default header.b=tYrAwhoI;
 spf=fail (domain: koncepto.io, ip: 140.211.169.56, mailfrom: pjtexier@koncepto.io)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34CF0E01610; Fri, 24 Jan 2020 09:45:27 -0800 (PST)
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
Received: from koncepto.io (koncepto.io [195.154.119.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61220E008D9
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2020 09:45:26 -0800 (PST)
Received: from menoah.home (lfbn-bor-1-1001-35.w90-120.abo.wanadoo.fr [90.120.192.35])
	by koncepto.io (Postfix) with ESMTPSA id 5FD2D602AB;
	Fri, 24 Jan 2020 18:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=koncepto.io;
	s=default; t=1579887923;
	bh=fNxDSZMggBixAi/ikTWMeyydrA6Gx1VMbiHCk4hp+Hs=;
	h=From:To:Cc:Subject:Date:From;
	b=tYrAwhoIUPwnzieed/TKgZdy1yN2zfUyfBrioYF/2U+1Xnwo/2xfuz7W6x4NiunSC
	 V7dD8amAB7auaCfpOILz3QB0AjmTh5wndWuUnWxM4NLE3YKR65TwWczERzsDu3KpGZ
	 3mAzy9lWDX5Kk1Pi43fU7bsrBe7FXX/th4eVYHIbilWw7qxiGB7kvEzo7xFzalVJ1Z
	 /J6KYtCTp7PvzSaPSTPRcDoiyNI9l7CulZ/gvKTEqYpEH9OzIVYHdHS26TvnSvUyBE
	 Rge3F66rzpaQjdG3BsW5ZD4qOsA9xIBAcQHEzTOithJK/Kd2pqV86t5q2FXWtXGK/b
	 FIN/v2i0BLQnQ==
From: "Pierre-Jean Texier" <pjtexier@koncepto.io>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Cc: Pierre-Jean Texier <pjtexier@koncepto.io>
Subject: [meta-security][PATCH] google-authenticator-libpam: upgrade 1.07 -> 1.08
Date: Fri, 24 Jan 2020 18:45:20 +0100
Message-Id: <1579887920-17854-1-git-send-email-pjtexier@koncepto.io>
X-Mailer: git-send-email 2.7.4

See changelog: https://github.com/google/google-authenticator-libpam/releases/tag/1.08

Signed-off-by: Pierre-Jean Texier <pjtexier@koncepto.io>
---
 ...authenticator-libpam_1.07.bb => google-authenticator-libpam_1.08.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/google-authenticator-libpam/{google-authenticator-libpam_1.07.bb => google-authenticator-libpam_1.08.bb} (91%)

diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
similarity index 91%
rename from recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb
rename to recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
index 98f895c..2ba949e 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 LICENSE = "Apache-2.0"
 
 SRC_URI = "git://github.com/google/google-authenticator-libpam.git"
-SRCREV = "c9280f43610ce896f91eafd0f740a4eb4dcecedd"
+SRCREV = "2c7415d950fb0b4a7f779f045910666447b100ef"
 
 DEPENDS = "libpam"
 
-- 
2.7.4

