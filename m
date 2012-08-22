Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3482EE01388
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 02:29:01 -0700 (PDT)
Received: by dadz8 with SMTP id z8so723139dad.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 02:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=+37tAPiy4+cPAOODS6ZyzPOL33YZWwUsH8j0p07XUqU=;
	b=TPg4BNAEa1o1KXVkxDNjcsBBAQyd6IVdrU+vi08z1UF72TYqK871d6vZn/vXYcWYHB
	V/cZRgd3kMbkZPO0CSRVfIUgJl8+Y51i7XRlBdN+3wY9+sqsWRsVItbvBTens9bZXGcv
	65NF1M+QAJVM0amuu7d5KZ8WMrZzJLCm60yHCXJb8oxZj3oCRhxmJTljWHHgqErsO5yS
	fcNaP1q6N0LhXm4pEOzyXsiFeToQ4JIyDL8fR0Hjh+5aDE7ObKhQXS8Q64ebcsstbFM/
	YGvqR4WT8FyQXqVo6bme0Jey5U+h5XmMxVGqEsomAy3wXwHkZF6KK7IpdiU/uIUf7wD4
	zFAQ==
Received: by 10.68.218.163 with SMTP id ph3mr46316060pbc.58.1345627736857;
	Wed, 22 Aug 2012 02:28:56 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id pk9sm3377037pbb.4.2012.08.22.02.28.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Aug 2012 02:28:55 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 22 Aug 2012 02:28:09 -0700
Message-Id: <1345627689-23016-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [linux-yocto-3.2][PATCH] arm: Fix linking errors with binutils 2.23
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Aug 2012 09:29:01 -0000

We end up with linking errors on arm using latest binutils
because we are linking asm generated objects which use -march=all
generating different attributes into object and use some c objects
e.g. misc.o which use different march therefore generating a
different set of attributes into object. When linking is done
the ld complains since it finds incompatible attributes and ends
up with errors like

error: DIV usage mismatch between arch/arm/boot/compressed/head.o and
output
error: DIV usage mismatch between arch/arm/boot/compressed/misc.o and
output
error: DIV usage mismatch between arch/arm/boot/compressed/decompress.o
and output
error: DIV usage mismatch between arch/arm/boot/compressed/lib1funcs.o
and output

This patch fixes it by providing correct march to assembly routines
which than matches with output of ld.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 arch/arm/boot/compressed/Makefile |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 21f56ff..05d9cb3 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -5,7 +5,7 @@
 #
 
 OBJS		=
-
+plus_sec :=	$(call as-instr,.arch_extension sec,+sec)
 # Ensure that MMCIF loader code appears early in the image
 # to minimise that number of bocks that have to be read in
 # order to load it.
@@ -123,7 +123,7 @@ KBUILD_CFLAGS = $(subst -pg, , $(ORIG_CFLAGS))
 endif
 
 ccflags-y := -fpic -fno-builtin -I$(obj)
-asflags-y := -Wa,-march=all
+asflags-y := -Wa,-march=armv7-a$(plus_sec)
 
 # Supply kernel BSS size to the decompressor via a linker symbol.
 KBSS_SZ = $(shell size $(obj)/../../../../vmlinux | awk 'END{print $$3}')
-- 
1.7.9.5


