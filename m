Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4592E00D73; Mon, 18 Dec 2017 14:08:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1735CE00D67
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:37 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id l24so10265825pfj.6
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=EuQcRhSAyOxMl7B3rWdNPNSKwU4MnmWmnE4b+l+um8k=;
	b=RMYHWlljqEl+/6Hf8sG1gojJSCHiLBi6XdCNkIGzDGXJMzxCFZDTi/VW1S4Vbn5mdG
	8pxu68xqOdO/XNObqT/of1zH/TPCr/mRuGeguK8AlGJXC2VKOu7Wky/JdctnPcGy+RiN
	Fq4larP8A6NHs+hfKTsnS9EI9mlrXg9j7ffqPI0SmJGTyizmjEF+GEkb0cVkRwnca6wz
	gdNOaqaHdm+uqRrqeIJquZCjdXP+GtVn/6UDsI3a6jmuLu3hqEmFhVtxXk0Ucny6teqZ
	SgsX6sX+m9JH9iBR5aeqRWUzpzQHSJdgqvqK8yGVqCCNJsyZAip2/76itsDAADqoMzKR
	RS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=EuQcRhSAyOxMl7B3rWdNPNSKwU4MnmWmnE4b+l+um8k=;
	b=H2hxuakbIxTI5703Ofz/H/bqtEcvQUb65bCOyzVqHQ+Xn+9nKmcfV/Eba+rhN9D53i
	YcB4vGzc7exe1jIjypKHhD6UmIWp+RhTXvdHObTDpSajT5AWeSi41FjK4B51qtu2MgvY
	01UNlDF3FS92zf3xzSoUvRC/Bx0Qgr5qjgIm5C4icPe2YeJy1NY9hKSb1ulfDaUWX9F3
	5zpPwD8BIaVW9sfWuRNSINBGY1WKXyv/Mt0fvyg/0Iq1kBkB3bvcmCWE9G6xtmyL8Jjn
	GiW3OyWJefGwMyTwFNOFR7DsfD7iaweVZqQFp3M41yGmuosPjKuyzUpS02Sa0YKUcYCW
	hzTg==
X-Gm-Message-State: AKGB3mJvf5DRIqp/Ked1blVmBgLWsCUOdk8VbRdAK1xScAjwK6ECe+8w
	2nAWUcHJV0aeWiHq3pmwU4mgqw==
X-Google-Smtp-Source: ACJfBouFLPDpqlT+OnfFgj2sHD2/R3rUH7csRZZQDkuj4RKnXSAMrn926lMBBCRKwHypW7Ba9Tp8XA==
X-Received: by 10.99.115.81 with SMTP id d17mr932781pgn.279.1513634917061;
	Mon, 18 Dec 2017 14:08:37 -0800 (PST)
Received: from e6520.cablelabs.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	f7sm25602904pfa.133.2017.12.18.14.08.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Dec 2017 14:08:36 -0800 (PST)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Dec 2017 14:08:08 -0800
Message-Id: <1513634888-32057-4-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
References: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
Cc: Phong Tran <tranmanphong@gmail.com>
Subject: [meta-gplv2][PATCH 3/3] gettext: fix compilation with securityflags enabled
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
X-List-Received-Date: Mon, 18 Dec 2017 22:08:38 -0000

From: Phong Tran <tranmanphong@gmail.com>

Signed-off-by: Phong Tran <tranmanphong@gmail.com>
---
 ...grep-fix-compile-error-Werror-format-secu.patch | 88 ++++++++++++++++++++++
 recipes-core/gettext/gettext_0.16.1.bb             |  1 +
 2 files changed, 89 insertions(+)
 create mode 100644 recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch

diff --git a/recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch b/recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch
new file mode 100644
index 0000000..d51513d
--- /dev/null
+++ b/recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch
@@ -0,0 +1,88 @@
+From b0e57fc44ee102c668f13a324360fb2f27ee7538 Mon Sep 17 00:00:00 2001
+From: Phong Tran <tranmanphong@gmail.com>
+Date: Fri, 8 Dec 2017 07:56:58 +0700
+Subject: [PATCH] gettext libgrep fix compile error -Werror=format-security
+
+---
+ gettext-tools/libgrep/m-fgrep.c |  4 ++--
+ gettext-tools/libgrep/m-regex.c | 12 ++++++------
+ 2 files changed, 8 insertions(+), 8 deletions(-)
+
+diff --git a/gettext-tools/libgrep/m-fgrep.c b/gettext-tools/libgrep/m-fgrep.c
+index 28f900c..2e49a74 100644
+--- a/gettext-tools/libgrep/m-fgrep.c
++++ b/gettext-tools/libgrep/m-fgrep.c
+@@ -55,7 +55,7 @@ Fcompile (const char *pattern, size_t pattern_size,
+       for (lim = beg; lim < pattern + pattern_size && *lim != '\n'; ++lim)
+ 	;
+       if ((err = kwsincr (ckwset->kwset, beg, lim - beg)) != NULL)
+-	error (exit_failure, 0, err);
++	error (exit_failure, 0, "%s", err);
+       if (lim < pattern + pattern_size)
+ 	++lim;
+       beg = lim;
+@@ -63,7 +63,7 @@ Fcompile (const char *pattern, size_t pattern_size,
+   while (beg < pattern + pattern_size);
+ 
+   if ((err = kwsprep (ckwset->kwset)) != NULL)
+-    error (exit_failure, 0, err);
++    error (exit_failure, 0, "%s", err);
+   return ckwset;
+ }
+ 
+diff --git a/gettext-tools/libgrep/m-regex.c b/gettext-tools/libgrep/m-regex.c
+index 6f7aae3..70f04b3 100644
+--- a/gettext-tools/libgrep/m-regex.c
++++ b/gettext-tools/libgrep/m-regex.c
+@@ -73,7 +73,7 @@ struct compiled_regex {
+ void
+ dfaerror (const char *mesg)
+ {
+-  error (exit_failure, 0, mesg);
++  error (exit_failure, 0, "%s", mesg);
+ }
+ 
+ /* If the DFA turns out to have some set of fixed strings one of
+@@ -99,7 +99,7 @@ kwsmusts (struct compiled_regex *cregex,
+ 	    continue;
+ 	  cregex->kwset_exact_matches++;
+ 	  if ((err = kwsincr (cregex->ckwset.kwset, dm->must, strlen (dm->must))) != NULL)
+-	    error (exit_failure, 0, err);
++	    error (exit_failure, 0, "%s", err);
+ 	}
+       /* Now, we compile the substrings that will require
+ 	 the use of the regexp matcher.  */
+@@ -108,10 +108,10 @@ kwsmusts (struct compiled_regex *cregex,
+ 	  if (dm->exact)
+ 	    continue;
+ 	  if ((err = kwsincr (cregex->ckwset.kwset, dm->must, strlen (dm->must))) != NULL)
+-	    error (exit_failure, 0, err);
++	    error (exit_failure, 0, "%s", err);
+ 	}
+       if ((err = kwsprep (cregex->ckwset.kwset)) != NULL)
+-	error (exit_failure, 0, err);
++	error (exit_failure, 0, "%s", err);
+     }
+ }
+ 
+@@ -161,7 +161,7 @@ Gcompile (const char *pattern, size_t pattern_size,
+ 
+       if ((err = re_compile_pattern (motif, len,
+ 				     &(cregex->patterns[cregex->pcount].regexbuf))) != NULL)
+-	error (exit_failure, 0, err);
++	error (exit_failure, 0, "%s", err);
+       cregex->pcount++;
+ 
+       motif = sep;
+@@ -247,7 +247,7 @@ compile (const char *pattern, size_t pattern_size,
+ 
+       if ((err = re_compile_pattern (motif, len,
+ 				     &(cregex->patterns[cregex->pcount].regexbuf))) != NULL)
+-	error (exit_failure, 0, err);
++	error (exit_failure, 0, "%s", err);
+       cregex->pcount++;
+ 
+       motif = sep;
+-- 
+2.7.4
+
diff --git a/recipes-core/gettext/gettext_0.16.1.bb b/recipes-core/gettext/gettext_0.16.1.bb
index e79f4da..dacdfd3 100644
--- a/recipes-core/gettext/gettext_0.16.1.bb
+++ b/recipes-core/gettext/gettext_0.16.1.bb
@@ -19,6 +19,7 @@ SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
            file://fix_aclocal_version.patch \
            file://fix_gnu_source_circular.patch \
            file://hardcode_macro_version.patch \
+           file://0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch \
           "
 
 SRC_URI[md5sum] = "3d9ad24301c6d6b17ec30704a13fe127"
-- 
1.9.1


