Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA67EE00AD8; Fri, 30 Oct 2015 00:01:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 604 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Oct 2015 00:01:11 PDT
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA535E00ABE
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 00:01:11 -0700 (PDT)
Received: from epcpsbgr3.samsung.com
	(u143.gpu120.samsung.co.kr [203.254.230.143])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NX001TDATP64XC0@mailout3.samsung.com> for
	yocto@yoctoproject.org; Fri, 30 Oct 2015 15:51:06 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.124])
	by epcpsbgr3.samsung.com (EPCPMTA) with SMTP id 1A.66.05284.95313365;
	Fri, 30 Oct 2015 15:51:06 +0900 (KST)
X-AuditID: cbfee68f-f796f6d0000014a4-6b-5633135a7c9e
Received: from epmmp2 ( [203.254.227.17])	by epcpsbgm1new.samsung.com (EPCPMTA)
	with SMTP id 1F.2D.23663.95313365; Fri, 30 Oct 2015 15:51:05 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp2.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NX000C5JTOCHJS0@mmp2.samsung.com>;
	Fri, 30 Oct 2015 15:51:05 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Fri, 30 Oct 2015 12:20:19 +0530
Message-id: <1446187819-28223-1-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHLMWRmVeSWpSXmKPExsWyRsSkRjdK2DjM4M8uDosXryawWDy4cJXJ
	ou3tTzaLw/PbWCw2PT/IYnHvzVYmi0Mn5zJaTHq5hs2Bw6NvyypGj/VbtjJ5tJ/oYwtgjuKy
	SUnNySxLLdK3S+DKODLxMFPBknmMFUdOGzQwNlZ2MXJwSAiYSOy9z9fFyAlkiklcuLeerYuR
	i0NIYAWjxPfJX5ghEiYSP872M0IkZjFKLNm8hgXC+ckosXfNSlaQKjYBPYlVu/awgEwVEZCR
	eP2NC6SGWeA0o8TTzU/AJgkLGEv0v5sMVs8ioCrR//M+I4jNK+Au8XPWVnaIixQk5kyyAemV
	EPjPJjHv5zmoegGJb5MPsUDUyEpsOgB1nKTEwRU3WCYwCi5gZFjFKJpakFxQnJReZKxXnJhb
	XJqXrpecn7uJERisp/8969/BePeA9SFGAQ5GJR7egGSjMCHWxLLiytxDjKZAGyYyS4km5wNj
	Iq8k3tDYzMjC1MTU2Mjc0kxJnHeh1M9gIYH0xJLU7NTUgtSi+KLSnNTiQ4xMHJxSDYxhN3nt
	N5TPeCP18v/+mHDWuHLvG9+satpY//CGblaR2tfT7zJtcmHQrJkXpW3f/r1S3HSoQ0Zpv0at
	RdCNS7/lm11+BBkq1d79Nj9msVvuJjUfPZ/AaO2/d3e/CMrPe9RVd3Dp2T+l871OtPmem5X/
	WXDB8pVOs+XEH2Tq3urr/Jt90zwl97oSS3FGoqEWc1FxIgCevGk0UQIAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphkeLIzCtJLcpLzFFi42I5/e+xoG6ksHGYwbFjVhYvXk1gsXhw4SqT
	Rdvbn2wWh+e3sVhsen6QxeLem61MFodOzmW0mPRyDZsDh0ffllWMHuu3bGXyaD/RxxbAHNXA
	aJORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkDdIOSQlli
	TilQKCCxuFhJ3w7ThNAQN10LmMYIXd+QILgeIwM0kLCGMePIxMNMBUvmMVYcOW3QwNhY2cXI
	ySEhYCLx42w/I4QtJnHh3nq2LkYuDiGBWYwSSzavYYFwfjJK7F2zkhWkik1AT2LVrj1ACQ4O
	EQEZidffuEBqmAVOM0o83fyEGaRGWMBYov/dZLB6FgFVif6f98E28Aq4S/yctZUdpFdCQEFi
	ziSbCYzcCxgZVjFKpBYkFxQnpeca5qWW6xUn5haX5qXrJefnbmIEx8QzqR2MB3e5H2IU4GBU
	4uH9kWAUJsSaWFZcmXuIUYKDWUmE9/cloBBvSmJlVWpRfnxRaU5q8SFGU6D9E5mlRJPzgfGa
	VxJvaGxibmpsamliYWJmqSTOq+8J1CSQnliSmp2aWpBaBNPHxMEp1cBolCMiffui3WurX0Gb
	d8x3/iS2q/BD/aHlm+Uex2cKOLg6Mch5SF9usPs5RbhPNlTo7IL9Z9dWB6yZc2/hGfZAV71Z
	72d+7BXOSnE5sKJT+bru5+v9BcEGxQ6Tgg+YWgUwJF4t9nGWWCz0rCQ77djdxsYz5rtbUtW+
	ztgisOOLEUdaqu1Go5VKLMUZiYZazEXFiQDTwY7PnwIAAA==
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>, hakbong5.lee@samsung.com,
	yocto@yoctoproject.org, doha.hwang@samsung.com,
	ajeet.y@samsung.com, Maninder Singh <maninder1.s@samsung.com>,
	pankaj.m@samsung.com
Subject: [PATCH 1/1] prelink: AARCH64 support added
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
X-List-Received-Date: Fri, 30 Oct 2015 07:01:16 -0000

This patch adds support for prelinking in AARCH64.
To run prelink on successfully on target following changes are done
1. aarch64/dl-machine.h: Fix load-address for prelink support 
	 https://sourceware.org/ml/libc-alpha/2015-10/msg00575.html
2. To handle relocation R_AARCH64_TLSDESC, Conflicts are raised for 
   R_AARCH64_TLSDESC. 
   Conflicts of relocation type R_AARCH64_TLSDESC is handled by 
   _dl_tlsdesc_undefweak which return the addend minus the thread pointer.
   Hacked _dl_tlsdesc_undefweak to return addend only. Need to Fix this hack.

Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
---
 trunk/src/Makefile.am    |    2 +-
 trunk/src/arch-aarch64.c |  594 ++++++++++++++++++++++++++++++++++++++++++++++
 trunk/src/dso.c          |    1 +
 3 files changed, 596 insertions(+), 1 deletions(-)
 create mode 100644 trunk/src/arch-aarch64.c

diff --git a/trunk/src/Makefile.am b/trunk/src/Makefile.am
index 7372fc1..d6cc5cb 100644
--- a/trunk/src/Makefile.am
+++ b/trunk/src/Makefile.am
@@ -24,7 +24,7 @@ bin_PROGRAMS = execstack
 
 arch_SOURCES = arch-i386.c arch-alpha.c arch-ppc.c arch-ppc64.c \
 	       arch-sparc.c arch-sparc64.c arch-x86_64.c arch-mips.c \
-	       arch-s390.c arch-s390x.c arch-arm.c arch-sh.c arch-ia64.c
+	       arch-s390.c arch-s390x.c arch-arm.c arch-sh.c arch-ia64.c arch-aarch64.c
 common_SOURCES = checksum.c data.c dso.c dwarf2.c dwarf2.h fptr.c fptr.h     \
 		 hashtab.c hashtab.h mdebug.c prelink.h stabs.c crc32.c      \
 		 wrap-file.c canonicalize.c reloc-info.c reloc-info.h
diff --git a/trunk/src/arch-aarch64.c b/trunk/src/arch-aarch64.c
new file mode 100644
index 0000000..13713b2
--- /dev/null
+++ b/trunk/src/arch-aarch64.c
@@ -0,0 +1,594 @@
+/* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2009 Red Hat, Inc.
+   Written by Jakub Jelinek <jakub@redhat.com>, 2001.
+   Copyright (C) 2015 Samsung Electronics Co., Ltd. All rights reserved.
+   ARM64 support by Vaneet Narang <v.narang@samsung.com>
+
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 2, or (at your option)
+   any later version.
+
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software Foundation,
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+
+#include <config.h>
+#include <assert.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <stdio.h>
+#include <string.h>
+#include <locale.h>
+#include <error.h>
+#include <argp.h>
+#include <stdlib.h>
+
+#include "prelink.h"
+
+/* The aarch64 ABI: http://infocenter.arm.com/help/topic/com.arm.doc.ihi0056b/IHI0056B_aaelf64.pdf
+ * documents a "class" value for specific reads and writes.  All this
+ * indicates is that we should be using the ELFCLASS to determine if
+ * this should be a 32/64 bit read/write.  (See table 4.9)
+ *
+ * We emulate this behavior below...
+ */
+#define read_uneclass(DSO, ADDR) \
+( gelf_getclass(DSO->elf) == ELFCLASS32 ? read_une32(DSO, ADDR) : read_une64(DSO, ADDR) )
+
+#define write_neclass(DSO, ADDR, VAL) \
+( gelf_getclass(DSO->elf) == ELFCLASS32 ? write_ne32(DSO, ADDR, VAL) : write_ne64(DSO, ADDR, VAL) )
+
+#define buf_write_neclass(DSO, BUF, VAL) \
+( gelf_getclass(DSO->elf) == ELFCLASS32 ? buf_write_ne32(DSO, BUF, VAL) : buf_write_ne64(DSO, BUF, VAL) )
+
+static int
+aarch64_adjust_dyn (DSO *dso, int n, GElf_Dyn *dyn, GElf_Addr start,
+		   GElf_Addr adjust)
+{
+int testec = addr_to_sec (dso, dyn->d_un.d_ptr);
+  if (dyn->d_tag == DT_PLTGOT)
+    {
+      int sec = addr_to_sec (dso, dyn->d_un.d_ptr);
+      Elf64_Addr data;
+
+      if (sec == -1)
+	return 0;
+
+      data = read_une64 (dso, dyn->d_un.d_ptr);
+      /* If .got.plt[0] points to _DYNAMIC, it needs to be adjusted.  */
+      if (data == dso->shdr[n].sh_addr && data >= start)
+	write_ne64 (dso, dyn->d_un.d_ptr, data + adjust);
+
+/* AARCH64 Hack  start
+ *
+ * .got section entry is missing in .dynamic section
+ * .got section is previous to .got.plt section.
+ */
+	data = read_une64 (dso, dso->shdr[sec - 1].sh_addr);
+      if (data == dso->shdr[n].sh_addr && data >= start)
+	write_ne64 (dso, dso->shdr[sec - 1].sh_addr, data + adjust);
+/* AARCH64 Hack  end*/	
+
+      data = read_une64 (dso, dyn->d_un.d_ptr + 8);
+      /* If .got.plt[1] points to .plt + 0x16, it needs to be adjusted.  */
+      if (data && data >= start)
+	{
+	  int i;
+
+	  for (i = 1; i < dso->ehdr.e_shnum; i++)
+	    if (data == dso->shdr[i].sh_addr 
+		&& dso->shdr[i].sh_type == SHT_PROGBITS
+		&& strcmp (strptr (dso, dso->ehdr.e_shstrndx,
+					dso->shdr[i].sh_name), ".plt") == 0)
+	      {
+		write_ne64 (dso, dyn->d_un.d_ptr + 8, data + adjust);
+		break;
+	      }
+	}
+    }
+  return 0;
+}
+
+static int
+aarch64_adjust_rel (DSO *dso, GElf_Rel *rel, GElf_Addr start,
+		   GElf_Addr adjust)
+{
+  error (0, 0, "%s: aarch64 doesn't support REL relocs", dso->filename);
+  return 1;
+}
+
+static int
+aarch64_adjust_rela (DSO *dso, GElf_Rela *rela, GElf_Addr start,
+		    GElf_Addr adjust)
+{
+  Elf64_Addr addr;
+
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_RELATIVE:
+      if (rela->r_addend >= start)
+	{
+	  if (read_uneclass (dso, rela->r_offset) == rela->r_addend)
+	    write_neclass (dso, rela->r_offset, rela->r_addend + adjust);
+	  rela->r_addend += adjust;
+	}
+      break;
+    case R_AARCH64_IRELATIVE:
+      if (rela->r_addend >= start)
+	rela->r_addend += adjust;
+      /* FALLTHROUGH */
+    case R_AARCH64_JUMP_SLOT:
+      addr = read_uneclass (dso, rela->r_offset);
+      if (addr >= start)
+	write_neclass (dso, rela->r_offset, addr + adjust);
+      break;
+    }
+  return 0;
+}
+
+static int
+aarch64_prelink_rel (struct prelink_info *info, GElf_Rel *rel, GElf_Addr reladdr)
+{
+  error (0, 0, "%s: AARCH64 doesn't support REL relocs", info->dso->filename);
+  return 1;
+}
+
+static int
+aarch64_prelink_rela (struct prelink_info *info, GElf_Rela *rela,
+		     GElf_Addr relaaddr)
+{
+  DSO *dso;
+  GElf_Addr value;
+  Elf64_Addr val;
+
+  dso = info->dso;
+  if (GELF_R_TYPE (rela->r_info) == R_AARCH64_NONE
+      || GELF_R_TYPE (rela->r_info) == R_AARCH64_IRELATIVE)
+    return 0;
+  else if (GELF_R_TYPE (rela->r_info) == R_AARCH64_RELATIVE)
+    {
+      write_neclass (dso, rela->r_offset, rela->r_addend);
+      return 0;
+    }
+  value = info->resolve (info, GELF_R_SYM (rela->r_info),
+			 GELF_R_TYPE (rela->r_info));
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_GLOB_DAT:
+    case R_AARCH64_JUMP_SLOT:
+      write_neclass (dso, rela->r_offset, value + rela->r_addend);
+      break;
+    case R_AARCH64_ABS64:
+      write_ne64 (dso, rela->r_offset, value + rela->r_addend);
+      break;
+    case R_AARCH64_ABS32:
+      write_ne32 (dso, rela->r_offset, value + rela->r_addend);
+      break;
+	case R_AARCH64_TLS_TPREL64:
+		if (dso->ehdr.e_type == ET_EXEC && info->resolvetls)
+        write_neclass (dso, rela->r_offset,
+                    value + rela->r_addend + info->resolvetls->offset);
+      break;
+	case R_AARCH64_TLSDESC:
+      if (!dso->info_DT_TLSDESC_PLT)
+        {
+          error (0, 0,
+         "%s: Unsupported R_AARCH64_TLSDESC relocation in non-lazily bound object.",
+                 dso->filename);
+          return 1;
+        }
+      val = read_uneclass (dso, rela->r_offset);
+      if (val != 0 && !dynamic_info_is_set (dso, DT_GNU_PRELINKED_BIT))
+        {
+          error (0, 0,
+         "%s: Unexpected non-zero value (0x%x) in R_AARCH64_TLSDESC?",
+                 dso->filename, val);
+          return 1;
+        }
+      write_neclass (dso, rela->r_offset, dso->info_DT_TLSDESC_PLT);
+      break;
+	case R_AARCH64_TLS_DTPREL64:
+		if (dso->ehdr.e_type == ET_EXEC && info->resolvetls)
+        write_neclass (dso, rela->r_offset,
+                    value + rela->r_addend);
+		break;
+    case R_AARCH64_TLS_DTPMOD64:
+      if (dso->ehdr.e_type == ET_EXEC)
+        {
+          error (0, 0, "%s: R_AARCH64_TLS_DTPMOD64 reloc in executable?",
+                 dso->filename);
+          return 1;
+        }
+      break;
+    case R_AARCH64_COPY:
+      if (dso->ehdr.e_type == ET_EXEC)
+	/* COPY relocs are handled specially in generic code.  */
+	return 0;
+      error (0, 0, "%s: R_AARCH64_COPY reloc in shared library?", dso->filename);
+      return 1;
+    default:
+      error (0, 0, "%s: Unknown AARCH64 relocation type %d", dso->filename,
+	     (int) GELF_R_TYPE (rela->r_info));
+      return 1;
+    }
+  return 0;
+}
+
+static int
+aarch64_apply_conflict_rela (struct prelink_info *info, GElf_Rela *rela,
+			    char *buf, GElf_Addr dest_addr)
+{
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_GLOB_DAT:
+    case R_AARCH64_JUMP_SLOT:
+    case R_AARCH64_ABS64:
+      buf_write_neclass (info->dso, buf, rela->r_addend);
+      break;
+    case R_AARCH64_ABS32:
+      buf_write_ne32 (info->dso, buf, rela->r_addend);
+      break;
+    default:
+      abort ();
+    }
+  return 0;
+
+}
+
+static int
+aarch64_apply_rel (struct prelink_info *info, GElf_Rel *rel, char *buf)
+{
+  error (0, 0, "%s: AARCH64 doesn't support REL relocs", info->dso->filename);
+  return 1;
+}
+
+static int
+aarch64_apply_rela (struct prelink_info *info, GElf_Rela *rela, char *buf)
+{
+  GElf_Addr value;
+
+  value = info->resolve (info, GELF_R_SYM (rela->r_info),
+			 GELF_R_TYPE (rela->r_info));
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_NONE:
+      break;
+    case R_AARCH64_GLOB_DAT:
+    case R_AARCH64_JUMP_SLOT:
+      buf_write_neclass (info->dso, buf, value + rela->r_addend);
+      break;
+    case R_AARCH64_ABS64:
+      buf_write_ne64 (info->dso, buf, value + rela->r_addend);
+      break;
+    case R_AARCH64_ABS32:
+      buf_write_ne32 (info->dso, buf, value + rela->r_addend);
+      break;
+    case R_AARCH64_COPY:
+      abort ();
+    case R_AARCH64_RELATIVE:
+      error (0, 0, "%s: R_AARCH64_RELATIVE in ET_EXEC object?", info->dso->filename);
+      return 1;
+    default:
+      return 1;
+    }
+  return 0;
+}
+
+static int
+aarch64_prelink_conflict_rel (DSO *dso, struct prelink_info *info, GElf_Rel *rel,
+			   GElf_Addr reladdr)
+{
+  error (0, 0, "%s: aarch64 doesn't support REL relocs", dso->filename);
+  return 1;
+}
+
+static int
+aarch64_prelink_conflict_rela (DSO *dso, struct prelink_info *info,
+			    GElf_Rela *rela, GElf_Addr relaaddr)
+{
+  GElf_Addr value;
+  struct prelink_conflict *conflict;
+  struct prelink_tls *tls;
+  GElf_Rela *ret;
+
+  if (GELF_R_TYPE (rela->r_info) == R_AARCH64_RELATIVE
+      || GELF_R_TYPE (rela->r_info) == R_AARCH64_NONE)
+    /* Fast path: nothing to do.  */
+    return 0;
+  conflict = prelink_conflict (info, GELF_R_SYM (rela->r_info),
+			       GELF_R_TYPE (rela->r_info));
+  if (conflict == NULL)
+    {
+      switch (GELF_R_TYPE (rela->r_info))
+	{
+	/* Even local DTPMOD and TPOFF relocs need conflicts.  */
+	case R_AARCH64_TLS_DTPMOD64:
+	case R_AARCH64_TLS_TPREL64:
+	  if (info->curtls == NULL || info->dso == dso)
+	    return 0;
+	  break;
+	case R_AARCH64_TLSDESC:
+	  break;
+	default:
+	  return 0;
+	}
+      value = 0;
+    }
+  else if (conflict->ifunc)
+    return 0;
+  else
+    {
+      /* DTPOFF wants to see only real conflicts, not lookups
+	 with reloc_class RTYPE_CLASS_TLS.  */
+      if (GELF_R_TYPE (rela->r_info) == R_AARCH64_TLS_DTPREL64
+	  && conflict->lookup.tls == conflict->conflict.tls
+	  && conflict->lookupval == conflict->conflictval)
+	return 0;
+
+      value = conflict_lookup_value (conflict);
+    }
+  ret = prelink_conflict_add_rela (info);
+  if (ret == NULL)
+    return 1;
+  ret->r_offset = rela->r_offset;
+  ret->r_info = GELF_R_INFO (0, GELF_R_TYPE (rela->r_info));
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_GLOB_DAT:
+    case R_AARCH64_JUMP_SLOT:
+    case R_AARCH64_ABS64:
+    case R_AARCH64_ABS32:
+      ret->r_addend = value + rela->r_addend;
+      break;
+    case R_AARCH64_COPY:
+      error (0, 0, "R_AARCH64_COPY should not be present in shared libraries");
+      return 1;
+    case R_AARCH64_TLS_DTPMOD64:
+    case R_AARCH64_TLS_DTPREL64:
+    case R_AARCH64_TLS_TPREL64:
+      if (conflict != NULL
+	  && (conflict->reloc_class != RTYPE_CLASS_TLS
+	      || conflict->lookup.tls == NULL))
+	{
+	  error (0, 0, "%s: TLS reloc not resolving to STT_TLS symbol",
+		 dso->filename);
+	  return 1;
+	}
+      tls = conflict ? conflict->lookup.tls : info->curtls;
+      ret->r_info = GELF_R_INFO (0, R_AARCH64_ABS64);
+      switch (GELF_R_TYPE (rela->r_info))
+	{
+	case R_AARCH64_TLS_DTPMOD64:
+	  ret->r_addend = tls->modid;
+	  break;
+	case R_AARCH64_TLS_DTPREL64:
+	  ret->r_addend = value;
+	  break;
+	case R_AARCH64_TLS_TPREL64:
+	  ret->r_addend = value + rela->r_addend + tls->offset;
+	  break;
+	}
+      break;
+    case R_AARCH64_TLSDESC:
+	  tls = conflict ? conflict->lookup.tls : info->curtls;
+	  ret->r_addend =  rela->r_addend + tls->offset;
+     break;	 	
+    default:
+      error (0, 0, "%s: Unknown AARCH64 relocation type %d", dso->filename,
+	     (int) GELF_R_TYPE (rela->r_info));
+      return 1;
+    }
+  return 0;
+}
+
+static int
+aarch64_rel_to_rela (DSO *dso, GElf_Rel *rel, GElf_Rela *rela)
+{
+  error (0, 0, "%s: AARCH64 doesn't support REL relocs", dso->filename);
+  return 1;
+}
+
+static int
+aarch64_need_rel_to_rela (DSO *dso, int first, int last)
+{
+  return 0;
+}
+
+static int
+aarch64_arch_prelink (struct prelink_info *info)
+{
+  DSO *dso;
+  int i;
+
+  dso = info->dso;
+  if (dso->info[DT_PLTGOT])
+    {
+      /* Write address of .plt into got[1].
+	 .plt is what got[3] contains unless prelinking.  */
+      int sec = addr_to_sec (dso, dso->info[DT_PLTGOT]);
+      Elf64_Addr data;
+
+      if (sec == -1)
+	return 1;
+
+      for (i = 1; i < dso->ehdr.e_shnum; i++)
+	if (dso->shdr[i].sh_type == SHT_PROGBITS
+	    && ! strcmp (strptr (dso, dso->ehdr.e_shstrndx,
+				 dso->shdr[i].sh_name),
+			 ".plt"))
+	break;
+
+      assert (i < dso->ehdr.e_shnum);
+      data = dso->shdr[i].sh_addr;
+      write_ne64 (dso, dso->info[DT_PLTGOT] + 8, data);
+    }
+
+  return 0;
+}
+
+static int
+aarch64_arch_undo_prelink (DSO *dso)
+{
+  int i;
+
+  if (dso->info[DT_PLTGOT])
+    {
+      /* Clear got[1] if it contains address of .plt.  */
+      int sec = addr_to_sec (dso, dso->info[DT_PLTGOT]);
+      Elf64_Addr data;
+
+      if (sec == -1)
+	return 1;
+
+      for (i = 1; i < dso->ehdr.e_shnum; i++)
+	if (dso->shdr[i].sh_type == SHT_PROGBITS
+	    && ! strcmp (strptr (dso, dso->ehdr.e_shstrndx,
+				 dso->shdr[i].sh_name),
+			 ".plt"))
+	break;
+
+      if (i == dso->ehdr.e_shnum)
+	return 0;
+      data = read_une64 (dso, dso->info[DT_PLTGOT] + 8);
+      if (data == dso->shdr[i].sh_addr)
+	write_ne64 (dso, dso->info[DT_PLTGOT] + 8, 0);
+    }
+
+  return 0;
+}
+
+static int
+aarch64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
+{
+  int sec;
+  const char *name;
+
+  switch (GELF_R_TYPE (rela->r_info))
+    {
+    case R_AARCH64_NONE:
+    case R_AARCH64_RELATIVE:
+      break;
+    case R_AARCH64_JUMP_SLOT:
+      sec = addr_to_sec (dso, rela->r_offset);
+      name = strptr (dso, dso->ehdr.e_shstrndx, dso->shdr[sec].sh_name);
+      if (sec == -1 || (strcmp (name, ".got") && strcmp (name, ".got.plt")))
+	{
+	  error (0, 0, "%s: R_AARCH64_JUMP_SLOT not pointing into .got section",
+		 dso->filename);
+	  return 1;
+	}
+      else
+	{
+	  Elf64_Addr data = read_uneclass (dso, dso->shdr[sec].sh_addr + 8);
+
+	  assert (rela->r_offset >= dso->shdr[sec].sh_addr + 24);
+	  assert (((rela->r_offset - dso->shdr[sec].sh_addr) & 7) == 0);
+	  write_neclass (dso, rela->r_offset,
+		      2 * (rela->r_offset - dso->shdr[sec].sh_addr - 24)
+		      + data);
+	}
+      break;
+    case R_AARCH64_GLOB_DAT:
+      write_neclass (dso, rela->r_offset, 0);
+      break;
+    case R_AARCH64_ABS64:
+    case R_AARCH64_TLS_DTPMOD64:
+    case R_AARCH64_TLS_DTPREL64:
+      write_ne64 (dso, rela->r_offset, 0);
+      break;
+    case R_AARCH64_TLS_TPREL64:
+      break;	
+    case R_AARCH64_TLSDESC:	
+      write_ne64 (dso, rela->r_offset, 0);
+    case R_AARCH64_ABS32:
+      write_ne32 (dso, rela->r_offset, 0);
+      break;
+    case R_AARCH64_COPY:
+      if (dso->ehdr.e_type == ET_EXEC)
+	/* COPY relocs are handled specially in generic code.  */
+	return 0;
+      error (0, 0, "%s: R_AARCH64_COPY reloc in shared library?", dso->filename);
+      return 1;
+    default:
+      error (0, 0, "%s: Unknown AARCH64 relocation type %d", dso->filename,
+	     (int) GELF_R_TYPE (rela->r_info));
+      return 1;
+    }
+  return 0;
+}
+
+static int
+aarch64_reloc_size (int reloc_type)
+{
+  assert (reloc_type != R_AARCH64_COPY);	
+  switch (reloc_type)
+    {
+    case R_AARCH64_GLOB_DAT:
+    case R_AARCH64_JUMP_SLOT:
+    case R_AARCH64_ABS64:
+    case R_AARCH64_IRELATIVE:
+      return 8;
+    default:
+      return 4;
+    }
+}
+
+static int
+aarch64_reloc_class (int reloc_type)
+{
+  switch (reloc_type)
+    {
+    case R_AARCH64_COPY: return RTYPE_CLASS_COPY;
+    case R_AARCH64_JUMP_SLOT: return RTYPE_CLASS_PLT;
+    case R_AARCH64_TLS_DTPREL64:
+    case R_AARCH64_TLS_DTPMOD64:
+    case R_AARCH64_TLS_TPREL64:
+    case R_AARCH64_TLSDESC:
+      return RTYPE_CLASS_TLS;
+    default: return RTYPE_CLASS_VALID;
+    }
+}
+
+PL_ARCH(aarch64) = {
+  .name = "AARCH64",
+  .class = ELFCLASS64,
+  .machine = EM_AARCH64,
+  .alternate_machine = { EM_NONE },
+  .R_JMP_SLOT = R_AARCH64_JUMP_SLOT,
+  .R_COPY = R_AARCH64_COPY,
+  .R_RELATIVE = R_AARCH64_RELATIVE,
+  .rtype_class_valid = RTYPE_CLASS_VALID,
+  .dynamic_linker = "/lib/ld-linux-aarch64.so.1",
+  .adjust_dyn = aarch64_adjust_dyn,
+  .adjust_rel = aarch64_adjust_rel,
+  .adjust_rela = aarch64_adjust_rela,
+  .prelink_rel = aarch64_prelink_rel,
+  .prelink_rela = aarch64_prelink_rela,
+  .prelink_conflict_rel = aarch64_prelink_conflict_rel,
+  .prelink_conflict_rela = aarch64_prelink_conflict_rela,
+  .apply_conflict_rela = aarch64_apply_conflict_rela,
+  .apply_rel = aarch64_apply_rel,
+  .apply_rela = aarch64_apply_rela,
+  .rel_to_rela = aarch64_rel_to_rela,
+  .need_rel_to_rela = aarch64_need_rel_to_rela,
+  .reloc_size = aarch64_reloc_size,
+  .reloc_class = aarch64_reloc_class,
+  .max_reloc_size = 8,
+  .arch_prelink = aarch64_arch_prelink,
+  .arch_undo_prelink = aarch64_arch_undo_prelink,
+  .undo_prelink_rela = aarch64_undo_prelink_rela,
+  /* Although TASK_UNMAPPED_BASE is 0x2a95555555, we leave some
+     area so that mmap of /etc/ld.so.cache and ld.so's malloc
+     does not take some library's VA slot.
+     Also, if this guard area isn't too small, typically
+     even dlopened libraries will get the slots they desire.  */
+  .mmap_base = 0x3000000000LL,
+  .mmap_end =  0x4000000000LL,
+  .max_page_size = 0x10000,
+  .page_size = 0x1000
+};
diff --git a/trunk/src/dso.c b/trunk/src/dso.c
index 983f1d8..0dd6ff6 100644
--- a/trunk/src/dso.c
+++ b/trunk/src/dso.c
@@ -2004,6 +2004,7 @@ dso_has_bad_textrel (DSO *dso)
     case EM_S390:
     case EM_MIPS:
     case EM_ARM:
+	case EM_AARCH64:
       return dynamic_info_is_set (dso, DT_TEXTREL);
 
     default:
-- 
1.7.1


