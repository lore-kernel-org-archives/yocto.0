Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ADC7E00948; Mon, 16 Apr 2018 08:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E30D6E00903
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:42 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y69so10661998pfb.5
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=3J6mj2vQ+SktZlkrdPhx7HyaM6Kluo3D5KG5zo1bJMo=;
	b=Zilnp/F4G4oNgujyC1C4Vrjt9R4caiJ5oEtnvAfKhnaacBVCczsqjcBd7ytfcEXXKO
	WLHSZvsTdN3RXUFcnesMiZ4oxdUoJmUK0KTRKOpeznU8KKPoJx38B3MGR112CX9pAmEd
	mlt9m4uRI39PsiGPkxwpEHgjKdfH8yP//cqprwBXxrzIPsxwiSyk5jk60w6z3Sjl2Kv6
	hlU6atoyIZgxA/8N0TcINRxAImro7qgLiXUtuyKPQqffFq3a6cEAY+tg/JrgKkU4JEfx
	UCYlXS8TT4ZfzjbdFP2WL2WVEC3+OMas+7qOvc4dy1dneuWMtPjjhh4lNM/oeUy50iNO
	DwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=3J6mj2vQ+SktZlkrdPhx7HyaM6Kluo3D5KG5zo1bJMo=;
	b=kc7/t+dYWNjHWL2h7HPrIF7xgMsG6dtpxuvxNWAnMOsG29PGSWePo/KUnqU8QXqCC5
	chkTISNOX2vtVuAB4itvD+5eQLYcKgdeP+hoJOQPfddG68F7UWcbOnrRiVmuJXnDU+g2
	wi8hRwuvjTW1oMOXP36fk58WugT9f4iBy5XOyvsmuF3KH3+Ppf2wt8kHBQV5vA42zHgh
	cszJUDjRoZT9Ii66Zs/qQTl6pfp+63mSHaF1KVFIeAZCHLhCkELTip8/x2S4wG4dtXpk
	iVk3BR8k0QLsn8nV9XF9rEFvgHltmrJtCtdWeg9byQlvYun58OcP7WPhLa4L0eMwaf95
	38Rg==
X-Gm-Message-State: ALQs6tC8Ue8sgr7dr9fjwXx0GmZUw6H6R0m9Pkhwdnw0tboYR56jIVdz
	fCKGnR395OJfw354sQMATsYh9A==
X-Google-Smtp-Source: AIpwx487HFZfA5+JkgoIRq8aINtPs2dsKh6N+2eeB5Xo5udoA67otoE1MIaO/huQCNTMsJEpgXrwCA==
X-Received: by 10.99.165.3 with SMTP id n3mr9759423pgf.19.1523891022094;
	Mon, 16 Apr 2018 08:03:42 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id
	f13sm6312238pgt.71.2018.04.16.08.03.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:39 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:30 -0700
Message-Id: <1523891014-31583-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 1/5] meta-cgl-fsl-ppc: drop layer supporting old kernel
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
X-List-Received-Date: Mon, 16 Apr 2018 15:03:44 -0000

This supports 3.12 and is expecting the old meta-fsl-ppc layer

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-fsl-ppc/conf/layer.conf                   | 14 ----
 ...p-inherit-auth-capable-on-INIT-collisions.patch | 41 -----------
 ...erpc-Fix-64-bit-builds-with-binutils-2.24.patch | 80 ----------------------
 .../linux/linux-qoriq-cgl-prt_3.12.bb              | 36 ----------
 4 files changed, 171 deletions(-)
 delete mode 100644 meta-cgl-fsl-ppc/conf/layer.conf
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb

diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
deleted file mode 100644
index dbc6d1c..0000000
--- a/meta-cgl-fsl-ppc/conf/layer.conf
+++ /dev/null
@@ -1,14 +0,0 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH .= ":${LAYERDIR}"
-
-# We have recipes-* directories, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend"
-
-BBFILE_COLLECTIONS += "cgl-fsl-ppc"
-BBFILE_PATTERN_cgl-fsl-ppc = "^${LAYERDIR}/"
-BBFILE_PRIORITY_cgl-fsl-ppc = "7"
-
-LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
-
-LAYERSERIES_COMPAT_cgl-fsl-ppc = "sumo"
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
deleted file mode 100644
index 7d16535..0000000
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-CVE-2014-5077 Kernel/SCTP: fix a NULL pointer dereference
-
-A NULL pointer dereference flaw was found in the way the
-Linux kernel's Stream Control Transmission Protocol
-(SCTP) implementation handled simultaneous connections
-between the same hosts. A remote attacker could use this
-flaw to crash the system.
-
-Upstream-Status: Backport (from v3.16, commit 1be9a950c646c)
-
-References:
-    - https://access.redhat.com/security/cve/CVE-2014-5077
-    - http://patchwork.ozlabs.org/patch/372475/
-
-Fixes: 730fc3d05cd4 ("[SCTP]: Implete SCTP-AUTH parameter processing")
-Reported-by: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
-Signed-off-by: Daniel Borkmann <dborkman@redhat.com>
-Tested-by: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
-Cc: Vlad Yasevich <vyasevich@gmail.com>
-Acked-by: Vlad Yasevich <vyasevich@gmail.com>
-Signed-off-by: David S. Miller <davem@davemloft.net>
-Signed-off-by: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
----
- net/sctp/associola.c | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/net/sctp/associola.c b/net/sctp/associola.c
-index 9de23a2..06a9ee6 100644
---- a/net/sctp/associola.c
-+++ b/net/sctp/associola.c
-@@ -1097,6 +1097,7 @@ void sctp_assoc_update(struct sctp_association *asoc,
- 	asoc->c = new->c;
- 	asoc->peer.rwnd = new->peer.rwnd;
- 	asoc->peer.sack_needed = new->peer.sack_needed;
-+	asoc->peer.auth_capable = new->peer.auth_capable;
- 	asoc->peer.i = new->peer.i;
- 	sctp_tsnmap_init(&asoc->peer.tsn_map, SCTP_TSN_MAP_INITIAL,
- 			 asoc->peer.i.initial_tsn, GFP_ATOMIC);
--- 
-1.9.1
-
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
deleted file mode 100644
index 2fdcc9f..0000000
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From 7998eb3dc700aaf499f93f50b3d77da834ef9e1d Mon Sep 17 00:00:00 2001
-From: Guenter Roeck <linux@roeck-us.net>
-Date: Thu, 15 May 2014 09:33:42 -0700
-Subject: powerpc: Fix 64 bit builds with binutils 2.24
-
-Upstream-Status: Backport
-
-With binutils 2.24, various 64 bit builds fail with relocation errors
-such as
-
-arch/powerpc/kernel/built-in.o: In function `exc_debug_crit_book3e':
-	(.text+0x165ee): relocation truncated to fit: R_PPC64_ADDR16_HI
-	against symbol `interrupt_base_book3e' defined in .text section
-	in arch/powerpc/kernel/built-in.o
-arch/powerpc/kernel/built-in.o: In function `exc_debug_crit_book3e':
-	(.text+0x16602): relocation truncated to fit: R_PPC64_ADDR16_HI
-	against symbol `interrupt_end_book3e' defined in .text section
-	in arch/powerpc/kernel/built-in.o
-
-The assembler maintainer says:
-
- I changed the ABI, something that had to be done but unfortunately
- happens to break the booke kernel code.  When building up a 64-bit
- value with lis, ori, shl, oris, ori or similar sequences, you now
- should use @high and @higha in place of @h and @ha.  @h and @ha
- (and their associated relocs R_PPC64_ADDR16_HI and R_PPC64_ADDR16_HA)
- now report overflow if the value is out of 32-bit signed range.
- ie. @h and @ha assume you're building a 32-bit value. This is needed
- to report out-of-range -mcmodel=medium toc pointer offsets in @toc@h
- and @toc@ha expressions, and for consistency I did the same for all
- other @h and @ha relocs.
-
-Replacing @h with @high in one strategic location fixes the relocation
-errors. This has to be done conditionally since the assembler either
-supports @h or @high but not both.
-
-Cc: <stable@vger.kernel.org>
-Signed-off-by: Guenter Roeck <linux@roeck-us.net>
-Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
-
-diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
-index 4c0cedf..ce4c68a 100644
---- a/arch/powerpc/Makefile
-+++ b/arch/powerpc/Makefile
-@@ -150,7 +150,9 @@ endif
- 
- CFLAGS-$(CONFIG_TUNE_CELL) += $(call cc-option,-mtune=cell)
- 
--KBUILD_CPPFLAGS	+= -Iarch/$(ARCH)
-+asinstr := $(call as-instr,lis 9$(comma)foo@high,-DHAVE_AS_ATHIGH=1)
-+
-+KBUILD_CPPFLAGS	+= -Iarch/$(ARCH) $(asinstr)
- KBUILD_AFLAGS	+= -Iarch/$(ARCH)
- KBUILD_CFLAGS	+= -msoft-float -pipe -Iarch/$(ARCH) $(CFLAGS-y)
- CPP		= $(CC) -E $(KBUILD_CFLAGS)
-diff --git a/arch/powerpc/include/asm/ppc_asm.h b/arch/powerpc/include/asm/ppc_asm.h
-index 6586a40..cded7c1 100644
---- a/arch/powerpc/include/asm/ppc_asm.h
-+++ b/arch/powerpc/include/asm/ppc_asm.h
-@@ -318,11 +318,16 @@ n:
- 	addi	reg,reg,(name - 0b)@l;
- 
- #ifdef __powerpc64__
-+#ifdef HAVE_AS_ATHIGH
-+#define __AS_ATHIGH high
-+#else
-+#define __AS_ATHIGH h
-+#endif
- #define LOAD_REG_IMMEDIATE(reg,expr)		\
- 	lis     reg,(expr)@highest;		\
- 	ori     reg,reg,(expr)@higher;	\
- 	rldicr  reg,reg,32,31;		\
--	oris    reg,reg,(expr)@h;		\
-+	oris    reg,reg,(expr)@__AS_ATHIGH;	\
- 	ori     reg,reg,(expr)@l;
- 
- #define LOAD_REG_ADDR(reg,name)			\
--- 
-cgit v0.10.1
-
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
deleted file mode 100644
index 33c51e2..0000000
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
+++ /dev/null
@@ -1,36 +0,0 @@
-require recipes-kernel/linux/cgl-common.inc
-require recipes-kernel/linux/linux-qoriq.inc
-
-SRC_URI += "git://git.freescale.com/ppc/sdk/linux.git;nobranch=1 \
-    file://powerpc-Fix-64-bit-builds-with-binutils-2.24.patch \
-    file://Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch \
-"
-SRCREV = "c29fe1a733308cbe592b3af054a97be1b91cf2dd"
-DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
-                        cfg/00002-oprofile.cfg \
-                        cfg/00003-lttng.cfg \
-                        cfg/00004-kgdb.cfg \
-                        cfg/00005-quota.cfg \
-                        cfg/00007-device-mapper-multipath.cfg \
-                        cfg/00008-libcgroup.cfg \
-                        cfg/00009-filesystem-acl.cfg \
-                        cfg/00010-ext4.cfg \
-                        cfg/00011-raid-1.cfg \
-                        cfg/00012-hyper-threading.cfg \
-                        cfg/00013-dot1q-vlans.cfg \
-                        cfg/00014-selinux.cfg \
-                        cfg/00015-managing-transient-data.cfg \
-                        cfg/00016-dynamic-probe-insertion-kprobe.cfg \
-                        cfg/00018-ipsec.cfg \
-                        cfg/00019-raid-0.cfg \
-			cfg/00020-kexec.cfg \
-                        cfg/00021-sctp.cfg \
-                        cfg/00022-coredump.cfg \
-                        cfg/00023-open-scsi.cfg \
-                        cfg/00024-ftrace.cfg \
-                        cfg/00025-ipmi.cfg \
-                        cfg/00026-lm-sensors.cfg \
-                        cfg/00027-dmidecode.cfg \
-                        cfg/00028-bonding.cfg \
-                        "
-
-- 
2.7.4


