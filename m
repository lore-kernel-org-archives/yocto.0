Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82BE3E00939; Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF69E00839
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:48 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id o126so26732325pfb.1
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=N9dHKcmzWqTqomdE2Vrler/X4stNzCqe7HiCZ4gfzPE=;
	b=Aj4mebhgCzKJYyDdQ9GPSvPuxR9PQB0/EadFrMsst+CUH7GmGVDblxHQVvSL2mfEqC
	GzI5da+gjYGcrYgc3S+JGyvmCvm/I4oqcL8ElMdIpHqZhmnrBx38Oqhj01pb4/3eV3ke
	95sP52RnRWmImm1kfqQt5hEUDIcWfCBIrnuUiALFG93UHKDg2RZV5rgJMonv9HAkCRoN
	EXFpdoU9xyJGdV0aSJf5rOyCFCc79mmQYWt9Ux5RjcBr0fTJNbM67eXH+AW8qxdP8hJm
	UW2LlO57Kzl7pD5d5gn0gt1fq+TSQMOBLULr3Ghjk84VEcD1aUAWYlbWVC6wMk6wo7zf
	DM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=N9dHKcmzWqTqomdE2Vrler/X4stNzCqe7HiCZ4gfzPE=;
	b=Go12ra+ARF/U11ZUKCnF3mjQZyVal4dzTwoSWJOre7nFQ/90zGUUI6/ut27W40Nh/A
	4Va4sVnuwLFCZGJ3A5Z2fHSq3CTbm1VOdx9Av1MSvsWEKI4hCRr8K4ohA1oniH3QJOrA
	Pa6fd5RxnXZWLzwSjCs+TE6uJkaAGEtYJnu770kWWf8KQOv2lT7SY1AgjWOrEtz8mSUz
	l94c38bY5WB9TStVx3rVIrrmVukSvvRk4ApEYTeDmeqwN/ZRgzkGlRkc18M4W339MS5y
	5zDhXc8h/9xj9CzgXM0Je//WqqPF+GrveIgYhIn4pHFutohkOCSEK2PpBpqRFhGqJ2YQ
	6jkg==
X-Gm-Message-State: AFeK/H07UVFwHpsE9h3yTt+eW4+ifet2M6UuUbOUmJZ/qcmSmsenQ/+MPtkM66j9orAOkw==
X-Received: by 10.98.77.131 with SMTP id a125mr46714737pfb.90.1490186808184;
	Wed, 22 Mar 2017 05:46:48 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:42 -0700
Message-Id: <1490186804-22928-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/6] samhain: fix build issues when using musl
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:49 -0000

musl does not supply malloc.
also c99 fix

x_dnmalloc.c:563:26: error: return type is an incomplete type
| #define public_mALLINFo mallinfo
| ^
| x_dnmalloc.c:1689:17: note: in expansion of macro 'public_mALLINFo'
| struct mallinfo public_mALLINFo() {

and
_dnmalloc.c:5527:17: error: unknown type name 'u_int'
| u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
| ^~~~~

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/files/c99_dnmalloc.patch | 27 +++++++++++++++++++++++
 recipes-security/samhain/samhain.inc              |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-security/samhain/files/c99_dnmalloc.patch

diff --git a/recipes-security/samhain/files/c99_dnmalloc.patch b/recipes-security/samhain/files/c99_dnmalloc.patch
new file mode 100644
index 0000000..397a1f1
--- /dev/null
+++ b/recipes-security/samhain/files/c99_dnmalloc.patch
@@ -0,0 +1,27 @@
+samhain: musl build fix
+
+Upstream-Status: Submitted
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: samhain-4.2.0/src/dnmalloc.c
+===================================================================
+--- samhain-4.2.0.orig/src/dnmalloc.c
++++ samhain-4.2.0/src/dnmalloc.c
+@@ -821,7 +821,7 @@ extern Void_t*     sbrk();
+ /* On *BSD, malloc.h is deprecated, and on some *BSD including 
+  * it may actually raise an error.
+  */
+-#if defined(HAVE_MALLOC_H) && !defined(__OpenBSD__) && !defined(__FreeBSD__) && !defined(__NetBSD__)
++#if defined(HAVE_MALLOC_H) && !defined(__OpenBSD__) && !defined(__FreeBSD__) && !defined(__NetBSD__) && defined(__GLIBC__)
+ #include <malloc.h>
+ #else
+ 
+@@ -5524,7 +5524,7 @@ arc4_stir(void)
+         struct {
+                 struct timeval tv1;
+                 struct timeval tv2;
+-                u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
++                unsigned char rnd[(128 - 2*sizeof(struct timeval)) / sizeof(unsigned char)];
+         } rdat;
+ #if !defined(__FreeBSD__) && !defined(__OpenBSD__) && !defined(__NetBSD__)
+         ssize_t sz = 0;
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 789150b..e69bb35 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
+           file://c99_dnmalloc.patch \
 	  "
 
 SRC_URI[md5sum] = "d98a55646b14f9419fcedde909d1bf02"
-- 
2.7.4


