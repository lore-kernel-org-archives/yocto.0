Return-Path: <alex.miller@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD8DE00C43; Tue,  5 Apr 2016 15:08:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.miller[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 776 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Apr 2016 15:08:03 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F2FEE00C27
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 15:08:03 -0700 (PDT)
Received: from skylla.schaltzentrale ([79.197.251.78]) by mail.gmx.com
	(mrgmx103) with ESMTPSA (Nemesis) id 0Lhf3N-1baK0b2nWz-00mqLH;
	Tue, 05 Apr 2016 23:55:00 +0200
Date: Tue, 5 Apr 2016 23:54:58 +0200
From: Alexander Miller <alex.miller@gmx.de>
To: mark.hatle@windriver.com
Message-ID: <20160405235458.3ccb36b6.alex.miller@gmx.de>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K0:ajjOi7NyccmvpNMr5u2+EiQ0gC6QwIjEz1modOpV/73m4I+kD2Z
	hyGQeXUTbv9zo/r1Bz1q23A9UAcPqpAwrFJG/1IQtMCT3X9Rnli0+fYH50HG5ARrCRf6ZxU
	dIUtHYPw679x72/XRrbAG6IGVu6N6TOEeDZ4hyjd5l5+/y+xF14swInCNxoB1yOXX9eEDp5
	80S4UZcoGwhCULhgoJulQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:NpmBkBiEfF8=:0fub2ZZmdDfSHCe7sh48Fc
	b+j/MYkgyvWWaAyuX4msxQEfVEIVjOiXm6bO7zyFh8n2j9BxFKvvjbYAj9aPIfqFbyX64zMGG
	AvuxYcIbDFGDJNLzDaQEjGMMelP/fHSKMI2PzL7BDTf5P7CT71BrB/kB5gV0NYW7cGKlQPlBL
	Hj4O02rZxHLHEX53eL0tFpDhQXVyPD5Q5eYc/s1X1zw6Z814zyEIfYx+ljsdJ18WJ6V4xyWHZ
	TDYDcmPB7IUHNePbPeLq3HBreplZV/CjHaGtzU4tvqYQV0gfuleFbHC8Vu1eB+CTu8zMm/59d
	9h1IJsMew1HNVJEow5pNJMbFmcqBJ9xXlMNpspfDei7M1q2eOPx86OrmZ2sipLXTSBx48mG2E
	hDFTW84ScQHQh3vsWRFyp2ap4UBDsE+lcGwavJS9NnKwa0emg/gXOOdHL28Ffvk2p+HeyZkg+
	UcDPnKLxYZ4bsFWfxpSfRKxZvax9JI8GUXWSNpLdiNQspomZ2LytNkzpyQtjAYii6of0YzCUl
	Q0BNc6qW/3V0WI+rn7fW5EJt0n74mKU0MTrG9yVH37Ra41KXy1/4/QTWBTOKiNOHmmVtrjLvh
	G8yGs8J/n3+EjB6XDqHrj94q/pK94Zu0o5T5TpM4qzHZ5y09a+xW81Ygsv+uaDcYHWeN2bccJ
	9txgCKsYxZDiZ8P4yxcW8s/0mGL7YC2mav9v8Zqfaawgexf7U89GO1Q/OiPF3RkF/G5RzOwV5
	qOgZbGjlAJe2k4sZ8AChRDM24zpSaOZxvjI5hbIhjF6frJucUJV2I34OMQIyrL2PCLaGEaBF1
	MS+pYo/
X-Mailman-Approved-At: Wed, 06 Apr 2016 08:14:50 -0700
Cc: yocto@yoctoproject.org
Subject: [prelink-cross] [patch] gather.c: fix out of bounds access in maybe_pie()
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
X-List-Received-Date: Tue, 05 Apr 2016 22:08:07 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

The buffer passed to maybe_pie() holds only an ELF header and
space where one program header would fit (on 64bit), but the
program header table can be bigger or may be located somewhere
else. The function however loops over the program headers
without checking their position; if it doesn't stop on the
first header it reads random garbage from the stack, and for
large offsets it will segfault.

This patch changes the following:
* passes buffer size and file descriptor as additional
  parameters to maybe_pie();
* ensure that all data access stays inside the buffer's bounds;
* read more data from file if necessary;
* check and use the ELF header's e_phentsize member;
* add some more sanity checks;
* add a few variables for less repetitive code;
* slightly increase e_ident size such that one more program
  header type fits and reloading data becomes less likely.

--- prelink-cross-20151030/src/gather.c
+++ prelink-cross-20151030/src/gather.c
@@ -645,59 +645,89 @@ add_dir_to_dirlist (const char *name, de
   return 0;
 }
 
-/* Determine if a buffer holding an ELF header and program header
-   table may be that of a position-independent executable.  */
+/* Determine if a buffer holding an ELF header and the program header
+   table in the buffer or file may be that of a position-independent
+   executable.  */
 static int
-maybe_pie (unsigned char *e_ident, int big_endian, int sixty_four)
+maybe_pie (unsigned char *e_ident, size_t data_length, int fd,
+	   int big_endian, int sixty_four)
 {
   uint16_t num_phdrs;
   uint16_t phdr;
   size_t p_type_offset;
   size_t phnum_offset;
+  off_t phdr_offset;
+  size_t phentsize_offset;
+  uint16_t phentsize;
+  size_t phdr_size;
   unsigned char *phdr_table;
-  unsigned char *this_phdr;
+  size_t this_offset;
+  unsigned char buffer[0x1000];
 
   if (sixty_four)
     {
-      uint64_t phdr_offset;
-  
+      unsigned char *phoff = e_ident + offsetof (Elf64_Ehdr, e_phoff);
+      phdr_size = sizeof (Elf64_Phdr);
       p_type_offset = offsetof (Elf64_Phdr, p_type);
       phnum_offset = offsetof (Elf64_Ehdr, e_phnum);
+      phentsize_offset = offsetof (Elf64_Ehdr, e_phentsize);
       if (big_endian)
-        phdr_offset = buf_read_ube64 (&e_ident [offsetof (Elf64_Ehdr,
-                                                         e_phoff)]);
+        phdr_offset = buf_read_ube64 (phoff);
       else
-        phdr_offset = buf_read_ule64 (&e_ident [offsetof (Elf64_Ehdr,
-                                                         e_phoff)]);
-      phdr_table = e_ident + phdr_offset;
+        phdr_offset = buf_read_ule64 (phoff);
+      if (phdr_offset < sizeof (Elf64_Ehdr))
+	return 0;
     }
   else
     {
-      uint32_t phdr_offset;
-  
+      unsigned char *phoff = e_ident + offsetof (Elf32_Ehdr, e_phoff);
+      phdr_size = sizeof (Elf32_Phdr);
       p_type_offset = offsetof (Elf32_Phdr, p_type);
       phnum_offset = offsetof (Elf32_Ehdr, e_phnum);
+      phentsize_offset = offsetof (Elf32_Ehdr, e_phentsize);
       if (big_endian)
-        phdr_offset = buf_read_ube32 (&e_ident [offsetof (Elf32_Ehdr,
-                                                         e_phoff)]);
+        phdr_offset = buf_read_ube32 (phoff);
       else
-        phdr_offset = buf_read_ule32 (&e_ident [offsetof (Elf32_Ehdr,
-                                                         e_phoff)]);
-      phdr_table = e_ident + phdr_offset;
-    }
-
-  this_phdr = phdr_table;
+        phdr_offset = buf_read_ule32 (phoff);
+      if (phdr_offset < sizeof (Elf32_Ehdr))
+	return 0;
+     }
 
   if (big_endian)
-    num_phdrs = buf_read_ube16 (&e_ident [phnum_offset]);
+    {
+      num_phdrs = buf_read_ube16 (e_ident + phnum_offset);
+      phentsize = buf_read_ube16 (e_ident + phentsize_offset);
+    }
   else
-    num_phdrs = buf_read_ule16 (&e_ident [phnum_offset]);
-
-  for (phdr = 0; phdr < num_phdrs; phdr++)
     {
-      unsigned char *p_type_start = this_phdr + p_type_offset;
+      num_phdrs = buf_read_ule16 (e_ident + phnum_offset);
+      phentsize = buf_read_ule16 (e_ident + phentsize_offset);
+    }
+  if (num_phdrs == 0 || phentsize < phdr_size)
+    return 0;
+  /* TODO: check that phdr_offset + phentsize * num_phdrs doesn't overflow */
+
+  phdr_table = e_ident;
+  this_offset = phdr_offset < data_length ? phdr_offset : data_length;
+  for (phdr = 0; phdr < num_phdrs; phdr++, this_offset += phentsize)
+    {
+      unsigned char *p_type_start;
       uint32_t p_type;
-  
+
+      if (this_offset + p_type_offset + sizeof (int32_t) > data_length)
+	{
+	  /* Read more headers from file */
+	  ssize_t read_bytes = pread (fd, buffer, sizeof(buffer),
+				      phdr_offset + phdr * (off_t) phentsize);
+	  if (read_bytes < phentsize)
+	    return 0;
+
+	  data_length = read_bytes;
+	  phdr_table = buffer;
+	  this_offset = 0;
+	}
+      
+      p_type_start = phdr_table + this_offset + p_type_offset;
       if (big_endian)
        p_type = buf_read_ube32 (p_type_start);
       else
@@ -709,8 +739,6 @@ maybe_pie (unsigned char *e_ident, int b
       /* Any PT_PHDR entry must come before any PT_LOAD entry.  */
       if (p_type == PT_LOAD)
         return 0;
-  
-      this_phdr += sixty_four ? sizeof (Elf64_Phdr) : sizeof (Elf32_Phdr);
     }
     
   return 0;
@@ -720,7 +748,7 @@ static int
 gather_func (const char *name, const struct stat64 *st, int type,
 	     struct FTW *ftwp)
 {
-  unsigned char e_ident [sizeof (Elf64_Ehdr) + sizeof (Elf64_Phdr)];
+  unsigned char e_ident [sizeof (Elf64_Ehdr) + sizeof (Elf64_Phdr) + 4];
 
 #ifndef HAVE_FTW_ACTIONRETVAL
   if (blacklist_dir)
@@ -817,7 +845,7 @@ make_unprelinkable:
 		goto make_unprelinkable;
 	      else if (e_ident [EI_CLASS] == ELFCLASS32)
 		{
-		  if (maybe_pie (e_ident, 0, 0))
+		  if (maybe_pie (e_ident, sizeof (e_ident), fd, 0, 0))
 		    {
 maybe_pie:
 		      dso = fdopen_dso (fd, name);
@@ -834,7 +862,7 @@ maybe_pie:
 		}
 	      else if (e_ident [EI_CLASS] == ELFCLASS64)
 		{
-		  if (maybe_pie (e_ident, 0, 1))
+		  if (maybe_pie (e_ident, sizeof (e_ident), fd, 0, 1))
 		    goto maybe_pie;
 		  goto close_it;
 		}
@@ -851,13 +879,13 @@ maybe_pie:
 		goto make_unprelinkable;
 	      else if (e_ident [EI_CLASS] == ELFCLASS32)
 		{
-		  if (maybe_pie (e_ident, 1, 0))
+		  if (maybe_pie (e_ident, sizeof (e_ident), fd, 1, 0))
 		    goto maybe_pie;
 		  goto close_it;
 		}
 	      else if (e_ident [EI_CLASS] == ELFCLASS64)
 		{
-		  if (maybe_pie (e_ident, 1, 1))
+		  if (maybe_pie (e_ident, sizeof (e_ident), fd, 1, 1))
 		    goto maybe_pie;
 		  goto close_it;
 		}

