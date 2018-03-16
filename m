Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E117E00AE4; Fri, 16 Mar 2018 13:11:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D3FE0073D
	for <yocto@lists.yoctoproject.org>;
	Fri, 16 Mar 2018 13:11:40 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id 139so5226561wmn.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 16 Mar 2018 13:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=+k+ul4JQfSt+u4HAzIh2tGXTR4OPBX3MCUvz6YsOhfg=;
	b=jLNhmbUVm91PJEp2Df4jYuN3opHv+pBQTvzLIM3UELgbKKbJvgxhUr1XmKd+qNJKbq
	ysbcXmiAr1q7pSJh90hLg/jhy7OcohsfLREKYGgwjbViokldDebtwmtH49TbOpSIIagd
	XmqfrXn6otPoA51AL7cbWllfEDiwp5W2ESfopQMZDH/XekYHVpiq6RFjFbFSKm1F3/s2
	rh6NlXdvjnR5QyD26+8bRW8EtjMHUFMyaEV/Uj+pHbiExv5wok5ND9ntjCvBIEIQNPFk
	Qd4RqVZATFMal+ztoLEdKlkJKmxhw9NAt4bfNGb9+rMfXSvCbuqUyrsO6FR4BIGQbOdA
	e0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=+k+ul4JQfSt+u4HAzIh2tGXTR4OPBX3MCUvz6YsOhfg=;
	b=mBlZSluydi9Fuy4j4NXYkTMxFmlv/Ugt8Cqyw0YSnb4eplVFhITbR8abXQ4mBZt/CK
	0nnE0OFmpcojzOywHxppzLtlfwtMZbnkQHLQKnXWRNtgZqXKFY88xIHm5WuOQ0451vdc
	I5r7Vtn4vXs8x8E0XUiLyuU/CO6ozfZrqevfnj1Fm1fZFVnyUlE0y9kw6k04x8mfBVAE
	qeRqmJxPQYJAWlvMG3+TZjBgGWOhh6Kdr+pgNc8UCWzxQ6jLhQUKDp5Q4mlMGvgQI+eX
	8eoJBUL5Jx+30wx49/ps3fZ73lounKWeO6sQVjOMulJPVAaeOjksHW+rzBZhCyOy85nj
	RE9w==
X-Gm-Message-State: AElRT7FFzYelsXTXh7O8q7EDWbRJf53pG0zL4Xk1jzwwD6a37XDeTi8U
	+ay/1QUzbkgkx5+BEwFaAbE1pg==
X-Google-Smtp-Source: AG47ELsN4FVfOd9FFJYzyT8S20c4r+2lpe32QICbwYjj+wclRX9lhnaLq6f9xfHUPJHNKNcGaRYm7w==
X-Received: by 10.28.53.6 with SMTP id c6mr2612337wma.18.1521231099938;
	Fri, 16 Mar 2018 13:11:39 -0700 (PDT)
Received: from localhost ([217.30.68.212])
	by smtp.gmail.com with ESMTPSA id d8sm10701173wrf.8.2018.03.16.13.11.38
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Mar 2018 13:11:38 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Fri, 16 Mar 2018 20:11:40 +0000
Message-Id: <20180316201140.4667-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.15.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] nettle: refresh the patches
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
X-List-Received-Date: Fri, 16 Mar 2018 20:11:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Martin Jansa <martin.jansa@gmail.com>

* fixes:
WARNING: nettle-2.7.1-r0 do_patch:
Some of the context lines in patches were ignored. This can lead to incorrectly applied patches.
The context lines in the patches can be updated with devtool:

    devtool modify <recipe>
    devtool finish --force-patch-refresh <recipe> <layer_path>

Then the updated patches and the source tree (in devtool's workspace)
should be reviewed to make sure the patches apply in the correct place
and don't introduce duplicate lines (which can, and does happen
when some of the context is ignored). Further information:
http://lists.openembedded.org/pipermail/openembedded-core/2018-March/148675.html
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10450
Details:
Applying patch Add-target-to-only-build-tests-not-run-them.patch
patching file Makefile.in
Hunk #1 succeeded at 53 (offset -2 lines).
patching file testsuite/Makefile.in
Hunk #1 succeeded at 105 with fuzz 2 (offset -11 lines).

Now at patch Add-target-to-only-build-tests-not-run-them.patch

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 ...d-target-to-only-build-tests-not-run-them.patch | 18 +++----
 .../nettle/nettle-2.7.1/CVE-2015-8803_8805.patch   | 59 +++++++++++++---------
 .../nettle/nettle-2.7.1/CVE-2015-8804.patch        | 26 +++++++---
 ...k-header-files-of-openssl-only-if-enable_.patch |  6 +--
 4 files changed, 63 insertions(+), 46 deletions(-)

diff --git a/recipes-support/nettle/files/Add-target-to-only-build-tests-not-run-them.patch b/recipes-support/nettle/files/Add-target-to-only-build-tests-not-run-them.patch
index 23da777..af77aec 100644
--- a/recipes-support/nettle/files/Add-target-to-only-build-tests-not-run-them.patch
+++ b/recipes-support/nettle/files/Add-target-to-only-build-tests-not-run-them.patch
@@ -1,4 +1,4 @@
-From 46edf01cc98db9f9feec984897836dfdd26bdc8d Mon Sep 17 00:00:00 2001
+From 9225dfb91b6b5617cf2dff32d370cf027237d4c8 Mon Sep 17 00:00:00 2001
 From: Jussi Kukkonen <jussi.kukkonen@intel.com>
 Date: Wed, 12 Aug 2015 23:27:27 +0300
 Subject: [PATCH] Add target to only build tests (not run them)
@@ -9,16 +9,17 @@ installable tests: It's useful for us already as is.
 Upstream-Status: Inappropriate [not a complete solution]
 
 Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
+
 ---
  Makefile.in           | 3 +++
  testsuite/Makefile.in | 2 ++
  2 files changed, 5 insertions(+)
 
 diff --git a/Makefile.in b/Makefile.in
-index 08efb7d..7909342 100644
+index 2c25007..ef21b1b 100644
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -55,6 +55,9 @@ clean distclean mostlyclean maintainer-clean tags:
+@@ -53,6 +53,9 @@ clean distclean mostlyclean maintainer-clean tags:
  	  echo "Making $@ in $$d" ; (cd $$d && $(MAKE) $@); done
  	$(MAKE) $@-here
  
@@ -29,18 +30,15 @@ index 08efb7d..7909342 100644
  	true
  
 diff --git a/testsuite/Makefile.in b/testsuite/Makefile.in
-index 6bc1907..bb65bf0 100644
+index 91f6e2a..52f5c29 100644
 --- a/testsuite/Makefile.in
 +++ b/testsuite/Makefile.in
-@@ -116,6 +116,8 @@ $(TARGETS) $(EXTRA_TARGETS): testutils.$(OBJEXT) ../nettle-internal.$(OBJEXT) \
- # data.
- VALGRIND = valgrind --error-exitcode=1 --leak-check=full --show-reachable=yes @IF_ASM@ --partial-loads-ok=yes
+@@ -105,6 +105,8 @@ $(TARGETS) $(EXTRA_TARGETS): testutils.$(OBJEXT) ../nettle-internal.$(OBJEXT) \
+ 
+ VALGRIND = valgrind --error-exitcode=1 --leak-check=full --show-reachable=yes
  
 +buildtest: $(TS_ALL)
 +
  # The PATH update is for locating dlls on w*ndows.
  check: $(TS_ALL)
  	LD_LIBRARY_PATH=../.lib PATH="../.lib:$$PATH" srcdir="$(srcdir)" \
--- 
-2.1.4
-
diff --git a/recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch b/recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch
index a956f42..988f39e 100644
--- a/recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch
+++ b/recipes-support/nettle/nettle-2.7.1/CVE-2015-8803_8805.patch
@@ -1,3 +1,8 @@
+From f21b9f7b21067fa3630607cdc1663141b2735ae5 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster@mvista.com>
+Date: Thu, 2 Mar 2017 12:24:31 +0000
+Subject: [PATCH] Create meta-gplv2 from files from OE-Core
+
 Upstream-Status: Backport
 https://git.lysator.liu.se/nettle/nettle/commit/c71d2c9d20eeebb985e3872e4550137209e3ce4d
 
@@ -8,14 +13,36 @@ Same fix for both.
 
 Signed-off-by: Armin Kuster <akuster@mvista.com>
 
-Index: nettle-2.7.1/ecc-256.c
-===================================================================
---- nettle-2.7.1.orig/ecc-256.c
-+++ nettle-2.7.1/ecc-256.c
-@@ -96,9 +96,19 @@ ecc_256_modp (const struct ecc_curve *ec
+---
+ ChangeLog |  6 ++++++
+ ecc-256.c | 23 ++++++++++++++++++-----
+ 2 files changed, 24 insertions(+), 5 deletions(-)
+
+diff --git a/ChangeLog b/ChangeLog
+index 7b7854d..abdd974 100644
+--- a/ChangeLog
++++ b/ChangeLog
+@@ -1,3 +1,9 @@
++2015-12-10  Niels Möller  <nisse@lysator.liu.se>
++
++   * ecc-256.c (ecc_256_modp): Fixed carry propagation bug. Problem
++   reported by Hanno Böck.
++   (ecc_256_modq): Fixed another carry propagation bug.
++
+ 2013-05-28  Niels Möller  <nisse@lysator.liu.se>
+ 
+ 	* Released nettle-2.7.1.
+diff --git a/ecc-256.c b/ecc-256.c
+index 571cf73..7bee4c7 100644
+--- a/ecc-256.c
++++ b/ecc-256.c
+@@ -96,9 +96,19 @@ ecc_256_modp (const struct ecc_curve *ecc, mp_limb_t *rp)
        q2 += t + (q1 < t);
  
        assert (q2 < 2);
+-
+-      /* We multiply by two low limbs of p, 2^96 - 1, so we could use
+-	 shifts rather than mul. */
 +      /*
 +   n-1 n-2 n-3 n-4
 +        +---+---+---+---+
@@ -25,16 +52,14 @@ Index: nettle-2.7.1/ecc-256.c
 +            +-------+---+
 +            |q2(2^.)|
 +            +-------+
- 
--      /* We multiply by two low limbs of p, 2^96 - 1, so we could use
--	 shifts rather than mul. */
++
 +   We multiply by two low limbs of p, 2^96 - 1, so we could use
 +   shifts rather than mul.
 +      */
        t = mpn_submul_1 (rp + n - 4, ecc->p, 2, q1);
        t += cnd_sub_n (q2, rp + n - 3, ecc->p, 1);
        t += (-q2) & 0xffffffff;
-@@ -108,7 +118,10 @@ ecc_256_modp (const struct ecc_curve *ec
+@@ -108,7 +118,10 @@ ecc_256_modp (const struct ecc_curve *ecc, mp_limb_t *rp)
        u0 -= t;
        t = (u1 < cy);
        u1 -= cy;
@@ -46,7 +71,7 @@ Index: nettle-2.7.1/ecc-256.c
        u1 -= (-t) & 0xffffffff;
      }
    rp[2] = u0;
-@@ -195,7 +208,7 @@ ecc_256_modq (const struct ecc_curve *ec
+@@ -195,7 +208,7 @@ ecc_256_modq (const struct ecc_curve *ecc, mp_limb_t *rp)
  
        /* Conditional add of p */
        u1 += t;
@@ -55,17 +80,3 @@ Index: nettle-2.7.1/ecc-256.c
  
        t = cnd_add_n (t, rp + n - 4, ecc->q, 2);
        u1 += t;
-Index: nettle-2.7.1/ChangeLog
-===================================================================
---- nettle-2.7.1.orig/ChangeLog
-+++ nettle-2.7.1/ChangeLog
-@@ -1,3 +1,9 @@
-+2015-12-10  Niels Möller  <nisse@lysator.liu.se>
-+
-+   * ecc-256.c (ecc_256_modp): Fixed carry propagation bug. Problem
-+   reported by Hanno Böck.
-+   (ecc_256_modq): Fixed another carry propagation bug.
-+
- 2013-05-28  Niels Möller  <nisse@lysator.liu.se>
- 
- 	* Released nettle-2.7.1.
diff --git a/recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch b/recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch
index 73723a9..f6906fd 100644
--- a/recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch
+++ b/recipes-support/nettle/nettle-2.7.1/CVE-2015-8804.patch
@@ -1,13 +1,23 @@
+From 8cbd1d71caf56d45c54b1d8d073b330c07c66d12 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster@mvista.com>
+Date: Thu, 2 Mar 2017 12:24:31 +0000
+Subject: [PATCH] Create meta-gplv2 from files from OE-Core
+
 Upstream-Status: Backport
  https://git.lysator.liu.se/nettle/nettle/commit/fa269b6ad06dd13c901dbd84a12e52b918a09cd7
 
 CVE: CVE-2015-8804
 Signed-off-by: Armin Kuster <akuster@mvista.com>
 
-Index: nettle-2.7.1/ChangeLog
-===================================================================
---- nettle-2.7.1.orig/ChangeLog
-+++ nettle-2.7.1/ChangeLog
+---
+ ChangeLog               |   8 +++
+ x86_64/ecc-384-modp.asm | 169 +++++++++++++++++++++---------------------------
+ 2 files changed, 83 insertions(+), 94 deletions(-)
+
+diff --git a/ChangeLog b/ChangeLog
+index abdd974..c81168b 100644
+--- a/ChangeLog
++++ b/ChangeLog
 @@ -1,3 +1,11 @@
 +2015-12-15  Niels Möller  <nisse@lysator.liu.se>
 +
@@ -20,10 +30,10 @@ Index: nettle-2.7.1/ChangeLog
  2015-12-10  Niels Möller  <nisse@lysator.liu.se>
  
     * ecc-256.c (ecc_256_modp): Fixed carry propagation bug. Problem
-Index: nettle-2.7.1/x86_64/ecc-384-modp.asm
-===================================================================
---- nettle-2.7.1.orig/x86_64/ecc-384-modp.asm
-+++ nettle-2.7.1/x86_64/ecc-384-modp.asm
+diff --git a/x86_64/ecc-384-modp.asm b/x86_64/ecc-384-modp.asm
+index 698838f..31b739e 100644
+--- a/x86_64/ecc-384-modp.asm
++++ b/x86_64/ecc-384-modp.asm
 @@ -20,7 +20,7 @@ C MA 02111-1301, USA.
  	.file "ecc-384-modp.asm"
  
diff --git a/recipes-support/nettle/nettle-2.7.1/check-header-files-of-openssl-only-if-enable_.patch b/recipes-support/nettle/nettle-2.7.1/check-header-files-of-openssl-only-if-enable_.patch
index 38d9107..d72165a 100644
--- a/recipes-support/nettle/nettle-2.7.1/check-header-files-of-openssl-only-if-enable_.patch
+++ b/recipes-support/nettle/nettle-2.7.1/check-header-files-of-openssl-only-if-enable_.patch
@@ -1,4 +1,4 @@
-From c369dd7049f5a198f8b6c96fde6e294ce5146c2f Mon Sep 17 00:00:00 2001
+From 95c6efc308c314f0cfe874d6a26cd1f59089adf6 Mon Sep 17 00:00:00 2001
 From: Haiqing Bai <Haiqing.Bai@windriver.com>
 Date: Fri, 9 Dec 2016 16:16:45 +0800
 Subject: [PATCH] nettle: check header files of openssl only if
@@ -10,6 +10,7 @@ building for nettle.
 
 Upstream-Status: Pending
 Signed-off-by: Haiqing Bai <Haiqing.Bai@windriver.com>
+
 ---
  configure.ac | 8 +++++---
  1 file changed, 5 insertions(+), 3 deletions(-)
@@ -33,6 +34,3 @@ index 78a3d4e..4f16a98 100644
  
  LSH_FUNC_ALLOCA
  LSH_FUNC_STRERROR
--- 
-1.9.1
-
-- 
2.15.1


