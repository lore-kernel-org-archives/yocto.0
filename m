Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC10E00E27; Sat, 10 Mar 2018 21:26:22 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7587BE0078F
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 21:26:20 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id e9so5172814pgs.10
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 21:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=3EfCiLJFwlonhy/E2Dwycl/quld1TcqnlZ9aLXa3GhE=;
	b=OLC83g/1+17Q22LSuH9bTrQVjb8Xrl46orCLzkMzPj4EhCej4n4rOAaXWKxg7EhPzO
	I2+S/ivEX6LOQzEPdAxIc+blJD3Q/uCYBB3RMdoqtrhln+C0cvD1g2YZX2DWr1zEgOdC
	TwJZ4VtHnFqgzbpNItKrChG8xWc2AeW1W+JE36VqMSXhayFm8NrtBs49UbsIgNgb8AT8
	xBLJy2smmBgh0XDWY/FNrqum4GfA+BaMLqFvOZEsLJASOsKwkERCddVclJz1+C6TxDvr
	010pEdjmg85VkVmavgbEoP4EaAp7fmuoBovY3fUU0u9f3krfA4rua6pVf8G1sItZ6BN7
	egAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3EfCiLJFwlonhy/E2Dwycl/quld1TcqnlZ9aLXa3GhE=;
	b=aS8NWlk9TiBevbwnnKGh0nNLWGt1F/qXTorHT2fG2vUfxOr59BNDxkmOBO0AF2/xHZ
	V4DAbDMknG6UhEAF7N4e3Yv4xn3DsPr0l780fAVDBZrQuVvd39/9QD7qBPqjI2mVRBx8
	5u6kODeIwKkEpg3TYkWmS4EkRDsd0MW+69x0ioRLn2Xou+aZfSu2/rhvJ1b1TT0x4Rzf
	kfrIx8rszQN/24PYFG1MaR1mul56rrHpAA6Jkd658dK3PxIvVI619UgclTQa4kL42ZKG
	TI7crqlW8kFmlqxK+6nqiWEbCOF+eSpIYijUxSyDmARtpZGpo4yOMT3cwCntcyJX/u5D
	ZlOA==
X-Gm-Message-State: AElRT7G7p789/2dch+3wp5HXAPBq4epXxJ+jvrldeKtm/UfkOMfzN2VN
	iL6EYVusSRPAuisJnCZOLPs=
X-Google-Smtp-Source: AG47ELtGtHx0Yt+xWozRlM/Rx2cl6xc5MiI7bOgG401le8HxBWYQ3VG6JtA4+RBDP9gx4p++uUVicg==
X-Received: by 10.98.224.65 with SMTP id f62mr3873528pfh.191.1520745980440;
	Sat, 10 Mar 2018 21:26:20 -0800 (PST)
Received: from localhost.localdomain ([2601:646:8880:466c:6245:cbff:fe64:591])
	by smtp.gmail.com with ESMTPSA id
	q66sm10228496pfi.95.2018.03.10.21.26.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 10 Mar 2018 21:26:19 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: mark.hatle@windriver.com
Date: Sat, 10 Mar 2018 21:26:11 -0800
Message-Id: <20180311052611.7904-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.16.2
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] prelink: Add RISC-V support
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
X-List-Received-Date: Sun, 11 Mar 2018 05:26:22 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ChangeLog         |  5 +++++
 src/elf.h         | 25 ++++++++++++++++++++++++-
 src/rtld/dl-tls.c |  5 +++++
 src/rtld/rtld.c   | 14 ++++++++++++++
 4 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/ChangeLog b/ChangeLog
index c72dca8..4487026 100644
--- a/ChangeLog
+++ b/ChangeLog
@@ -1,3 +1,8 @@
+2018-03-10   Khem Raj <raj.khem@gmail.com>
+	* src/elf.h: Add RISC-V defines
+	* src/rtld/dl-tls.c: Add RISC-V support
+	* src/rtld/rtld.c: Add RISC-V support
+
 2017-06-20   Mark Hatle <mark.hatle@windriver.com>
 	* doc/Makefile.am: Disable automatic generation of prelink.pdf
 
diff --git a/src/elf.h b/src/elf.h
index fbadda4..dbd6170 100644
--- a/src/elf.h
+++ b/src/elf.h
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
 
diff --git a/src/rtld/dl-tls.c b/src/rtld/dl-tls.c
index 2da6bc5..280cee4 100644
--- a/src/rtld/dl-tls.c
+++ b/src/rtld/dl-tls.c
@@ -138,6 +138,11 @@ rtld_determine_tlsoffsets (int e_machine, struct r_scope_elem *search_list)
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
diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
index 3196981..2fc355b 100644
--- a/src/rtld/rtld.c
+++ b/src/rtld/rtld.c
@@ -224,6 +224,17 @@ parse_opt (int key, char *arg, struct argp_state *state)
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
@@ -254,6 +265,8 @@ elf_machine_type_class (int type, int machine)
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
-- 
2.16.2


