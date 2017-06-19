Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30DB7E00B27; Mon, 19 Jun 2017 03:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C11E00B27
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:23 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d17so16060933wme.3
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FKsX5bkG+FX7AQPY58VgKY/L6zycg4+8TCInbBfuWiU=;
	b=MnyJ2wTEbQnM9zCXXvaLTp8uuIMlMkeHXl4D2W19fS08VGdGmyKH6wPyWQJ6sDJGGj
	6N3KPgfP2zY77InX6lZOjCuxo6bk/9Qu9+x9ZRD3JSaoxF1OS+mgVjfEcFGKI+FjSBIp
	zEGO3Aw+LmV+JmSlJsYdCCeJNkQbkJUgERsQF73K58HUmpXh18+YHbsbNAlaiRGz6IXK
	Kmgc8MfgWqiTkjWZDudcUUOtNHwsXzgQ6nhzp6C1Qr4j2PvrqbT+jtPDqqr0PaUVK46J
	eCI0EKuPqeILySIbcS77NGGGfKc2NctXNE3INkOgwwJ32J7d8LXHbdBvtEkEMviZWJEb
	k9dA==
X-Gm-Message-State: AKS2vOz/6bv8a2HIPdAvaN6bZkpTFKxK2LJ/qiAbLCJr3o5EDCeWHIDS
	WPlc8Q919b74hM6dO/s=
X-Received: by 10.28.191.29 with SMTP id p29mr13799170wmf.60.1497868102414;
	Mon, 19 Jun 2017 03:28:22 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 99sm2516274wrl.43.2017.06.19.03.28.21
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 03:28:21 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 19 Jun 2017 11:28:19 +0100
Message-Id: <20170619102819.1181-3-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] grep: fix compilation with security flags enabled
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
X-List-Received-Date: Mon, 19 Jun 2017 10:28:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

As per attached patch

Signed-off-by: André Draszik <adraszik@tycoint.com>
Acked-by: Sylvain Lemieux <slemieux@tycoint.com>
---
 ...compilation-error-with-security-flags-ena.patch | 134 +++++++++++++++++++++
 recipes-extended/grep/grep_2.5.1a.bb               |   1 +
 2 files changed, 135 insertions(+)
 create mode 100644 recipes-extended/grep/grep-2.5.1a/search-fix-compilation-error-with-security-flags-ena.patch

diff --git a/recipes-extended/grep/grep-2.5.1a/search-fix-compilation-error-with-security-flags-ena.patch b/recipes-extended/grep/grep-2.5.1a/search-fix-compilation-error-with-security-flags-ena.patch
new file mode 100644
index 0000000..e6fac82
--- /dev/null
+++ b/recipes-extended/grep/grep-2.5.1a/search-fix-compilation-error-with-security-flags-ena.patch
@@ -0,0 +1,134 @@
+From cc5ffe68438bef47c2313705afc0101eba640092 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
+Date: Thu, 23 Mar 2017 12:42:38 +0000
+Subject: [PATCH] search: fix compilation error with security flags enabled
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+| ../../grep-2.5.1a/src/search.c: In function 'dfaerror':
+| ../../grep-2.5.1a/src/search.c:106:3: error: format not a string literal and no format arguments [-Werror=format-security]
+|    error (2, 0, mesg);
+|    ^~~~~
+
+Upstream-Status: Inappropriate [required for grep 2.5.1a (GPLv2) recipe only]
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+---
+ src/search.c | 26 +++++++++++++-------------
+ 1 file changed, 13 insertions(+), 13 deletions(-)
+
+diff --git a/src/search.c b/src/search.c
+index 3c6a485..9cee0d8 100644
+--- a/src/search.c
++++ b/src/search.c
+@@ -103,7 +103,7 @@ check_utf8 (void)
+ void
+ dfaerror (char const *mesg)
+ {
+-  error (2, 0, mesg);
++  error (2, 0, "%s", mesg);
+ }
+ 
+ static void
+@@ -142,7 +142,7 @@ kwsmusts (void)
+ 	    continue;
+ 	  ++kwset_exact_matches;
+ 	  if ((err = kwsincr (kwset, dm->must, strlen (dm->must))) != 0)
+-	    error (2, 0, err);
++	    error (2, 0, "%s", err);
+ 	}
+       /* Now, we compile the substrings that will require
+ 	 the use of the regexp matcher.  */
+@@ -151,10 +151,10 @@ kwsmusts (void)
+ 	  if (dm->exact)
+ 	    continue;
+ 	  if ((err = kwsincr (kwset, dm->must, strlen (dm->must))) != 0)
+-	    error (2, 0, err);
++	    error (2, 0, "%s", err);
+ 	}
+       if ((err = kwsprep (kwset)) != 0)
+-	error (2, 0, err);
++	error (2, 0, "%s", err);
+     }
+ }
+ 
+@@ -198,7 +198,7 @@ Gcompile (char const *pattern, size_t size)
+ 
+       if ((err = re_compile_pattern (motif, len,
+ 				    &(patterns[pcount].regexbuf))) != 0)
+-	error (2, 0, err);
++	error (2, 0, "%s", err);
+       pcount++;
+ 
+       motif = sep;
+@@ -286,7 +286,7 @@ Ecompile (char const *pattern, size_t size)
+ 
+       if ((err = re_compile_pattern (motif, len,
+ 				    &(patterns[pcount].regexbuf))) != 0)
+-	error (2, 0, err);
++	error (2, 0, "%s", err);
+       pcount++;
+ 
+       motif = sep;
+@@ -755,7 +755,7 @@ fimb_fail:
+ 	      if (wclen == 0)
+ 		{
+ 		  if ((err = kwsincr (fimb_kwset, "", 0)) != 0)
+-		    error (2, 0, err);
++		    error (2, 0, "%s", err);
+ 		}
+ 	      else
+ 		for (i = 0; i < (1 << wclen); i++)
+@@ -778,7 +778,7 @@ fimb_fail:
+ 			p += k;
+ 		      }
+ 		    if ((err = kwsincr (fimb_kwset, starts, p - starts)) != 0)
+-		      error (2, 0, err);
++		      error (2, 0, "%s", err);
+ 		  }
+ 	      if (wclim < wcpattern + wcsize)
+ 		++wclim;
+@@ -790,7 +790,7 @@ fimb_fail:
+ 	  free (starts);
+ 	  Fimb.match = xmalloc (Fimb.count);
+ 	  if ((err = kwsprep (kwset)) != 0)
+-	    error (2, 0, err);
++	    error (2, 0, "%s", err);
+ 	  return;
+ 	}
+     }
+@@ -804,7 +804,7 @@ fimb_fail:
+       for (lim = beg; lim < pattern + size && *lim != '\n'; ++lim)
+ 	;
+       if ((err = kwsincr (kwset, beg, lim - beg)) != 0)
+-	error (2, 0, err);
++	error (2, 0, "%s", err);
+       if (lim < pattern + size)
+ 	++lim;
+       beg = lim;
+@@ -812,7 +812,7 @@ fimb_fail:
+   while (beg < pattern + size);
+ 
+   if ((err = kwsprep (kwset)) != 0)
+-    error (2, 0, err);
++    error (2, 0, "%s", err);
+ }
+ 
+ #ifdef MBS_SUPPORT
+@@ -1220,11 +1220,11 @@ Pcompile (char const *pattern, size_t size)
+ 
+   cre = pcre_compile (re, flags, &ep, &e, pcre_maketables ());
+   if (!cre)
+-    error (2, 0, ep);
++    error (2, 0, "%s", ep);
+ 
+   extra = pcre_study (cre, 0, &ep);
+   if (ep)
+-    error (2, 0, ep);
++    error (2, 0, "%s", ep);
+ 
+   free (re);
+ #endif
+-- 
+2.11.0
+
diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index 5a2da28..97ca768 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -16,6 +16,7 @@ SRC_URI = "${GNU_MIRROR}/grep/grep-${PV}.tar.bz2 \
            file://grep-CVE-2012-5667.patch \
            file://fix-for-texinfo-5.1.patch \
            file://grep-egrep-fgrep-Fix-LSB-NG-cases.patch \
+           file://search-fix-compilation-error-with-security-flags-ena.patch \
           "
 
 SRC_URI[md5sum] = "52202fe462770fa6be1bb667bd6cf30c"
-- 
2.11.0


