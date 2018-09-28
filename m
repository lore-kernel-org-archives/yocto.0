Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF62AE00A86; Fri, 28 Sep 2018 07:59:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861E5E00A0C
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 07:57:22 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id z3-v6so4654691pgv.8
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 07:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=zjweB36W9bUAC+ffZBMzdjZz6zHcEvQVKJB1eukVtp4=;
	b=H21WLRG6eBUJPCtTwUKrY53Je6B/0YD558R/7Dah2P7e0t33rSf0n8zBQwA6u60uK1
	YX0IBNPC/hAY0RvOolqZQ4PyoDLEcWx6ERPrHBgGgMYBKLVCmP1ccgPEZi5BVRpuOYsf
	qorNEKlrb3VOUiakVa3ELFCzPjHqmivMpAYqqc0U/qsHDL9yJqugBJf3KI5p7XS8N/Hy
	SpQBtcdfz6LD0DnaMjP7qLNDmPoTAK2idt/pwYxxoRw1eIqezy3rm6ST83YajnMmZ/Hv
	bQD0ZjJ8fDhTZ2cbEXQ+sXQJi7EvrtP8QPKu6guoFWifPuoFILrSUIzZFKMEn2aBnApp
	zd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=zjweB36W9bUAC+ffZBMzdjZz6zHcEvQVKJB1eukVtp4=;
	b=bwZuDW9G9QJHNt7kam94+I79s9KkglpxMpHaGHOseMrgj6wTVVEaoIRm27Pxa4QVSV
	EFM6uWXWCtER/s6LN3okjRxvwcm3PNgh5ZC76aqknee+MCvNnGLlFYkOVXuglWaWDP+K
	RAyHpR/x+1E9s4uQz29FUVct+nSP3tnAVFDDI7qH2F1aWsu8Wc1ztZLdmr5CThlhBR4k
	kFebZ+Mq42l1jCmynntrGPtjyoy2a2P20kkpZWNfjBKEJAXEsTcT9/wviaxHsPKkaN4/
	Y8bKwBYs4jnWUo+XjU/KZaZ3I3aPb9AVDmSa+6CfhoQ/N6qO8niFC/8vGnf6Wrjgj2pl
	ZHdQ==
X-Gm-Message-State: ABuFfoi0Gb2mST86F/HQeRZKGraqzz1Cip3oCE29N3MFhk7N2h6Gex3t
	7R1VMvW3A+/k0QxXjtQgswQ=
X-Google-Smtp-Source: ACcGV60XXWrLsoyJY1UOoXGK7o5IS0mYahk1sH3SrxFWyL7ucykVMv4IT1cbffCg8x63ZysFV5X1FA==
X-Received: by 2002:a63:d0e:: with SMTP id
	c14-v6mr15322893pgl.281.1538146642039; 
	Fri, 28 Sep 2018 07:57:22 -0700 (PDT)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	o20-v6sm10854616pfj.35.2018.09.28.07.57.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Sep 2018 07:57:21 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: mark.hatle@windriver.com
Date: Fri, 28 Sep 2018 10:57:11 -0400
Message-Id: <20180928145711.6958-1-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] Support copy relocations in .data.rel.ro
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
X-List-Received-Date: Fri, 28 Sep 2018 14:59:47 -0000

binutils-2.28 (17026142ef35b62ac88bfe517b4160614902cb28) adds support
for copying read-only dynamic symbols into .data.rel.ro instead of .bss
since .bss is technically writable.  This causes prelink to error out on
any binary containing COPY relocations in .data.rel.ro.

Read-only variables defined in shared libraries should be copied directly
into the space allocated for them in .data.rel.ro by the linker.

To achieve this, we determine whether either of the two sections
containing copy relocations is .data.rel.ro.  If so, we relocate the
symbol memory directly into the existing section instead of constructing
a new .(s)dynbss section once prelink_build_conflicts() returns.

Fixes cxx1.sh, cxx2.sh, and cxx3.sh on Fedora 28 (which uses
binutils-2.29).
---
 src/conflict.c | 51 +++++++++++++++++++++++++++++++++++++-------------
 src/undo.c     |  9 +++++++++
 2 files changed, 47 insertions(+), 13 deletions(-)

diff --git a/src/conflict.c b/src/conflict.c
index 9ae2ddb..5613ace 100644
--- a/src/conflict.c
+++ b/src/conflict.c
@@ -450,7 +450,7 @@ get_relocated_mem (struct prelink_info *info, DSO *dso, GElf_Addr addr,
 int
 prelink_build_conflicts (struct prelink_info *info)
 {
-  int i, ndeps = info->ent->ndepends + 1;
+  int i, reset_dynbss = 0, reset_sdynbss = 0, ndeps = info->ent->ndepends + 1;
   struct prelink_entry *ent;
   int ret = 0;
   DSO *dso;
@@ -675,6 +675,11 @@ prelink_build_conflicts (struct prelink_info *info)
 		     dso->filename);
 	      goto error_out;
 	    }
+
+	  name = strptr (dso, dso->ehdr.e_shstrndx, dso->shdr[bss1].sh_name);
+	  if (strcmp(name, ".data.rel.ro") == 0)
+	    reset_sdynbss = 1;
+
 	  firstbss2 = i;
 	  info->sdynbss_size = cr.rela[i - 1].r_offset - cr.rela[0].r_offset;
 	  info->sdynbss_size += cr.rela[i - 1].r_addend;
@@ -702,6 +707,10 @@ prelink_build_conflicts (struct prelink_info *info)
 	    }
 	}
 
+      name = strptr (dso, dso->ehdr.e_shstrndx, dso->shdr[bss2].sh_name);
+      if (strcmp(name, ".data.rel.ro") == 0)
+        reset_dynbss = 1;
+
       info->dynbss_size = cr.rela[cr.count - 1].r_offset
 			  - cr.rela[firstbss2].r_offset;
       info->dynbss_size += cr.rela[cr.count - 1].r_addend;
@@ -719,9 +728,9 @@ prelink_build_conflicts (struct prelink_info *info)
 	  && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
 				    dso->shdr[bss1].sh_name),
 		     ".dynbss") != 0
-	  && strcmp (name, ".sdynbss") != 0)
+	  && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".data.rel.ro") != 0)
 	{
-	  error (0, 0, "%s: COPY relocations don't point into .bss or .sbss section",
+	  error (0, 0, "%s: COPY relocations don't point into .bss, .sbss, or .data.rel.ro sections",
 		 dso->filename);
 	  goto error_out;
 	}
@@ -730,9 +739,9 @@ prelink_build_conflicts (struct prelink_info *info)
 	  && strcmp (name = strptr (dso, dso->ehdr.e_shstrndx,
 				    dso->shdr[bss2].sh_name),
 		     ".dynbss") != 0
-	  && strcmp (name, ".sdynbss") != 0)
+	  && strcmp (name, ".sdynbss") != 0 && strcmp (name, ".data.rel.ro") != 0)
 	{
-	  error (0, 0, "%s: COPY relocations don't point into .bss or .sbss section",
+	  error (0, 0, "%s: COPY relocations don't point into .bss, .sbss, or .data.rel.ro section",
 		 dso->filename);
 	  goto error_out;
 	}
@@ -768,16 +777,21 @@ prelink_build_conflicts (struct prelink_info *info)
 	      }
 
 	  assert (j < ndeps);
+	  GElf_Addr symaddr = s->u.ent->base + s->value;
+	  char *buf;
+
 	  if (i < firstbss2)
-	    j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
-				   info->sdynbss + cr.rela[i].r_offset
-				   - info->sdynbss_base, cr.rela[i].r_addend,
-				   cr.rela[i].r_offset);
+	    if (reset_sdynbss)
+	      buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
+	    else
+	      buf = info->sdynbss + cr.rela[i].r_offset - info->sdynbss_base;
 	  else
-	    j = get_relocated_mem (info, ndso, s->u.ent->base + s->value,
-				   info->dynbss + cr.rela[i].r_offset
-				   - info->dynbss_base, cr.rela[i].r_addend,
-				   cr.rela[i].r_offset);
+	    if (reset_dynbss)
+	      buf = get_data(dso, cr.rela[i].r_offset, NULL, NULL);
+	    else
+	      buf = info->dynbss + cr.rela[i].r_offset - info->dynbss_base;
+
+	  j = get_relocated_mem (info, ndso, symaddr, buf, cr.rela[i].r_addend, cr.rela[i].r_offset);
 
 	  switch (j)
 	    {
@@ -815,6 +829,17 @@ prelink_build_conflicts (struct prelink_info *info)
     if (info->dsos[i])
       close_dso (info->dsos[i]);
 
+  if (reset_sdynbss)
+    {
+      free (info->sdynbss);
+      info->sdynbss = NULL;
+    }
+
+  if (reset_dynbss)
+    {
+      free (info->dynbss);
+      info->dynbss = NULL;
+    }
   info->dsos = NULL;
   free (cr.rela);
   return ret;
diff --git a/src/undo.c b/src/undo.c
index 8a55bf2..4c38dab 100644
--- a/src/undo.c
+++ b/src/undo.c
@@ -633,6 +633,15 @@ prelink_undo (DSO *dso)
 	      d->d_buf = NULL;
 	      dso->shdr[i].sh_type = SHT_NOBITS;
 	    }
+	  else if (dso->shdr[i].sh_type == SHT_PROGBITS
+		   && strcmp (name, ".data.rel.ro") == 0)
+	    {
+	      scn = dso->scn[i];
+	      d = elf_getdata (scn, NULL);
+	      assert (d != NULL && elf_getdata (scn, d) == NULL);
+	      assert (d->d_size == dso->shdr[i].sh_size);
+	      assert (memset(d->d_buf, 0, d->d_size) == d->d_buf);
+	    }
 	  else if (dso->shdr[i].sh_type == SHT_RELA
 		   && shdr[i].sh_type == SHT_REL)
 	    {
-- 
2.17.1


