Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC464E00DFC; Mon,  8 Aug 2016 08:11:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99CB6E00D8F
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 08:11:11 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i6so25206868pfe.0
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 08:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=WW3ZXwPuVRWLPBDMsC4U/mN2cxc5lIes4og795Yue+I=;
	b=HQwD/9mrXYlrgkMJHp2/TPo+VdB0AyU13IHBnLRqDX4c/DiOVpeD7VA5Delqu/kjcV
	4Dt689WPNWu+6ZUaAv39ADqCZm/8tdEkAXOZF7cZgTt++V6jCXu1hVk2NA32czZmzvfU
	LhRQhaIpgWSHwH4UsVyRD7lpZwE6+bUpvqYOFTXJsVdfGsiOAIlVHjLzHRR5mI7p/Cz8
	cQOVwVtLPkjzJSF9WX5JmCLvgGH0kwhVzZX1AhdHLXjDCm7SOJij37Lz/HwctF3ex57V
	BMzULDS8/mvikoUbI1HFKZetIyNe+Gmyk84HJfuq9oG/x8WQDgJrO+pXyFtxeimKRiPt
	XgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=WW3ZXwPuVRWLPBDMsC4U/mN2cxc5lIes4og795Yue+I=;
	b=b9gljKHqskAmoIrrxXebO2Y95xZc0xqvE+uVjQkGBGG/5igouYHW44Hz9CDUB3xhCG
	ODIoMFw6XYtUcCOfKcY3yDS+Tmj9G/GvYWuCmUjiGSKtNpeBmDvuodwLMLyTKX1fICzG
	R5GpP9ow6HFwF7TRtshOZUarFLOv+PnEDK3KZrz7zsBmyalqa39R+tGYjqd+lFG0OYUz
	D6rcthU8CeLuQ0t3jYpjrXTYLP/0ENuS9l1teThwPNbYMZFiK7Fc/CYK5yHDMClitTzf
	RgWzgpZr7Rwlp6UH/rV4IZJ0tPXnStXs6Tm967D1djyMGqDJ+eA5mL59O1SHqE4waCul
	MtNg==
X-Gm-Message-State: AEkooutyGmioTrgccMfSOeByLN3++3fAeoSPbWld9X3A2+iikYaObDw8pPPJ3SiQ2HhyFQ==
X-Received: by 10.98.78.138 with SMTP id c132mr162782270pfb.67.1470669069220; 
	Mon, 08 Aug 2016 08:11:09 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:bdc8:4bf:3772:6825?
	([2601:202:4001:9ea0:bdc8:4bf:3772:6825])
	by smtp.googlemail.com with ESMTPSA id
	x184sm48909664pfd.70.2016.08.08.08.11.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Aug 2016 08:11:07 -0700 (PDT)
To: Jonathan Liu <net147@gmail.com>, yocto@yoctoproject.org
References: <20160807012920.15931-1-net147@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <57A8A107.6090902@gmail.com>
Date: Mon, 8 Aug 2016 08:11:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <20160807012920.15931-1-net147@gmail.com>
Subject: Re: [meta-security][PATCH] libseccomp: update to latest
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
X-List-Received-Date: Mon, 08 Aug 2016 15:11:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 08/06/2016 06:29 PM, Jonathan Liu wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---

merged

>  .../0001-arch-add-a-ppc64-syscall-table.patch      | 1253 --------------------
>  .../0001-tests-create-install-tests-target.patch   |  203 ----
>  ...e-basic-initial-support-for-ppc64-to-the-.patch |  128 --
>  ...tests-install-python-tests-if-appropriate.patch |   61 -
>  ...ts-introduce-alternate-test-report-format.patch |  124 --
>  .../files/0003-tools-add-ppc64-support.patch       |   80 --
>  ...add-ppc64-support-to-the-regression-tests.patch |  118 --
>  ...pc64-support-to-the-regression-live-tests.patch |   34 -
>  ...ct-the-ppc64-syscall-table-and-validation.patch |  148 ---
>  ...007-tests-minor-fix-in-arch-syscall-check.patch |   29 -
>  .../files/0008-arch-add-a-ppc-syscall-table.patch  |  782 ------------
>  ...sic-initial-ppc-support-to-the-arch-depen.patch |  117 --
>  .../files/0010-tools-add-ppc-support.patch         |   70 --
>  ...s-add-ppc-support-to-the-regression-tests.patch |   64 -
>  recipes-security/libseccomp/files/compiler.patch   |   32 -
>  .../files/regresion_fixup_seq_usage.patch          |   25 -
>  recipes-security/libseccomp/libseccomp.bb          |    7 +-
>  17 files changed, 3 insertions(+), 3272 deletions(-)
>  delete mode 100644 recipes-security/libseccomp/files/0001-arch-add-a-ppc64-syscall-table.patch
>  delete mode 100644 recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
>  delete mode 100644 recipes-security/libseccomp/files/0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch
>  delete mode 100644 recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
>  delete mode 100644 recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
>  delete mode 100644 recipes-security/libseccomp/files/0003-tools-add-ppc64-support.patch
>  delete mode 100644 recipes-security/libseccomp/files/0004-tests-add-ppc64-support-to-the-regression-tests.patch
>  delete mode 100644 recipes-security/libseccomp/files/0005-tests-add-ppc64-support-to-the-regression-live-tests.patch
>  delete mode 100644 recipes-security/libseccomp/files/0006-ppc64-correct-the-ppc64-syscall-table-and-validation.patch
>  delete mode 100644 recipes-security/libseccomp/files/0007-tests-minor-fix-in-arch-syscall-check.patch
>  delete mode 100644 recipes-security/libseccomp/files/0008-arch-add-a-ppc-syscall-table.patch
>  delete mode 100644 recipes-security/libseccomp/files/0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch
>  delete mode 100644 recipes-security/libseccomp/files/0010-tools-add-ppc-support.patch
>  delete mode 100644 recipes-security/libseccomp/files/0011-tests-add-ppc-support-to-the-regression-tests.patch
>  delete mode 100644 recipes-security/libseccomp/files/compiler.patch
>  delete mode 100644 recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch
> 
> diff --git a/recipes-security/libseccomp/files/0001-arch-add-a-ppc64-syscall-table.patch b/recipes-security/libseccomp/files/0001-arch-add-a-ppc64-syscall-table.patch
> deleted file mode 100644
> index 3190aa0..0000000
> --- a/recipes-security/libseccomp/files/0001-arch-add-a-ppc64-syscall-table.patch
> +++ /dev/null
> @@ -1,1253 +0,0 @@
> -From a44e4f1fd956dd3250976deaa03c3c9ef1c2688a Mon Sep 17 00:00:00 2001
> -From: Paul Moore <pmoore@redhat.com>
> -Date: Thu, 25 Sep 2014 16:28:38 -0400
> -Subject: [PATCH 01/11] arch: add a ppc64 syscall table
> -
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - include/seccomp.h.in          |  44 ++++
> - src/Makefile.am               |   3 +-
> - src/arch-aarch64-syscalls.c   |   7 +
> - src/arch-arm-syscalls.c       |   7 +
> - src/arch-mips-syscalls.c      |   7 +
> - src/arch-mips64-syscalls.c    |   7 +
> - src/arch-mips64n32-syscalls.c |   7 +
> - src/arch-ppc64-syscalls.c     | 502 ++++++++++++++++++++++++++++++++++++++++++
> - src/arch-ppc64.c              |  40 ++++
> - src/arch-ppc64.h              |  39 ++++
> - src/arch-syscall-check.c      |  18 +-
> - src/arch-syscall-dump.c       |   9 +-
> - src/arch-syscall-validate     |  31 ++-
> - src/arch-x32-syscalls.c       |   7 +
> - src/arch-x86-syscalls.c       |   7 +
> - src/arch-x86_64-syscalls.c    |   7 +
> - tools/util.h                  |   4 +
> - 17 files changed, 739 insertions(+), 7 deletions(-)
> - create mode 100644 src/arch-ppc64-syscalls.c
> - create mode 100644 src/arch-ppc64.c
> - create mode 100644 src/arch-ppc64.h
> -
> -diff --git a/include/seccomp.h.in b/include/seccomp.h.in
> -index 6a115d1..42f3f1a 100644
> ---- a/include/seccomp.h.in
> -+++ b/include/seccomp.h.in
> -@@ -151,6 +151,15 @@ struct scmp_arg_cmp {
> - #define SCMP_ARCH_MIPSEL64N32	AUDIT_ARCH_MIPSEL64N32
> - 
> - /**
> -+ * The PowerPC architecture tokens
> -+ */
> -+#define SCMP_ARCH_PPC64		AUDIT_ARCH_PPC64
> -+#ifndef AUDIT_ARCH_PPC64LE
> -+#define AUDIT_ARCH_PPC64LE	(EM_PPC64|__AUDIT_ARCH_64BIT|__AUDIT_ARCH_LE)
> -+#endif
> -+#define SCMP_ARCH_PPC64LE	AUDIT_ARCH_PPC64LE
> -+
> -+/**
> -  * Convert a syscall name into the associated syscall number
> -  * @param x the syscall name
> -  */
> -@@ -1424,6 +1433,41 @@ int seccomp_export_bpf(const scmp_filter_ctx ctx, int fd);
> - #define __NR_utimes		__PNR_utimes
> - #endif /* __NR_utimes */
> - 
> -+#define __PNR_multiplexer	-10180
> -+#ifndef __NR_multiplexer
> -+#define __NR_multiplexer	__PNR_multiplexer
> -+#endif /* __NR_multiplexer */
> -+
> -+#define __PNR_rtas		-10181
> -+#ifndef __NR_rtas
> -+#define __NR_rtas		__PNR_rtas
> -+#endif /* __NR_rtas */
> -+
> -+#define __PNR_spu_create	-10182
> -+#ifndef __NR_spu_create
> -+#define __NR_spu_create		__PNR_spu_create
> -+#endif /* __NR_spu_create */
> -+
> -+#define __PNR_spu_run		-10183
> -+#ifndef __NR_spu_run
> -+#define __NR_spu_run		__PNR_spu_run
> -+#endif /* __NR_spu_run */
> -+
> -+#define __PNR_subpage_prot	-10184
> -+#ifndef __NR_subpage_prot
> -+#define __NR_subpage_prot	__PNR_subpage_prot
> -+#endif /* __NR_subpage_prot */
> -+
> -+#define __PNR_swapcontext	-10185
> -+#ifndef __NR_swapcontext
> -+#define __NR_swapcontext	__PNR_swapcontext
> -+#endif /* __NR_swapcontext */
> -+
> -+#define __PNR_sys_debug_setcontext	-10186
> -+#ifndef __NR_sys_debug_setcontext
> -+#define __NR_sys_debug_setcontext	__PNR_sys_debug_setcontext
> -+#endif /* __NR_sys_debug_setcontext */
> -+
> - #ifdef __cplusplus
> - }
> - #endif
> -diff --git a/src/Makefile.am b/src/Makefile.am
> -index d8fbd85..038b2ef 100644
> ---- a/src/Makefile.am
> -+++ b/src/Makefile.am
> -@@ -30,7 +30,8 @@ SOURCES_ARCH = \
> - 	arch-aarch64.h arch-aarch64.c arch-aarch64-syscalls.c \
> - 	arch-mips.h arch-mips.c arch-mips-syscalls.c \
> - 	arch-mips64.h arch-mips64.c arch-mips64-syscalls.c \
> --	arch-mips64n32.h arch-mips64n32.c arch-mips64n32-syscalls.c
> -+	arch-mips64n32.h arch-mips64n32.c arch-mips64n32-syscalls.c \
> -+	arch-ppc64.h arch-ppc64.c arch-ppc64-syscalls.c
> - 
> - SOURCES_GEN = \
> - 	api.c system.h system.c \
> -diff --git a/src/arch-aarch64-syscalls.c b/src/arch-aarch64-syscalls.c
> -index f17172e..c76dae7 100644
> ---- a/src/arch-aarch64-syscalls.c
> -+++ b/src/arch-aarch64-syscalls.c
> -@@ -223,6 +223,7 @@ const struct arch_syscall_def aarch64_syscall_table[] = { \
> - 	{ "msgrcv", 188 },
> - 	{ "msgsnd", 189 },
> - 	{ "msync", 227 },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", 229 },
> - 	{ "munlockall", 231 },
> - 	{ "munmap", 215 },
> -@@ -293,6 +294,7 @@ const struct arch_syscall_def aarch64_syscall_table[] = { \
> - 	{ "rt_sigsuspend", 133 },
> - 	{ "rt_sigtimedwait", 137 },
> - 	{ "rt_tgsigqueueinfo", 240 },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", 125 },
> - 	{ "sched_get_priority_min", 126 },
> - 	{ "sched_getaffinity", 123 },
> -@@ -370,6 +372,8 @@ const struct arch_syscall_def aarch64_syscall_table[] = { \
> - 	{ "socketcall", __PNR_socketcall },
> - 	{ "socketpair", 199 },
> - 	{ "splice", 76 },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", __PNR_stat },
> - 	{ "stat64", __PNR_stat64 },
> -@@ -377,6 +381,8 @@ const struct arch_syscall_def aarch64_syscall_table[] = { \
> - 	{ "statfs64", __PNR_statfs64 },
> - 	{ "stime", __PNR_stime },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", 225 },
> - 	{ "swapon", 224 },
> - 	{ "symlink", __PNR_symlink },
> -@@ -386,6 +392,7 @@ const struct arch_syscall_def aarch64_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", 267 },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", __PNR_sysfs },
> - 	{ "sysinfo", 179 },
> - 	{ "syslog", 116 },
> -diff --git a/src/arch-arm-syscalls.c b/src/arch-arm-syscalls.c
> -index 8876135..b9400a3 100644
> ---- a/src/arch-arm-syscalls.c
> -+++ b/src/arch-arm-syscalls.c
> -@@ -234,6 +234,7 @@ const struct arch_syscall_def arm_syscall_table[] = { \
> - 	{ "msgrcv", (__NR_SYSCALL_BASE + 302) },
> - 	{ "msgsnd", (__NR_SYSCALL_BASE + 301) },
> - 	{ "msync", (__NR_SYSCALL_BASE + 144) },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", (__NR_SYSCALL_BASE + 151) },
> - 	{ "munlockall", (__NR_SYSCALL_BASE + 153) },
> - 	{ "munmap", (__NR_SYSCALL_BASE + 91) },
> -@@ -304,6 +305,7 @@ const struct arch_syscall_def arm_syscall_table[] = { \
> - 	{ "rt_sigsuspend", (__NR_SYSCALL_BASE + 179) },
> - 	{ "rt_sigtimedwait", (__NR_SYSCALL_BASE + 177) },
> - 	{ "rt_tgsigqueueinfo", (__NR_SYSCALL_BASE + 363) },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", (__NR_SYSCALL_BASE + 159) },
> - 	{ "sched_get_priority_min", (__NR_SYSCALL_BASE + 160) },
> - 	{ "sched_getaffinity", (__NR_SYSCALL_BASE + 242) },
> -@@ -381,6 +383,8 @@ const struct arch_syscall_def arm_syscall_table[] = { \
> - 	{ "socketcall", (__NR_SYSCALL_BASE + 102) },
> - 	{ "socketpair", (__NR_SYSCALL_BASE + 288) },
> - 	{ "splice", (__NR_SYSCALL_BASE + 340) },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", (__NR_SYSCALL_BASE + 106) },
> - 	{ "stat64", (__NR_SYSCALL_BASE + 195) },
> -@@ -388,6 +392,8 @@ const struct arch_syscall_def arm_syscall_table[] = { \
> - 	{ "statfs64", (__NR_SYSCALL_BASE + 266) },
> - 	{ "stime", (__NR_SYSCALL_BASE + 25) },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", (__NR_SYSCALL_BASE + 115) },
> - 	{ "swapon", (__NR_SYSCALL_BASE + 87) },
> - 	{ "symlink", (__NR_SYSCALL_BASE + 83) },
> -@@ -397,6 +403,7 @@ const struct arch_syscall_def arm_syscall_table[] = { \
> - 	{ "sync_file_range2", (__NR_SYSCALL_BASE + 341) },
> - 	{ "syncfs", (__NR_SYSCALL_BASE + 373) },
> - 	{ "syscall", (__NR_SYSCALL_BASE + 113) },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", (__NR_SYSCALL_BASE + 135) },
> - 	{ "sysinfo", (__NR_SYSCALL_BASE + 116) },
> - 	{ "syslog", (__NR_SYSCALL_BASE + 103) },
> -diff --git a/src/arch-mips-syscalls.c b/src/arch-mips-syscalls.c
> -index 29831da..c318aa0 100644
> ---- a/src/arch-mips-syscalls.c
> -+++ b/src/arch-mips-syscalls.c
> -@@ -227,6 +227,7 @@ const struct arch_syscall_def mips_syscall_table[] = { \
> - 	{ "msgrcv", __PNR_msgrcv },
> - 	{ "msgsnd", __PNR_msgsnd },
> - 	{ "msync", (__NR_SYSCALL_BASE + 144) },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", (__NR_SYSCALL_BASE + 155) },
> - 	{ "munlockall", (__NR_SYSCALL_BASE + 157) },
> - 	{ "munmap", (__NR_SYSCALL_BASE + 91) },
> -@@ -297,6 +298,7 @@ const struct arch_syscall_def mips_syscall_table[] = { \
> - 	{ "rt_sigsuspend", (__NR_SYSCALL_BASE + 199) },
> - 	{ "rt_sigtimedwait", (__NR_SYSCALL_BASE + 197) },
> - 	{ "rt_tgsigqueueinfo", (__NR_SYSCALL_BASE + 332) },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", (__NR_SYSCALL_BASE + 163) },
> - 	{ "sched_get_priority_min", (__NR_SYSCALL_BASE + 164) },
> - 	{ "sched_getaffinity", (__NR_SYSCALL_BASE + 240) },
> -@@ -374,6 +376,8 @@ const struct arch_syscall_def mips_syscall_table[] = { \
> - 	{ "socketcall", (__NR_SYSCALL_BASE + 102) },
> - 	{ "socketpair", (__NR_SYSCALL_BASE + 184) },
> - 	{ "splice", (__NR_SYSCALL_BASE + 304) },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", (__NR_SYSCALL_BASE + 69) },
> - 	{ "stat", (__NR_SYSCALL_BASE + 106) },
> - 	{ "stat64", (__NR_SYSCALL_BASE + 213) },
> -@@ -381,6 +385,8 @@ const struct arch_syscall_def mips_syscall_table[] = { \
> - 	{ "statfs64", (__NR_SYSCALL_BASE + 255) },
> - 	{ "stime", (__NR_SYSCALL_BASE + 25) },
> - 	{ "stty", (__NR_SYSCALL_BASE + 31) },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", (__NR_SYSCALL_BASE + 115) },
> - 	{ "swapon", (__NR_SYSCALL_BASE + 87) },
> - 	{ "symlink", (__NR_SYSCALL_BASE + 83) },
> -@@ -390,6 +396,7 @@ const struct arch_syscall_def mips_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", (__NR_SYSCALL_BASE + 342) },
> - 	{ "syscall", (__NR_SYSCALL_BASE + 0) },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", (__NR_SYSCALL_BASE + 135) },
> - 	{ "sysinfo", (__NR_SYSCALL_BASE + 116) },
> - 	{ "syslog", (__NR_SYSCALL_BASE + 103) },
> -diff --git a/src/arch-mips64-syscalls.c b/src/arch-mips64-syscalls.c
> -index 8b1fe9e..007a472 100644
> ---- a/src/arch-mips64-syscalls.c
> -+++ b/src/arch-mips64-syscalls.c
> -@@ -227,6 +227,7 @@ const struct arch_syscall_def mips64_syscall_table[] = { \
> - 	{ "msgrcv", (__NR_SYSCALL_BASE + 68) },
> - 	{ "msgsnd", (__NR_SYSCALL_BASE + 67) },
> - 	{ "msync", (__NR_SYSCALL_BASE + 25) },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", (__NR_SYSCALL_BASE + 147) },
> - 	{ "munlockall", (__NR_SYSCALL_BASE + 149) },
> - 	{ "munmap", (__NR_SYSCALL_BASE + 11) },
> -@@ -297,6 +298,7 @@ const struct arch_syscall_def mips64_syscall_table[] = { \
> - 	{ "rt_sigsuspend", (__NR_SYSCALL_BASE + 128) },
> - 	{ "rt_sigtimedwait", (__NR_SYSCALL_BASE + 126) },
> - 	{ "rt_tgsigqueueinfo", (__NR_SYSCALL_BASE + 291) },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", (__NR_SYSCALL_BASE + 143) },
> - 	{ "sched_get_priority_min", (__NR_SYSCALL_BASE + 144) },
> - 	{ "sched_getaffinity", (__NR_SYSCALL_BASE + 196) },
> -@@ -374,6 +376,8 @@ const struct arch_syscall_def mips64_syscall_table[] = { \
> - 	{ "socketcall", __PNR_socketcall },
> - 	{ "socketpair", (__NR_SYSCALL_BASE + 52) },
> - 	{ "splice", (__NR_SYSCALL_BASE + 263) },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", (__NR_SYSCALL_BASE + 4) },
> - 	{ "stat64", __PNR_stat64 },
> -@@ -381,6 +385,8 @@ const struct arch_syscall_def mips64_syscall_table[] = { \
> - 	{ "statfs64", __PNR_statfs64 },
> - 	{ "stime", __PNR_stime },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", (__NR_SYSCALL_BASE + 163) },
> - 	{ "swapon", (__NR_SYSCALL_BASE + 162) },
> - 	{ "symlink", (__NR_SYSCALL_BASE + 86) },
> -@@ -390,6 +396,7 @@ const struct arch_syscall_def mips64_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", (__NR_SYSCALL_BASE + 301) },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", (__NR_SYSCALL_BASE + 136) },
> - 	{ "sysinfo", (__NR_SYSCALL_BASE + 97) },
> - 	{ "syslog", (__NR_SYSCALL_BASE + 101) },
> -diff --git a/src/arch-mips64n32-syscalls.c b/src/arch-mips64n32-syscalls.c
> -index da72899..ae1c9b8 100644
> ---- a/src/arch-mips64n32-syscalls.c
> -+++ b/src/arch-mips64n32-syscalls.c
> -@@ -227,6 +227,7 @@ const struct arch_syscall_def mips64n32_syscall_table[] = { \
> - 	{ "msgrcv", (__NR_SYSCALL_BASE + 68) },
> - 	{ "msgsnd", (__NR_SYSCALL_BASE + 67) },
> - 	{ "msync", (__NR_SYSCALL_BASE + 25) },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", (__NR_SYSCALL_BASE + 147) },
> - 	{ "munlockall", (__NR_SYSCALL_BASE + 149) },
> - 	{ "munmap", (__NR_SYSCALL_BASE + 11) },
> -@@ -297,6 +298,7 @@ const struct arch_syscall_def mips64n32_syscall_table[] = { \
> - 	{ "rt_sigsuspend", (__NR_SYSCALL_BASE + 128) },
> - 	{ "rt_sigtimedwait", (__NR_SYSCALL_BASE + 126) },
> - 	{ "rt_tgsigqueueinfo", (__NR_SYSCALL_BASE + 295) },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", (__NR_SYSCALL_BASE + 143) },
> - 	{ "sched_get_priority_min", (__NR_SYSCALL_BASE + 144) },
> - 	{ "sched_getaffinity", (__NR_SYSCALL_BASE + 196) },
> -@@ -374,6 +376,8 @@ const struct arch_syscall_def mips64n32_syscall_table[] = { \
> - 	{ "socketcall", __PNR_socketcall },
> - 	{ "socketpair", (__NR_SYSCALL_BASE + 52) },
> - 	{ "splice", (__NR_SYSCALL_BASE + 267) },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", (__NR_SYSCALL_BASE + 4) },
> - 	{ "stat64", __PNR_stat64 },
> -@@ -381,6 +385,8 @@ const struct arch_syscall_def mips64n32_syscall_table[] = { \
> - 	{ "statfs64", (__NR_SYSCALL_BASE + 217) },
> - 	{ "stime", __PNR_stime },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", (__NR_SYSCALL_BASE + 163) },
> - 	{ "swapon", (__NR_SYSCALL_BASE + 162) },
> - 	{ "symlink", (__NR_SYSCALL_BASE + 86) },
> -@@ -390,6 +396,7 @@ const struct arch_syscall_def mips64n32_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", (__NR_SYSCALL_BASE + 306) },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", (__NR_SYSCALL_BASE + 136) },
> - 	{ "sysinfo", (__NR_SYSCALL_BASE + 97) },
> - 	{ "syslog", (__NR_SYSCALL_BASE + 101) },
> -diff --git a/src/arch-ppc64-syscalls.c b/src/arch-ppc64-syscalls.c
> -new file mode 100644
> -index 0000000..5dfb367
> ---- /dev/null
> -+++ b/src/arch-ppc64-syscalls.c
> -@@ -0,0 +1,502 @@
> -+/**
> -+ * Enhanced Seccomp PPC64 Specific Code
> -+ *
> -+ * Copyright (c) 2014 Red Hat <pmoore@redhat.com>
> -+ * Author: Paul Moore <pmoore@redhat.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#include <string.h>
> -+
> -+#include <seccomp.h>
> -+
> -+#include "arch.h"
> -+#include "arch-ppc64.h"
> -+
> -+/* NOTE: based on Linux 3.17-rc6+ */
> -+const struct arch_syscall_def ppc64_syscall_table[] = { \
> -+	{ "_llseek", 140 },
> -+	{ "_newselect", 142 },
> -+	{ "_sysctl", 149 },
> -+	{ "accept", 330 },
> -+	{ "accept4", 344 },
> -+	{ "access", 33 },
> -+	{ "acct", 51 },
> -+	{ "add_key", 269 },
> -+	{ "adjtimex", 124 },
> -+	{ "afs_syscall", 137 },
> -+	{ "alarm", 27 },
> -+	{ "arm_fadvise64_64", __PNR_arm_fadvise64_64 },
> -+	{ "arm_sync_file_range", __PNR_arm_sync_file_range },
> -+	{ "arch_prctl", __PNR_arch_prctl },
> -+	{ "bdflush", 134 },
> -+	{ "bind", 327 },
> -+	{ "break", 17 },
> -+	{ "brk", 45 },
> -+	{ "cachectl", __PNR_cachectl },
> -+	{ "cacheflush", __PNR_cacheflush },
> -+	{ "capget", 183 },
> -+	{ "capset", 184 },
> -+	{ "chdir", 12 },
> -+	{ "chmod", 15 },
> -+	{ "chown", 181 },
> -+	{ "chown32", __PNR_chown32 },
> -+	{ "chroot", 61 },
> -+	{ "clock_adjtime", 347 },
> -+	{ "clock_getres", 247 },
> -+	{ "clock_gettime", 246 },
> -+	{ "clock_nanosleep", 248 },
> -+	{ "clock_settime", 245 },
> -+	{ "clone", 120 },
> -+	{ "close", 6 },
> -+	{ "connect", 328 },
> -+	{ "creat", 8 },
> -+	{ "create_module", 127 },
> -+	{ "delete_module", 129 },
> -+	{ "dup", 41 },
> -+	{ "dup2", 63 },
> -+	{ "dup3", 316 },
> -+	{ "epoll_create", 236 },
> -+	{ "epoll_create1", 315 },
> -+	{ "epoll_ctl", 237 },
> -+	{ "epoll_ctl_old", __PNR_epoll_ctl_old },
> -+	{ "epoll_pwait", 303 },
> -+	{ "epoll_wait", 238 },
> -+	{ "epoll_wait_old", __PNR_epoll_wait_old },
> -+	{ "eventfd", 307 },
> -+	{ "eventfd2", 314 },
> -+	{ "execve", 11 },
> -+	{ "exit", 1 },
> -+	{ "exit_group", 234 },
> -+	{ "faccessat", 298 },
> -+	{ "fadvise64", 233 },
> -+	{ "fadvise64_64", 254 },
> -+	{ "fallocate", 309 },
> -+	{ "fanotify_init", 323 },
> -+	{ "fanotify_mark", 324 },
> -+	{ "fchdir", 133 },
> -+	{ "fchmod", 94 },
> -+	{ "fchmodat", 297 },
> -+	{ "fchown", 95 },
> -+	{ "fchown32", __PNR_fchown32 },
> -+	{ "fchownat", 289 },
> -+	{ "fcntl", 55 },
> -+	{ "fcntl64", 204 },
> -+	{ "fdatasync", 148 },
> -+	{ "fgetxattr", 214 },
> -+	{ "finit_module", 353 },
> -+	{ "flistxattr", 217 },
> -+	{ "flock", 143 },
> -+	{ "fork", 2 },
> -+	{ "fremovexattr", 220 },
> -+	{ "fsetxattr", 211 },
> -+	{ "fstat", 108 },
> -+	{ "fstat64", 197 },
> -+	{ "fstatat64", 291 },
> -+	{ "fstatfs", 100 },
> -+	{ "fstatfs64", 253 },
> -+	{ "fsync", 118 },
> -+	{ "ftime", 35 },
> -+	{ "ftruncate", 93 },
> -+	{ "ftruncate64", 194 },
> -+	{ "futex", 221 },
> -+	{ "futimesat", 290 },
> -+	{ "get_kernel_syms", 130 },
> -+	{ "get_mempolicy", 260 },
> -+	{ "get_robust_list", 299 },
> -+	{ "get_thread_area", __PNR_get_thread_area },
> -+	{ "getcpu", 302 },
> -+	{ "getcwd", 182 },
> -+	{ "getdents", 141 },
> -+	{ "getdents64", 202 },
> -+	{ "getegid", 50 },
> -+	{ "getegid32", __PNR_getegid32 },
> -+	{ "geteuid", 49 },
> -+	{ "geteuid32", __PNR_geteuid32 },
> -+	{ "getgid", 47 },
> -+	{ "getgid32", __PNR_getgid32 },
> -+	{ "getgroups", 80 },
> -+	{ "getgroups32", __PNR_getgroups32 },
> -+	{ "getitimer", 105 },
> -+	{ "getpeername", 332 },
> -+	{ "getpgid", 132 },
> -+	{ "getpgrp", 65 },
> -+	{ "getpid", 20 },
> -+	{ "getpmsg", 187 },
> -+	{ "getppid", 64 },
> -+	{ "getpriority", 96 },
> -+	{ "getrandom", 359 },
> -+	{ "getresgid", 170 },
> -+	{ "getresgid32", __PNR_getresgid32 },
> -+	{ "getresuid", 165 },
> -+	{ "getresuid32", __PNR_getresuid32 },
> -+	{ "getrlimit", 76 },
> -+	{ "getrusage", 77 },
> -+	{ "getsid", 147 },
> -+	{ "getsockname", 331 },
> -+	{ "getsockopt", 340 },
> -+	{ "gettid", 207 },
> -+	{ "gettimeofday", 78 },
> -+	{ "getuid", 24 },
> -+	{ "getuid32", __PNR_getuid32 },
> -+	{ "getxattr", 212 },
> -+	{ "gtty", 32 },
> -+	{ "idle", 112 },
> -+	{ "init_module", 128 },
> -+	{ "inotify_add_watch", 276 },
> -+	{ "inotify_init", 275 },
> -+	{ "inotify_init1", 318 },
> -+	{ "inotify_rm_watch", 277 },
> -+	{ "io_cancel", 231 },
> -+	{ "io_destroy", 228 },
> -+	{ "io_getevents", 229 },
> -+	{ "io_setup", 227 },
> -+	{ "io_submit", 230 },
> -+	{ "ioctl", 54 },
> -+	{ "ioperm", 101 },
> -+	{ "iopl", 110 },
> -+	{ "ioprio_get", 274 },
> -+	{ "ioprio_set", 273 },
> -+	{ "ipc", 117 },
> -+	{ "kcmp", 354 },
> -+	{ "kexec_file_load", __PNR_kexec_file_load },
> -+	{ "kexec_load", 268 },
> -+	{ "keyctl", 271 },
> -+	{ "kill", 37 },
> -+	{ "lchown", 16 },
> -+	{ "lchown32", __PNR_lchown32 },
> -+	{ "lgetxattr", 213 },
> -+	{ "link", 9 },
> -+	{ "linkat", 294 },
> -+	{ "listen", 329 },
> -+	{ "listxattr", 215 },
> -+	{ "llistxattr", 216 },
> -+	{ "lock", 53 },
> -+	{ "lookup_dcookie", 235 },
> -+	{ "lremovexattr", 219 },
> -+	{ "lseek", 19 },
> -+	{ "lsetxattr", 210 },
> -+	{ "lstat", 107 },
> -+	{ "lstat64", 196 },
> -+	{ "madvise", 205 },
> -+	{ "mbind", 259 },
> -+	{ "memfd_create", 360 },
> -+	{ "migrate_pages", 258 },
> -+	{ "mincore", 206 },
> -+	{ "mkdir", 39 },
> -+	{ "mkdirat", 287 },
> -+	{ "mknod", 14 },
> -+	{ "mknodat", 288 },
> -+	{ "mlock", 150 },
> -+	{ "mlockall", 152 },
> -+	{ "mmap", 90 },
> -+	{ "mmap2", 192 },
> -+	{ "modify_ldt", 123 },
> -+	{ "mount", 21 },
> -+	{ "move_pages", 301 },
> -+	{ "mprotect", 125 },
> -+	{ "mpx", 56 },
> -+	{ "mq_getsetattr", 267 },
> -+	{ "mq_notify", 266 },
> -+	{ "mq_open", 262 },
> -+	{ "mq_timedreceive", 265 },
> -+	{ "mq_timedsend", 264 },
> -+	{ "mq_unlink", 263 },
> -+	{ "mremap", 163 },
> -+	{ "msgctl", __PNR_msgctl },
> -+	{ "msgget", __PNR_msgget },
> -+	{ "msgrcv", __PNR_msgrcv },
> -+	{ "msgsnd", __PNR_msgsnd },
> -+	{ "msync", 144 },
> -+	{ "multiplexer", 201 },
> -+	{ "munlock", 151 },
> -+	{ "munlockall", 153 },
> -+	{ "munmap", 91 },
> -+	{ "name_to_handle_at", 345 },
> -+	{ "nanosleep", 162 },
> -+	{ "newfstatat", __PNR_newfstatat },
> -+	{ "nfsservctl", 168 },
> -+	{ "nice", 34 },
> -+	{ "oldfstat", 28 },
> -+	{ "oldlstat", 84 },
> -+	{ "oldolduname", 59 },
> -+	{ "oldstat", 18 },
> -+	{ "olduname", 109 },
> -+	{ "oldwait4", __PNR_oldwait4 },
> -+	{ "open", 5 },
> -+	{ "open_by_handle_at", 346 },
> -+	{ "openat", 286 },
> -+	{ "pause", 29 },
> -+	{ "pciconfig_iobase", 200 },
> -+	{ "pciconfig_read", 198 },
> -+	{ "pciconfig_write", 199 },
> -+	{ "perf_event_open", 319 },
> -+	{ "personality", 136 },
> -+	{ "pipe", 42 },
> -+	{ "pipe2", 317 },
> -+	{ "pivot_root", 203 },
> -+	{ "poll", 167 },
> -+	{ "ppoll", 281 },
> -+	{ "prctl", 171 },
> -+	{ "pread64", 179 },
> -+	{ "preadv", 320 },
> -+	{ "prlimit64", 325 },
> -+	{ "process_vm_readv", 351 },
> -+	{ "process_vm_writev", 352 },
> -+	{ "prof", 44 },
> -+	{ "profil", 98 },
> -+	{ "pselect6", 280 },
> -+	{ "ptrace", 26 },
> -+	{ "putpmsg", 188 },
> -+	{ "pwrite64", 180 },
> -+	{ "pwritev", 321 },
> -+	{ "query_module", 166 },
> -+	{ "quotactl", 131 },
> -+	{ "read", 3 },
> -+	{ "readahead", 191 },
> -+	{ "readdir", 89 },
> -+	{ "readlink", 85 },
> -+	{ "readlinkat", 296 },
> -+	{ "readv", 145 },
> -+	{ "reboot", 88 },
> -+	{ "recv", 336 },
> -+	{ "recvfrom", 337 },
> -+	{ "recvmmsg", 343 },
> -+	{ "recvmsg", 342 },
> -+	{ "remap_file_pages", 239 },
> -+	{ "removexattr", 218 },
> -+	{ "rename", 38 },
> -+	{ "renameat", 293 },
> -+	{ "renameat2", 357 },
> -+	{ "request_key", 270 },
> -+	{ "restart_syscall", 0 },
> -+	{ "rmdir", 40 },
> -+	{ "rt_sigaction", 173 },
> -+	{ "rt_sigpending", 175 },
> -+	{ "rt_sigprocmask", 174 },
> -+	{ "rt_sigqueueinfo", 177 },
> -+	{ "rt_sigreturn", 172 },
> -+	{ "rt_sigsuspend", 178 },
> -+	{ "rt_sigtimedwait", 176 },
> -+	{ "rt_tgsigqueueinfo", 322 },
> -+	{ "rtas", 255 },
> -+	{ "sched_get_priority_max", 159 },
> -+	{ "sched_get_priority_min", 160 },
> -+	{ "sched_getaffinity", 223 },
> -+	{ "sched_getattr", 356 },
> -+	{ "sched_getparam", 155 },
> -+	{ "sched_getscheduler", 157 },
> -+	{ "sched_rr_get_interval", 161 },
> -+	{ "sched_setaffinity", 222 },
> -+	{ "sched_setattr", 355 },
> -+	{ "sched_setparam", 154 },
> -+	{ "sched_setscheduler", 156 },
> -+	{ "sched_yield", 158 },
> -+	{ "seccomp", 358 },
> -+	{ "security", __PNR_security },
> -+	{ "select", 82 },
> -+	{ "semctl", __PNR_semctl },
> -+	{ "semget", __PNR_semget },
> -+	{ "semop", __PNR_semop },
> -+	{ "semtimedop", __PNR_semtimedop },
> -+	{ "send", 334 },
> -+	{ "sendfile", 186 },
> -+	{ "sendfile64", 226 },
> -+	{ "sendmmsg", 349 },
> -+	{ "sendmsg", 341 },
> -+	{ "sendto", 335 },
> -+	{ "set_mempolicy", 261 },
> -+	{ "set_robust_list", 300 },
> -+	{ "set_thread_area", __PNR_set_thread_area },
> -+	{ "set_tid_address", 232 },
> -+	{ "setdomainname", 121 },
> -+	{ "setfsgid", 139 },
> -+	{ "setfsgid32", __PNR_setfsgid32 },
> -+	{ "setfsuid", 138 },
> -+	{ "setfsuid32", __PNR_setfsuid32 },
> -+	{ "setgid", 46 },
> -+	{ "setgid32", __PNR_setgid32 },
> -+	{ "setgroups", 81 },
> -+	{ "setgroups32", __PNR_setgroups32 },
> -+	{ "sethostname", 74 },
> -+	{ "setitimer", 104 },
> -+	{ "setns", 350 },
> -+	{ "setpgid", 57 },
> -+	{ "setpriority", 97 },
> -+	{ "setregid", 71 },
> -+	{ "setregid32", __PNR_setregid32 },
> -+	{ "setresgid", 169 },
> -+	{ "setresgid32", __PNR_setresgid32 },
> -+	{ "setresuid", 164 },
> -+	{ "setresuid32", __PNR_setresuid32 },
> -+	{ "setreuid", 70 },
> -+	{ "setreuid32", __PNR_setreuid32 },
> -+	{ "setrlimit", 75 },
> -+	{ "setsid", 66 },
> -+	{ "setsockopt", 339 },
> -+	{ "settimeofday", 79 },
> -+	{ "setuid", 23 },
> -+	{ "setuid32", __PNR_setuid32 },
> -+	{ "setxattr", 209 },
> -+	{ "sgetmask", 68 },
> -+	{ "shmat", __PNR_shmat },
> -+	{ "shmctl", __PNR_shmctl },
> -+	{ "shmdt", __PNR_shmdt },
> -+	{ "shmget", __PNR_shmget },
> -+	{ "shutdown", 338 },
> -+	{ "sigaction", 67 },
> -+	{ "sigaltstack", 185 },
> -+	{ "signal", 48 },
> -+	{ "signalfd", 305 },
> -+	{ "signalfd4", 313 },
> -+	{ "sigpending", 73 },
> -+	{ "sigprocmask", 126 },
> -+	{ "sigreturn", 119 },
> -+	{ "sigsuspend", 72 },
> -+	{ "socket", 326 },
> -+	{ "socketcall", 102 },
> -+	{ "socketpair", 333 },
> -+	{ "splice", 283 },
> -+	{ "spu_create", 279 },
> -+	{ "spu_run", 278 },
> -+	{ "ssetmask", 69 },
> -+	{ "stat", 106 },
> -+	{ "stat64", 195 },
> -+	{ "statfs", 99 },
> -+	{ "statfs64", 252 },
> -+	{ "stime", 25 },
> -+	{ "stty", 31 },
> -+	{ "subpage_prot", 310 },
> -+	{ "swapcontext", 249 },
> -+	{ "swapoff", 115 },
> -+	{ "swapon", 87 },
> -+	{ "symlink", 83 },
> -+	{ "symlinkat", 295 },
> -+	{ "sync", 36 },
> -+	{ "sync_file_range", __PNR_sync_file_range },
> -+	{ "sync_file_range2", 308 },
> -+	{ "syncfs", 348 },
> -+	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", 256 },
> -+	{ "sysfs", 135 },
> -+	{ "sysinfo", 116 },
> -+	{ "syslog", 103 },
> -+	{ "sysmips", __PNR_sysmips },
> -+	{ "tee", 284 },
> -+	{ "tgkill", 250 },
> -+	{ "time", 13 },
> -+	{ "timer_create", 240 },
> -+	{ "timer_delete", 244 },
> -+	{ "timer_getoverrun", 243 },
> -+	{ "timer_gettime", 242 },
> -+	{ "timer_settime", 241 },
> -+	{ "timerfd", __PNR_timerfd },
> -+	{ "timerfd_create", 306 },
> -+	{ "timerfd_gettime", 312 },
> -+	{ "timerfd_settime", 311 },
> -+	{ "times", 43 },
> -+	{ "tkill", 208 },
> -+	{ "truncate", 92 },
> -+	{ "truncate64", 193 },
> -+	{ "tuxcall", 225 },
> -+	{ "ugetrlimit", 190 },
> -+	{ "ulimit", 58 },
> -+	{ "umask", 60 },
> -+	{ "umount", 22 },
> -+	{ "umount2", 52 },
> -+	{ "uname", 122 },
> -+	{ "unlink", 10 },
> -+	{ "unlinkat", 292 },
> -+	{ "unshare", 282 },
> -+	{ "uselib", 86 },
> -+	{ "ustat", 62 },
> -+	{ "utime", 30 },
> -+	{ "utimensat", 304 },
> -+	{ "utimes", 251 },
> -+	{ "vfork", 189 },
> -+	{ "vhangup", 111 },
> -+	{ "vm86", 113 },
> -+	{ "vm86old", __PNR_vm86old },
> -+	{ "vmsplice", 285 },
> -+	{ "vserver", __PNR_vserver },
> -+	{ "wait4", 114 },
> -+	{ "waitid", 272 },
> -+	{ "waitpid", 7 },
> -+	{ "write", 4 },
> -+	{ "writev", 146 },
> -+	{ NULL, __NR_SCMP_ERROR },
> -+};
> -+
> -+/**
> -+ * Resolve a syscall name to a number
> -+ * @param name the syscall name
> -+ *
> -+ * Resolve the given syscall name to the syscall number using the syscall table.
> -+ * Returns the syscall number on success, including negative pseudo syscall
> -+ * numbers; returns __NR_SCMP_ERROR on failure.
> -+ *
> -+ */
> -+int ppc64_syscall_resolve_name(const char *name)
> -+{
> -+	unsigned int iter;
> -+	const struct arch_syscall_def *table = ppc64_syscall_table;
> -+
> -+	/* XXX - plenty of room for future improvement here */
> -+	for (iter = 0; table[iter].name != NULL; iter++) {
> -+		if (strcmp(name, table[iter].name) == 0)
> -+			return table[iter].num;
> -+	}
> -+
> -+	return __NR_SCMP_ERROR;
> -+}
> -+
> -+/**
> -+ * Resolve a syscall number to a name
> -+ * @param num the syscall number
> -+ *
> -+ * Resolve the given syscall number to the syscall name using the syscall table.
> -+ * Returns a pointer to the syscall name string on success, including pseudo
> -+ * syscall names; returns NULL on failure.
> -+ *
> -+ */
> -+const char *ppc64_syscall_resolve_num(int num)
> -+{
> -+	unsigned int iter;
> -+	const struct arch_syscall_def *table = ppc64_syscall_table;
> -+
> -+	/* XXX - plenty of room for future improvement here */
> -+	for (iter = 0; table[iter].num != __NR_SCMP_ERROR; iter++) {
> -+		if (num == table[iter].num)
> -+			return table[iter].name;
> -+	}
> -+
> -+	return NULL;
> -+}
> -+
> -+/**
> -+ * Iterate through the syscall table and return the syscall name
> -+ * @param spot the offset into the syscall table
> -+ *
> -+ * Return the syscall name at position @spot or NULL on failure.  This function
> -+ * should only ever be used internally by libseccomp.
> -+ *
> -+ */
> -+const char *ppc64_syscall_iterate_name(unsigned int spot)
> -+{
> -+	/* XXX - no safety checks here */
> -+	return ppc64_syscall_table[spot].name;
> -+}
> -diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
> -new file mode 100644
> -index 0000000..5f461cb
> ---- /dev/null
> -+++ b/src/arch-ppc64.c
> -@@ -0,0 +1,40 @@
> -+/**
> -+ * Enhanced Seccomp PPC64 Specific Code
> -+ *
> -+ * Copyright (c) 2014 Red Hat <pmoore@redhat.com>
> -+ * Author: Paul Moore <pmoore@redhat.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#include <linux/audit.h>
> -+
> -+#include "arch.h"
> -+#include "arch-ppc64.h"
> -+
> -+const struct arch_def arch_def_ppc64 = {
> -+	.token = SCMP_ARCH_PPC64,
> -+	.token_bpf = AUDIT_ARCH_PPC64,
> -+	.size = ARCH_SIZE_64,
> -+	.endian = ARCH_ENDIAN_BIG,
> -+};
> -+
> -+const struct arch_def arch_def_ppc64le = {
> -+	.token = SCMP_ARCH_PPC64LE,
> -+	.token_bpf = AUDIT_ARCH_PPC64LE,
> -+	.size = ARCH_SIZE_64,
> -+	.endian = ARCH_ENDIAN_LITTLE,
> -+};
> -diff --git a/src/arch-ppc64.h b/src/arch-ppc64.h
> -new file mode 100644
> -index 0000000..1aec743
> ---- /dev/null
> -+++ b/src/arch-ppc64.h
> -@@ -0,0 +1,39 @@
> -+/**
> -+ * Enhanced Seccomp PPC64 Specific Code
> -+ *
> -+ * Copyright (c) 2014 Red Hat <pmoore@redhat.com>
> -+ * Author: Paul Moore <pmoore@redhat.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#ifndef _ARCH_PPC64_H
> -+#define _ARCH_PPC64_H
> -+
> -+#include <inttypes.h>
> -+
> -+#include "arch.h"
> -+#include "system.h"
> -+
> -+extern const struct arch_def arch_def_ppc64;
> -+extern const struct arch_def arch_def_ppc64le;
> -+
> -+int ppc64_syscall_resolve_name(const char *name);
> -+const char *ppc64_syscall_resolve_num(int num);
> -+
> -+const char *ppc64_syscall_iterate_name(unsigned int spot);
> -+
> -+#endif
> -diff --git a/src/arch-syscall-check.c b/src/arch-syscall-check.c
> -index a074c9d..dadab0d 100644
> ---- a/src/arch-syscall-check.c
> -+++ b/src/arch-syscall-check.c
> -@@ -33,6 +33,7 @@
> - #include "arch-mips.h"
> - #include "arch-mips64.h"
> - #include "arch-mips64n32.h"
> -+#include "arch-ppc64.h"
> - 
> - /**
> -  * compare the syscall values
> -@@ -67,6 +68,7 @@ int main(int argc, char *argv[])
> - 	int i_mips = 0;
> - 	int i_mips64 = 0;
> - 	int i_mips64n32 = 0;
> -+	int i_ppc64 = 0;
> - 	const char *sys_name;
> - 	char str_miss[256];
> - 
> -@@ -93,6 +95,8 @@ int main(int argc, char *argv[])
> - 			      mips64_syscall_iterate_name(i_mips64));
> - 		syscall_check(str_miss, sys_name, "mips64n32",
> - 			      mips64n32_syscall_iterate_name(i_mips64n32));
> -+		syscall_check(str_miss, sys_name, "ppc64",
> -+			      ppc64_syscall_iterate_name(i_mips64n32));
> - 
> - 		/* output the results */
> - 		printf("%s: ", sys_name);
> -@@ -111,17 +115,20 @@ int main(int argc, char *argv[])
> - 			i_x32 = -1;
> - 		if (!arm_syscall_iterate_name(++i_arm))
> - 			i_arm = -1;
> -+		if (!aarch64_syscall_iterate_name(++i_aarch64))
> -+			i_aarch64 = -1;
> - 		if (!mips_syscall_iterate_name(++i_mips))
> - 			i_mips = -1;
> - 		if (!mips64_syscall_iterate_name(++i_mips64))
> - 			i_mips64 = -1;
> - 		if (!mips64n32_syscall_iterate_name(++i_mips64n32))
> - 			i_mips64n32 = -1;
> --		if (!aarch64_syscall_iterate_name(++i_aarch64))
> --			i_aarch64 = -1;
> -+		if (!ppc64_syscall_iterate_name(++i_ppc64))
> -+			i_ppc64 = -1;
> - 	} while (i_x86_64 >= 0 && i_x32 >= 0 &&
> - 		 i_arm >= 0 && i_aarch64 >= 0 &&
> --		 i_mips >= 0 && i_mips64 >= 0 && i_mips64n32 >= 0);
> -+		 i_mips >= 0 && i_mips64 >= 0 && i_mips64n32 >= 0 &&
> -+		 i_ppc64 >= 0);
> - 
> - 	/* check for any leftovers */
> - 	sys_name = x86_syscall_iterate_name(i_x86 + 1);
> -@@ -164,6 +171,11 @@ int main(int argc, char *argv[])
> - 		       mips64n32_syscall_iterate_name(i_mips64n32));
> - 		return 1;
> - 	}
> -+	if (i_ppc64 >= 0) {
> -+		printf("%s: ERROR, ppc64 has additional syscalls\n",
> -+		       ppc64_syscall_iterate_name(i_ppc64));
> -+		return 1;
> -+	}
> - 
> - 	/* if we made it here, all is good */
> - 	return 0;
> -diff --git a/src/arch-syscall-dump.c b/src/arch-syscall-dump.c
> -index 4f53070..985a250 100644
> ---- a/src/arch-syscall-dump.c
> -+++ b/src/arch-syscall-dump.c
> -@@ -38,6 +38,7 @@
> - #include "arch-mips64.h"
> - #include "arch-mips64n32.h"
> - #include "arch-aarch64.h"
> -+#include "arch-ppc64.h"
> - 
> - /**
> -  * Print the usage information to stderr and exit
> -@@ -97,6 +98,9 @@ int main(int argc, char *argv[])
> - 		case SCMP_ARCH_ARM:
> - 			sys_name = arm_syscall_iterate_name(iter);
> - 			break;
> -+		case SCMP_ARCH_AARCH64:
> -+			sys_name = aarch64_syscall_iterate_name(iter);
> -+			break;
> - 		case SCMP_ARCH_MIPS:
> - 		case SCMP_ARCH_MIPSEL:
> - 			sys_name = mips_syscall_iterate_name(iter);
> -@@ -109,9 +113,10 @@ int main(int argc, char *argv[])
> - 		case SCMP_ARCH_MIPSEL64N32:
> - 			sys_name = mips64n32_syscall_iterate_name(iter);
> - 			break;
> --		case SCMP_ARCH_AARCH64:
> --			sys_name = aarch64_syscall_iterate_name(iter);
> -+		case SCMP_ARCH_PPC64:
> -+			sys_name = ppc64_syscall_iterate_name(iter);
> - 			break;
> -+
> - 		default:
> - 			/* invalid arch */
> - 			exit_usage(argv[0]);
> -diff --git a/src/arch-syscall-validate b/src/arch-syscall-validate
> -index 2cbf696..eeb4d8b 100755
> ---- a/src/arch-syscall-validate
> -+++ b/src/arch-syscall-validate
> -@@ -303,6 +303,29 @@ function dump_lib_mips64n32() {
> - }
> - 
> - #
> -+# Dump the ppc64 system syscall table
> -+#
> -+# Arguments:
> -+#     1    path to the kernel source
> -+#
> -+#  Dump the architecture's syscall table to stdout.
> -+#
> -+function dump_sys_ppc64() {
> -+	gcc -E -dM $1/arch/powerpc/include/uapi/asm/unistd.h | \
> -+		grep "^#define __NR_" | sort | \
> -+		sed -e 's/#define[ \t]\+__NR_\([a-z0-9_]\+\)[ \t]\+\([0-9]\+\)/\1\t\2/'
> -+}
> -+
> -+#
> -+# Dump the ppc64 library syscall table
> -+#
> -+#  Dump the library's syscall table to stdout.
> -+#
> -+function dump_lib_ppc64() {
> -+	$LIB_SYS_DUMP -a ppc64 | sed -e '/[^\t]\+\t-[0-9]\+/d'
> -+}
> -+
> -+#
> - # Dump the system syscall table
> - #
> - # Arguments:
> -@@ -337,6 +360,9 @@ function dump_sys() {
> - 	mips64n32)
> - 		dump_sys_mips64n32 "$2"
> - 		;;
> -+	ppc64)
> -+		dump_sys_ppc64 "$2"
> -+		;;
> - 	*)
> - 		echo ""
> - 		;;
> -@@ -377,6 +403,9 @@ function dump_lib() {
> - 	mips64n32)
> - 		dump_lib_mips64n32 "$2"
> - 		;;
> -+	ppc64)
> -+		dump_lib_ppc64 "$2"
> -+		;;
> - 	*)
> - 		echo ""
> - 		;;
> -@@ -413,7 +442,7 @@ shift $(($OPTIND - 1))
> - 
> - # defaults
> - if [[ $arches == "" ]]; then
> --	arches="x86 x86_64 x32 arm aarch64 mips mips64 mips64n32"
> -+	arches="x86 x86_64 x32 arm aarch64 mips mips64 mips64n32 ppc64"
> - fi
> - 
> - # sanity checks
> -diff --git a/src/arch-x32-syscalls.c b/src/arch-x32-syscalls.c
> -index 7876aa7..578d534 100644
> ---- a/src/arch-x32-syscalls.c
> -+++ b/src/arch-x32-syscalls.c
> -@@ -223,6 +223,7 @@ const struct arch_syscall_def x32_syscall_table[] = { \
> - 	{ "msgrcv", (X32_SYSCALL_BIT + 70) },
> - 	{ "msgsnd", (X32_SYSCALL_BIT + 69) },
> - 	{ "msync", (X32_SYSCALL_BIT + 26) },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", (X32_SYSCALL_BIT + 150) },
> - 	{ "munlockall", (X32_SYSCALL_BIT + 152) },
> - 	{ "munmap", (X32_SYSCALL_BIT + 11) },
> -@@ -293,6 +294,7 @@ const struct arch_syscall_def x32_syscall_table[] = { \
> - 	{ "rt_sigsuspend", (X32_SYSCALL_BIT + 130) },
> - 	{ "rt_sigtimedwait", (X32_SYSCALL_BIT + 523) },
> - 	{ "rt_tgsigqueueinfo", (X32_SYSCALL_BIT + 536) },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", (X32_SYSCALL_BIT + 146) },
> - 	{ "sched_get_priority_min", (X32_SYSCALL_BIT + 147) },
> - 	{ "sched_getaffinity", (X32_SYSCALL_BIT + 204) },
> -@@ -370,6 +372,8 @@ const struct arch_syscall_def x32_syscall_table[] = { \
> - 	{ "socketcall", __PNR_socketcall },
> - 	{ "socketpair", (X32_SYSCALL_BIT + 53) },
> - 	{ "splice", (X32_SYSCALL_BIT + 275) },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", (X32_SYSCALL_BIT + 4) },
> - 	{ "stat64", __PNR_stat64 },
> -@@ -377,6 +381,8 @@ const struct arch_syscall_def x32_syscall_table[] = { \
> - 	{ "statfs64", __PNR_statfs64 },
> - 	{ "stime", __PNR_stime },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", (X32_SYSCALL_BIT + 168) },
> - 	{ "swapon", (X32_SYSCALL_BIT + 167) },
> - 	{ "symlink", (X32_SYSCALL_BIT + 88) },
> -@@ -386,6 +392,7 @@ const struct arch_syscall_def x32_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", (X32_SYSCALL_BIT + 306) },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", (X32_SYSCALL_BIT + 139) },
> - 	{ "sysinfo", (X32_SYSCALL_BIT + 99) },
> - 	{ "syslog", (X32_SYSCALL_BIT + 103) },
> -diff --git a/src/arch-x86-syscalls.c b/src/arch-x86-syscalls.c
> -index 1d36c0b..92343f0 100644
> ---- a/src/arch-x86-syscalls.c
> -+++ b/src/arch-x86-syscalls.c
> -@@ -223,6 +223,7 @@ const struct arch_syscall_def x86_syscall_table[] = { \
> - 	{ "msgrcv", __PNR_msgrcv },
> - 	{ "msgsnd", __PNR_msgsnd },
> - 	{ "msync", 144 },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", 151 },
> - 	{ "munlockall", 153 },
> - 	{ "munmap", 91 },
> -@@ -293,6 +294,7 @@ const struct arch_syscall_def x86_syscall_table[] = { \
> - 	{ "rt_sigsuspend", 179 },
> - 	{ "rt_sigtimedwait", 177 },
> - 	{ "rt_tgsigqueueinfo", 335 },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", 159 },
> - 	{ "sched_get_priority_min", 160 },
> - 	{ "sched_getaffinity", 242 },
> -@@ -370,6 +372,8 @@ const struct arch_syscall_def x86_syscall_table[] = { \
> - 	{ "socketcall", 102 },
> - 	{ "socketpair", __PNR_socketpair },
> - 	{ "splice", 313 },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", 69 },
> - 	{ "stat", 106 },
> - 	{ "stat64", 195 },
> -@@ -377,6 +381,8 @@ const struct arch_syscall_def x86_syscall_table[] = { \
> - 	{ "statfs64", 268 },
> - 	{ "stime", 25 },
> - 	{ "stty", 31 },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", 115 },
> - 	{ "swapon", 87 },
> - 	{ "symlink", 83 },
> -@@ -386,6 +392,7 @@ const struct arch_syscall_def x86_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", 344 },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", 135 },
> - 	{ "sysinfo", 116 },
> - 	{ "syslog", 103 },
> -diff --git a/src/arch-x86_64-syscalls.c b/src/arch-x86_64-syscalls.c
> -index 69c22ab..d0d4241 100644
> ---- a/src/arch-x86_64-syscalls.c
> -+++ b/src/arch-x86_64-syscalls.c
> -@@ -223,6 +223,7 @@ const struct arch_syscall_def x86_64_syscall_table[] = { \
> - 	{ "msgrcv", 70 },
> - 	{ "msgsnd", 69 },
> - 	{ "msync", 26 },
> -+	{ "multiplexer", __PNR_multiplexer },
> - 	{ "munlock", 150 },
> - 	{ "munlockall", 152 },
> - 	{ "munmap", 11 },
> -@@ -293,6 +294,7 @@ const struct arch_syscall_def x86_64_syscall_table[] = { \
> - 	{ "rt_sigsuspend", 130 },
> - 	{ "rt_sigtimedwait", 128 },
> - 	{ "rt_tgsigqueueinfo", 297 },
> -+	{ "rtas", __PNR_rtas },
> - 	{ "sched_get_priority_max", 146 },
> - 	{ "sched_get_priority_min", 147 },
> - 	{ "sched_getaffinity", 204 },
> -@@ -370,6 +372,8 @@ const struct arch_syscall_def x86_64_syscall_table[] = { \
> - 	{ "socketcall", __PNR_socketcall },
> - 	{ "socketpair", 53 },
> - 	{ "splice", 275 },
> -+	{ "spu_create", __PNR_spu_create },
> -+	{ "spu_run", __PNR_spu_run },
> - 	{ "ssetmask", __PNR_ssetmask },
> - 	{ "stat", 4 },
> - 	{ "stat64", __PNR_stat64 },
> -@@ -377,6 +381,8 @@ const struct arch_syscall_def x86_64_syscall_table[] = { \
> - 	{ "statfs64", __PNR_statfs64 },
> - 	{ "stime", __PNR_stime },
> - 	{ "stty", __PNR_stty },
> -+	{ "subpage_prot", __PNR_subpage_prot },
> -+	{ "swapcontext", __PNR_swapcontext },
> - 	{ "swapoff", 168 },
> - 	{ "swapon", 167 },
> - 	{ "symlink", 88 },
> -@@ -386,6 +392,7 @@ const struct arch_syscall_def x86_64_syscall_table[] = { \
> - 	{ "sync_file_range2", __PNR_sync_file_range2 },
> - 	{ "syncfs", 306 },
> - 	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", __PNR_sys_debug_setcontext },
> - 	{ "sysfs", 139 },
> - 	{ "sysinfo", 99 },
> - 	{ "syslog", 103 },
> -diff --git a/tools/util.h b/tools/util.h
> -index 261320f..95b06c9 100644
> ---- a/tools/util.h
> -+++ b/tools/util.h
> -@@ -47,6 +47,10 @@
> - #define AUDIT_ARCH_AARCH64	(EM_AARCH64|__AUDIT_ARCH_64BIT|__AUDIT_ARCH_LE)
> - #endif
> - 
> -+#ifndef AUDIT_ARCH_PPC64LE
> -+#define AUDIT_ARCH_PPC64LE	(EM_PPC64|__AUDIT_ARCH_64BIT|__AUDIT_ARCH_LE)
> -+#endif
> -+
> - extern uint32_t arch;
> - 
> - void exit_usage(const char *program);
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch b/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
> deleted file mode 100644
> index 55eaf81..0000000
> --- a/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
> +++ /dev/null
> @@ -1,203 +0,0 @@
> -From e8e166cdc1fc31e02d568424e17b9f9fc1e95256 Mon Sep 17 00:00:00 2001
> -From: Joe MacDonald <joe@deserted.net>
> -Date: Mon, 28 Oct 2013 15:40:14 -0400
> -Subject: [PATCH 1/3] tests: create install-tests target
> -
> -It can be useful, in particular on a cross-build setup, to install the
> -tests and regression suite in addition to the library itself.  Since most
> -people probably don't want that by default, though, create an
> -install-tests target that will place tests and regression script in
> -$(INSTALL_LIB_DIR)/libseccomp/tests and install the necessary tools in
> -$(INSTALL_BIN_DIR)/bin.
> -
> -Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
> -
> -Signed-off-by: Joe MacDonald <joe@deserted.net>
> ----
> - Makefile         |    9 +++++++++
> - README           |    8 ++++++++
> - install.mk       |    1 +
> - macros.mk        |   18 ++++++++++++++++++
> - tests/Makefile   |    7 ++++++-
> - tests/regression |   19 ++++++++++++++++---
> - tools/Makefile   |    3 +++
> - 7 files changed, 61 insertions(+), 4 deletions(-)
> -
> -diff --git a/Makefile b/Makefile
> -index 1f61f20..8cb0a16 100644
> ---- a/Makefile
> -+++ b/Makefile
> -@@ -40,6 +40,7 @@ include install.mk
> - CONFIGS = configure.mk configure.h version_info.mk libseccomp.pc
> - SUBDIRS_BUILD = include src tests tools
> - SUBDIRS_INSTALL = include src tools doc
> -+SUBDIRS_INSTALL_TEST = tools tests
> - 
> - .PHONY: tarball install check check-syntax ctags cstags clean dist-clean \
> - 	$(SUBDIRS_BUILD)
> -@@ -106,6 +107,14 @@ check: tools tests
> - check-syntax:
> - 	@./tools/check-syntax
> - 
> -+install-tests: $(SUBDIRS_INSTALL_TEST)
> -+	@$(ECHO_INFO) "installing tests in $(INSTALL_PREFIX) ..."
> -+	$(ECHO_INFO) "installing from $$dir/"
> -+	@for dir in $(SUBDIRS_INSTALL_TEST); do \
> -+		$(ECHO_INFO) "installing from $$dir/"; \
> -+		$(MAKE) -C $$dir install-tests; \
> -+	done
> -+
> - ctags:
> - 	@$(ECHO_INFO) "generating ctags for the project ..."
> - 	@ctags -R *
> -diff --git a/README b/README
> -index 37b9709..14ae254 100644
> ---- a/README
> -+++ b/README
> -@@ -41,6 +41,14 @@ to run all of the tests you can simply run the script:
> - However, the script takes a number of options to customize its execution; the
> - options can be displayed by running "./regression -h".
> - 
> -+It is also possible to install the tests and regression script to the system by
> -+issuing:
> -+
> -+   # make install-tests
> -+
> -+When complete, installed tests and regression script may be found in
> -+$LIBDIR/lib/libseccomp/test
> -+
> - * Other Useful Tools
> - 
> - The "tools/" directory includes a number of tools which may be helpful in the
> -diff --git a/install.mk b/install.mk
> -index 123af33..f6aa311 100644
> ---- a/install.mk
> -+++ b/install.mk
> -@@ -24,6 +24,7 @@ INSTALL_PREFIX ?= $(CONF_INSTALL_PREFIX)
> - INSTALL_SBIN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/sbin
> - INSTALL_BIN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/bin
> - INSTALL_LIB_DIR ?= $(DESTDIR)/$(CONF_INSTALL_LIBDIR)
> -+INSTALL_TEST_DIR ?= $(DESTDIR)/$(CONF_INSTALL_LIBDIR)/libseccomp/tests
> - INSTALL_INC_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/include
> - INSTALL_MAN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/share/man
> - 
> -diff --git a/macros.mk b/macros.mk
> -index 6df5b3a..e7c196d 100644
> ---- a/macros.mk
> -+++ b/macros.mk
> -@@ -206,6 +206,24 @@ INSTALL_INC_MACRO += \
> - 			$^ "$(INSTALL_INC_DIR)";
> - 
> - ifeq ($(V),0)
> -+	INSTALL_TEST_MACRO = @echo " INSTALL $^ ($(INSTALL_TEST_DIR))";
> -+endif
> -+INSTALL_TEST_MACRO += \
> -+		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
> -+			-d "$(INSTALL_TEST_DIR)"; \
> -+		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
> -+			$^ "$(INSTALL_TEST_DIR)";
> -+
> -+ifeq ($(V),0)
> -+	INSTALL_REGRESSION_TEST_MACRO = @echo " INSTALL regression ($(INSTALL_TEST_DIR))";
> -+endif
> -+INSTALL_REGRESSION_TEST_MACRO += \
> -+		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
> -+			-d "$(INSTALL_TEST_DIR)"; \
> -+		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
> -+			regression "$(INSTALL_TEST_DIR)";
> -+
> -+ifeq ($(V),0)
> - 	INSTALL_MAN1_MACRO = \
> - 		@echo " INSTALL manpages ($(INSTALL_MAN_DIR)/man1)";
> - endif
> -diff --git a/tests/Makefile b/tests/Makefile
> -index 5fdbca7..135551c 100644
> ---- a/tests/Makefile
> -+++ b/tests/Makefile
> -@@ -31,6 +31,7 @@ include ../macros.mk
> - 
> - include $(TOPDIR)/version_info.mk
> - include $(TOPDIR)/configure.mk
> -+include $(TOPDIR)/install.mk
> - 
> - OBJS = util.o
> - 
> -@@ -71,7 +72,7 @@ DEPS_TESTS = $(TESTS:%=%.d)
> - # targets
> - #
> - 
> --.PHONY: check clean
> -+.PHONY: check clean install-tests
> - 
> - all: $(TESTS) $(OBJS)
> - 
> -@@ -91,5 +92,9 @@ $(TEST_PRIVATE): 00-test.c $(OBJS) ../src/libseccomp.a
> - check: $(TESTS)
> - 	./regression
> - 
> -+install-tests: $(TESTS) $(TESTS:%=%.tests)
> -+	$(INSTALL_TEST_MACRO)
> -+	$(INSTALL_REGRESSION_TEST_MACRO)
> -+
> - clean:
> - 	$(RM) $(DEPS_TESTS) $(DEPS_OBJS) $(TESTS) $(TEST_PRIVATE) $(OBJS) *.pyc
> -diff --git a/tests/regression b/tests/regression
> -index 790d5e1..3c293a4 100755
> ---- a/tests/regression
> -+++ b/tests/regression
> -@@ -23,9 +23,18 @@
> - 
> - GLBL_ARCH_SUPPORT="x86 x86_64 x32 arm"
> - 
> --GLBL_SYS_ARCH="../tools/scmp_arch_detect"
> --GLBL_SYS_RESOLVER="../tools/scmp_sys_resolver"
> --GLBL_SYS_SIM="../tools/scmp_bpf_sim"
> -+GLBL_SYS_PATH=$(dirname $(readlink -m $0))
> -+if [ -d $GLBL_SYS_PATH/../tools/ ]; then
> -+	# prepend ../tools to $PATH so we can use verify_deps to check for
> -+	# scmp_* support binaries if regression is running out of the build
> -+	# tree.
> -+	PATH=$GLBL_SYS_PATH/../tools/:$PATH
> -+	export PATH
> -+fi
> -+
> -+GLBL_SYS_ARCH=$(which scmp_arch_detect)
> -+GLBL_SYS_RESOLVER=$(which scmp_sys_resolver)
> -+GLBL_SYS_SIM=$(which scmp_bpf_sim)
> - 
> - ####
> - # functions
> -@@ -761,6 +770,9 @@ verify_deps head
> - verify_deps sed
> - verify_deps seq
> - verify_deps tr
> -+verify_deps scmp_arch_detect
> -+verify_deps scmp_sys_resolver
> -+verify_deps scmp_bpf_sim
> - 
> - # global variables
> - declare -a batch_list
> -@@ -865,6 +877,7 @@ arch=$($GLBL_SYS_ARCH)
> - # display the test output and run the requested tests
> - echo "=============== $(date) ===============" >&$logfd
> - echo "Regression Test Report (\"regression $*\")" >&$logfd
> -+cd $(dirname $0)
> - for mode in $mode_list; do
> - 	run_tests
> - done
> -diff --git a/tools/Makefile b/tools/Makefile
> -index 79c7d25..9f4ffea 100644
> ---- a/tools/Makefile
> -+++ b/tools/Makefile
> -@@ -62,5 +62,8 @@ $(TOOLS):
> - install: $(TOOLS_INSTALL)
> - 	$(INSTALL_BIN_MACRO)
> - 
> -+install-tests: $(TOOLS)
> -+	$(INSTALL_BIN_MACRO)
> -+
> - clean:
> - 	$(RM) $(DEPS) $(TOOLS)
> --- 
> -1.7.10.4
> -
> diff --git a/recipes-security/libseccomp/files/0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch b/recipes-security/libseccomp/files/0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch
> deleted file mode 100644
> index 15bc0a8..0000000
> --- a/recipes-security/libseccomp/files/0002-arch-add-the-basic-initial-support-for-ppc64-to-the-.patch
> +++ /dev/null
> @@ -1,128 +0,0 @@
> -From 70c69945bf0da09baec2e109ba19b883de4d0e80 Mon Sep 17 00:00:00 2001
> -From: Paul Moore <pmoore@redhat.com>
> -Date: Fri, 26 Sep 2014 12:06:18 -0400
> -Subject: [PATCH 02/11] arch: add the basic initial support for ppc64 to the
> - arch-dependent code
> -
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - src/arch.c                | 21 +++++++++++++++++++++
> - src/python/libseccomp.pxd |  2 ++
> - src/python/seccomp.pyx    |  7 +++++++
> - 3 files changed, 30 insertions(+)
> -
> -diff --git a/src/arch.c b/src/arch.c
> -index e29b579..64fc1d1 100644
> ---- a/src/arch.c
> -+++ b/src/arch.c
> -@@ -38,6 +38,7 @@
> - #include "arch-mips.h"
> - #include "arch-mips64.h"
> - #include "arch-mips64n32.h"
> -+#include "arch-ppc64.h"
> - #include "system.h"
> - 
> - #define default_arg_count_max		6
> -@@ -74,6 +75,12 @@ const struct arch_def *arch_def_native = &arch_def_mips64n32;
> - #elif __MIPSEL__
> - const struct arch_def *arch_def_native = &arch_def_mipsel64n32;
> - #endif /* _MIPS_SIM_NABI32 */
> -+#elif __PPC64__
> -+#ifdef __BIG_ENDIAN__
> -+const struct arch_def *arch_def_native = &arch_def_ppc64;
> -+#else
> -+const struct arch_def *arch_def_native = &arch_def_ppc64le;
> -+#endif
> - #else
> - #error the arch code needs to know about your machine type
> - #endif /* machine type guess */
> -@@ -122,6 +129,10 @@ const struct arch_def *arch_def_lookup(uint32_t token)
> - 		return &arch_def_mips64n32;
> - 	case SCMP_ARCH_MIPSEL64N32:
> - 		return &arch_def_mipsel64n32;
> -+	case SCMP_ARCH_PPC64:
> -+		return &arch_def_ppc64;
> -+	case SCMP_ARCH_PPC64LE:
> -+		return &arch_def_ppc64le;
> - 	}
> - 
> - 	return NULL;
> -@@ -158,6 +169,10 @@ const struct arch_def *arch_def_lookup_name(const char *arch_name)
> - 		return &arch_def_mips64n32;
> - 	else if (strcmp(arch_name, "mipsel64n32") == 0)
> - 		return &arch_def_mipsel64n32;
> -+	else if (strcmp(arch_name, "ppc64") == 0)
> -+		return &arch_def_ppc64;
> -+	else if (strcmp(arch_name, "ppc64le") == 0)
> -+		return &arch_def_ppc64le;
> - 
> - 	return NULL;
> - }
> -@@ -276,6 +291,9 @@ int arch_syscall_resolve_name(const struct arch_def *arch, const char *name)
> - 	case SCMP_ARCH_MIPS64N32:
> - 	case SCMP_ARCH_MIPSEL64N32:
> - 		return mips64n32_syscall_resolve_name(name);
> -+	case SCMP_ARCH_PPC64:
> -+	case SCMP_ARCH_PPC64LE:
> -+		return ppc64_syscall_resolve_name(name);
> - 	}
> - 
> - 	return __NR_SCMP_ERROR;
> -@@ -313,6 +331,9 @@ const char *arch_syscall_resolve_num(const struct arch_def *arch, int num)
> - 	case SCMP_ARCH_MIPS64N32:
> - 	case SCMP_ARCH_MIPSEL64N32:
> - 		return mips64n32_syscall_resolve_num(num);
> -+	case SCMP_ARCH_PPC64:
> -+	case SCMP_ARCH_PPC64LE:
> -+		return ppc64_syscall_resolve_num(num);
> - 	}
> - 
> - 	return NULL;
> -diff --git a/src/python/libseccomp.pxd b/src/python/libseccomp.pxd
> -index 2b50f3f..a546550 100644
> ---- a/src/python/libseccomp.pxd
> -+++ b/src/python/libseccomp.pxd
> -@@ -38,6 +38,8 @@ cdef extern from "seccomp.h":
> -         SCMP_ARCH_MIPSEL
> -         SCMP_ARCH_MIPSEL64
> -         SCMP_ARCH_MIPSEL64N32
> -+        SCMP_ARCH_PPC64
> -+        SCMP_ARCH_PPC64LE
> - 
> -     cdef enum scmp_filter_attr:
> -         SCMP_FLTATR_ACT_DEFAULT
> -diff --git a/src/python/seccomp.pyx b/src/python/seccomp.pyx
> -index d2f7c90..f30a0b6 100644
> ---- a/src/python/seccomp.pyx
> -+++ b/src/python/seccomp.pyx
> -@@ -147,6 +147,7 @@ cdef class Arch:
> -     MIPSEL - MIPS little endian O32 ABI
> -     MIPSEL64 - MIPS little endian 64-bit ABI
> -     MIPSEL64N32 - MIPS little endian N32 ABI
> -+    PPC64 - 64-bit PowerPC
> -     """
> - 
> -     cdef int _token
> -@@ -163,6 +164,8 @@ cdef class Arch:
> -     MIPSEL = libseccomp.SCMP_ARCH_MIPSEL
> -     MIPSEL64 = libseccomp.SCMP_ARCH_MIPSEL64
> -     MIPSEL64N32 = libseccomp.SCMP_ARCH_MIPSEL64N32
> -+    PPC64 = libseccomp.SCMP_ARCH_PPC64
> -+    PPC64 = libseccomp.SCMP_ARCH_PPC64LE
> - 
> -     def __cinit__(self, arch=libseccomp.SCMP_ARCH_NATIVE):
> -         """ Initialize the architecture object.
> -@@ -198,6 +201,10 @@ cdef class Arch:
> -                 self._token = libseccomp.SCMP_ARCH_MIPSEL64
> -             elif arch == libseccomp.SCMP_ARCH_MIPSEL64N32:
> -                 self._token = libseccomp.SCMP_ARCH_MIPSEL64N32
> -+            elif arch == libseccomp.SCMP_ARCH_PPC64:
> -+                self._token = libseccomp.SCMP_ARCH_PPC64
> -+            elif arch == libseccomp.SCMP_ARCH_PPC64LE:
> -+                self._token = libseccomp.SCMP_ARCH_PPC64LE
> -             else:
> -                 self._token = 0;
> -         elif isinstance(arch, basestring):
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch b/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
> deleted file mode 100644
> index 52ae751..0000000
> --- a/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -From 49dd92b85ca1797f2d289f48d3c1cdaec678334b Mon Sep 17 00:00:00 2001
> -From: Joe MacDonald <joe@deserted.net>
> -Date: Mon, 28 Oct 2013 15:40:15 -0400
> -Subject: [PATCH 2/3] tests: install python tests if appropriate
> -
> -Install the python tests in addition to the C tests if python bindings are
> -being built.  The regression script can, and needs to, have the
> -modification of the PYTHONPATH removed since it's unlikely in this
> -scenario that the original source tree will be around at all anymore.
> -This shouldn't be a problem since the library should be installed to the
> -default PYTHONPATH anyway.
> -
> -Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
> -
> -Signed-off-by: Joe MacDonald <joe@deserted.net>
> ----
> - macros.mk      |    3 ++-
> - tests/Makefile |    6 +++++-
> - 2 files changed, 7 insertions(+), 2 deletions(-)
> -
> -diff --git a/macros.mk b/macros.mk
> -index e7c196d..13e7ed3 100644
> ---- a/macros.mk
> -+++ b/macros.mk
> -@@ -221,7 +221,8 @@ INSTALL_REGRESSION_TEST_MACRO += \
> - 		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
> - 			-d "$(INSTALL_TEST_DIR)"; \
> - 		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
> --			regression "$(INSTALL_TEST_DIR)";
> -+			regression "$(INSTALL_TEST_DIR)"; \
> -+		$(SED) -i "/\/..\/src\/python\/build\/lib\./d" "$(INSTALL_TEST_DIR)/regression";
> - 
> - ifeq ($(V),0)
> - 	INSTALL_MAN1_MACRO = \
> -diff --git a/tests/Makefile b/tests/Makefile
> -index 135551c..309a570 100644
> ---- a/tests/Makefile
> -+++ b/tests/Makefile
> -@@ -78,6 +78,10 @@ all: $(TESTS) $(OBJS)
> - 
> - -include $(DEPS_TESTS) $(DEPS_OBJS)
> - 
> -+ifeq ($(CONF_BINDINGS_PYTHON), 1)
> -+	PY_TESTS = $(TESTS:%=%.py)
> -+endif
> -+
> - $(DEPS_TESTS):
> - 	$(MAKEDEP_EXEC)
> - 	$(ADDDEP) $@ ../src/libseccomp.a
> -@@ -92,7 +96,7 @@ $(TEST_PRIVATE): 00-test.c $(OBJS) ../src/libseccomp.a
> - check: $(TESTS)
> - 	./regression
> - 
> --install-tests: $(TESTS) $(TESTS:%=%.tests)
> -+install-tests: $(TESTS) $(TESTS:%=%.tests) $(PY_TESTS)
> - 	$(INSTALL_TEST_MACRO)
> - 	$(INSTALL_REGRESSION_TEST_MACRO)
> - 
> --- 
> -1.7.10.4
> -
> diff --git a/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch b/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
> deleted file mode 100644
> index cd4d6fb..0000000
> --- a/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
> +++ /dev/null
> @@ -1,124 +0,0 @@
> -From 389604a4d7b445e429998599827195751238400a Mon Sep 17 00:00:00 2001
> -From: Joe MacDonald <joe@deserted.net>
> -Date: Mon, 28 Oct 2013 15:40:16 -0400
> -Subject: [PATCH 3/3] tests: introduce alternate test report format
> -
> -Adding an alternate test report format to the regression script.  The
> -output format is modelled on the automake style described here:
> -
> -   http://www.gnu.org/software/automake/manual/automake.html#Simple-Tests
> -
> -and is intended to support integrating the existing test scripts with the
> -Yocto Project's ptest infrastructure:
> -
> -   https://wiki.yoctoproject.org/wiki/Ptest#What_constitutes_a_ptest.3F
> -
> -Currently there was only one use of the existing "INFO" tag in test
> -reporting, used in a way that better fit the "SKIP" model, so update that
> -as well and adjust print_result to handle SKIP and INFO interchangeably so
> -as to minimize the impact of this change on anyone not choosing to use the
> -new report format.
> -
> -Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
> -
> -Signed-off-by: Joe MacDonald <joe@deserted.net>
> ----
> - tests/regression |   35 +++++++++++++++++++++++++++--------
> - 1 file changed, 27 insertions(+), 8 deletions(-)
> -
> -diff --git a/tests/regression b/tests/regression
> -index 3c293a4..a9315f7 100755
> ---- a/tests/regression
> -+++ b/tests/regression
> -@@ -71,7 +71,7 @@ function verify_deps() {
> - function usage() {
> - cat << EOF
> - usage: regression [-h] [-v] [-m MODE] [-a] [-b BATCH_NAME] [-l <LOG>]
> --                  [-s SINGLE_TEST] [-t <TEMP_DIR>] [-T <TEST_TYPE>]
> -+                  [-p] [-s SINGLE_TEST] [-t <TEMP_DIR>] [-T <TEST_TYPE>]
> - 
> - libseccomp regression test automation script
> - optional arguments:
> -@@ -80,6 +80,7 @@ optional arguments:
> -   -a             specifies all tests are to be run
> -   -b BATCH_NAME  specifies batch of tests to be run
> -   -l [LOG]       specifies log file to write test results to
> -+  -p             use automake-style results output (ptest format)
> -   -s SINGLE_TEST specifies individual test number to be run
> -   -t [TEMP_DIR]  specifies directory to create temporary files in
> -   -T [TEST_TYPE] only run tests matching the specified type
> -@@ -127,17 +128,31 @@ function print_data() {
> - #
> - # Arguments:
> - #     1    string containing generated test number
> --#     2    string containing the test result (INFO, SUCCESS, ERROR, or FAILURE)
> -+#     2    string containing the test result (SKIP, INFO, SUCCESS, ERROR, or FAILURE)
> - #     3    string containing addition details
> - #
> - function print_result() {
> --	if [[ $2 == "INFO" && -z $verbose ]]; then
> -+	if [[ $2 == "INFO" || $2 == "SKIP" ]] && [[ -z $verbose ]]; then
> - 		return
> - 	fi
> --	if [[ $3 == "" ]]; then
> --		printf "Test %s result:   %s\n" "$1" "$2" >&$logfd
> -+	if [[ -n $ptest_report ]]; then
> -+		case $2 in
> -+			SUCCESS )
> -+				printf "PASS: %s %s\n" "$1" "$3" >&$logfd
> -+				;;
> -+			ERROR | FAILURE )
> -+				printf "FAIL: %s %s\n" "$1" "$3" >&$logfd
> -+				;;
> -+			SKIP )
> -+				printf "SKIP: %s %s\n" "$1" "$3" >&$logfd
> -+				;;
> -+		esac
> - 	else
> --		printf "Test %s result:   %s %s\n" "$1" "$2" "$3" >&$logfd
> -+		if [[ $3 == "" ]]; then
> -+			printf "Test %s result:   %s\n" "$1" "$2" >&$logfd
> -+		else
> -+			printf "Test %s result:   %s %s\n" "$1" "$2" "$3" >&$logfd
> -+		fi
> - 	fi
> - }
> - 
> -@@ -358,7 +373,7 @@ function run_test_bpf_sim() {
> - 		fi
> - 	elif [[ "$testarch" != "all" ]] && [[ "$testarch" != "$arch" ]]; then
> - 		# only run tests that match the current architecture
> --		print_result $(generate_test_num "$1" $2 1) "INFO" \
> -+		print_result $(generate_test_num "$1" $2 1) "SKIP" \
> - 		       "Test skipped due to test/system architecture difference"
> - 		stats_skipped=$(($stats_skipped+1))
> - 		return
> -@@ -788,13 +803,14 @@ tmpfile=""
> - tmpdir=""
> - type=
> - verbose=
> -+ptest_report=
> - stats_all=0
> - stats_skipped=0
> - stats_success=0
> - stats_failure=0
> - stats_error=0
> - 
> --while getopts "ab:gl:m:s:t:T:vh" opt; do
> -+while getopts "ab:gl:m:ps:t:T:vh" opt; do
> - 	case $opt in
> - 	a)
> - 		runall=1
> -@@ -820,6 +836,9 @@ while getopts "ab:gl:m:s:t:T:vh" opt; do
> - 			exit 1
> - 		esac
> - 		;;
> -+	p)
> -+		ptest_report=1
> -+		;;
> - 	s)
> - 		single_list[single_count]=$OPTARG
> - 		single_count=$(($single_count+1))
> --- 
> -1.7.10.4
> -
> diff --git a/recipes-security/libseccomp/files/0003-tools-add-ppc64-support.patch b/recipes-security/libseccomp/files/0003-tools-add-ppc64-support.patch
> deleted file mode 100644
> index fa56192..0000000
> --- a/recipes-security/libseccomp/files/0003-tools-add-ppc64-support.patch
> +++ /dev/null
> @@ -1,80 +0,0 @@
> -From 21e74cf80be3d55fdfa5600bc99f284b19f75b01 Mon Sep 17 00:00:00 2001
> -From: Paul Moore <pmoore@redhat.com>
> -Date: Fri, 26 Sep 2014 12:50:40 -0400
> -Subject: [PATCH 03/11] tools: add ppc64 support
> -
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - tools/scmp_arch_detect.c | 6 ++++++
> - tools/scmp_bpf_disasm.c  | 4 ++++
> - tools/scmp_bpf_sim.c     | 4 ++++
> - tools/util.c             | 6 ++++++
> - 4 files changed, 20 insertions(+)
> -
> -diff --git a/tools/scmp_arch_detect.c b/tools/scmp_arch_detect.c
> -index 5a87252..d23d2ec 100644
> ---- a/tools/scmp_arch_detect.c
> -+++ b/tools/scmp_arch_detect.c
> -@@ -99,6 +99,12 @@ int main(int argc, char *argv[])
> - 		case SCMP_ARCH_MIPSEL64N32:
> - 			printf("mipsel64n32\n");
> - 			break;
> -+		case SCMP_ARCH_PPC64:
> -+			printf("ppc64\n");
> -+			break;
> -+		case SCMP_ARCH_PPC64LE:
> -+			printf("ppc64le\n");
> -+			break;
> - 		default:
> - 			printf("unknown\n");
> - 		}
> -diff --git a/tools/scmp_bpf_disasm.c b/tools/scmp_bpf_disasm.c
> -index 349b8a8..9199e17 100644
> ---- a/tools/scmp_bpf_disasm.c
> -+++ b/tools/scmp_bpf_disasm.c
> -@@ -334,6 +334,10 @@ int main(int argc, char *argv[])
> - 				arch = AUDIT_ARCH_MIPS64N32;
> - 			else if (strcmp(optarg, "mipsel64n32") == 0)
> - 				arch = AUDIT_ARCH_MIPSEL64N32;
> -+			else if (strcmp(optarg, "ppc64") == 0)
> -+				arch = AUDIT_ARCH_PPC64;
> -+			else if (strcmp(optarg, "ppc64le") == 0)
> -+				arch = AUDIT_ARCH_PPC64LE;
> - 			else
> - 				exit_usage(argv[0]);
> - 			break;
> -diff --git a/tools/scmp_bpf_sim.c b/tools/scmp_bpf_sim.c
> -index bb3a2e7..d3e439f 100644
> ---- a/tools/scmp_bpf_sim.c
> -+++ b/tools/scmp_bpf_sim.c
> -@@ -249,6 +249,10 @@ int main(int argc, char *argv[])
> - 				arch = AUDIT_ARCH_MIPS64N32;
> - 			else if (strcmp(optarg, "mipsel64n32") == 0)
> - 				arch = AUDIT_ARCH_MIPSEL64N32;
> -+			else if (strcmp(optarg, "ppc64") == 0)
> -+				arch = AUDIT_ARCH_PPC64;
> -+			else if (strcmp(optarg, "ppc64le") == 0)
> -+				arch = AUDIT_ARCH_PPC64LE;
> - 			else
> - 				exit_fault(EINVAL);
> - 			break;
> -diff --git a/tools/util.c b/tools/util.c
> -index 9b58bbb..f998009 100644
> ---- a/tools/util.c
> -+++ b/tools/util.c
> -@@ -62,6 +62,12 @@
> - #elif __MIPSEL__
> - #define ARCH_NATIVE		AUDIT_ARCH_MIPSEL64N32
> - #endif /* _MIPS_SIM_NABI32 */
> -+#elif __PPC64__
> -+#ifdef __BIG_ENDIAN__
> -+#define ARCH_NATIVE		AUDIT_ARCH_PPC64
> -+#else
> -+#define ARCH_NATIVE		AUDIT_ARCH_PPC64LE
> -+#endif
> - #else
> - #error the simulator code needs to know about your machine type
> - #endif
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0004-tests-add-ppc64-support-to-the-regression-tests.patch b/recipes-security/libseccomp/files/0004-tests-add-ppc64-support-to-the-regression-tests.patch
> deleted file mode 100644
> index e1d4f41..0000000
> --- a/recipes-security/libseccomp/files/0004-tests-add-ppc64-support-to-the-regression-tests.patch
> +++ /dev/null
> @@ -1,118 +0,0 @@
> -From e7deb140a59c1ca3c4eed5967ba288464f077944 Mon Sep 17 00:00:00 2001
> -From: Paul Moore <pmoore@redhat.com>
> -Date: Fri, 26 Sep 2014 13:14:12 -0400
> -Subject: [PATCH 04/11] tests: add ppc64 support to the regression tests
> -
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - tests/16-sim-arch_basic.c         |  3 +++
> - tests/16-sim-arch_basic.py        |  1 +
> - tests/23-sim-arch_all_le_basic.c  |  3 +++
> - tests/23-sim-arch_all_le_basic.py |  1 +
> - tests/26-sim-arch_all_be_basic.c  |  3 +++
> - tests/26-sim-arch_all_be_basic.py |  1 +
> - tests/regression                  | 10 ++++++++--
> - 7 files changed, 20 insertions(+), 2 deletions(-)
> -
> -diff --git a/tests/16-sim-arch_basic.c b/tests/16-sim-arch_basic.c
> -index 9771913..09df44b 100644
> ---- a/tests/16-sim-arch_basic.c
> -+++ b/tests/16-sim-arch_basic.c
> -@@ -68,6 +68,9 @@ int main(int argc, char *argv[])
> - 	rc = seccomp_arch_add(ctx, SCMP_ARCH_MIPSEL64N32);
> - 	if (rc != 0)
> - 		goto out;
> -+	rc = seccomp_arch_add(ctx, SCMP_ARCH_PPC64LE);
> -+	if (rc != 0)
> -+		goto out;
> - 
> - 	rc = seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 1,
> - 			      SCMP_A0(SCMP_CMP_EQ, STDIN_FILENO));
> -diff --git a/tests/16-sim-arch_basic.py b/tests/16-sim-arch_basic.py
> -index 57a5ac3..d9e1939 100755
> ---- a/tests/16-sim-arch_basic.py
> -+++ b/tests/16-sim-arch_basic.py
> -@@ -39,6 +39,7 @@ def test(args):
> -     f.add_arch(Arch("mipsel"))
> -     f.add_arch(Arch("mipsel64"))
> -     f.add_arch(Arch("mipsel64n32"))
> -+    f.add_arch(Arch("ppc64le"))
> -     f.add_rule(ALLOW, "read", Arg(0, EQ, sys.stdin.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stdout.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stderr.fileno()))
> -diff --git a/tests/23-sim-arch_all_le_basic.c b/tests/23-sim-arch_all_le_basic.c
> -index eeb8556..9f67ed6 100644
> ---- a/tests/23-sim-arch_all_le_basic.c
> -+++ b/tests/23-sim-arch_all_le_basic.c
> -@@ -68,6 +68,9 @@ int main(int argc, char *argv[])
> - 	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("mipsel64n32"));
> - 	if (rc != 0)
> - 		goto out;
> -+	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("ppc64le"));
> -+	if (rc != 0)
> -+		goto out;
> - 
> - 	rc = seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 1,
> - 			      SCMP_A0(SCMP_CMP_EQ, STDIN_FILENO));
> -diff --git a/tests/23-sim-arch_all_le_basic.py b/tests/23-sim-arch_all_le_basic.py
> -index 36ab139..212ff50 100755
> ---- a/tests/23-sim-arch_all_le_basic.py
> -+++ b/tests/23-sim-arch_all_le_basic.py
> -@@ -39,6 +39,7 @@ def test(args):
> -     f.add_arch(Arch("mipsel"))
> -     f.add_arch(Arch("mipsel64"))
> -     f.add_arch(Arch("mipsel64n32"))
> -+    f.add_arch(Arch("ppc64le"))
> -     f.add_rule(ALLOW, "read", Arg(0, EQ, sys.stdin.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stdout.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stderr.fileno()))
> -diff --git a/tests/26-sim-arch_all_be_basic.c b/tests/26-sim-arch_all_be_basic.c
> -index a951b3c..1a44525 100644
> ---- a/tests/26-sim-arch_all_be_basic.c
> -+++ b/tests/26-sim-arch_all_be_basic.c
> -@@ -52,6 +52,9 @@ int main(int argc, char *argv[])
> - 	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("mips64n32"));
> - 	if (rc != 0)
> - 		goto out;
> -+	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("ppc64"));
> -+	if (rc != 0)
> -+		goto out;
> - 
> - 	rc = seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 1,
> - 			      SCMP_A0(SCMP_CMP_EQ, STDIN_FILENO));
> -diff --git a/tests/26-sim-arch_all_be_basic.py b/tests/26-sim-arch_all_be_basic.py
> -index 1347406..cba2dea 100755
> ---- a/tests/26-sim-arch_all_be_basic.py
> -+++ b/tests/26-sim-arch_all_be_basic.py
> -@@ -33,6 +33,7 @@ def test(args):
> -     f.add_arch(Arch("mips"))
> -     f.add_arch(Arch("mips64"))
> -     f.add_arch(Arch("mips64n32"))
> -+    f.add_arch(Arch("ppc64"))
> -     f.add_rule(ALLOW, "read", Arg(0, EQ, sys.stdin.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stdout.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stderr.fileno()))
> -diff --git a/tests/regression b/tests/regression
> -index 428bdf2..3ab6171 100755
> ---- a/tests/regression
> -+++ b/tests/regression
> -@@ -21,8 +21,14 @@
> - # along with this library; if not, see <http://www.gnu.org/licenses>.
> - #
> - 
> --GLBL_ARCH_LE_SUPPORT="x86 x86_64 x32 arm aarch64 mipsel mipsel64 mipsel64n32"
> --GLBL_ARCH_BE_SUPPORT="mips mips64 mips64n32"
> -+GLBL_ARCH_LE_SUPPORT=" \
> -+	x86 x86_64 x32 \
> -+	arm aarch64 \
> -+	mipsel mipsel64 mipsel64n32 \
> -+	ppc64le"
> -+GLBL_ARCH_BE_SUPPORT=" \
> -+	mips mips64 mips64n32 \
> -+	ppc64"
> - 
> - GLBL_SYS_ARCH="../tools/scmp_arch_detect"
> - GLBL_SYS_RESOLVER="../tools/scmp_sys_resolver"
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0005-tests-add-ppc64-support-to-the-regression-live-tests.patch b/recipes-security/libseccomp/files/0005-tests-add-ppc64-support-to-the-regression-live-tests.patch
> deleted file mode 100644
> index 915e000..0000000
> --- a/recipes-security/libseccomp/files/0005-tests-add-ppc64-support-to-the-regression-live-tests.patch
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -From eb47c3f501ebbf9e3b218bb2432d5bdadc04dce1 Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Tue, 10 Feb 2015 11:08:12 +0000
> -Subject: [PATCH 05/11] tests: add ppc64 support to the regression live tests
> -
> -Otherwise The live tests will fail with
> -
> -"ERROR arch ppc64 not supported"
> -
> -Send against the working-ppc64 branch.
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -[PM: added ppc64le]
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - tests/regression | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/tests/regression b/tests/regression
> -index 3ab6171..eeb6cfb 100755
> ---- a/tests/regression
> -+++ b/tests/regression
> -@@ -673,7 +673,7 @@ function run_test_live() {
> - 
> - 	# setup the arch specific return values
> - 	case "$arch" in
> --	x86|x86_64|x32|arm|aarch64)
> -+	x86|x86_64|x32|arm|aarch64|ppc64|ppc64le)
> - 		rc_kill=159
> - 		rc_allow=160
> - 		rc_trap=161
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0006-ppc64-correct-the-ppc64-syscall-table-and-validation.patch b/recipes-security/libseccomp/files/0006-ppc64-correct-the-ppc64-syscall-table-and-validation.patch
> deleted file mode 100644
> index d1903ff..0000000
> --- a/recipes-security/libseccomp/files/0006-ppc64-correct-the-ppc64-syscall-table-and-validation.patch
> +++ /dev/null
> @@ -1,148 +0,0 @@
> -From 75d3aa041dc3c8214610e44d317703c055e5e055 Mon Sep 17 00:00:00 2001
> -From: Paul Moore <pmoore@redhat.com>
> -Date: Tue, 10 Feb 2015 14:22:07 -0500
> -Subject: [PATCH 06/11] ppc64: correct the ppc64 syscall table and validation
> - script
> -
> -We didn't correctly take into account the __powerpc64__ define when
> -generating the ppc64 syscall table.  This patch also updates the
> -syscall table to match Linux v3.19.
> -
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - src/arch-ppc64-syscalls.c | 26 ++++++++++++++------------
> - src/arch-syscall-validate |  2 +-
> - 2 files changed, 15 insertions(+), 13 deletions(-)
> -
> -diff --git a/src/arch-ppc64-syscalls.c b/src/arch-ppc64-syscalls.c
> -index 5dfb367..1c2a1df 100644
> ---- a/src/arch-ppc64-syscalls.c
> -+++ b/src/arch-ppc64-syscalls.c
> -@@ -27,7 +27,7 @@
> - #include "arch.h"
> - #include "arch-ppc64.h"
> - 
> --/* NOTE: based on Linux 3.17-rc6+ */
> -+/* NOTE: based on Linux 3.19 */
> - const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "_llseek", 140 },
> - 	{ "_newselect", 142 },
> -@@ -45,6 +45,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "arch_prctl", __PNR_arch_prctl },
> - 	{ "bdflush", 134 },
> - 	{ "bind", 327 },
> -+	{ "bpf", 361 },
> - 	{ "break", 17 },
> - 	{ "brk", 45 },
> - 	{ "cachectl", __PNR_cachectl },
> -@@ -80,11 +81,12 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "eventfd", 307 },
> - 	{ "eventfd2", 314 },
> - 	{ "execve", 11 },
> -+	{ "execveat", 362 },
> - 	{ "exit", 1 },
> - 	{ "exit_group", 234 },
> - 	{ "faccessat", 298 },
> - 	{ "fadvise64", 233 },
> --	{ "fadvise64_64", 254 },
> -+	{ "fadvise64_64", __PNR_fadvise64_64 },
> - 	{ "fallocate", 309 },
> - 	{ "fanotify_init", 323 },
> - 	{ "fanotify_mark", 324 },
> -@@ -95,7 +97,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "fchown32", __PNR_fchown32 },
> - 	{ "fchownat", 289 },
> - 	{ "fcntl", 55 },
> --	{ "fcntl64", 204 },
> -+	{ "fcntl64", __PNR_fcntl64 },
> - 	{ "fdatasync", 148 },
> - 	{ "fgetxattr", 214 },
> - 	{ "finit_module", 353 },
> -@@ -105,14 +107,14 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "fremovexattr", 220 },
> - 	{ "fsetxattr", 211 },
> - 	{ "fstat", 108 },
> --	{ "fstat64", 197 },
> --	{ "fstatat64", 291 },
> -+	{ "fstat64", __PNR_fstat64 },
> -+	{ "fstatat64", __PNR_fstatat64 },
> - 	{ "fstatfs", 100 },
> - 	{ "fstatfs64", 253 },
> - 	{ "fsync", 118 },
> - 	{ "ftime", 35 },
> - 	{ "ftruncate", 93 },
> --	{ "ftruncate64", 194 },
> -+	{ "ftruncate64", __PNR_ftruncate64 },
> - 	{ "futex", 221 },
> - 	{ "futimesat", 290 },
> - 	{ "get_kernel_syms", 130 },
> -@@ -191,7 +193,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "lseek", 19 },
> - 	{ "lsetxattr", 210 },
> - 	{ "lstat", 107 },
> --	{ "lstat64", 196 },
> -+	{ "lstat64", __PNR_lstat64 },
> - 	{ "madvise", 205 },
> - 	{ "mbind", 259 },
> - 	{ "memfd_create", 360 },
> -@@ -204,7 +206,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "mlock", 150 },
> - 	{ "mlockall", 152 },
> - 	{ "mmap", 90 },
> --	{ "mmap2", 192 },
> -+	{ "mmap2", __PNR_mmap2 },
> - 	{ "modify_ldt", 123 },
> - 	{ "mount", 21 },
> - 	{ "move_pages", 301 },
> -@@ -228,7 +230,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "munmap", 91 },
> - 	{ "name_to_handle_at", 345 },
> - 	{ "nanosleep", 162 },
> --	{ "newfstatat", __PNR_newfstatat },
> -+	{ "newfstatat", 291 },
> - 	{ "nfsservctl", 168 },
> - 	{ "nice", 34 },
> - 	{ "oldfstat", 28 },
> -@@ -315,7 +317,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "semtimedop", __PNR_semtimedop },
> - 	{ "send", 334 },
> - 	{ "sendfile", 186 },
> --	{ "sendfile64", 226 },
> -+	{ "sendfile64", __PNR_sendfile64 },
> - 	{ "sendmmsg", 349 },
> - 	{ "sendmsg", 341 },
> - 	{ "sendto", 335 },
> -@@ -375,7 +377,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "spu_run", 278 },
> - 	{ "ssetmask", 69 },
> - 	{ "stat", 106 },
> --	{ "stat64", 195 },
> -+	{ "stat64", __PNR_stat64 },
> - 	{ "statfs", 99 },
> - 	{ "statfs64", 252 },
> - 	{ "stime", 25 },
> -@@ -411,7 +413,7 @@ const struct arch_syscall_def ppc64_syscall_table[] = { \
> - 	{ "times", 43 },
> - 	{ "tkill", 208 },
> - 	{ "truncate", 92 },
> --	{ "truncate64", 193 },
> -+	{ "truncate64", __PNR_truncate64 },
> - 	{ "tuxcall", 225 },
> - 	{ "ugetrlimit", 190 },
> - 	{ "ulimit", 58 },
> -diff --git a/src/arch-syscall-validate b/src/arch-syscall-validate
> -index eeb4d8b..e28b206 100755
> ---- a/src/arch-syscall-validate
> -+++ b/src/arch-syscall-validate
> -@@ -311,7 +311,7 @@ function dump_lib_mips64n32() {
> - #  Dump the architecture's syscall table to stdout.
> - #
> - function dump_sys_ppc64() {
> --	gcc -E -dM $1/arch/powerpc/include/uapi/asm/unistd.h | \
> -+	gcc -E -dM -D__powerpc64__ $1/arch/powerpc/include/uapi/asm/unistd.h | \
> - 		grep "^#define __NR_" | sort | \
> - 		sed -e 's/#define[ \t]\+__NR_\([a-z0-9_]\+\)[ \t]\+\([0-9]\+\)/\1\t\2/'
> - }
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0007-tests-minor-fix-in-arch-syscall-check.patch b/recipes-security/libseccomp/files/0007-tests-minor-fix-in-arch-syscall-check.patch
> deleted file mode 100644
> index 060f8f7..0000000
> --- a/recipes-security/libseccomp/files/0007-tests-minor-fix-in-arch-syscall-check.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -From 894784b321e088b5a10c2fdd442e7b326daedb7f Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Wed, 11 Feb 2015 10:45:41 +0000
> -Subject: [PATCH 07/11] tests: minor fix in arch-syscall-check
> -
> -Sent against working-ppc64.
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - src/arch-syscall-check.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/src/arch-syscall-check.c b/src/arch-syscall-check.c
> -index dadab0d..a091a6d 100644
> ---- a/src/arch-syscall-check.c
> -+++ b/src/arch-syscall-check.c
> -@@ -96,7 +96,7 @@ int main(int argc, char *argv[])
> - 		syscall_check(str_miss, sys_name, "mips64n32",
> - 			      mips64n32_syscall_iterate_name(i_mips64n32));
> - 		syscall_check(str_miss, sys_name, "ppc64",
> --			      ppc64_syscall_iterate_name(i_mips64n32));
> -+			      ppc64_syscall_iterate_name(i_ppc64));
> - 
> - 		/* output the results */
> - 		printf("%s: ", sys_name);
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0008-arch-add-a-ppc-syscall-table.patch b/recipes-security/libseccomp/files/0008-arch-add-a-ppc-syscall-table.patch
> deleted file mode 100644
> index 30fa449..0000000
> --- a/recipes-security/libseccomp/files/0008-arch-add-a-ppc-syscall-table.patch
> +++ /dev/null
> @@ -1,782 +0,0 @@
> -From 25fc85ba58eba3980649e5bded51816a98cbefc0 Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Wed, 11 Feb 2015 13:23:25 +0000
> -Subject: [PATCH 08/11] arch: add a ppc syscall table
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -[PM: slight reordering of ppc/ppc64 in header files and makefiles]
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - include/seccomp.h.in      |   1 +
> - src/Makefile.am           |   1 +
> - src/arch-ppc-syscalls.c   | 504 ++++++++++++++++++++++++++++++++++++++++++++++
> - src/arch-ppc.c            |  33 +++
> - src/arch-ppc.h            |  38 ++++
> - src/arch-syscall-check.c  |  13 +-
> - src/arch-syscall-dump.c   |   4 +
> - src/arch-syscall-validate |  31 ++-
> - 8 files changed, 623 insertions(+), 2 deletions(-)
> - create mode 100644 src/arch-ppc-syscalls.c
> - create mode 100644 src/arch-ppc.c
> - create mode 100644 src/arch-ppc.h
> -
> -diff --git a/include/seccomp.h.in b/include/seccomp.h.in
> -index 42f3f1a..3af4c2b 100644
> ---- a/include/seccomp.h.in
> -+++ b/include/seccomp.h.in
> -@@ -153,6 +153,7 @@ struct scmp_arg_cmp {
> - /**
> -  * The PowerPC architecture tokens
> -  */
> -+#define SCMP_ARCH_PPC		AUDIT_ARCH_PPC
> - #define SCMP_ARCH_PPC64		AUDIT_ARCH_PPC64
> - #ifndef AUDIT_ARCH_PPC64LE
> - #define AUDIT_ARCH_PPC64LE	(EM_PPC64|__AUDIT_ARCH_64BIT|__AUDIT_ARCH_LE)
> -diff --git a/src/Makefile.am b/src/Makefile.am
> -index 038b2ef..54f8478 100644
> ---- a/src/Makefile.am
> -+++ b/src/Makefile.am
> -@@ -31,6 +31,7 @@ SOURCES_ARCH = \
> - 	arch-mips.h arch-mips.c arch-mips-syscalls.c \
> - 	arch-mips64.h arch-mips64.c arch-mips64-syscalls.c \
> - 	arch-mips64n32.h arch-mips64n32.c arch-mips64n32-syscalls.c \
> -+	arch-ppc.h arch-ppc.c arch-ppc-syscalls.c \
> - 	arch-ppc64.h arch-ppc64.c arch-ppc64-syscalls.c
> - 
> - SOURCES_GEN = \
> -diff --git a/src/arch-ppc-syscalls.c b/src/arch-ppc-syscalls.c
> -new file mode 100644
> -index 0000000..32fc05a
> ---- /dev/null
> -+++ b/src/arch-ppc-syscalls.c
> -@@ -0,0 +1,504 @@
> -+/**
> -+ * Enhanced Seccomp PPC Specific Code
> -+ *
> -+ * Copyright (c) 2015 Freescale <bogdan.purcareata@freescale.com>
> -+ * Author: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#include <string.h>
> -+
> -+#include <seccomp.h>
> -+
> -+#include "arch.h"
> -+#include "arch-ppc.h"
> -+
> -+/* NOTE: based on Linux 3.19 */
> -+const struct arch_syscall_def ppc_syscall_table[] = { \
> -+	{ "_llseek", 140 },
> -+	{ "_newselect", 142 },
> -+	{ "_sysctl", 149 },
> -+	{ "accept", 330 },
> -+	{ "accept4", 344 },
> -+	{ "access", 33 },
> -+	{ "acct", 51 },
> -+	{ "add_key", 269 },
> -+	{ "adjtimex", 124 },
> -+	{ "afs_syscall", 137 },
> -+	{ "alarm", 27 },
> -+	{ "arm_fadvise64_64", __PNR_arm_fadvise64_64 },
> -+	{ "arm_sync_file_range", __PNR_arm_sync_file_range },
> -+	{ "arch_prctl", __PNR_arch_prctl },
> -+	{ "bdflush", 134 },
> -+	{ "bind", 327 },
> -+	{ "bpf", 361 },
> -+	{ "break", 17 },
> -+	{ "brk", 45 },
> -+	{ "cachectl", __PNR_cachectl },
> -+	{ "cacheflush", __PNR_cacheflush },
> -+	{ "capget", 183 },
> -+	{ "capset", 184 },
> -+	{ "chdir", 12 },
> -+	{ "chmod", 15 },
> -+	{ "chown", 181 },
> -+	{ "chown32", __PNR_chown32 },
> -+	{ "chroot", 61 },
> -+	{ "clock_adjtime", 347 },
> -+	{ "clock_getres", 247 },
> -+	{ "clock_gettime", 246 },
> -+	{ "clock_nanosleep", 248 },
> -+	{ "clock_settime", 245 },
> -+	{ "clone", 120 },
> -+	{ "close", 6 },
> -+	{ "connect", 328 },
> -+	{ "creat", 8 },
> -+	{ "create_module", 127 },
> -+	{ "delete_module", 129 },
> -+	{ "dup", 41 },
> -+	{ "dup2", 63 },
> -+	{ "dup3", 316 },
> -+	{ "epoll_create", 236 },
> -+	{ "epoll_create1", 315 },
> -+	{ "epoll_ctl", 237 },
> -+	{ "epoll_ctl_old", __PNR_epoll_ctl_old },
> -+	{ "epoll_pwait", 303 },
> -+	{ "epoll_wait", 238 },
> -+	{ "epoll_wait_old", __PNR_epoll_wait_old },
> -+	{ "eventfd", 307 },
> -+	{ "eventfd2", 314 },
> -+	{ "execve", 11 },
> -+	{ "execveat", 362 },
> -+	{ "exit", 1 },
> -+	{ "exit_group", 234 },
> -+	{ "faccessat", 298 },
> -+	{ "fadvise64", 233 },
> -+	{ "fadvise64_64", 254 },
> -+	{ "fallocate", 309 },
> -+	{ "fanotify_init", 323 },
> -+	{ "fanotify_mark", 324 },
> -+	{ "fchdir", 133 },
> -+	{ "fchmod", 94 },
> -+	{ "fchmodat", 297 },
> -+	{ "fchown", 95 },
> -+	{ "fchown32", __PNR_fchown32 },
> -+	{ "fchownat", 289 },
> -+	{ "fcntl", 55 },
> -+	{ "fcntl64", 204 },
> -+	{ "fdatasync", 148 },
> -+	{ "fgetxattr", 214 },
> -+	{ "finit_module", 353 },
> -+	{ "flistxattr", 217 },
> -+	{ "flock", 143 },
> -+	{ "fork", 2 },
> -+	{ "fremovexattr", 220 },
> -+	{ "fsetxattr", 211 },
> -+	{ "fstat", 108 },
> -+	{ "fstat64", 197 },
> -+	{ "fstatat64", 291 },
> -+	{ "fstatfs", 100 },
> -+	{ "fstatfs64", 253 },
> -+	{ "fsync", 118 },
> -+	{ "ftime", 35 },
> -+	{ "ftruncate", 93 },
> -+	{ "ftruncate64", 194 },
> -+	{ "futex", 221 },
> -+	{ "futimesat", 290 },
> -+	{ "get_kernel_syms", 130 },
> -+	{ "get_mempolicy", 260 },
> -+	{ "get_robust_list", 299 },
> -+	{ "get_thread_area", __PNR_get_thread_area },
> -+	{ "getcpu", 302 },
> -+	{ "getcwd", 182 },
> -+	{ "getdents", 141 },
> -+	{ "getdents64", 202 },
> -+	{ "getegid", 50 },
> -+	{ "getegid32", __PNR_getegid32 },
> -+	{ "geteuid", 49 },
> -+	{ "geteuid32", __PNR_geteuid32 },
> -+	{ "getgid", 47 },
> -+	{ "getgid32", __PNR_getgid32 },
> -+	{ "getgroups", 80 },
> -+	{ "getgroups32", __PNR_getgroups32 },
> -+	{ "getitimer", 105 },
> -+	{ "getpeername", 332 },
> -+	{ "getpgid", 132 },
> -+	{ "getpgrp", 65 },
> -+	{ "getpid", 20 },
> -+	{ "getpmsg", 187 },
> -+	{ "getppid", 64 },
> -+	{ "getpriority", 96 },
> -+	{ "getrandom", 359 },
> -+	{ "getresgid", 170 },
> -+	{ "getresgid32", __PNR_getresgid32 },
> -+	{ "getresuid", 165 },
> -+	{ "getresuid32", __PNR_getresuid32 },
> -+	{ "getrlimit", 76 },
> -+	{ "getrusage", 77 },
> -+	{ "getsid", 147 },
> -+	{ "getsockname", 331 },
> -+	{ "getsockopt", 340 },
> -+	{ "gettid", 207 },
> -+	{ "gettimeofday", 78 },
> -+	{ "getuid", 24 },
> -+	{ "getuid32", __PNR_getuid32 },
> -+	{ "getxattr", 212 },
> -+	{ "gtty", 32 },
> -+	{ "idle", 112 },
> -+	{ "init_module", 128 },
> -+	{ "inotify_add_watch", 276 },
> -+	{ "inotify_init", 275 },
> -+	{ "inotify_init1", 318 },
> -+	{ "inotify_rm_watch", 277 },
> -+	{ "io_cancel", 231 },
> -+	{ "io_destroy", 228 },
> -+	{ "io_getevents", 229 },
> -+	{ "io_setup", 227 },
> -+	{ "io_submit", 230 },
> -+	{ "ioctl", 54 },
> -+	{ "ioperm", 101 },
> -+	{ "iopl", 110 },
> -+	{ "ioprio_get", 274 },
> -+	{ "ioprio_set", 273 },
> -+	{ "ipc", 117 },
> -+	{ "kcmp", 354 },
> -+	{ "kexec_file_load", __PNR_kexec_file_load },
> -+	{ "kexec_load", 268 },
> -+	{ "keyctl", 271 },
> -+	{ "kill", 37 },
> -+	{ "lchown", 16 },
> -+	{ "lchown32", __PNR_lchown32 },
> -+	{ "lgetxattr", 213 },
> -+	{ "link", 9 },
> -+	{ "linkat", 294 },
> -+	{ "listen", 329 },
> -+	{ "listxattr", 215 },
> -+	{ "llistxattr", 216 },
> -+	{ "lock", 53 },
> -+	{ "lookup_dcookie", 235 },
> -+	{ "lremovexattr", 219 },
> -+	{ "lseek", 19 },
> -+	{ "lsetxattr", 210 },
> -+	{ "lstat", 107 },
> -+	{ "lstat64", 196 },
> -+	{ "madvise", 205 },
> -+	{ "mbind", 259 },
> -+	{ "memfd_create", 360 },
> -+	{ "migrate_pages", 258 },
> -+	{ "mincore", 206 },
> -+	{ "mkdir", 39 },
> -+	{ "mkdirat", 287 },
> -+	{ "mknod", 14 },
> -+	{ "mknodat", 288 },
> -+	{ "mlock", 150 },
> -+	{ "mlockall", 152 },
> -+	{ "mmap", 90 },
> -+	{ "mmap2", 192 },
> -+	{ "modify_ldt", 123 },
> -+	{ "mount", 21 },
> -+	{ "move_pages", 301 },
> -+	{ "mprotect", 125 },
> -+	{ "mpx", 56 },
> -+	{ "mq_getsetattr", 267 },
> -+	{ "mq_notify", 266 },
> -+	{ "mq_open", 262 },
> -+	{ "mq_timedreceive", 265 },
> -+	{ "mq_timedsend", 264 },
> -+	{ "mq_unlink", 263 },
> -+	{ "mremap", 163 },
> -+	{ "msgctl", __PNR_msgctl },
> -+	{ "msgget", __PNR_msgget },
> -+	{ "msgrcv", __PNR_msgrcv },
> -+	{ "msgsnd", __PNR_msgsnd },
> -+	{ "msync", 144 },
> -+	{ "multiplexer", 201 },
> -+	{ "munlock", 151 },
> -+	{ "munlockall", 153 },
> -+	{ "munmap", 91 },
> -+	{ "name_to_handle_at", 345 },
> -+	{ "nanosleep", 162 },
> -+	{ "newfstatat", __PNR_newfstatat },
> -+	{ "nfsservctl", 168 },
> -+	{ "nice", 34 },
> -+	{ "oldfstat", 28 },
> -+	{ "oldlstat", 84 },
> -+	{ "oldolduname", 59 },
> -+	{ "oldstat", 18 },
> -+	{ "olduname", 109 },
> -+	{ "oldwait4", __PNR_oldwait4 },
> -+	{ "open", 5 },
> -+	{ "open_by_handle_at", 346 },
> -+	{ "openat", 286 },
> -+	{ "pause", 29 },
> -+	{ "pciconfig_iobase", 200 },
> -+	{ "pciconfig_read", 198 },
> -+	{ "pciconfig_write", 199 },
> -+	{ "perf_event_open", 319 },
> -+	{ "personality", 136 },
> -+	{ "pipe", 42 },
> -+	{ "pipe2", 317 },
> -+	{ "pivot_root", 203 },
> -+	{ "poll", 167 },
> -+	{ "ppoll", 281 },
> -+	{ "prctl", 171 },
> -+	{ "pread64", 179 },
> -+	{ "preadv", 320 },
> -+	{ "prlimit64", 325 },
> -+	{ "process_vm_readv", 351 },
> -+	{ "process_vm_writev", 352 },
> -+	{ "prof", 44 },
> -+	{ "profil", 98 },
> -+	{ "pselect6", 280 },
> -+	{ "ptrace", 26 },
> -+	{ "putpmsg", 188 },
> -+	{ "pwrite64", 180 },
> -+	{ "pwritev", 321 },
> -+	{ "query_module", 166 },
> -+	{ "quotactl", 131 },
> -+	{ "read", 3 },
> -+	{ "readahead", 191 },
> -+	{ "readdir", 89 },
> -+	{ "readlink", 85 },
> -+	{ "readlinkat", 296 },
> -+	{ "readv", 145 },
> -+	{ "reboot", 88 },
> -+	{ "recv", 336 },
> -+	{ "recvfrom", 337 },
> -+	{ "recvmmsg", 343 },
> -+	{ "recvmsg", 342 },
> -+	{ "remap_file_pages", 239 },
> -+	{ "removexattr", 218 },
> -+	{ "rename", 38 },
> -+	{ "renameat", 293 },
> -+	{ "renameat2", 357 },
> -+	{ "request_key", 270 },
> -+	{ "restart_syscall", 0 },
> -+	{ "rmdir", 40 },
> -+	{ "rt_sigaction", 173 },
> -+	{ "rt_sigpending", 175 },
> -+	{ "rt_sigprocmask", 174 },
> -+	{ "rt_sigqueueinfo", 177 },
> -+	{ "rt_sigreturn", 172 },
> -+	{ "rt_sigsuspend", 178 },
> -+	{ "rt_sigtimedwait", 176 },
> -+	{ "rt_tgsigqueueinfo", 322 },
> -+	{ "rtas", 255 },
> -+	{ "sched_get_priority_max", 159 },
> -+	{ "sched_get_priority_min", 160 },
> -+	{ "sched_getaffinity", 223 },
> -+	{ "sched_getattr", 356 },
> -+	{ "sched_getparam", 155 },
> -+	{ "sched_getscheduler", 157 },
> -+	{ "sched_rr_get_interval", 161 },
> -+	{ "sched_setaffinity", 222 },
> -+	{ "sched_setattr", 355 },
> -+	{ "sched_setparam", 154 },
> -+	{ "sched_setscheduler", 156 },
> -+	{ "sched_yield", 158 },
> -+	{ "seccomp", 358 },
> -+	{ "security", __PNR_security },
> -+	{ "select", 82 },
> -+	{ "semctl", __PNR_semctl },
> -+	{ "semget", __PNR_semget },
> -+	{ "semop", __PNR_semop },
> -+	{ "semtimedop", __PNR_semtimedop },
> -+	{ "send", 334 },
> -+	{ "sendfile", 186 },
> -+	{ "sendfile64", 226 },
> -+	{ "sendmmsg", 349 },
> -+	{ "sendmsg", 341 },
> -+	{ "sendto", 335 },
> -+	{ "set_mempolicy", 261 },
> -+	{ "set_robust_list", 300 },
> -+	{ "set_thread_area", __PNR_set_thread_area },
> -+	{ "set_tid_address", 232 },
> -+	{ "setdomainname", 121 },
> -+	{ "setfsgid", 139 },
> -+	{ "setfsgid32", __PNR_setfsgid32 },
> -+	{ "setfsuid", 138 },
> -+	{ "setfsuid32", __PNR_setfsuid32 },
> -+	{ "setgid", 46 },
> -+	{ "setgid32", __PNR_setgid32 },
> -+	{ "setgroups", 81 },
> -+	{ "setgroups32", __PNR_setgroups32 },
> -+	{ "sethostname", 74 },
> -+	{ "setitimer", 104 },
> -+	{ "setns", 350 },
> -+	{ "setpgid", 57 },
> -+	{ "setpriority", 97 },
> -+	{ "setregid", 71 },
> -+	{ "setregid32", __PNR_setregid32 },
> -+	{ "setresgid", 169 },
> -+	{ "setresgid32", __PNR_setresgid32 },
> -+	{ "setresuid", 164 },
> -+	{ "setresuid32", __PNR_setresuid32 },
> -+	{ "setreuid", 70 },
> -+	{ "setreuid32", __PNR_setreuid32 },
> -+	{ "setrlimit", 75 },
> -+	{ "setsid", 66 },
> -+	{ "setsockopt", 339 },
> -+	{ "settimeofday", 79 },
> -+	{ "setuid", 23 },
> -+	{ "setuid32", __PNR_setuid32 },
> -+	{ "setxattr", 209 },
> -+	{ "sgetmask", 68 },
> -+	{ "shmat", __PNR_shmat },
> -+	{ "shmctl", __PNR_shmctl },
> -+	{ "shmdt", __PNR_shmdt },
> -+	{ "shmget", __PNR_shmget },
> -+	{ "shutdown", 338 },
> -+	{ "sigaction", 67 },
> -+	{ "sigaltstack", 185 },
> -+	{ "signal", 48 },
> -+	{ "signalfd", 305 },
> -+	{ "signalfd4", 313 },
> -+	{ "sigpending", 73 },
> -+	{ "sigprocmask", 126 },
> -+	{ "sigreturn", 119 },
> -+	{ "sigsuspend", 72 },
> -+	{ "socket", 326 },
> -+	{ "socketcall", 102 },
> -+	{ "socketpair", 333 },
> -+	{ "splice", 283 },
> -+	{ "spu_create", 279 },
> -+	{ "spu_run", 278 },
> -+	{ "ssetmask", 69 },
> -+	{ "stat", 106 },
> -+	{ "stat64", 195 },
> -+	{ "statfs", 99 },
> -+	{ "statfs64", 252 },
> -+	{ "stime", 25 },
> -+	{ "stty", 31 },
> -+	{ "subpage_prot", 310 },
> -+	{ "swapcontext", 249 },
> -+	{ "swapoff", 115 },
> -+	{ "swapon", 87 },
> -+	{ "symlink", 83 },
> -+	{ "symlinkat", 295 },
> -+	{ "sync", 36 },
> -+	{ "sync_file_range", __PNR_sync_file_range },
> -+	{ "sync_file_range2", 308 },
> -+	{ "syncfs", 348 },
> -+	{ "syscall", __PNR_syscall },
> -+	{ "sys_debug_setcontext", 256 },
> -+	{ "sysfs", 135 },
> -+	{ "sysinfo", 116 },
> -+	{ "syslog", 103 },
> -+	{ "sysmips", __PNR_sysmips },
> -+	{ "tee", 284 },
> -+	{ "tgkill", 250 },
> -+	{ "time", 13 },
> -+	{ "timer_create", 240 },
> -+	{ "timer_delete", 244 },
> -+	{ "timer_getoverrun", 243 },
> -+	{ "timer_gettime", 242 },
> -+	{ "timer_settime", 241 },
> -+	{ "timerfd", __PNR_timerfd },
> -+	{ "timerfd_create", 306 },
> -+	{ "timerfd_gettime", 312 },
> -+	{ "timerfd_settime", 311 },
> -+	{ "times", 43 },
> -+	{ "tkill", 208 },
> -+	{ "truncate", 92 },
> -+	{ "truncate64", 193 },
> -+	{ "tuxcall", 225 },
> -+	{ "ugetrlimit", 190 },
> -+	{ "ulimit", 58 },
> -+	{ "umask", 60 },
> -+	{ "umount", 22 },
> -+	{ "umount2", 52 },
> -+	{ "uname", 122 },
> -+	{ "unlink", 10 },
> -+	{ "unlinkat", 292 },
> -+	{ "unshare", 282 },
> -+	{ "uselib", 86 },
> -+	{ "ustat", 62 },
> -+	{ "utime", 30 },
> -+	{ "utimensat", 304 },
> -+	{ "utimes", 251 },
> -+	{ "vfork", 189 },
> -+	{ "vhangup", 111 },
> -+	{ "vm86", 113 },
> -+	{ "vm86old", __PNR_vm86old },
> -+	{ "vmsplice", 285 },
> -+	{ "vserver", __PNR_vserver },
> -+	{ "wait4", 114 },
> -+	{ "waitid", 272 },
> -+	{ "waitpid", 7 },
> -+	{ "write", 4 },
> -+	{ "writev", 146 },
> -+	{ NULL, __NR_SCMP_ERROR },
> -+};
> -+
> -+/**
> -+ * Resolve a syscall name to a number
> -+ * @param name the syscall name
> -+ *
> -+ * Resolve the given syscall name to the syscall number using the syscall table.
> -+ * Returns the syscall number on success, including negative pseudo syscall
> -+ * numbers; returns __NR_SCMP_ERROR on failure.
> -+ *
> -+ */
> -+int ppc_syscall_resolve_name(const char *name)
> -+{
> -+	unsigned int iter;
> -+	const struct arch_syscall_def *table = ppc_syscall_table;
> -+
> -+	/* XXX - plenty of room for future improvement here */
> -+	for (iter = 0; table[iter].name != NULL; iter++) {
> -+		if (strcmp(name, table[iter].name) == 0)
> -+			return table[iter].num;
> -+	}
> -+
> -+	return __NR_SCMP_ERROR;
> -+}
> -+
> -+/**
> -+ * Resolve a syscall number to a name
> -+ * @param num the syscall number
> -+ *
> -+ * Resolve the given syscall number to the syscall name using the syscall table.
> -+ * Returns a pointer to the syscall name string on success, including pseudo
> -+ * syscall names; returns NULL on failure.
> -+ *
> -+ */
> -+const char *ppc_syscall_resolve_num(int num)
> -+{
> -+	unsigned int iter;
> -+	const struct arch_syscall_def *table = ppc_syscall_table;
> -+
> -+	/* XXX - plenty of room for future improvement here */
> -+	for (iter = 0; table[iter].num != __NR_SCMP_ERROR; iter++) {
> -+		if (num == table[iter].num)
> -+			return table[iter].name;
> -+	}
> -+
> -+	return NULL;
> -+}
> -+
> -+/**
> -+ * Iterate through the syscall table and return the syscall name
> -+ * @param spot the offset into the syscall table
> -+ *
> -+ * Return the syscall name at position @spot or NULL on failure.  This function
> -+ * should only ever be used internally by libseccomp.
> -+ *
> -+ */
> -+const char *ppc_syscall_iterate_name(unsigned int spot)
> -+{
> -+	/* XXX - no safety checks here */
> -+	return ppc_syscall_table[spot].name;
> -+}
> -diff --git a/src/arch-ppc.c b/src/arch-ppc.c
> -new file mode 100644
> -index 0000000..56dbdb4
> ---- /dev/null
> -+++ b/src/arch-ppc.c
> -@@ -0,0 +1,33 @@
> -+/**
> -+ * Enhanced Seccomp PPC Specific Code
> -+ *
> -+ * Copyright (c) 2015 Freescale <bogdan.purcareata@freescale.com>
> -+ * Author: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#include <linux/audit.h>
> -+
> -+#include "arch.h"
> -+#include "arch-ppc.h"
> -+
> -+const struct arch_def arch_def_ppc = {
> -+	.token = SCMP_ARCH_PPC,
> -+	.token_bpf = AUDIT_ARCH_PPC,
> -+	.size = ARCH_SIZE_32,
> -+	.endian = ARCH_ENDIAN_BIG,
> -+};
> -diff --git a/src/arch-ppc.h b/src/arch-ppc.h
> -new file mode 100644
> -index 0000000..627a168
> ---- /dev/null
> -+++ b/src/arch-ppc.h
> -@@ -0,0 +1,38 @@
> -+/**
> -+ * Enhanced Seccomp PPC Specific Code
> -+ *
> -+ * Copyright (c) 2015 Freescale <bogdan.purcareata@freescale.com>
> -+ * Author: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -+ *
> -+ */
> -+
> -+/*
> -+ * This library is free software; you can redistribute it and/or modify it
> -+ * under the terms of version 2.1 of the GNU Lesser General Public License as
> -+ * published by the Free Software Foundation.
> -+ *
> -+ * This library is distributed in the hope that it will be useful, but WITHOUT
> -+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> -+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
> -+ * for more details.
> -+ *
> -+ * You should have received a copy of the GNU Lesser General Public License
> -+ * along with this library; if not, see <http://www.gnu.org/licenses>.
> -+ */
> -+
> -+#ifndef _ARCH_PPC_H
> -+#define _ARCH_PPC_H
> -+
> -+#include <inttypes.h>
> -+
> -+#include "arch.h"
> -+#include "system.h"
> -+
> -+extern const struct arch_def arch_def_ppc;
> -+
> -+int ppc_syscall_resolve_name(const char *name);
> -+const char *ppc_syscall_resolve_num(int num);
> -+
> -+const char *ppc_syscall_iterate_name(unsigned int spot);
> -+
> -+#endif
> -diff --git a/src/arch-syscall-check.c b/src/arch-syscall-check.c
> -index a091a6d..8682483 100644
> ---- a/src/arch-syscall-check.c
> -+++ b/src/arch-syscall-check.c
> -@@ -34,6 +34,7 @@
> - #include "arch-mips64.h"
> - #include "arch-mips64n32.h"
> - #include "arch-ppc64.h"
> -+#include "arch-ppc.h"
> - 
> - /**
> -  * compare the syscall values
> -@@ -69,6 +70,7 @@ int main(int argc, char *argv[])
> - 	int i_mips64 = 0;
> - 	int i_mips64n32 = 0;
> - 	int i_ppc64 = 0;
> -+	int i_ppc = 0;
> - 	const char *sys_name;
> - 	char str_miss[256];
> - 
> -@@ -97,6 +99,8 @@ int main(int argc, char *argv[])
> - 			      mips64n32_syscall_iterate_name(i_mips64n32));
> - 		syscall_check(str_miss, sys_name, "ppc64",
> - 			      ppc64_syscall_iterate_name(i_ppc64));
> -+		syscall_check(str_miss, sys_name, "ppc",
> -+			      ppc_syscall_iterate_name(i_ppc));
> - 
> - 		/* output the results */
> - 		printf("%s: ", sys_name);
> -@@ -125,10 +129,12 @@ int main(int argc, char *argv[])
> - 			i_mips64n32 = -1;
> - 		if (!ppc64_syscall_iterate_name(++i_ppc64))
> - 			i_ppc64 = -1;
> -+		if (!ppc_syscall_iterate_name(++i_ppc))
> -+			i_ppc = -1;
> - 	} while (i_x86_64 >= 0 && i_x32 >= 0 &&
> - 		 i_arm >= 0 && i_aarch64 >= 0 &&
> - 		 i_mips >= 0 && i_mips64 >= 0 && i_mips64n32 >= 0 &&
> --		 i_ppc64 >= 0);
> -+		 i_ppc64 >= 0 && i_ppc >= 0);
> - 
> - 	/* check for any leftovers */
> - 	sys_name = x86_syscall_iterate_name(i_x86 + 1);
> -@@ -176,6 +182,11 @@ int main(int argc, char *argv[])
> - 		       ppc64_syscall_iterate_name(i_ppc64));
> - 		return 1;
> - 	}
> -+	if (i_ppc >= 0) {
> -+		printf("%s: ERROR, ppc has additional syscalls\n",
> -+		       ppc_syscall_iterate_name(i_ppc));
> -+		return 1;
> -+	}
> - 
> - 	/* if we made it here, all is good */
> - 	return 0;
> -diff --git a/src/arch-syscall-dump.c b/src/arch-syscall-dump.c
> -index 985a250..62992e7 100644
> ---- a/src/arch-syscall-dump.c
> -+++ b/src/arch-syscall-dump.c
> -@@ -39,6 +39,7 @@
> - #include "arch-mips64n32.h"
> - #include "arch-aarch64.h"
> - #include "arch-ppc64.h"
> -+#include "arch-ppc.h"
> - 
> - /**
> -  * Print the usage information to stderr and exit
> -@@ -116,6 +117,9 @@ int main(int argc, char *argv[])
> - 		case SCMP_ARCH_PPC64:
> - 			sys_name = ppc64_syscall_iterate_name(iter);
> - 			break;
> -+		case SCMP_ARCH_PPC:
> -+			sys_name = ppc_syscall_iterate_name(iter);
> -+			break;
> - 
> - 		default:
> - 			/* invalid arch */
> -diff --git a/src/arch-syscall-validate b/src/arch-syscall-validate
> -index e28b206..595dfef 100755
> ---- a/src/arch-syscall-validate
> -+++ b/src/arch-syscall-validate
> -@@ -326,6 +326,29 @@ function dump_lib_ppc64() {
> - }
> - 
> - #
> -+# Dump the ppc system syscall table
> -+#
> -+# Arguments:
> -+#     1    path to the kernel source
> -+#
> -+#  Dump the architecture's syscall table to stdout.
> -+#
> -+function dump_sys_ppc() {
> -+	gcc -E -dM $1/arch/powerpc/include/uapi/asm/unistd.h | \
> -+		grep "^#define __NR_" | sort | \
> -+		sed -e 's/#define[ \t]\+__NR_\([a-z0-9_]\+\)[ \t]\+\([0-9]\+\)/\1\t\2/'
> -+}
> -+
> -+#
> -+# Dump the ppc library syscall table
> -+#
> -+#  Dump the library's syscall table to stdout.
> -+#
> -+function dump_lib_ppc() {
> -+	$LIB_SYS_DUMP -a ppc | sed -e '/[^\t]\+\t-[0-9]\+/d'
> -+}
> -+
> -+#
> - # Dump the system syscall table
> - #
> - # Arguments:
> -@@ -363,6 +386,9 @@ function dump_sys() {
> - 	ppc64)
> - 		dump_sys_ppc64 "$2"
> - 		;;
> -+	ppc)
> -+		dump_sys_ppc "$2"
> -+		;;
> - 	*)
> - 		echo ""
> - 		;;
> -@@ -406,6 +432,9 @@ function dump_lib() {
> - 	ppc64)
> - 		dump_lib_ppc64 "$2"
> - 		;;
> -+	ppc)
> -+		dump_lib_ppc "$2"
> -+		;;
> - 	*)
> - 		echo ""
> - 		;;
> -@@ -442,7 +471,7 @@ shift $(($OPTIND - 1))
> - 
> - # defaults
> - if [[ $arches == "" ]]; then
> --	arches="x86 x86_64 x32 arm aarch64 mips mips64 mips64n32 ppc64"
> -+	arches="x86 x86_64 x32 arm aarch64 mips mips64 mips64n32 ppc64 ppc"
> - fi
> - 
> - # sanity checks
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch b/recipes-security/libseccomp/files/0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch
> deleted file mode 100644
> index 5e97ec5..0000000
> --- a/recipes-security/libseccomp/files/0009-arch-add-basic-initial-ppc-support-to-the-arch-depen.patch
> +++ /dev/null
> @@ -1,117 +0,0 @@
> -From c0fa35a2756a1fcedcf4d4a14688226d2a1cd86b Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Wed, 11 Feb 2015 13:23:26 +0000
> -Subject: [PATCH 09/11] arch: add basic initial ppc support to the
> - arch-dependent code
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - src/arch.c                | 11 +++++++++++
> - src/python/libseccomp.pxd |  1 +
> - src/python/seccomp.pyx    |  6 +++++-
> - 3 files changed, 17 insertions(+), 1 deletion(-)
> -
> -diff --git a/src/arch.c b/src/arch.c
> -index 64fc1d1..f73db6b 100644
> ---- a/src/arch.c
> -+++ b/src/arch.c
> -@@ -39,6 +39,7 @@
> - #include "arch-mips64.h"
> - #include "arch-mips64n32.h"
> - #include "arch-ppc64.h"
> -+#include "arch-ppc.h"
> - #include "system.h"
> - 
> - #define default_arg_count_max		6
> -@@ -81,6 +82,8 @@ const struct arch_def *arch_def_native = &arch_def_ppc64;
> - #else
> - const struct arch_def *arch_def_native = &arch_def_ppc64le;
> - #endif
> -+#elif __PPC__
> -+const struct arch_def *arch_def_native = &arch_def_ppc;
> - #else
> - #error the arch code needs to know about your machine type
> - #endif /* machine type guess */
> -@@ -133,6 +136,8 @@ const struct arch_def *arch_def_lookup(uint32_t token)
> - 		return &arch_def_ppc64;
> - 	case SCMP_ARCH_PPC64LE:
> - 		return &arch_def_ppc64le;
> -+	case SCMP_ARCH_PPC:
> -+		return &arch_def_ppc;
> - 	}
> - 
> - 	return NULL;
> -@@ -173,6 +178,8 @@ const struct arch_def *arch_def_lookup_name(const char *arch_name)
> - 		return &arch_def_ppc64;
> - 	else if (strcmp(arch_name, "ppc64le") == 0)
> - 		return &arch_def_ppc64le;
> -+	else if (strcmp(arch_name, "ppc") == 0)
> -+		return &arch_def_ppc;
> - 
> - 	return NULL;
> - }
> -@@ -294,6 +301,8 @@ int arch_syscall_resolve_name(const struct arch_def *arch, const char *name)
> - 	case SCMP_ARCH_PPC64:
> - 	case SCMP_ARCH_PPC64LE:
> - 		return ppc64_syscall_resolve_name(name);
> -+	case SCMP_ARCH_PPC:
> -+		return ppc_syscall_resolve_name(name);
> - 	}
> - 
> - 	return __NR_SCMP_ERROR;
> -@@ -334,6 +343,8 @@ const char *arch_syscall_resolve_num(const struct arch_def *arch, int num)
> - 	case SCMP_ARCH_PPC64:
> - 	case SCMP_ARCH_PPC64LE:
> - 		return ppc64_syscall_resolve_num(num);
> -+	case SCMP_ARCH_PPC:
> -+		return ppc_syscall_resolve_num(num);
> - 	}
> - 
> - 	return NULL;
> -diff --git a/src/python/libseccomp.pxd b/src/python/libseccomp.pxd
> -index a546550..e9c0f6a 100644
> ---- a/src/python/libseccomp.pxd
> -+++ b/src/python/libseccomp.pxd
> -@@ -40,6 +40,7 @@ cdef extern from "seccomp.h":
> -         SCMP_ARCH_MIPSEL64N32
> -         SCMP_ARCH_PPC64
> -         SCMP_ARCH_PPC64LE
> -+        SCMP_ARCH_PPC
> - 
> -     cdef enum scmp_filter_attr:
> -         SCMP_FLTATR_ACT_DEFAULT
> -diff --git a/src/python/seccomp.pyx b/src/python/seccomp.pyx
> -index f30a0b6..2da8c66 100644
> ---- a/src/python/seccomp.pyx
> -+++ b/src/python/seccomp.pyx
> -@@ -148,6 +148,7 @@ cdef class Arch:
> -     MIPSEL64 - MIPS little endian 64-bit ABI
> -     MIPSEL64N32 - MIPS little endian N32 ABI
> -     PPC64 - 64-bit PowerPC
> -+    PPC - 32-bit PowerPC
> -     """
> - 
> -     cdef int _token
> -@@ -165,7 +166,8 @@ cdef class Arch:
> -     MIPSEL64 = libseccomp.SCMP_ARCH_MIPSEL64
> -     MIPSEL64N32 = libseccomp.SCMP_ARCH_MIPSEL64N32
> -     PPC64 = libseccomp.SCMP_ARCH_PPC64
> --    PPC64 = libseccomp.SCMP_ARCH_PPC64LE
> -+    PPC64LE = libseccomp.SCMP_ARCH_PPC64LE
> -+    PPC = libseccomp.SCMP_ARCH_PPC
> - 
> -     def __cinit__(self, arch=libseccomp.SCMP_ARCH_NATIVE):
> -         """ Initialize the architecture object.
> -@@ -205,6 +207,8 @@ cdef class Arch:
> -                 self._token = libseccomp.SCMP_ARCH_PPC64
> -             elif arch == libseccomp.SCMP_ARCH_PPC64LE:
> -                 self._token = libseccomp.SCMP_ARCH_PPC64LE
> -+            elif arch == libseccomp.SCMP_ARCH_PPC:
> -+                self._token = libseccomp.SCMP_ARCH_PPC
> -             else:
> -                 self._token = 0;
> -         elif isinstance(arch, basestring):
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0010-tools-add-ppc-support.patch b/recipes-security/libseccomp/files/0010-tools-add-ppc-support.patch
> deleted file mode 100644
> index 30d7681..0000000
> --- a/recipes-security/libseccomp/files/0010-tools-add-ppc-support.patch
> +++ /dev/null
> @@ -1,70 +0,0 @@
> -From b54dafd62376f9041b4d48e800f39c588554aabc Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Wed, 11 Feb 2015 13:23:27 +0000
> -Subject: [PATCH 10/11] tools: add ppc support
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - tools/scmp_arch_detect.c | 3 +++
> - tools/scmp_bpf_disasm.c  | 2 ++
> - tools/scmp_bpf_sim.c     | 2 ++
> - tools/util.c             | 2 ++
> - 4 files changed, 9 insertions(+)
> -
> -diff --git a/tools/scmp_arch_detect.c b/tools/scmp_arch_detect.c
> -index d23d2ec..03644c6 100644
> ---- a/tools/scmp_arch_detect.c
> -+++ b/tools/scmp_arch_detect.c
> -@@ -105,6 +105,9 @@ int main(int argc, char *argv[])
> - 		case SCMP_ARCH_PPC64LE:
> - 			printf("ppc64le\n");
> - 			break;
> -+		case SCMP_ARCH_PPC:
> -+			printf("ppc\n");
> -+			break;
> - 		default:
> - 			printf("unknown\n");
> - 		}
> -diff --git a/tools/scmp_bpf_disasm.c b/tools/scmp_bpf_disasm.c
> -index 9199e17..d773469 100644
> ---- a/tools/scmp_bpf_disasm.c
> -+++ b/tools/scmp_bpf_disasm.c
> -@@ -338,6 +338,8 @@ int main(int argc, char *argv[])
> - 				arch = AUDIT_ARCH_PPC64;
> - 			else if (strcmp(optarg, "ppc64le") == 0)
> - 				arch = AUDIT_ARCH_PPC64LE;
> -+			else if (strcmp(optarg, "ppc") == 0)
> -+				arch = AUDIT_ARCH_PPC;
> - 			else
> - 				exit_usage(argv[0]);
> - 			break;
> -diff --git a/tools/scmp_bpf_sim.c b/tools/scmp_bpf_sim.c
> -index d3e439f..a53b4fd 100644
> ---- a/tools/scmp_bpf_sim.c
> -+++ b/tools/scmp_bpf_sim.c
> -@@ -253,6 +253,8 @@ int main(int argc, char *argv[])
> - 				arch = AUDIT_ARCH_PPC64;
> - 			else if (strcmp(optarg, "ppc64le") == 0)
> - 				arch = AUDIT_ARCH_PPC64LE;
> -+			else if (strcmp(optarg, "ppc") == 0)
> -+				arch = AUDIT_ARCH_PPC;
> - 			else
> - 				exit_fault(EINVAL);
> - 			break;
> -diff --git a/tools/util.c b/tools/util.c
> -index f998009..b45de3b 100644
> ---- a/tools/util.c
> -+++ b/tools/util.c
> -@@ -68,6 +68,8 @@
> - #else
> - #define ARCH_NATIVE		AUDIT_ARCH_PPC64LE
> - #endif
> -+#elif __PPC__
> -+#define ARCH_NATIVE		AUDIT_ARCH_PPC
> - #else
> - #error the simulator code needs to know about your machine type
> - #endif
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/0011-tests-add-ppc-support-to-the-regression-tests.patch b/recipes-security/libseccomp/files/0011-tests-add-ppc-support-to-the-regression-tests.patch
> deleted file mode 100644
> index 3d02c23..0000000
> --- a/recipes-security/libseccomp/files/0011-tests-add-ppc-support-to-the-regression-tests.patch
> +++ /dev/null
> @@ -1,64 +0,0 @@
> -From 1a68b28e8cc6680dc7a9aecd26e06112b4ff93bf Mon Sep 17 00:00:00 2001
> -From: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Date: Wed, 11 Feb 2015 13:23:28 +0000
> -Subject: [PATCH 11/11] tests: add ppc support to the regression tests
> -
> -Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> -Signed-off-by: Paul Moore <pmoore@redhat.com>
> ----
> - tests/26-sim-arch_all_be_basic.c  | 3 +++
> - tests/26-sim-arch_all_be_basic.py | 1 +
> - tests/regression                  | 4 ++--
> - 3 files changed, 6 insertions(+), 2 deletions(-)
> -
> -diff --git a/tests/26-sim-arch_all_be_basic.c b/tests/26-sim-arch_all_be_basic.c
> -index 1a44525..91fcbea 100644
> ---- a/tests/26-sim-arch_all_be_basic.c
> -+++ b/tests/26-sim-arch_all_be_basic.c
> -@@ -55,6 +55,9 @@ int main(int argc, char *argv[])
> - 	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("ppc64"));
> - 	if (rc != 0)
> - 		goto out;
> -+	rc = seccomp_arch_add(ctx, seccomp_arch_resolve_name("ppc"));
> -+	if (rc != 0)
> -+		goto out;
> - 
> - 	rc = seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 1,
> - 			      SCMP_A0(SCMP_CMP_EQ, STDIN_FILENO));
> -diff --git a/tests/26-sim-arch_all_be_basic.py b/tests/26-sim-arch_all_be_basic.py
> -index cba2dea..1537013 100755
> ---- a/tests/26-sim-arch_all_be_basic.py
> -+++ b/tests/26-sim-arch_all_be_basic.py
> -@@ -34,6 +34,7 @@ def test(args):
> -     f.add_arch(Arch("mips64"))
> -     f.add_arch(Arch("mips64n32"))
> -     f.add_arch(Arch("ppc64"))
> -+    f.add_arch(Arch("ppc"))
> -     f.add_rule(ALLOW, "read", Arg(0, EQ, sys.stdin.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stdout.fileno()))
> -     f.add_rule(ALLOW, "write", Arg(0, EQ, sys.stderr.fileno()))
> -diff --git a/tests/regression b/tests/regression
> -index eeb6cfb..9f0c17e 100755
> ---- a/tests/regression
> -+++ b/tests/regression
> -@@ -28,7 +28,7 @@ GLBL_ARCH_LE_SUPPORT=" \
> - 	ppc64le"
> - GLBL_ARCH_BE_SUPPORT=" \
> - 	mips mips64 mips64n32 \
> --	ppc64"
> -+	ppc64 ppc"
> - 
> - GLBL_SYS_ARCH="../tools/scmp_arch_detect"
> - GLBL_SYS_RESOLVER="../tools/scmp_sys_resolver"
> -@@ -673,7 +673,7 @@ function run_test_live() {
> - 
> - 	# setup the arch specific return values
> - 	case "$arch" in
> --	x86|x86_64|x32|arm|aarch64|ppc64|ppc64le)
> -+	x86|x86_64|x32|arm|aarch64|ppc64|ppc64le|ppc)
> - 		rc_kill=159
> - 		rc_allow=160
> - 		rc_trap=161
> --- 
> -2.3.5
> -
> diff --git a/recipes-security/libseccomp/files/compiler.patch b/recipes-security/libseccomp/files/compiler.patch
> deleted file mode 100644
> index c7f2fbb..0000000
> --- a/recipes-security/libseccomp/files/compiler.patch
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -From fb3e84f6212333949ee3e410bb468bb06c289a1e Mon Sep 17 00:00:00 2001
> -From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
> -Date: Fri, 28 Jun 2013 15:55:13 +0300
> -Subject: [PATCH] libseccomp always used host compiler
> -
> -passing $CC at do_install() doesn't seem to have
> -effect on the compiler used by libseccomp. Modified
> -the compiler manually.
> -
> -Upstream Status: Inapropriate
> -
> -Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
> ----
> - macros.mk |    2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/macros.mk b/macros.mk
> -index 9c62fa7..e219be6 100644
> ---- a/macros.mk
> -+++ b/macros.mk
> -@@ -66,7 +66,7 @@ AWK ?= awk
> - PYTHON ?= /usr/bin/env python
> - 
> - # we require gcc specific functionality
> --GCC ?= gcc
> -+GCC ?= $(CC)
> - 
> - INSTALL ?= install
> - 
> --- 
> -1.7.9.5
> -
> diff --git a/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch b/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch
> deleted file mode 100644
> index 7832ff8..0000000
> --- a/recipes-security/libseccomp/files/regresion_fixup_seq_usage.patch
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Index: git/tests/regression
> -===================================================================
> ---- git.orig/tests/regression
> -+++ git/tests/regression
> -@@ -468,13 +468,13 @@ function run_test_bpf_sim() {
> - 		# and arg ranges and generate/run every combination of requested
> - 		# tests; if no ranges were specifed, then the single test is
> - 		# run
> --		for sys in $(seq -f "%1.0f" $low_syscall $high_syscall); do
> --		for arg0 in $(seq -f "%1.0f" ${low_arg[0]} ${high_arg[0]}); do
> --		for arg1 in $(seq -f "%1.0f" ${low_arg[1]} ${high_arg[1]}); do
> --		for arg2 in $(seq -f "%1.0f" ${low_arg[2]} ${high_arg[2]}); do
> --		for arg3 in $(seq -f "%1.0f" ${low_arg[3]} ${high_arg[3]}); do
> --		for arg4 in $(seq -f "%1.0f" ${low_arg[4]} ${high_arg[4]}); do
> --		for arg5 in $(seq -f "%1.0f" ${low_arg[5]} ${high_arg[5]}); do
> -+		for sys in $(seq  $low_syscall $high_syscall); do
> -+		for arg0 in $(seq ${low_arg[0]} ${high_arg[0]}); do
> -+		for arg1 in $(seq ${low_arg[1]} ${high_arg[1]}); do
> -+		for arg2 in $(seq ${low_arg[2]} ${high_arg[2]}); do
> -+		for arg3 in $(seq ${low_arg[3]} ${high_arg[3]}); do
> -+		for arg4 in $(seq ${low_arg[4]} ${high_arg[4]}); do
> -+		for arg5 in $(seq ${low_arg[5]} ${high_arg[5]}); do
> - 			local -a arg=($arg0 $arg1 $arg2 $arg3 $arg4 $arg5)
> - 
> - 			# Get the generated sub-test num string
> diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
> index b197fca..c131bea 100644
> --- a/recipes-security/libseccomp/libseccomp.bb
> +++ b/recipes-security/libseccomp/libseccomp.bb
> @@ -4,12 +4,11 @@ SECTION = "security"
>  LICENSE = "LGPL-2.1"
>  LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
>  
> -SRCREV = "7f3ae6e6a12390bd38f0787b242f60c47ad076c3"
> +SRCREV = "937e774d8ccfd063a601f49ef46769de3926b62d"
>  
> -PV = "2.2.3+git${SRCPV}"
> +PV = "2.3.1+git${SRCPV}"
>  
> -SRC_URI = "git://github.com/seccomp/libseccomp.git \
> -        "
> +SRC_URI = "git://github.com/seccomp/libseccomp.git"
>  
>  S = "${WORKDIR}/git"
>  
> 

