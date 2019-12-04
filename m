Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2305.1575427205714221625
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:40:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi5SdSXd;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F1B4E010AA; Tue,  3 Dec 2019 18:40:05 -0800 (PST)
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
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA8A4E0085D
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 18:40:04 -0800 (PST)
Received: by mail-pl1-f176.google.com with SMTP id w7so2481017plz.12
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 18:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=oGq4eHgt7YFcTqL8uRBMbVlTjXkFvXX+g6lflG4N7Ts=;
        b=Vi5SdSXdmozJyOQjCJLEN+xiUk2Cv44GeDuPtXE0DpNM67gUmSux83WSEXOVaFzrIq
         K3/OK+cBB6hauOZ6SByxuoUgK7Jhmv9GeubMp0tY2xh7F9Xoe1xCklEbMzMUIzp43ufg
         frM3QZuX6k+TNQhJ0eYVWgBun/BLOpcNOcNmmfUlbEkXACH+KA1Rgw/rhfmuTLVFuZ2C
         G9yr8xrD+U6UxIpbsZB/uo9B2KQewcqODQ1egpDQg/siagPUfH3WYj9HcRo7pnlzrMoC
         ysg3kMGqhS8A5KEIzcjUDM4pTEAY4wWDrJ3WfDNJD8fwXrayGAlcJCpv/7HLNd+0AM4M
         twzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=oGq4eHgt7YFcTqL8uRBMbVlTjXkFvXX+g6lflG4N7Ts=;
        b=I3sMSggJs7fgYxiSq77eYWKmPfey4MCuDwdV4J2MPZ/6FSlnqmY/ZblaBzCqxK4FYP
         37sB9muMfr5blC1LO9dkymwtUewjzd8N3KfZyPgmbXYEqfQtDle4Dl3saMYjIRyFMQ2M
         YpJUXyJTvA5KlSaMxi9Ug77OozOP2V/U4QJGNvY/4Dj/jJLRQeyczK52ptzdC5H97BYW
         gaDFUQ47ZR9ffJbVsBKyYPMgue+Oki96rs3FiREILrXN85qsuAw7LhPnRc3JXu46nVCy
         YF39At0yyUAUSgirBEebmSqLeM8h77yTnQGjrrnan7ywreluPSL0CDkRwuE7VlFZdtHo
         XmWQ==
X-Gm-Message-State: APjAAAW03XIiEzmiqoBaFjnkG9m++geMKPvqmpS327uVseFwicv8e4Wm
	4HtV4unjIAzNzHDX5nK7I91R6tl7
X-Google-Smtp-Source: APXvYqwXwUMAZbJuKeH5/W83YL3rGNskxXUBq9R19UNle69G0gxOHYu7jkriDKOFI2YbLqXqRUn+SQ==
X-Received: by 2002:a17:902:104:: with SMTP id 4mr1271429plb.130.1575427204173;
        Tue, 03 Dec 2019 18:40:04 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w4sm4316863pjt.21.2019.12.03.18.40.03
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:40:03 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH 5/5] tpm2-totp: update to 0.2.0
Date: Tue,  3 Dec 2019 18:39:58 -0800
Message-Id: <20191204023958.31799-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023958.31799-1-akuster808@gmail.com>
References: <20191204023958.31799-1-akuster808@gmail.com>

LIC_FILES_CHKSUM update to be true BSD-3-clause text
Drop patch included

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/litpm2_totp_build_fix.patch         | 36 -------------------
 ...{tpm2-totp_0.1.2.bb => tpm2-totp_0.2.0.bb} |  6 ++--
 2 files changed, 3 insertions(+), 39 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
 rename meta-tpm/recipes-tpm2/tpm2-totp/{tpm2-totp_0.1.2.bb => tpm2-totp_0.2.0.bb} (79%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch b/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
deleted file mode 100644
index c147054..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-C99 fixes:
-
- src/libtpm2-totp.c:172:13: error: format '%li' expects argument of type 'long int', but argument 3 has type 'size_t' {aka 'unsigned int'} [-Werror=format=]
-|          dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
-
-src/tpm2-totp.c:343:23: error: format '%ld' expects argument of type 'long int', but argument 3 has type 'uint64_t' {aka 'long long unsigned int'} [-Werror=format=]
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/src/libtpm2-totp.c
-===================================================================
---- git.orig/src/libtpm2-totp.c
-+++ git/src/libtpm2-totp.c
-@@ -169,7 +169,7 @@ tpm2totp_generateKey(uint32_t pcrs, uint
-     if (rc != TPM2_RC_INITIALIZE) chkrc(rc, goto error);
- 
-     while (*secret_size < SECRETLEN) {
--        dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
-+        dbg("Calling Esys_GetRandom for %li bytes", (long int) (SECRETLEN - *secret_size));
-         rc = Esys_GetRandom(ctx,
-                             ESYS_TR_NONE, ESYS_TR_NONE, ESYS_TR_NONE,
-                             SECRETLEN - *secret_size, &t);
-Index: git/src/tpm2-totp.c
-===================================================================
---- git.orig/src/tpm2-totp.c
-+++ git/src/tpm2-totp.c
-@@ -340,7 +340,7 @@ main(int argc, char **argv)
-                             localtime (&now));
-             chkrc(rc, exit(1));
-         }
--        printf("%s%06ld", timestr, totp);
-+        printf("%s%06ld", timestr, (long int)totp);
-         break;
-     case CMD_RESEAL:
-         rc = tpm2totp_loadKey_nv(opt.nvindex, &keyBlob, &keyBlob_size);
diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
similarity index 79%
rename from meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
index 8a2504d..0dad673 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.2.0.bb
@@ -9,9 +9,9 @@ DEPENDS = "autoconf-archive libtss2-dev qrencode"
 
 PE = "1"
 
-SRCREV = "15cc8fbc8fe71be9c04c3169ee1f70450d52a51a"
-SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.1.x \
-           file://litpm2_totp_build_fix.patch "
+SRCREV = "994b4203e4769baefa6e7719915629bc8210e90a"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.2.x \
+          "
 
 inherit autotools-brokensep pkgconfig
 
-- 
2.17.1

