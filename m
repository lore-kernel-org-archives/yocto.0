Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49C3E00C81; Tue, 14 Jun 2016 16:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEA1E00C7D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:50:27 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 187so10842wmz.1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=AQAK4k/qUd/swtfGP+sJHpSD85OY5DlHLq23fjSMPp8=;
	b=gjq/gdMaGdDMpo27vTgzPlJnv1b7TGvxYl30qoJFUai6FALo0JNC5iv1fkmbJE3pcu
	owhh6cVktMq2vJCCbEDvqsfVtaUOn1VdTMrWO0xNAvQWF+o8FgeXxu021kg2I/0Lym0A
	k6g5jjAHDymfm7KctzJm+R2kcrZGGqvwCqxdgWBVacC3fBhNo3vjoLqGrexSsFXTum8i
	TTmmArMj5kn/BIwEjn8kbs8j+BIWR7EA9dWxnIFpYwLuP3oVNx7k31HVtdQXWQjybJ7a
	hdx18+1Xf2bLqlDFWZE7Wuq9cuGt/nSGHFEnScGpDl7GebaDcZ4VECimiDlbvq/3DoB+
	x0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=AQAK4k/qUd/swtfGP+sJHpSD85OY5DlHLq23fjSMPp8=;
	b=NV64IVJHVI/Nh/KEaftwCZ0M/rQ4+BiGGbr3nEnyLZoRpxe1nujFU8LWdfFqlHJaxl
	H8QMr066NUmnlT8Jm37tab6xlujzcO1vMdXn18c7bXgt6eAAdg8R+aDVNE5mkXmHfuTh
	YgsolQHrELOh0sv9jYK1TJ3jDs6/ghYH19Soyjm6H15b3dF87rZ5BTUo5aD6M/pOtheo
	vmoYZvFIjN9ZLQPfpb0LHUB0yCeKMxB8kbCw4gD/CpHVWX1WylL1A/I6Xzs7h4WAhMe0
	FljCaRjjxMOcAAYe3UnxntBcgE1R9F/3XL+/R/WLKq2f62kQrPXLEF7jNZ6Osp/+rtx1
	fShA==
X-Gm-Message-State: ALyK8tLXeSrZ83FZJjjfwaXdWG2gsuP8Q1IfPyEt4z1mPyvKnbYtlHqa4xdOmTKWXIPzYQ==
X-Received: by 10.194.216.33 with SMTP id on1mr8279329wjc.153.1465948226507;
	Tue, 14 Jun 2016 16:50:26 -0700 (PDT)
Received: from resin.localdomain ([85.255.232.185])
	by smtp.gmail.com with ESMTPSA id
	f189sm1075563wmf.19.2016.06.14.16.50.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 14 Jun 2016 16:50:25 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 15 Jun 2016 00:50:20 +0100
Message-Id: <1465948220-31466-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.2
In-Reply-To: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
References: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
Subject: [PATCH 2/2] linux-raspberrypi: Fix v4.1 with GCC6
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
X-List-Received-Date: Tue, 14 Jun 2016 23:50:33 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 ...ove-unused-sm_cache_map_vector-definition.patch | 31 +++++++++
 .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      | 78 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  2 +
 3 files changed, 111 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
new file mode 100644
index 0000000..8d4a900
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch
@@ -0,0 +1,31 @@
+The code using it also ifdef'ed with 0, anyyd gcc 6
+complains
+
+error: 'sm_cache_map_vector' defined but not used
+
+The code using it also ifdef'ed out
+
+Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+--- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
++++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
+@@ -197,12 +197,14 @@ struct SM_STATE_T {
+ static struct SM_STATE_T *sm_state;
+ static int sm_inited;
+ 
++#if 0
+ static const char *const sm_cache_map_vector[] = {
+ 	"(null)",
+ 	"host",
+ 	"videocore",
+ 	"host+videocore",
+ };
++#endif
+ 
+ /* ---- Private Function Prototypes -------------------------------------- */
+ 
diff --git a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
new file mode 100644
index 0000000..61ec2fb
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
@@ -0,0 +1,78 @@
+Fix compile with GCC6
+
+Upstream-status: Denied [https://github.com/raspberrypi/linux/pull/1528]
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: source/include/linux/compiler-gcc6.h
+===================================================================
+--- /dev/null
++++ source/include/linux/compiler-gcc6.h
+@@ -0,0 +1,67 @@
++#ifndef __LINUX_COMPILER_H
++#error "Please don't include <linux/compiler-gcc5.h> directly, include <linux/compiler.h> instead."
++#endif
++
++#define __used				__attribute__((__used__))
++#define __must_check			__attribute__((warn_unused_result))
++#define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
++
++/* Mark functions as cold. gcc will assume any path leading to a call
++   to them will be unlikely.  This means a lot of manual unlikely()s
++   are unnecessary now for any paths leading to the usual suspects
++   like BUG(), printk(), panic() etc. [but let's keep them for now for
++   older compilers]
++
++   Early snapshots of gcc 4.3 don't support this and we can't detect this
++   in the preprocessor, but we can live with this because they're unreleased.
++   Maketime probing would be overkill here.
++
++   gcc also has a __attribute__((__hot__)) to move hot functions into
++   a special section, but I don't see any sense in this right now in
++   the kernel context */
++#define __cold			__attribute__((__cold__))
++
++#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
++
++#ifndef __CHECKER__
++# define __compiletime_warning(message) __attribute__((warning(message)))
++# define __compiletime_error(message) __attribute__((error(message)))
++#endif /* __CHECKER__ */
++
++/*
++ * Mark a position in code as unreachable.  This can be used to
++ * suppress control flow warnings after asm blocks that transfer
++ * control elsewhere.
++ *
++ * Early snapshots of gcc 4.5 don't support this and we can't detect
++ * this in the preprocessor, but we can live with this because they're
++ * unreleased.  Really, we need to have autoconf for the kernel.
++ */
++#define unreachable() __builtin_unreachable()
++
++/* Mark a function definition as prohibited from being cloned. */
++#define __noclone	__attribute__((__noclone__))
++
++/*
++ * Tell the optimizer that something else uses this function or variable.
++ */
++#define __visible __attribute__((externally_visible))
++
++/*
++ * GCC 'asm goto' miscompiles certain code sequences:
++ *
++ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
++ *
++ * Work it around via a compiler barrier quirk suggested by Jakub Jelinek.
++ *
++ * (asm goto is automatically volatile - the naming reflects this.)
++ */
++#define asm_volatile_goto(x...)	do { asm goto(x); asm (""); } while (0)
++
++#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
++#define __HAVE_BUILTIN_BSWAP32__
++#define __HAVE_BUILTIN_BSWAP64__
++#define __HAVE_BUILTIN_BSWAP16__
++#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
++
++#define KASAN_ABI_VERSION 4
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 79fac66..87c77b8 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -5,6 +5,8 @@ LINUX_VERSION ?= "4.1.21"
 SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
            file://0001-dts-add-overlay-for-pitft22.patch \
+           file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch \
+           file://0003-fix-gcc6.patch \
           "
 
 require linux-raspberrypi.inc
-- 
2.8.2


