Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D229E009C5; Tue, 21 Jul 2015 04:51:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9D328E00973
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 04:51:01 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 21 Jul 2015 13:50:59 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 2ECC728E77D;
	Tue, 21 Jul 2015 13:51:00 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 21 Jul 2015 13:50:50 +0200
Message-ID: <1437479450-29920-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] virtual/kernel: defined CGL specific qoriq kernel recipe.
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
X-List-Received-Date: Tue, 21 Jul 2015 11:51:08 -0000
Content-Type: text/plain

The role of this recipe is to differenciate from the already available
recipes and also to try and avoid multipple bbappends kernel
configurations overwrite.
The confusion related to the fact that the work is done either on the BSP
kernel recipe or the CGL configured one is also avoided.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 ...p-inherit-auth-capable-on-INIT-collisions.patch | 41 +++++++++++
 ...erpc-Fix-64-bit-builds-with-binutils-2.24.patch | 80 ++++++++++++++++++++++
 ...t_3.12.bbappend => linux-qoriq-cgl-prt_3.12.bb} |  8 ++-
 3 files changed, 128 insertions(+), 1 deletion(-)
 create mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
 create mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
 rename meta-cgl-fsl-ppc/recipes-kernel/linux/{linux-qoriq-prt_3.12.bbappend => linux-qoriq-cgl-prt_3.12.bb} (80%)

diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
new file mode 100644
index 0000000..7d16535
--- /dev/null
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
@@ -0,0 +1,41 @@
+CVE-2014-5077 Kernel/SCTP: fix a NULL pointer dereference
+
+A NULL pointer dereference flaw was found in the way the
+Linux kernel's Stream Control Transmission Protocol
+(SCTP) implementation handled simultaneous connections
+between the same hosts. A remote attacker could use this
+flaw to crash the system.
+
+Upstream-Status: Backport (from v3.16, commit 1be9a950c646c)
+
+References:
+    - https://access.redhat.com/security/cve/CVE-2014-5077
+    - http://patchwork.ozlabs.org/patch/372475/
+
+Fixes: 730fc3d05cd4 ("[SCTP]: Implete SCTP-AUTH parameter processing")
+Reported-by: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
+Signed-off-by: Daniel Borkmann <dborkman@redhat.com>
+Tested-by: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>
+Cc: Vlad Yasevich <vyasevich@gmail.com>
+Acked-by: Vlad Yasevich <vyasevich@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
+---
+ net/sctp/associola.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/net/sctp/associola.c b/net/sctp/associola.c
+index 9de23a2..06a9ee6 100644
+--- a/net/sctp/associola.c
++++ b/net/sctp/associola.c
+@@ -1097,6 +1097,7 @@ void sctp_assoc_update(struct sctp_association *asoc,
+ 	asoc->c = new->c;
+ 	asoc->peer.rwnd = new->peer.rwnd;
+ 	asoc->peer.sack_needed = new->peer.sack_needed;
++	asoc->peer.auth_capable = new->peer.auth_capable;
+ 	asoc->peer.i = new->peer.i;
+ 	sctp_tsnmap_init(&asoc->peer.tsn_map, SCTP_TSN_MAP_INITIAL,
+ 			 asoc->peer.i.initial_tsn, GFP_ATOMIC);
+-- 
+1.9.1
+
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
new file mode 100644
index 0000000..2fdcc9f
--- /dev/null
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
@@ -0,0 +1,80 @@
+From 7998eb3dc700aaf499f93f50b3d77da834ef9e1d Mon Sep 17 00:00:00 2001
+From: Guenter Roeck <linux@roeck-us.net>
+Date: Thu, 15 May 2014 09:33:42 -0700
+Subject: powerpc: Fix 64 bit builds with binutils 2.24
+
+Upstream-Status: Backport
+
+With binutils 2.24, various 64 bit builds fail with relocation errors
+such as
+
+arch/powerpc/kernel/built-in.o: In function `exc_debug_crit_book3e':
+	(.text+0x165ee): relocation truncated to fit: R_PPC64_ADDR16_HI
+	against symbol `interrupt_base_book3e' defined in .text section
+	in arch/powerpc/kernel/built-in.o
+arch/powerpc/kernel/built-in.o: In function `exc_debug_crit_book3e':
+	(.text+0x16602): relocation truncated to fit: R_PPC64_ADDR16_HI
+	against symbol `interrupt_end_book3e' defined in .text section
+	in arch/powerpc/kernel/built-in.o
+
+The assembler maintainer says:
+
+ I changed the ABI, something that had to be done but unfortunately
+ happens to break the booke kernel code.  When building up a 64-bit
+ value with lis, ori, shl, oris, ori or similar sequences, you now
+ should use @high and @higha in place of @h and @ha.  @h and @ha
+ (and their associated relocs R_PPC64_ADDR16_HI and R_PPC64_ADDR16_HA)
+ now report overflow if the value is out of 32-bit signed range.
+ ie. @h and @ha assume you're building a 32-bit value. This is needed
+ to report out-of-range -mcmodel=medium toc pointer offsets in @toc@h
+ and @toc@ha expressions, and for consistency I did the same for all
+ other @h and @ha relocs.
+
+Replacing @h with @high in one strategic location fixes the relocation
+errors. This has to be done conditionally since the assembler either
+supports @h or @high but not both.
+
+Cc: <stable@vger.kernel.org>
+Signed-off-by: Guenter Roeck <linux@roeck-us.net>
+Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
+
+diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
+index 4c0cedf..ce4c68a 100644
+--- a/arch/powerpc/Makefile
++++ b/arch/powerpc/Makefile
+@@ -150,7 +150,9 @@ endif
+ 
+ CFLAGS-$(CONFIG_TUNE_CELL) += $(call cc-option,-mtune=cell)
+ 
+-KBUILD_CPPFLAGS	+= -Iarch/$(ARCH)
++asinstr := $(call as-instr,lis 9$(comma)foo@high,-DHAVE_AS_ATHIGH=1)
++
++KBUILD_CPPFLAGS	+= -Iarch/$(ARCH) $(asinstr)
+ KBUILD_AFLAGS	+= -Iarch/$(ARCH)
+ KBUILD_CFLAGS	+= -msoft-float -pipe -Iarch/$(ARCH) $(CFLAGS-y)
+ CPP		= $(CC) -E $(KBUILD_CFLAGS)
+diff --git a/arch/powerpc/include/asm/ppc_asm.h b/arch/powerpc/include/asm/ppc_asm.h
+index 6586a40..cded7c1 100644
+--- a/arch/powerpc/include/asm/ppc_asm.h
++++ b/arch/powerpc/include/asm/ppc_asm.h
+@@ -318,11 +318,16 @@ n:
+ 	addi	reg,reg,(name - 0b)@l;
+ 
+ #ifdef __powerpc64__
++#ifdef HAVE_AS_ATHIGH
++#define __AS_ATHIGH high
++#else
++#define __AS_ATHIGH h
++#endif
+ #define LOAD_REG_IMMEDIATE(reg,expr)		\
+ 	lis     reg,(expr)@highest;		\
+ 	ori     reg,reg,(expr)@higher;	\
+ 	rldicr  reg,reg,32,31;		\
+-	oris    reg,reg,(expr)@h;		\
++	oris    reg,reg,(expr)@__AS_ATHIGH;	\
+ 	ori     reg,reg,(expr)@l;
+ 
+ #define LOAD_REG_ADDR(reg,name)			\
+-- 
+cgit v0.10.1
+
diff --git a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
similarity index 80%
rename from meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
rename to meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
index b6aa0b9..8fa27b5 100644
--- a/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-prt_3.12.bbappend
+++ b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb
@@ -1,6 +1,11 @@
 require recipes-kernel/linux/cgl-common.inc
+require recipes-kernel/linux/linux-qoriq.inc
 
-SRC_URI += ""
+SRC_URI = "git://git.freescale.com/ppc/sdk/linux.git;nobranch=1 \
+    file://powerpc-Fix-64-bit-builds-with-binutils-2.24.patch \
+    file://Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch \
+"
+SRCREV = "c29fe1a733308cbe592b3af054a97be1b91cf2dd"
 
 DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
                         cfg/00002-oprofile.cfg \
@@ -27,3 +32,4 @@ DELTA_KERNEL_DEFCONFIG += "cfg/00001-systemtap.cfg \
                         cfg/00026-lm-sensors.cfg \
                         cfg/00027-dmidecode.cfg \
                         "
+
-- 
1.9.1


