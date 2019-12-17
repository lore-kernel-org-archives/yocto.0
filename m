Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2156.1576617586910723008
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 13:19:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: joe.slater@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51CBDE0122C; Tue, 17 Dec 2019 13:19:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF10E01164
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 13:19:43 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBHLJg4b023607
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 13:19:43 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0; Tue, 17 Dec 2019
 13:19:42 -0800
From: "Joe Slater" <joe.slater@windriver.com>
To: <yocto@yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-openssl102][PATCH 1/1] openssl: Fix CVE-2019-1551
Date: Tue, 17 Dec 2019 13:19:42 -0800
Message-ID: <20191217211942.7148-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Apply patch from openssl dated after the 1.0.2t release.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 .../openssl/openssl/cve-2019-1551_102.patch        | 778 +++++++++++++++=
++++++
 recipes-connectivity/openssl/openssl_1.0.2t.bb     |   1 +
 2 files changed, 779 insertions(+)
 create mode 100644 recipes-connectivity/openssl/openssl/cve-2019-1551_10=
2.patch

diff --git a/recipes-connectivity/openssl/openssl/cve-2019-1551_102.patch=
 b/recipes-connectivity/openssl/openssl/cve-2019-1551_102.patch
new file mode 100644
index 0000000..311c742
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl/cve-2019-1551_102.patch
@@ -0,0 +1,778 @@
+openssl: Fix CVE-2019-1551
+
+CVE: CVE-2019-1551
+
+Unmodified.  On OpenSSL_1_0_2-stable after OpenSSL_1_0_2t tag.
+
+Upstream-status -- Backport [git://git.openssl.org/openssl.git]
+
+Signed-off-by -- Joe Slater <joe.slater@windriver.com>
+
+=3D=3D=3D
+
+From f1c5eea8a817075d31e43f5876993c6710238c98 Mon Sep 17 00:00:00 2001
+From: Andy Polyakov <appro@openssl.org>
+Date: Wed, 4 Dec 2019 12:48:21 +0100
+Subject: [oe-core][PATCH 1/1] Fix an overflow bug in rsaz_512_sqr
+
+There is an overflow bug in the x64_64 Montgomery squaring procedure use=
d in
+exponentiation with 512-bit moduli. No EC algorithms are affected. Analy=
sis
+suggests that attacks against 2-prime RSA1024, 3-prime RSA1536, and DSA1=
024 as a
+result of this defect would be very difficult to perform and are not bel=
ieved
+likely. Attacks against DH512 are considered just feasible. However, for=
 an
+attack the target would have to re-use the DH512 private key, which is n=
ot
+recommended anyway. Also applications directly using the low level API
+BN_mod_exp may be affected if they use BN_FLG_CONSTTIME.
+
+CVE-2019-1551
+
+Reviewed-by: Paul Dale <paul.dale@oracle.com>
+Reviewed-by: Bernd Edlinger <bernd.edlinger@hotmail.de>
+(Merged from https://github.com/openssl/openssl/pull/10576)
+---
+ crypto/bn/asm/rsaz-x86_64.pl | 399 ++++++++++++++++++++++--------------=
-------
+ 1 file changed, 206 insertions(+), 193 deletions(-)
+
+diff --git a/crypto/bn/asm/rsaz-x86_64.pl b/crypto/bn/asm/rsaz-x86_64.pl
+index 87ce2c3..e0da6d9 100755
+--- a/crypto/bn/asm/rsaz-x86_64.pl
++++ b/crypto/bn/asm/rsaz-x86_64.pl
+@@ -140,7 +140,7 @@ rsaz_512_sqr:				# 25-29% faster than rsaz_512_mul
+=20
+ 	subq	\$128+24, %rsp
+ .Lsqr_body:
+-	movq	$mod, %rbp		# common argument
++	movq	$mod, %xmm1		# common off-load
+ 	movq	($inp), %rdx
+ 	movq	8($inp), %rax
+ 	movq	$n0, 128(%rsp)
+@@ -158,7 +158,8 @@ $code.=3D<<___;
+ .Loop_sqr:
+ 	movl	$times,128+8(%rsp)
+ #first iteration
+-	movq	%rdx, %rbx
++	movq	%rdx, %rbx		# 0($inp)
++	mov	%rax, %rbp		# 8($inp)
+ 	mulq	%rdx
+ 	movq	%rax, %r8
+ 	movq	16($inp), %rax
+@@ -197,31 +198,29 @@ $code.=3D<<___;
+ 	mulq	%rbx
+ 	addq	%rax, %r14
+ 	movq	%rbx, %rax
+-	movq	%rdx, %r15
+-	adcq	\$0, %r15
++	adcq	\$0, %rdx
+=20
+-	addq	%r8, %r8		#shlq	\$1, %r8
+-	movq	%r9, %rcx
+-	adcq	%r9, %r9		#shld	\$1, %r8, %r9
++	xorq	%rcx,%rcx		# rcx:r8 =3D r8 << 1
++	addq	%r8, %r8
++	 movq	%rdx, %r15
++	adcq	\$0, %rcx
+=20
+ 	mulq	%rax
+-	movq	%rax, (%rsp)
+-	addq	%rdx, %r8
+-	adcq	\$0, %r9
++	addq	%r8, %rdx
++	adcq	\$0, %rcx
+=20
+-	movq	%r8, 8(%rsp)
+-	shrq	\$63, %rcx
++	movq	%rax, (%rsp)
++	movq	%rdx, 8(%rsp)
+=20
+ #second iteration
+-	movq	8($inp), %r8
+ 	movq	16($inp), %rax
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r10
+ 	movq	24($inp), %rax
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r11
+ 	movq	32($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -229,7 +228,7 @@ $code.=3D<<___;
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r12
+ 	movq	40($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -237,7 +236,7 @@ $code.=3D<<___;
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r13
+ 	movq	48($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -245,7 +244,7 @@ $code.=3D<<___;
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r14
+ 	movq	56($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -253,39 +252,39 @@ $code.=3D<<___;
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+-	mulq	%r8
++	mulq	%rbp
+ 	addq	%rax, %r15
+-	movq	%r8, %rax
++	movq	%rbp, %rax
+ 	adcq	\$0, %rdx
+ 	addq	%rbx, %r15
+-	movq	%rdx, %r8
+-	movq	%r10, %rdx
+-	adcq	\$0, %r8
++	adcq	\$0, %rdx
+=20
+-	add	%rdx, %rdx
+-	lea	(%rcx,%r10,2), %r10	#shld	\$1, %rcx, %r10
+-	movq	%r11, %rbx
+-	adcq	%r11, %r11		#shld	\$1, %r10, %r11
++	xorq	%rbx, %rbx		# rbx:r10:r9 =3D r10:r9 << 1
++	addq	%r9, %r9
++	 movq	%rdx, %r8
++	adcq	%r10, %r10
++	adcq	\$0, %rbx
+=20
+ 	mulq	%rax
++	addq	%rcx, %rax
++	 movq	16($inp), %rbp
++	adcq	\$0, %rdx
+ 	addq	%rax, %r9
++	 movq	24($inp), %rax
+ 	adcq	%rdx, %r10
+-	adcq	\$0, %r11
++	adcq	\$0, %rbx
+=20
+ 	movq	%r9, 16(%rsp)
+ 	movq	%r10, 24(%rsp)
+-	shrq	\$63, %rbx
+-=09
++
+ #third iteration
+-	movq	16($inp), %r9=09
+-	movq	24($inp), %rax
+-	mulq	%r9
++	mulq	%rbp
+ 	addq	%rax, %r12
+ 	movq	32($inp), %rax
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
+-	mulq	%r9
++	mulq	%rbp
+ 	addq	%rax, %r13
+ 	movq	40($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -293,7 +292,7 @@ $code.=3D<<___;
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
+-	mulq	%r9
++	mulq	%rbp
+ 	addq	%rax, %r14
+ 	movq	48($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -301,9 +300,7 @@ $code.=3D<<___;
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
+-	mulq	%r9
+-	 movq	%r12, %r10
+-	 lea	(%rbx,%r12,2), %r12	#shld	\$1, %rbx, %r12
++	mulq	%rbp
+ 	addq	%rax, %r15
+ 	movq	56($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -311,36 +308,40 @@ $code.=3D<<___;
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
+-	mulq	%r9
+-	 shrq	\$63, %r10
++	mulq	%rbp
+ 	addq	%rax, %r8
+-	movq	%r9, %rax
++	movq	%rbp, %rax
+ 	adcq	\$0, %rdx
+ 	addq	%rcx, %r8
+-	movq	%rdx, %r9
+-	adcq	\$0, %r9
++	adcq	\$0, %rdx
+=20
+-	movq	%r13, %rcx
+-	leaq	(%r10,%r13,2), %r13	#shld	\$1, %r12, %r13
++	xorq	%rcx, %rcx		# rcx:r12:r11 =3D r12:r11 << 1
++	addq	%r11, %r11
++	 movq	%rdx, %r9
++	adcq	%r12, %r12
++	adcq	\$0, %rcx
+=20
+ 	mulq	%rax
++	addq	%rbx, %rax
++	 movq	24($inp), %r10
++	adcq	\$0, %rdx
+ 	addq	%rax, %r11
++	 movq	32($inp), %rax
+ 	adcq	%rdx, %r12
+-	adcq	\$0, %r13
++	adcq	\$0, %rcx
+=20
+ 	movq	%r11, 32(%rsp)
+ 	movq	%r12, 40(%rsp)
+-	shrq	\$63, %rcx
+=20
+ #fourth iteration
+-	movq	24($inp), %r10
+-	movq	32($inp), %rax
++	mov	%rax, %r11		# 32($inp)
+ 	mulq	%r10
+ 	addq	%rax, %r14
+ 	movq	40($inp), %rax
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
++	mov	%rax, %r12		# 40($inp)
+ 	mulq	%r10
+ 	addq	%rax, %r15
+ 	movq	48($inp), %rax
+@@ -349,9 +350,8 @@ $code.=3D<<___;
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
++	mov	%rax, %rbp		# 48($inp)
+ 	mulq	%r10
+-	 movq	%r14, %r12
+-	 leaq	(%rcx,%r14,2), %r14	#shld	\$1, %rcx, %r14
+ 	addq	%rax, %r8
+ 	movq	56($inp), %rax
+ 	adcq	\$0, %rdx
+@@ -360,32 +360,33 @@ $code.=3D<<___;
+ 	adcq	\$0, %rbx
+=20
+ 	mulq	%r10
+-	 shrq	\$63, %r12
+ 	addq	%rax, %r9
+ 	movq	%r10, %rax
+ 	adcq	\$0, %rdx
+ 	addq	%rbx, %r9
+-	movq	%rdx, %r10
+-	adcq	\$0, %r10
++	adcq	\$0, %rdx
+=20
+-	movq	%r15, %rbx
+-	leaq	(%r12,%r15,2),%r15	#shld	\$1, %r14, %r15
++	xorq	%rbx, %rbx		# rbx:r13:r14 =3D r13:r14 << 1
++	addq	%r13, %r13
++	 movq	%rdx, %r10
++	adcq	%r14, %r14
++	adcq	\$0, %rbx
+=20
+ 	mulq	%rax
++	addq	%rcx, %rax
++	adcq	\$0, %rdx
+ 	addq	%rax, %r13
++	 movq	%r12, %rax		# 40($inp)
+ 	adcq	%rdx, %r14
+-	adcq	\$0, %r15
++	adcq	\$0, %rbx
+=20
+ 	movq	%r13, 48(%rsp)
+ 	movq	%r14, 56(%rsp)
+-	shrq	\$63, %rbx
+=20
+ #fifth iteration
+-	movq	32($inp), %r11
+-	movq	40($inp), %rax
+ 	mulq	%r11
+ 	addq	%rax, %r8
+-	movq	48($inp), %rax
++	movq	%rbp, %rax		# 48($inp)
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
+@@ -393,97 +394,99 @@ $code.=3D<<___;
+ 	addq	%rax, %r9
+ 	movq	56($inp), %rax
+ 	adcq	\$0, %rdx
+-	 movq	%r8, %r12
+-	 leaq	(%rbx,%r8,2), %r8	#shld	\$1, %rbx, %r8
+ 	addq	%rcx, %r9
+ 	movq	%rdx, %rcx
+ 	adcq	\$0, %rcx
+=20
++	mov	%rax, %r14		# 56($inp)
+ 	mulq	%r11
+-	 shrq	\$63, %r12
+ 	addq	%rax, %r10
+ 	movq	%r11, %rax
+ 	adcq	\$0, %rdx
+ 	addq	%rcx, %r10
+-	movq	%rdx, %r11
+-	adcq	\$0, %r11
++	adcq	\$0, %rdx
+=20
+-	movq	%r9, %rcx
+-	leaq	(%r12,%r9,2), %r9	#shld	\$1, %r8, %r9
++	xorq	%rcx, %rcx		# rcx:r8:r15 =3D r8:r15 << 1
++	addq	%r15, %r15
++	 movq	%rdx, %r11
++	adcq	%r8, %r8
++	adcq	\$0, %rcx
+=20
+ 	mulq	%rax
++	addq	%rbx, %rax
++	adcq	\$0, %rdx
+ 	addq	%rax, %r15
++	 movq	%rbp, %rax		# 48($inp)
+ 	adcq	%rdx, %r8
+-	adcq	\$0, %r9
++	adcq	\$0, %rcx
+=20
+ 	movq	%r15, 64(%rsp)
+ 	movq	%r8, 72(%rsp)
+-	shrq	\$63, %rcx
+=20
+ #sixth iteration
+-	movq	40($inp), %r12
+-	movq	48($inp), %rax
+ 	mulq	%r12
+ 	addq	%rax, %r10
+-	movq	56($inp), %rax
++	movq	%r14, %rax		# 56($inp)
+ 	movq	%rdx, %rbx
+ 	adcq	\$0, %rbx
+=20
+ 	mulq	%r12
+ 	addq	%rax, %r11
+ 	movq	%r12, %rax
+-	 movq	%r10, %r15
+-	 leaq	(%rcx,%r10,2), %r10	#shld	\$1, %rcx, %r10
+ 	adcq	\$0, %rdx
+-	 shrq	\$63, %r15
+ 	addq	%rbx, %r11
+-	movq	%rdx, %r12
+-	adcq	\$0, %r12
++	adcq	\$0, %rdx
+=20
+-	movq	%r11, %rbx
+-	leaq	(%r15,%r11,2), %r11	#shld	\$1, %r10, %r11
++	xorq	%rbx, %rbx		# rbx:r10:r9 =3D r10:r9 << 1
++	addq	%r9, %r9
++	 movq	%rdx, %r12
++	adcq	%r10, %r10
++	adcq	\$0, %rbx
+=20
+ 	mulq	%rax
++	addq	%rcx, %rax
++	adcq	\$0, %rdx
+ 	addq	%rax, %r9
++	 movq	%r14, %rax		# 56($inp)
+ 	adcq	%rdx, %r10
+-	adcq	\$0, %r11
++	adcq	\$0, %rbx
+=20
+ 	movq	%r9, 80(%rsp)
+ 	movq	%r10, 88(%rsp)
+=20
+ #seventh iteration
+-	movq	48($inp), %r13
+-	movq	56($inp), %rax
+-	mulq	%r13
++	mulq	%rbp
+ 	addq	%rax, %r12
+-	movq	%r13, %rax
+-	movq	%rdx, %r13
+-	adcq	\$0, %r13
++	movq	%rbp, %rax
++	adcq	\$0, %rdx
+=20
+-	xorq	%r14, %r14
+-	shlq	\$1, %rbx
+-	adcq	%r12, %r12		#shld	\$1, %rbx, %r12
+-	adcq	%r13, %r13		#shld	\$1, %r12, %r13
+-	adcq	%r14, %r14		#shld	\$1, %r13, %r14
++	xorq	%rcx, %rcx		# rcx:r12:r11 =3D r12:r11 << 1
++	addq	%r11, %r11
++	 movq	%rdx, %r13
++	adcq	%r12, %r12
++	adcq	\$0, %rcx
+=20
+ 	mulq	%rax
++	addq	%rbx, %rax
++	adcq	\$0, %rdx
+ 	addq	%rax, %r11
++	 movq	%r14, %rax		# 56($inp)
+ 	adcq	%rdx, %r12
+-	adcq	\$0, %r13
++	adcq	\$0, %rcx
+=20
+ 	movq	%r11, 96(%rsp)
+ 	movq	%r12, 104(%rsp)
+=20
+ #eighth iteration
+-	movq	56($inp), %rax
++	xorq	%rbx, %rbx		# rbx:r13 =3D r13 << 1
++	addq	%r13, %r13
++	adcq	\$0, %rbx
++
+ 	mulq	%rax
+-	addq	%rax, %r13
++	addq	%rcx, %rax
+ 	adcq	\$0, %rdx
+-
+-	addq	%rdx, %r14
+-
+-	movq	%r13, 112(%rsp)
+-	movq	%r14, 120(%rsp)
++	addq	%r13, %rax
++	adcq	%rbx, %rdx
+=20
+ 	movq	(%rsp), %r8
+ 	movq	8(%rsp), %r9
+@@ -493,6 +496,10 @@ $code.=3D<<___;
+ 	movq	40(%rsp), %r13
+ 	movq	48(%rsp), %r14
+ 	movq	56(%rsp), %r15
++	movq	%xmm1, %rbp
++
++	movq	%rax, 112(%rsp)
++	movq	%rdx, 120(%rsp)
+=20
+ 	call	__rsaz_512_reduce
+=20
+@@ -524,9 +531,9 @@ $code.=3D<<___;
+ .Loop_sqrx:
+ 	movl	$times,128+8(%rsp)
+ 	movq	$out, %xmm0		# off-load
+-	movq	%rbp, %xmm1		# off-load
+-#first iteration=09
++#first iteration
+ 	mulx	%rax, %r8, %r9
++	mov	%rax, %rbx
+=20
+ 	mulx	16($inp), %rcx, %r10
+ 	xor	%rbp, %rbp		# cf=3D0, of=3D0
+@@ -534,40 +541,39 @@ $code.=3D<<___;
+ 	mulx	24($inp), %rax, %r11
+ 	adcx	%rcx, %r9
+=20
+-	mulx	32($inp), %rcx, %r12
++	.byte	0xc4,0x62,0xf3,0xf6,0xa6,0x20,0x00,0x00,0x00	# mulx	32($inp), %r=
cx, %r12
+ 	adcx	%rax, %r10
+=20
+-	mulx	40($inp), %rax, %r13
++	.byte	0xc4,0x62,0xfb,0xf6,0xae,0x28,0x00,0x00,0x00	# mulx	40($inp), %r=
ax, %r13
+ 	adcx	%rcx, %r11
+=20
+-	.byte	0xc4,0x62,0xf3,0xf6,0xb6,0x30,0x00,0x00,0x00	# mulx	48($inp), %r=
cx, %r14
++	mulx	48($inp), %rcx, %r14
+ 	adcx	%rax, %r12
+ 	adcx	%rcx, %r13
+=20
+-	.byte	0xc4,0x62,0xfb,0xf6,0xbe,0x38,0x00,0x00,0x00	# mulx	56($inp), %r=
ax, %r15
++	mulx	56($inp), %rax, %r15
+ 	adcx	%rax, %r14
+ 	adcx	%rbp, %r15		# %rbp is 0
+=20
+-	mov	%r9, %rcx
+-	shld	\$1, %r8, %r9
+-	shl	\$1, %r8
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
+-	adcx	%rdx, %r8
+-	 mov	8($inp), %rdx
+-	adcx	%rbp, %r9
++	mulx	%rdx, %rax, $out
++	 mov	%rbx, %rdx		# 8($inp)
++	xor	%rcx, %rcx
++	adox	%r8, %r8
++	adcx	$out, %r8
++	adox	%rbp, %rcx
++	adcx	%rbp, %rcx
+=20
+ 	mov	%rax, (%rsp)
+ 	mov	%r8, 8(%rsp)
+=20
+-#second iteration=09
+-	mulx	16($inp), %rax, %rbx
++#second iteration
++	.byte	0xc4,0xe2,0xfb,0xf6,0x9e,0x10,0x00,0x00,0x00	# mulx	16($inp), %r=
ax, %rbx
+ 	adox	%rax, %r10
+ 	adcx	%rbx, %r11
+=20
+-	.byte	0xc4,0x62,0xc3,0xf6,0x86,0x18,0x00,0x00,0x00	# mulx	24($inp), $o=
ut, %r8
++	mulx	24($inp), $out, %r8
+ 	adox	$out, %r11
++	.byte	0x66
+ 	adcx	%r8, %r12
+=20
+ 	mulx	32($inp), %rax, %rbx
+@@ -585,24 +591,25 @@ $code.=3D<<___;
+ 	.byte	0xc4,0x62,0xc3,0xf6,0x86,0x38,0x00,0x00,0x00	# mulx	56($inp), $o=
ut, %r8
+ 	adox	$out, %r15
+ 	adcx	%rbp, %r8
++	 mulx	%rdx, %rax, $out
+ 	adox	%rbp, %r8
++	 .byte	0x48,0x8b,0x96,0x10,0x00,0x00,0x00		# mov	16($inp), %rdx
+=20
+-	mov	%r11, %rbx
+-	shld	\$1, %r10, %r11
+-	shld	\$1, %rcx, %r10
+-
+-	xor	%ebp,%ebp
+-	mulx	%rdx, %rax, %rcx
+-	 mov	16($inp), %rdx
++	xor	%rbx, %rbx
++	adcx	%rcx, %rax
++	adox	%r9, %r9
++	adcx	%rbp, $out
++	adox	%r10, %r10
+ 	adcx	%rax, %r9
+-	adcx	%rcx, %r10
+-	adcx	%rbp, %r11
++	adox	%rbp, %rbx
++	adcx	$out, %r10
++	adcx	%rbp, %rbx
+=20
+ 	mov	%r9, 16(%rsp)
+ 	.byte	0x4c,0x89,0x94,0x24,0x18,0x00,0x00,0x00		# mov	%r10, 24(%rsp)
+-=09
+-#third iteration=09
+-	.byte	0xc4,0x62,0xc3,0xf6,0x8e,0x18,0x00,0x00,0x00	# mulx	24($inp), $o=
ut, %r9
++
++#third iteration
++	mulx	24($inp), $out, %r9
+ 	adox	$out, %r12
+ 	adcx	%r9, %r13
+=20
+@@ -610,7 +617,7 @@ $code.=3D<<___;
+ 	adox	%rax, %r13
+ 	adcx	%rcx, %r14
+=20
+-	mulx	40($inp), $out, %r9
++	.byte	0xc4,0x62,0xc3,0xf6,0x8e,0x28,0x00,0x00,0x00	# mulx	40($inp), $o=
ut, %r9
+ 	adox	$out, %r14
+ 	adcx	%r9, %r15
+=20
+@@ -618,27 +625,28 @@ $code.=3D<<___;
+ 	adox	%rax, %r15
+ 	adcx	%rcx, %r8
+=20
+-	.byte	0xc4,0x62,0xc3,0xf6,0x8e,0x38,0x00,0x00,0x00	# mulx	56($inp), $o=
ut, %r9
++	mulx	56($inp), $out, %r9
+ 	adox	$out, %r8
+ 	adcx	%rbp, %r9
++	 mulx	%rdx, %rax, $out
+ 	adox	%rbp, %r9
++	 mov	24($inp), %rdx
+=20
+-	mov	%r13, %rcx
+-	shld	\$1, %r12, %r13
+-	shld	\$1, %rbx, %r12
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
++	xor	%rcx, %rcx
++	adcx	%rbx, %rax
++	adox	%r11, %r11
++	adcx	%rbp, $out
++	adox	%r12, %r12
+ 	adcx	%rax, %r11
+-	adcx	%rdx, %r12
+-	 mov	24($inp), %rdx
+-	adcx	%rbp, %r13
++	adox	%rbp, %rcx
++	adcx	$out, %r12
++	adcx	%rbp, %rcx
+=20
+ 	mov	%r11, 32(%rsp)
+-	.byte	0x4c,0x89,0xa4,0x24,0x28,0x00,0x00,0x00		# mov	%r12, 40(%rsp)
+-=09
+-#fourth iteration=09
+-	.byte	0xc4,0xe2,0xfb,0xf6,0x9e,0x20,0x00,0x00,0x00	# mulx	32($inp), %r=
ax, %rbx
++	mov	%r12, 40(%rsp)
++
++#fourth iteration
++	mulx	32($inp), %rax, %rbx
+ 	adox	%rax, %r14
+ 	adcx	%rbx, %r15
+=20
+@@ -653,25 +661,25 @@ $code.=3D<<___;
+ 	mulx	56($inp), $out, %r10
+ 	adox	$out, %r9
+ 	adcx	%rbp, %r10
++	 mulx	%rdx, %rax, $out
+ 	adox	%rbp, %r10
++	 mov	32($inp), %rdx
+=20
+-	.byte	0x66
+-	mov	%r15, %rbx
+-	shld	\$1, %r14, %r15
+-	shld	\$1, %rcx, %r14
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
++	xor	%rbx, %rbx
++	adcx	%rcx, %rax
++	adox	%r13, %r13
++	adcx	%rbp, $out
++	adox	%r14, %r14
+ 	adcx	%rax, %r13
+-	adcx	%rdx, %r14
+-	 mov	32($inp), %rdx
+-	adcx	%rbp, %r15
++	adox	%rbp, %rbx
++	adcx	$out, %r14
++	adcx	%rbp, %rbx
+=20
+ 	mov	%r13, 48(%rsp)
+ 	mov	%r14, 56(%rsp)
+-=09
+-#fifth iteration=09
+-	.byte	0xc4,0x62,0xc3,0xf6,0x9e,0x28,0x00,0x00,0x00	# mulx	40($inp), $o=
ut, %r11
++
++#fifth iteration
++	mulx	40($inp), $out, %r11
+ 	adox	$out, %r8
+ 	adcx	%r11, %r9
+=20
+@@ -682,18 +690,19 @@ $code.=3D<<___;
+ 	mulx	56($inp), $out, %r11
+ 	adox	$out, %r10
+ 	adcx	%rbp, %r11
++	 mulx	%rdx, %rax, $out
++	 mov	40($inp), %rdx
+ 	adox	%rbp, %r11
+=20
+-	mov	%r9, %rcx
+-	shld	\$1, %r8, %r9
+-	shld	\$1, %rbx, %r8
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
++	xor	%rcx, %rcx
++	adcx	%rbx, %rax
++	adox	%r15, %r15
++	adcx	%rbp, $out
++	adox	%r8, %r8
+ 	adcx	%rax, %r15
+-	adcx	%rdx, %r8
+-	 mov	40($inp), %rdx
+-	adcx	%rbp, %r9
++	adox	%rbp, %rcx
++	adcx	$out, %r8
++	adcx	%rbp, %rcx
+=20
+ 	mov	%r15, 64(%rsp)
+ 	mov	%r8, 72(%rsp)
+@@ -706,18 +715,19 @@ $code.=3D<<___;
+ 	.byte	0xc4,0x62,0xc3,0xf6,0xa6,0x38,0x00,0x00,0x00	# mulx	56($inp), $o=
ut, %r12
+ 	adox	$out, %r11
+ 	adcx	%rbp, %r12
++	 mulx	%rdx, %rax, $out
+ 	adox	%rbp, %r12
++	 mov	48($inp), %rdx
+=20
+-	mov	%r11, %rbx
+-	shld	\$1, %r10, %r11
+-	shld	\$1, %rcx, %r10
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
++	xor	%rbx, %rbx
++	adcx	%rcx, %rax
++	adox	%r9, %r9
++	adcx	%rbp, $out
++	adox	%r10, %r10
+ 	adcx	%rax, %r9
+-	adcx	%rdx, %r10
+-	 mov	48($inp), %rdx
+-	adcx	%rbp, %r11
++	adcx	$out, %r10
++	adox	%rbp, %rbx
++	adcx	%rbp, %rbx
+=20
+ 	mov	%r9, 80(%rsp)
+ 	mov	%r10, 88(%rsp)
+@@ -727,31 +737,31 @@ $code.=3D<<___;
+ 	adox	%rax, %r12
+ 	adox	%rbp, %r13
+=20
+-	xor	%r14, %r14
+-	shld	\$1, %r13, %r14
+-	shld	\$1, %r12, %r13
+-	shld	\$1, %rbx, %r12
+-
+-	xor	%ebp, %ebp
+-	mulx	%rdx, %rax, %rdx
+-	adcx	%rax, %r11
+-	adcx	%rdx, %r12
++	mulx	%rdx, %rax, $out
++	xor	%rcx, %rcx
+ 	 mov	56($inp), %rdx
+-	adcx	%rbp, %r13
++	adcx	%rbx, %rax
++	adox	%r11, %r11
++	adcx	%rbp, $out
++	adox	%r12, %r12
++	adcx	%rax, %r11
++	adox	%rbp, %rcx
++	adcx	$out, %r12
++	adcx	%rbp, %rcx
+=20
+ 	.byte	0x4c,0x89,0x9c,0x24,0x60,0x00,0x00,0x00		# mov	%r11, 96(%rsp)
+ 	.byte	0x4c,0x89,0xa4,0x24,0x68,0x00,0x00,0x00		# mov	%r12, 104(%rsp)
+=20
+ #eighth iteration
+ 	mulx	%rdx, %rax, %rdx
+-	adox	%rax, %r13
+-	adox	%rbp, %rdx
++	xor	%rbx, %rbx
++	adcx	%rcx, %rax
++	adox	%r13, %r13
++	adcx	%rbp, %rdx
++	adox	%rbp, %rbx
++	adcx	%r13, %rax
++	adcx	%rdx, %rbx
+=20
+-	.byte	0x66
+-	add	%rdx, %r14
+-
+-	movq	%r13, 112(%rsp)
+-	movq	%r14, 120(%rsp)
+ 	movq	%xmm0, $out
+ 	movq	%xmm1, %rbp
+=20
+@@ -765,6 +775,9 @@ $code.=3D<<___;
+ 	movq	48(%rsp), %r14
+ 	movq	56(%rsp), %r15
+=20
++	movq	%rax, 112(%rsp)
++	movq	%rbx, 120(%rsp)
++
+ 	call	__rsaz_512_reducex
+=20
+ 	addq	64(%rsp), %r8
+--=20
+2.7.4
+
diff --git a/recipes-connectivity/openssl/openssl_1.0.2t.bb b/recipes-con=
nectivity/openssl/openssl_1.0.2t.bb
index 151f321..db1e770 100644
--- a/recipes-connectivity/openssl/openssl_1.0.2t.bb
+++ b/recipes-connectivity/openssl/openssl_1.0.2t.bb
@@ -42,6 +42,7 @@ SRC_URI =3D "http://www.openssl.org/source/openssl-${PV=
}.tar.gz \
            file://0001-allow-manpages-to-be-disabled.patch \
            file://0001-Fix-BN_LLONG-breakage.patch \
            file://0001-Fix-DES_LONG-breakage.patch \
+           file://cve-2019-1551_102.patch \
            "
=20
 SRC_URI_append_class-target =3D " \
--=20
2.7.4

