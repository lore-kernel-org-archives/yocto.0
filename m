Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB380E00CED; Sun, 18 Mar 2018 23:06:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5827E008D2
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 23:06:00 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id g12so6542682pgs.0
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 23:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=aHhyg/hWbsKd31jKXJBG3mxJVVcO9an2dGrI0Vf9bOI=;
	b=E1wCyJR8bEb3cKynsq6ye9YqKbrRH6WY0ehLEGITKVRHC6MKiymJcHReUAMx0Vibk0
	uErNRcM3A80iW694r2MyhNQ2g2ca1DOTG2Z25LCtxMT7cLU7HvNAlXX0kUuot5FC4/Op
	ZsDZkL8tS33SIUlX06E2vX/Qhsqai25K2ndtThbcAdeaoBhsB8invNOSwi2NYKNw2boy
	a0FaAqqrGl1ilG/z38JZSn9QmfYFZ9VoBcn6wZOFwNokTc8pjN7ZEY0gsO8hmQ/ZySxQ
	hD4haQpfNlWaoEVqW45fOuIyejfGwCSyqNLX57wZOu54uXLWDnMcU1TNZjOdlRwAo85t
	iydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aHhyg/hWbsKd31jKXJBG3mxJVVcO9an2dGrI0Vf9bOI=;
	b=pAy5hh8RhvE8qQKh57tEqGkppacEuEqXK82whEyID2lVE20UQsqM8a/MemjJDNGvvC
	Mk0wkBMhsoMJkIygR7irlqu0/kIL4/jK0U/bFqXmMgrKFunyuwjX9tt4KACSREcNKL53
	nUd/T11k7SKllUp175ScW+09lxxqFPUhURuQuOQqqoP9GVkwjA4aw6vpidcc7HeDRucq
	yBQfnwiLM4nUMrICXb0zmQBxS5piKu0oPTQbFgTWj4/hzjJNRG3aLOY/4FvedYvh0dBS
	r0NXM+fKUiXHdjDlVi1S4JiJX7zs42DcZifYZs15d19qN5GSVq9NC63snL4bEP4Yv69s
	wh5A==
X-Gm-Message-State: AElRT7FhR3jhU6yg41Vc4BG5nFYah9sGayEg+KgNIbMmcBn2AumL5zRI
	VRsTE73kpYeX0TwRqEwiAO0=
X-Google-Smtp-Source: AG47ELvKDQmHXk5nDeUhm00RAPST/pxGjDIMYIf/22x2nqYx1UMTDlzH5KZo3MiLznv0DCmBLKd5Tw==
X-Received: by 10.99.96.79 with SMTP id u76mr7950487pgb.199.1521439560030;
	Sun, 18 Mar 2018 23:06:00 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8880:466c:6245:cbff:fe64:591])
	by smtp.gmail.com with ESMTPSA id
	29sm25507312pfj.40.2018.03.18.23.05.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Mar 2018 23:05:59 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: mark.hatle@windriver.com
Date: Sun, 18 Mar 2018 23:05:51 -0700
Message-Id: <20180319060551.5943-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.16.2
Cc: yocto@yoctoproject.org
Subject: [PATCH V2] prelink: Add RISC-V support
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
X-List-Received-Date: Mon, 19 Mar 2018 06:06:02 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes from v1 to v2:
- Add riscv ldso knowledge
- Rebase on top of staging-master since it needs a patch from there
- Search for riscv64 libs in /lib and /usr/lib

 ChangeLog         |  5 +++++
 src/elf.h         | 25 ++++++++++++++++++++++++-
 src/rtld/dl-tls.c |  5 +++++
 src/rtld/rtld.c   | 14 ++++++++++++++
 4 files changed, 48 insertions(+), 1 deletion(-)

Index: git/ChangeLog
===================================================================
--- git.orig/ChangeLog
+++ git/ChangeLog
@@ -1,3 +1,8 @@
+2018-03-10   Khem Raj <raj.khem@gmail.com>
+	* src/elf.h: Add RISC-V defines
+	* src/rtld/dl-tls.c: Add RISC-V support
+	* src/rtld/rtld.c: Add RISC-V support
+
 2017-06-20   Kyle Russell <bkylerussell@gmail.com>
 	* src/rtld/rtld.c: Add missing DT_NEEDED DSOs to needed_list
 
Index: git/src/elf.h
===================================================================
--- git.orig/src/elf.h
+++ git/src/elf.h
@@ -254,7 +254,8 @@ typedef struct
 #define EM_TILEPRO	188		/* Tilera TILEPro */
 #define EM_MICROBLAZE	189		/* Xilinx MicroBlaze */
 #define EM_TILEGX	191		/* Tilera TILE-Gx */
-#define EM_NUM		192
+#define EM_RISCV	243		/* RISC-V */
+#define EM_NUM		244
 
 /* If it is necessary to assign new unofficial EM_* values, please
    pick large random numbers (0x8523, 0xa7f2, etc.) to minimize the
@@ -3556,6 +3557,28 @@ enum
 
 #define R_TILEGX_NUM		130
 
+/* RISC-V ELF Flags */
+#define EF_RISCV_RVC			0x0001
+#define EF_RISCV_FLOAT_ABI		0x0006
+#define EF_RISCV_FLOAT_ABI_SOFT		0x0000
+#define EF_RISCV_FLOAT_ABI_SINGLE	0x0002
+#define EF_RISCV_FLOAT_ABI_DOUBLE	0x0004
+#define EF_RISCV_FLOAT_ABI_QUAD		0x0006
+
+/* RISC-V relocations.  */
+#define R_RISCV_NONE		0
+#define R_RISCV_32		1
+#define R_RISCV_64		2
+#define R_RISCV_RELATIVE	3
+#define R_RISCV_COPY		4
+#define R_RISCV_JUMP_SLOT	5
+#define R_RISCV_TLS_DTPMOD32	6
+#define R_RISCV_TLS_DTPMOD64	7
+#define R_RISCV_TLS_DTPREL32	8
+#define R_RISCV_TLS_DTPREL64	9
+#define R_RISCV_TLS_TPREL32	10
+#define R_RISCV_TLS_TPREL64	11
+#define R_RISCV_NUM		12
 
 __END_DECLS
 
Index: git/src/rtld/dl-tls.c
===================================================================
--- git.orig/src/rtld/dl-tls.c
+++ git/src/rtld/dl-tls.c
@@ -138,6 +138,11 @@ rtld_determine_tlsoffsets (int e_machine
       tls_tcb_size = 8;
       break;
 
+    case EM_RISCV:
+      tls_dtv_at_tp = 1;
+      tls_tcb_size = 0;
+      break;
+
     default:
       /* Hope there's no TLS!  */
       for (i = 0; i < search_list->r_nlist; i++)
Index: git/src/rtld/rtld.c
===================================================================
--- git.orig/src/rtld/rtld.c
+++ git/src/rtld/rtld.c
@@ -224,6 +224,17 @@ parse_opt (int key, char *arg, struct ar
     * ELF_RTYPE_CLASS_PLT \
    | ((type) == R_MICROBLAZE_COPY) * ELF_RTYPE_CLASS_COPY)
 
+/* From glibc-2.27: sysdeps/riscv/dl-machine.h */
+#define riscv_elf_machine_type_class(type)                      \
+  ((ELF_RTYPE_CLASS_PLT * ((type) == R_RISCV_JUMP_SLOT          \
+     || ((type) == R_RISCV_TLS_DTPREL32)    \
+     || ((type) == R_RISCV_TLS_DTPMOD32)    \
+     || ((type) == R_RISCV_TLS_TPREL32)     \
+     || ((type) == R_RISCV_TLS_DTPREL64)    \
+     || ((type) == R_RISCV_TLS_DTPMOD64)    \
+     || ((type) == R_RISCV_TLS_TPREL64)))   \
+   | (ELF_RTYPE_CLASS_COPY * ((type) == R_RISCV_COPY)))
+
 int
 elf_machine_type_class (int type, int machine)
 {
@@ -254,6 +265,8 @@ elf_machine_type_class (int type, int ma
 	return nios2_elf_machine_type_class(type);
     case EM_MICROBLAZE:
 	return microblaze_elf_machine_type_class(type);
+    case EM_RISCV:
+	return riscv_elf_machine_type_class(type);
 
     default:
       printf ("Unknown architecture!\n");
@@ -296,6 +309,7 @@ machine_no_rela (int machine)
     case EM_SPARCV9:
     case EM_ALTERA_NIOS2:
     case EM_MICROBLAZE:
+    case EM_RISCV:
       return 0;
     default:
       return 1;
@@ -329,6 +343,8 @@ is_ldso_soname (const char *soname)
       || ! strcmp (soname, "ld-linux-aarch64.so.1")
       || ! strcmp (soname, "ld-linux-aarch64_be.so.1")
       || ! strcmp (soname, "ld-linux-nios2.so.1")
+      || ! strcmp (soname, "ld-linux-riscv64-lp64.so.1")
+      || ! strcmp (soname, "ld-linux-riscv64-lp64d.so.1")
      )
     return 1;
   return 0;
@@ -1214,8 +1230,8 @@ main(int argc, char **argv)
 	  goto exit;
 	}
 
-      load_ld_so_conf (gelf_getclass (dso->elf) == ELFCLASS64, 
-		( dso->ehdr.e_machine == EM_MIPS) && ( dso->ehdr.e_flags & EF_MIPS_ABI2 ) );
+      load_ld_so_conf ((gelf_getclass (dso->elf) == ELFCLASS64) && (dso->ehdr.e_machine != EM_RISCV),
+		(dso->ehdr.e_machine == EM_MIPS) && (dso->ehdr.e_flags & EF_MIPS_ABI2));
 
       if (multiple)
 	printf ("%s:\n", argv[remaining]);

