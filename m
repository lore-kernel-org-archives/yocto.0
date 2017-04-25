Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F55E00AF8; Tue, 25 Apr 2017 16:01:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CA0E00867
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 16:01:23 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g23so12866295pfj.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 16:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=wIGAh0sCv6V5Mk//WscqD6muCnXB/mIWmWytGN75JYg=;
	b=geuKYGjIFM/9mKaeh+r5sTH6jJtEdW+FV1LvVBt0FSjncxeMJEgMJh+jvvFf9FijLc
	veyiMaiH7zR7l0iZ75MBG576xIbo5+na4rsIWdCOqCwqjBx2umCgQWPLFUIojjYaXEEp
	xV2VfooLle7NWEkuvpuEiI/rTxxzS1O25DLeTnJKSSCKgIaHxZ47c7vqmRslV7qnaG+0
	s4+HWo36qEHBfvjZBOXEmIf4iNhdtLE0OmPAwgvOMq6FipMIuboIgISYxxGPJtsgE3qb
	bzN4iWRDAnEKRDKHXV8HvP6h63gweGUr2ttrCStJjRND21Sxiyc2T7B2OyOp3mmX1CQ1
	UJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=wIGAh0sCv6V5Mk//WscqD6muCnXB/mIWmWytGN75JYg=;
	b=hOuzLWtXQQmEj/bef/xr+haOFxiw0PHl6walhVk+x5OgCKTfwbcuiICQf7q12J12bV
	C9ZWPMk0NWn/YIEqGr1hTRXjfYFOJj4kFjxQyZOo/QG0NwnKnqT+DDiPFUIOoHYn3UuC
	DHmSDjKL7hNlKpg3boMsn+4jDRVF0v1ql+12tDwQ42ta27s2NqLYMCkvzbrwSLmj4abL
	LedVoET+mVYK6OAFQOsmEKEToObSyhWLm+zCUk4eYESCnvhVEZ9xfnUFenQ/QMiigc0x
	fKCZbXyxHLCJNh1ZpDSEockfOMw1Ao2TdcWk+9qrDKUNGDg5eUoqlTdcqqnul9Zde62d
	paHQ==
X-Gm-Message-State: AN3rC/5JF8hCJgGkb+4571k6mPGX7t/wC3l89tU7tfzXrUQqXrK08kEE
	LFXQOJIGPpcbDw==
X-Received: by 10.99.113.23 with SMTP id m23mr29078378pgc.180.1493161283204;
	Tue, 25 Apr 2017 16:01:23 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	q136sm38258474pfq.80.2017.04.25.16.01.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Apr 2017 16:01:22 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Apr 2017 16:01:11 -0700
Message-Id: <20170425230111.12778-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [meta-gplv2][PATCH] elfutils: Fix build with gcc7
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
X-List-Received-Date: Tue, 25 Apr 2017 23:01:26 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-Fix-fallthrough-warnings.patch            | 237 +++++++++++++++++++++
 .../0002-Fix-printf-overflow-warnings.patch        |  57 +++++
 recipes-devtools/elfutils/elfutils_0.148.bb        |   2 +
 3 files changed, 296 insertions(+)
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/0001-Fix-fallthrough-warnings.patch
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/0002-Fix-printf-overflow-warnings.patch

diff --git a/recipes-devtools/elfutils/elfutils-0.148/0001-Fix-fallthrough-warnings.patch b/recipes-devtools/elfutils/elfutils-0.148/0001-Fix-fallthrough-warnings.patch
new file mode 100644
index 0000000..810c4a7
--- /dev/null
+++ b/recipes-devtools/elfutils/elfutils-0.148/0001-Fix-fallthrough-warnings.patch
@@ -0,0 +1,237 @@
+From d70d92889c4a8b0781207343a73b1dc4eccdffd3 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 25 Apr 2017 15:50:55 -0700
+Subject: [PATCH 1/2] Fix fallthrough warnings
+
+Upstream-Status: Pending
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ backends/i386_regs.c       | 1 +
+ backends/i386_retval.c     | 1 +
+ backends/linux-core-note.c | 4 ++--
+ backends/mips_retval.c     | 2 +-
+ backends/parisc_retval.c   | 2 +-
+ backends/ppc_regs.c        | 2 +-
+ backends/x86_64_regs.c     | 1 +
+ libcpu/i386_disasm.c       | 2 +-
+ libdw/cfi.c                | 3 +++
+ libdw/encoded-value.h      | 1 +
+ libdwfl/dwfl_report_elf.c  | 1 +
+ src/addr2line.c            | 1 +
+ src/elflint.c              | 4 +++-
+ src/objdump.c              | 2 +-
+ 14 files changed, 19 insertions(+), 8 deletions(-)
+
+diff --git a/backends/i386_regs.c b/backends/i386_regs.c
+index 5cf0d81..11b0bcb 100644
+--- a/backends/i386_regs.c
++++ b/backends/i386_regs.c
+@@ -89,6 +89,7 @@ i386_register_info (Ebl *ebl __attribute__ ((unused)),
+     case 5:
+     case 8:
+       *type = DW_ATE_address;
++      /* fallthru */
+     case 0 ... 3:
+     case 6 ... 7:
+       name[0] = 'e';
+diff --git a/backends/i386_retval.c b/backends/i386_retval.c
+index c3bab10..ffbf901 100644
+--- a/backends/i386_retval.c
++++ b/backends/i386_retval.c
+@@ -137,6 +137,7 @@ i386_return_value_location (Dwarf_Die *functypedie, const Dwarf_Op **locp)
+ 
+ 	/* Else fall through.  */
+       }
++    /* fallthru */
+ 
+     case DW_TAG_structure_type:
+     case DW_TAG_class_type:
+diff --git a/backends/linux-core-note.c b/backends/linux-core-note.c
+index 9d01219..a6cd5ab 100644
+--- a/backends/linux-core-note.c
++++ b/backends/linux-core-note.c
+@@ -194,8 +194,8 @@ EBLHOOK(core_note) (nhdr, name, regs_offset, nregloc, reglocs, nitems, items)
+     case sizeof "CORE":
+       if (memcmp (name, "CORE", nhdr->n_namesz) == 0)
+ 	break;
+-      /* Buggy old Linux kernels didn't terminate "LINUX".
+-         Fall through.  */
++      /* Buggy old Linux kernels didn't terminate "LINUX". */
++      /* fallthru  */
+ 
+     case sizeof "LINUX":
+       if (memcmp (name, "LINUX", nhdr->n_namesz) == 0)
+diff --git a/backends/mips_retval.c b/backends/mips_retval.c
+index 33f12a7..b25b1b7 100644
+--- a/backends/mips_retval.c
++++ b/backends/mips_retval.c
+@@ -300,7 +300,7 @@ mips_return_value_location (Dwarf_Die *functypedie, const Dwarf_Op **locp)
+ 
+ 	/* Else fall through. Shouldn't happen though (at least with gcc) */
+       }
+-
++      /* fallthrough */
+     case DW_TAG_structure_type:
+     case DW_TAG_class_type:
+     case DW_TAG_union_type:
+diff --git a/backends/parisc_retval.c b/backends/parisc_retval.c
+index 592a702..7aa5b17 100644
+--- a/backends/parisc_retval.c
++++ b/backends/parisc_retval.c
+@@ -167,7 +167,7 @@ parisc_return_value_location_ (Dwarf_Die *functypedie, const Dwarf_Op **locp, in
+ 
+ 	/* Else fall through.  */
+       }
+-
++      /* fallthru */
+     case DW_TAG_structure_type:
+     case DW_TAG_class_type:
+     case DW_TAG_union_type:
+diff --git a/backends/ppc_regs.c b/backends/ppc_regs.c
+index 637c25d..8277c54 100644
+--- a/backends/ppc_regs.c
++++ b/backends/ppc_regs.c
+@@ -137,7 +137,7 @@ ppc_register_info (Ebl *ebl __attribute__ ((unused)),
+     case 100:
+       if (*bits == 32)
+ 	return stpcpy (name, "mq") + 1 - name;
+-
++      /* fallthru */
+     case 102 ... 107:
+       name[0] = 's';
+       name[1] = 'p';
+diff --git a/backends/x86_64_regs.c b/backends/x86_64_regs.c
+index 8eb0d33..e941cf3 100644
+--- a/backends/x86_64_regs.c
++++ b/backends/x86_64_regs.c
+@@ -84,6 +84,7 @@ x86_64_register_info (Ebl *ebl __attribute__ ((unused)),
+ 
+     case 6 ... 7:
+       *type = DW_ATE_address;
++      /* fallthru */
+     case 0 ... 5:
+       name[0] = 'r';
+       name[1] = baseregs[regno][0];
+diff --git a/libcpu/i386_disasm.c b/libcpu/i386_disasm.c
+index 0eabe0a..84b85d0 100644
+--- a/libcpu/i386_disasm.c
++++ b/libcpu/i386_disasm.c
+@@ -788,7 +788,7 @@ i386_disasm (const uint8_t **startp, const uint8_t *end, GElf_Addr addr,
+ 			      ++param_start;
+ 			      break;
+ 			    }
+-
++			  /* fallthru */
+ 			default:
+ 			  assert (! "INVALID not handled");
+ 			  abort ();
+diff --git a/libdw/cfi.c b/libdw/cfi.c
+index aeb48e6..38b3050 100644
+--- a/libdw/cfi.c
++++ b/libdw/cfi.c
+@@ -143,6 +143,7 @@ execute_cfi (Dwarf_CFI *cache,
+ 
+ 	case DW_CFA_advance_loc1:
+ 	  operand = *program++;
++	  /* fallthru */
+ 	case DW_CFA_advance_loc + 0 ... DW_CFA_advance_loc + CFI_PRIMARY_MAX:
+ 	advance_loc:
+ 	  loc += operand * cie->code_alignment_factor;
+@@ -227,6 +228,7 @@ execute_cfi (Dwarf_CFI *cache,
+ 
+ 	case DW_CFA_offset_extended:
+ 	  get_uleb128 (operand, program);
++	  cfi_assert (program < end);
+ 	case DW_CFA_offset + 0 ... DW_CFA_offset + CFI_PRIMARY_MAX:
+ 	  get_uleb128 (offset, program);
+ 	  offset *= cie->data_alignment_factor;
+@@ -290,6 +292,7 @@ execute_cfi (Dwarf_CFI *cache,
+ 
+ 	case DW_CFA_restore_extended:
+ 	  get_uleb128 (operand, program);
++	  /* fallthru */
+ 	case DW_CFA_restore + 0 ... DW_CFA_restore + CFI_PRIMARY_MAX:
+ 
+ 	  if (unlikely (abi_cfi) && likely (opcode == DW_CFA_restore))
+diff --git a/libdw/encoded-value.h b/libdw/encoded-value.h
+index e118a1c..17190c8 100644
+--- a/libdw/encoded-value.h
++++ b/libdw/encoded-value.h
+@@ -82,6 +82,7 @@ encoded_value_size (const Elf_Data *data, const unsigned char e_ident[],
+ 	    if (*end++ & 0x80u)
+ 	      return end - p;
+ 	}
++      return 0;
+ 
+     default:
+       abort ();
+diff --git a/libdwfl/dwfl_report_elf.c b/libdwfl/dwfl_report_elf.c
+index 062a647..8a30816 100644
+--- a/libdwfl/dwfl_report_elf.c
++++ b/libdwfl/dwfl_report_elf.c
+@@ -185,6 +185,7 @@ __libdwfl_report_elf (Dwfl *dwfl, const char *name, const char *file_name,
+     case ET_CORE:
+       /* An assigned base address is meaningless for these.  */
+       base = 0;
++      /* fallthru */
+ 
+     case ET_DYN:
+     default:;
+diff --git a/src/addr2line.c b/src/addr2line.c
+index 48f017b..4a2cc5b 100644
+--- a/src/addr2line.c
++++ b/src/addr2line.c
+@@ -457,6 +457,7 @@ handle_address (const char *string, Dwfl *dwfl)
+ 	case 1:
+ 	  addr = 0;
+ 	  j = i;
++          /* fallthru */
+ 	case 2:
+ 	  if (string[j] != '\0')
+ 	    break;
+diff --git a/src/elflint.c b/src/elflint.c
+index a25af97..3d75391 100644
+--- a/src/elflint.c
++++ b/src/elflint.c
+@@ -218,6 +218,7 @@ parse_opt (int key, char *arg __attribute__ ((unused)),
+ 
+     case 'd':
+       is_debuginfo = true;
++      break;
+ 
+     case ARGP_gnuld:
+       gnuld = true;
+@@ -3735,6 +3736,7 @@ section [%2zu] '%s': merge flag set but entry size is zero\n"),
+ 	    case SHT_NOBITS:
+ 	      if (is_debuginfo)
+ 		break;
++		/* fallthru */
+ 	    default:
+ 	      ERROR (gettext ("\
+ section [%2zu] '%s' has unexpected type %d for an executable section\n"),
+@@ -4036,7 +4038,7 @@ section [%2d] '%s': unknown core file note type %" PRIu32
+ 	    if (nhdr.n_namesz == sizeof "Linux"
+ 		&& !memcmp (data->d_buf + name_offset, "Linux", sizeof "Linux"))
+ 	      break;
+-
++	    /* fallthru */
+ 	  default:
+ 	    if (shndx == 0)
+ 	      ERROR (gettext ("\
+diff --git a/src/objdump.c b/src/objdump.c
+index 1234c79..8c39a5b 100644
+--- a/src/objdump.c
++++ b/src/objdump.c
+@@ -238,7 +238,7 @@ parse_opt (int key, char *arg,
+ 		     program_invocation_short_name);
+ 	  exit (EXIT_FAILURE);
+ 	}
+-
++      /* fallthru */
+     default:
+       return ARGP_ERR_UNKNOWN;
+     }
+-- 
+2.12.2
+
diff --git a/recipes-devtools/elfutils/elfutils-0.148/0002-Fix-printf-overflow-warnings.patch b/recipes-devtools/elfutils/elfutils-0.148/0002-Fix-printf-overflow-warnings.patch
new file mode 100644
index 0000000..bc89f04
--- /dev/null
+++ b/recipes-devtools/elfutils/elfutils-0.148/0002-Fix-printf-overflow-warnings.patch
@@ -0,0 +1,57 @@
+From 471f7e4e72feea16f06d806c47b05719c3d77d8f Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 25 Apr 2017 15:57:33 -0700
+Subject: [PATCH 2/2] Fix printf overflow warnings
+
+Fixes
+
+../../elfutils-0.148/src/ar.c:865:49: error: '__builtin___snprintf_chk' output truncated before the last format character [-Werror=format-truncation=]
+       snprintf (tmpbuf, sizeof (tmpbuf), "/%-*ld",
+                                                 ^
+In file included from /mnt/a/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/elfutils/0.148-r11/recipe-sysroot/usr/include/stdio.h:889:0,
+                 from /mnt/a/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/elfutils/0.148-r11/recipe-sysroot/usr/include/argp.h:23,
+                 from ../../elfutils-0.148/src/ar.c:30:
+/mnt/a/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/elfutils/0.148-r11/recipe-sysroot/usr/include/bits/stdio2.h:64:10: note: '__builtin___snprintf_chk' output 18 b
+ytes into a destination of size 17
+
+Upstream-Status: Pending
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ src/ar.c | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/src/ar.c b/src/ar.c
+index 8e2abbe..0bf5051 100644
+--- a/src/ar.c
++++ b/src/ar.c
+@@ -853,7 +853,7 @@ write_member (struct armem *memb, off_t *startp, off_t *lenp, Elf *elf,
+ 	      off_t end_off, int newfd)
+ {
+   struct ar_hdr arhdr;
+-  char tmpbuf[sizeof (arhdr.ar_name) + 1];
++  char tmpbuf[sizeof (arhdr.ar_name) + 2];
+ 
+   bool changed_header = memb->long_name_off != -1;
+   if (changed_header)
+@@ -1454,7 +1454,7 @@ do_oper_insert (int oper, const char *arfname, char **argv, int argc,
+ 
+ 	      /* Create the header.  */
+ 	      struct ar_hdr arhdr;
+-	      char tmpbuf[sizeof (arhdr.ar_name) + 1];
++	      char tmpbuf[sizeof (arhdr.ar_name) + 2];
+ 	      if (all->long_name_off == -1)
+ 		{
+ 		  size_t namelen = strlen (all->name);
+@@ -1464,7 +1464,7 @@ do_oper_insert (int oper, const char *arfname, char **argv, int argc,
+ 		}
+ 	      else
+ 		{
+-		  snprintf (tmpbuf, sizeof (arhdr.ar_name) + 1, "/%-*ld",
++		  snprintf (tmpbuf, sizeof (tmpbuf), "/%-*ld",
+ 			    (int) sizeof (arhdr.ar_name), all->long_name_off);
+ 		  memcpy (arhdr.ar_name, tmpbuf, sizeof (arhdr.ar_name));
+ 		}
+-- 
+2.12.2
+
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 6080c17..29d109a 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -35,6 +35,8 @@ SRC_URI += "\
         file://elf_begin.c-CVE-2014-9447-fix.patch \
         file://fix-build-gcc-4.8.patch \
         file://gcc6.patch \
+        file://0001-Fix-fallthrough-warnings.patch \
+        file://0002-Fix-printf-overflow-warnings.patch \
 "
 # Only apply when building uclibc based target recipe
 SRC_URI_append_libc-uclibc = " file://uclibc-support-for-elfutils-0.148.patch"
-- 
2.12.2


