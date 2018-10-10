Return-Path: <slyfox@gentoo.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37537E00A94; Wed, 10 Oct 2018 14:00:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [140.211.166.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 578 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Oct 2018 14:00:01 PDT
Received: from smtp.gentoo.org (smtp.gentoo.org [140.211.166.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA2CE003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 14:00:01 -0700 (PDT)
Received: from sf.home (host81-154-9-133.range81-154.btcentralplus.com
	[81.154.9.133])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested) (Authenticated sender: slyfox)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 9CB94340AB6;
	Wed, 10 Oct 2018 20:50:27 +0000 (UTC)
Received: by sf.home (Postfix, from userid 1000)
	id 9A65121951BA8; Wed, 10 Oct 2018 21:50:24 +0100 (BST)
From: Sergei Trofimovich <slyfox@gentoo.org>
To: mark.hatle@windriver.com
Date: Wed, 10 Oct 2018 21:50:22 +0100
Message-Id: <20181010205022.23695-1-slyfox@gentoo.org>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Oct 2018 14:01:48 -0700
Cc: yocto@yoctoproject.org, Sergei Trofimovich <slyfox@gentoo.org>
Subject: [prelink-cross] [PATCH] x86_64: allow prelinking of PIE executables with COPY relocs
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
X-List-Received-Date: Wed, 10 Oct 2018 21:00:02 -0000
Content-Transfer-Encoding: 8bit

COPY relocs are fine to have in PIE executables (as opposed to
shared libraries).

By enabling prelink on PIEs we achieve a few goals:
- prelink more PIE files on system: nicer for uniformity,
- avoid spurious warnings about shared libraries with COPY relocs

It's usefult to prelink PIEs when kernel ASLR is disabled:
kernel.randomize_va_space=0 + PIE-randomization patches.

I have gcc built as `--enable-default-pie` (generates PIE
executables by default).

Testsute results before the change:
  PASS:  14
  FAIL:  31

After the change:
  PASS:  32
  FAIL:  13

Signed-off-by: Sergei Trofimovich <slyfox@gentoo.org>
---
 src/arch-x86_64.c |  4 ++--
 src/dso.c         | 19 +++++++++++++++++++
 src/prelink.h     |  1 +
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 5c95f47..2f6c551 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -179,7 +179,7 @@ x86_64_prelink_rela (struct prelink_info *info, GElf_Rela *rela,
 		    value + rela->r_addend - info->resolvetls->offset);
       break;
     case R_X86_64_COPY:
-      if (dso->ehdr.e_type == ET_EXEC)
+      if (dso->ehdr.e_type == ET_EXEC || dso_is_pie(dso))
 	/* COPY relocs are handled specially in generic code.  */
 	return 0;
       error (0, 0, "%s: R_X86_64_COPY reloc in shared library?", dso->filename);
@@ -503,7 +503,7 @@ x86_64_undo_prelink_rela (DSO *dso, GElf_Rela *rela, GElf_Addr relaaddr)
       write_le32 (dso, rela->r_offset, 0);
       break;
     case R_X86_64_COPY:
-      if (dso->ehdr.e_type == ET_EXEC)
+      if (dso->ehdr.e_type == ET_EXEC || dso_is_pie(dso))
 	/* COPY relocs are handled specially in generic code.  */
 	return 0;
       error (0, 0, "%s: R_X86_64_COPY reloc in shared library?", dso->filename);
diff --git a/src/dso.c b/src/dso.c
index a5fcec5..9fcfc3d 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -1106,6 +1106,25 @@ dso_is_rdwr (DSO *dso)
   return dso->elfro != NULL;
 }
 
+/* Return true is DSO is position independent executable.
+
+   There is no simple way to distinct between shared library
+   and PIE executable.  Use presence of interpreter as a heuristic.  */
+
+int dso_is_pie(DSO *dso)
+{
+  int i;
+
+  if (dso->ehdr.e_type != ET_DYN)
+    return 0;
+
+  for (i = 0; i < dso->ehdr.e_phnum; ++i)
+    if (dso->phdr[i].p_type == PT_INTERP)
+      return 1;
+
+  return 0;
+}
+
 GElf_Addr
 adjust_old_to_new (DSO *dso, GElf_Addr addr)
 {
diff --git a/src/prelink.h b/src/prelink.h
index 93dbf7a..d8a00c6 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -298,6 +298,7 @@ int reopen_dso (DSO *dso, struct section_move *move, const char *);
 int adjust_symbol_p (DSO *dso, GElf_Sym *sym);
 int check_dso (DSO *dso);
 int dso_is_rdwr (DSO *dso);
+int dso_is_pie(DSO *dso);
 void read_dynamic (DSO *dso);
 int set_dynamic (DSO *dso, GElf_Word tag, GElf_Addr value, int fatal);
 int addr_to_sec (DSO *dso, GElf_Addr addr);
-- 
2.19.1


