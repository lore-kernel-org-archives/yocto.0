Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A111E00B93; Sun, 16 Sep 2018 08:57:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F251EE00AD8
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:46 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id g23-v6so6264889plq.9
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=orpnBncmW3LuVmokcGnNp+UykbqvjXGQoQarRWKRO28=;
	b=uTkJhgrdSLH6dqqMEQ2xKH9N7rCocb7sUPhq9RJXG14TWTUqpEV8m0kl4/CB1gO3/k
	dYRg7E8noGQc4H0cls5Bp7rFhU6YoJ2+Uv0pun2PxFvgBAgkQ5sMfXimep70xnDnO3++
	u1k272E/JcqbhHXF2SgEVNcEb+pYbt13HAEkU6ucwKrD8XTXuN9U+kn7x/k8oEtP1sdm
	1pjitcrb03mmUCRGthjRvCS1t73DGrZSh8y9i4vHknziGo63LzKWvsu+zxUyup1/pC43
	5014MX9p6pZB7ixk4WLFfZZMMbzAlh/UOmFjJ8bvQNdwjPmuxTTRph/0z38c84gFdVvz
	HZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=orpnBncmW3LuVmokcGnNp+UykbqvjXGQoQarRWKRO28=;
	b=N0eJf+92PttGtt1wGGsqY5PgyDinETZdlkTnz7uc3wwzoiBg5gf2zWaE8Jr7APRylY
	7slFnLN+QkjsrXlQzThnsNLVSeoicqiUN5P7X6ND8T+x257NvGJVqH+Wjjk25ui8KETD
	+9GSDY7JFEuLmKtJL6m0wcLmj6ao7XM/yVY3DvPKsQPpMRtr774vr59vPygZCSPqR6BG
	fsXQL99g5xoSjNujVLsBFqNzrrMYvKpVMSWEW9rpsQ6arOAVbOhJBgmVep5hQAkDyD4h
	z+gNlnWZxXSs3XF+9iP/6KZJdbq0hRSQj7ViHfWY08ljJ66zAtJav/jfERp7TtKLOOha
	uF2w==
X-Gm-Message-State: APzg51DmiBIPi9puoyJAzQggP5UiAPYi/THlyy+vGhvEA56GlI7KewAw
	Ucnpqnur/JUSMbZHKc1kZCYfo1FN
X-Google-Smtp-Source: ANB0VdYMQN7QV92bDAgNOKOf5rRIyLeYuFsxgejp0C2dQwE4/hYvZw3EUGRwEEzPsUYeQMjn6LWHGw==
X-Received: by 2002:a17:902:b089:: with SMTP id
	p9-v6mr21193703plr.254.1537113466220; 
	Sun, 16 Sep 2018 08:57:46 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.45
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:13 -0700
Message-Id: <20180916155719.9911-19-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 19/25] pcr-extend: fix building with openssl 1.1
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/fix_openssl11_build.patch           | 45 +++++++++++++++++++
 .../recipes-tpm/pcr-extend/pcr-extend_git.bb  |  3 +-
 2 files changed, 47 insertions(+), 1 deletion(-)
 create mode 100644 meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch

diff --git a/meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch b/meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch
new file mode 100644
index 0000000..cf2d437
--- /dev/null
+++ b/meta-tpm/recipes-tpm/pcr-extend/files/fix_openssl11_build.patch
@@ -0,0 +1,45 @@
+Enable building with openssl 1.1
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/src/pcr-extend.c
+===================================================================
+--- git.orig/src/pcr-extend.c
++++ git/src/pcr-extend.c
+@@ -118,7 +118,7 @@ dump_buf (FILE *file, char *buf, size_t
+ static unsigned char*
+ sha1_file (FILE *file, unsigned int *hash_len)
+ {
+-    EVP_MD_CTX ctx = { 0 };
++    EVP_MD_CTX *ctx = EVP_MD_CTX_new();
+     unsigned char *buf = NULL, *hash = NULL;
+     size_t num_read = 0;
+ 
+@@ -127,7 +127,7 @@ sha1_file (FILE *file, unsigned int *has
+         perror ("malloc:\n");
+         goto sha1_fail;
+     }
+-    if (EVP_DigestInit (&ctx, EVP_sha1 ()) == 0) {
++    if (EVP_DigestInit (ctx, EVP_sha1 ()) == 0) {
+         ERR_print_errors_fp (stderr);
+         goto sha1_fail;
+     }
+@@ -135,7 +135,7 @@ sha1_file (FILE *file, unsigned int *has
+         num_read = fread (buf, 1, BUF_SIZE, file);
+         if (num_read <= 0)
+             break;
+-        if (EVP_DigestUpdate (&ctx, buf, num_read) == 0) {
++        if (EVP_DigestUpdate (ctx, buf, num_read) == 0) {
+             ERR_print_errors_fp (stderr);
+             goto sha1_fail;
+         }
+@@ -149,7 +149,7 @@ sha1_file (FILE *file, unsigned int *has
+         perror ("calloc of hash buffer:\n");
+         goto sha1_fail;
+     }
+-    if (EVP_DigestFinal (&ctx, hash, hash_len) == 0) {
++    if (EVP_DigestFinal (ctx, hash, hash_len) == 0) {
+         ERR_print_errors_fp (stderr);
+         goto sha1_fail;
+     }
diff --git a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb b/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
index 0cc4f63..f8347b7 100644
--- a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
+++ b/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
@@ -9,7 +9,8 @@ DEPENDS = "libtspi"
 PV = "0.1+git${SRCPV}"
 SRCREV = "c02ad8f628b3d99f6d4c087b402fe31a40ee6316"
 
-SRC_URI = "git://github.com/flihp/pcr-extend.git "
+SRC_URI = "git://github.com/flihp/pcr-extend.git \
+           file://fix_openssl11_build.patch "
 
 inherit autotools
 
-- 
2.17.1


