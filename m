Return-Path: <tranmanphong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4FB9E00D7B; Thu,  7 Dec 2017 17:20:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tranmanphong[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4455EE00D74
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:20:01 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id u19so6033331pfa.12
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 17:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=EeynGHinIW9X4C21tifvuXcTEtZ61dCFtS74zwTxdyw=;
	b=aaqKvFotK9S5ndXB1AKaDEUPNw6jcn686uhwhsohLuShzPaEnhbf7pTn7QyILri6s4
	VgeoBANJm7dVbm+skeBy4kBujGB5vp2j/S+30YVQw7UBtSf3qHeF6WCgvtPjURS3OXE2
	Fzye3vPc7OvoW8U9BTN4Ha8ZanQSLRFEOblFNf2KHnzv/dA6fnl67R2jQbMf5PGQbS4G
	0CTM4Jvo18s3/8gdTs8VoUDSjlpLrVv3GFR8Sgf3vVNdignVMhxgpSEvAPl3B2eZ43X6
	sj+4EYmhrTtCeeiCHA+ONBA9luztoLP2r00i0XnBAj/QhU+T53uBV5O0FwbYAD2/HcoQ
	Wqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=EeynGHinIW9X4C21tifvuXcTEtZ61dCFtS74zwTxdyw=;
	b=LVUVGchmApHrkbCPX82lAfJseyu5hEEOcSAqi062jrKm4Bq8GECaI82yuML+TezzGq
	/va7IA/F1E8LaCVCBYdb3vxphlXIOsZlyvAxKiTM/PAzYCT8TcvkfWAjbLA9yUIqEtke
	poI0Kw1BQ+8m+IxRBfsxms7qIxbt0EbwNnE5d8dHRebnLJm62J7tRhQqqjm+/VHyRXMh
	8J/mAtoe99AwKPTow9Z5XMNNJkDrbwMBIhsrKLn09YaRiyoMPNIafcsHpzeGf4fQxGME
	fpILCs+mbZ3bl2yRLgBUDNUqAMD9DDM773RXPwi9GjcmG0M6OYa7Uin3TbW8ZTpr8SXG
	p4Wg==
X-Gm-Message-State: AKGB3mLf05F8IcnytFWTrYF1J4oZhaVyoX328eRfVqyBZGdtwB/pD0v1
	UKP+OKjxfsz1r46388gZ4t4=
X-Google-Smtp-Source: AGs4zMZ3vg9UzJIH8iErwVFRkpgMQlsgwcOhzH8YpRxbNngE1vbC5cF8IpIuo3/T8/MaXiCsB/nfDA==
X-Received: by 10.84.128.228 with SMTP id a91mr15511539pla.285.1512696001453; 
	Thu, 07 Dec 2017 17:20:01 -0800 (PST)
Received: from phongtran-ThinkPad-T430s.net.fpt ([1.52.33.90])
	by smtp.gmail.com with ESMTPSA id
	x188sm10612762pgx.33.2017.12.07.17.19.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Dec 2017 17:20:00 -0800 (PST)
From: Phong Tran <tranmanphong@gmail.com>
To: ross.burton@intel.com,
	yocto@yoctoproject.org
Date: Fri,  8 Dec 2017 08:19:37 +0700
Message-Id: <1512695977-5500-2-git-send-email-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1512695977-5500-1-git-send-email-tranmanphong@gmail.com>
References: <1512695977-5500-1-git-send-email-tranmanphong@gmail.com>
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: Phong Tran <tranmanphong@gmail.com>
Subject: [meta-gplv2][PATCH] gettext: fix compilation with securityflags enabled
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
X-List-Received-Date: Fri, 08 Dec 2017 01:20:03 -0000

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
2.7.4


