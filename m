Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF828C48292
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 21:06:30 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.5678.1707167186219391425
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 13:06:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=TKGQYmx4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2765244def=joe.slater@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 415L65oo026529
	for <yocto@lists.yoctoproject.org>; Mon, 5 Feb 2024 13:06:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PPS06212021; bh=XGTEJ
	2JF6AwajbAknJ6ZQvPjXvG79PWtYSIrX7nUZVg=; b=TKGQYmx4Y5dmDfTpIbAvp
	7TXin1vMKrmO7/XzPfTFnRizi72h+JKW7qHtFA/G1u720pjKBdfARqXMCVMKP7Mi
	yz6ga8SaX3Cv61ByAFVNSItmQ3T6OxjwXItQwDHiLNKoTe+wgfYlRrfupD3Plxqb
	Pi9i/r75eoUnx69dkGde/RRqbLVkEoEt3prZGVvbtgy39+1vvCIHw2HSIAuF01bK
	iW/r8s0yCnMFZ9mXu3zzDUP+eod9xy3kdVFr02WUDOBAMuoHDHy+Kp4NZfhaFDlm
	Lf9n+ZVmnDg0fZAZY5gkFN2Cw61triPRZ4fcMT0uLryoDp/gBkRCP4Q4TmVlbZnD
	Q==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1hn3t1vf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 13:06:25 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 13:06:22 -0800
Received: from ala-jslater-lx2.corp.ad.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 13:06:22 -0800
From: <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-mingw][PATCH 1/1] gdbm: add win32 support
Date: Mon, 5 Feb 2024 13:06:24 -0800
Message-ID: <20240205210624.1788785-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: ooL3FxSa3-HSIZJu1Toj9EoUcX03I92R
X-Proofpoint-ORIG-GUID: ooL3FxSa3-HSIZJu1Toj9EoUcX03I92R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-05_14,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 clxscore=1011 mlxlogscore=999 suspectscore=0 mlxscore=0 bulkscore=0
 impostorscore=0 phishscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402050157
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 21:06:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62397

From: Li Wang <li.wang@windriver.com>

Signed-off-by: Li Wang <li.wang@windriver.com>
Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 .../gdbm/files/gdbm-1.23-win32.patch          | 1188 +++++++++++++++++
 recipes-support/gdbm/gdbm_%.bbappend          |    7 +
 2 files changed, 1195 insertions(+)
 create mode 100644 recipes-support/gdbm/files/gdbm-1.23-win32.patch
 create mode 100644 recipes-support/gdbm/gdbm_%.bbappend

diff --git a/recipes-support/gdbm/files/gdbm-1.23-win32.patch b/recipes-support/gdbm/files/gdbm-1.23-win32.patch
new file mode 100644
index 0000000..fd6d030
--- /dev/null
+++ b/recipes-support/gdbm/files/gdbm-1.23-win32.patch
@@ -0,0 +1,1188 @@
+gdbm 1.23 win32
+
+the patch is refered to:
+https://github.com/StrawberryPerl/build-extlibs/pull/39/commits/cb1f48c7c7ba61397a86d8f401e9ad9cc2177b9b
+
+Upstream-Status: Inappropriate [oe-specific]
+
+Signed-off-by: Li Wang <li.wang@windriver.com>
+---
+ compat/dbmopen.c  |   50 ++++++++++++++++++++++++++------
+ src/fullio.c      |    6 +++
+ src/gdbmdump.c    |   14 +--------
+ src/gdbmexp.c     |   10 ++++--
+ src/gdbmimp.c     |    4 ++
+ src/gdbmload.c    |    8 ++---
+ src/gdbmopen.c    |    9 +++--
+ src/gdbmsync.c    |    2 +
+ src/lock.c        |   83 ++++++++++++++++++++++++++++++++++++++++++++++++++++--
+ src/recover.c     |   34 ++++++++++++++++++++++
+ src/systems.h     |   14 ++++++++-
+ tests/dtdel.c     |    8 ++++-
+ tests/dtdump.c    |   10 +++++-
+ tests/dtfetch.c   |    8 ++++-
+ tests/dtload.c    |    9 +++++
+ tests/gtdel.c     |    8 ++++-
+ tests/gtdump.c    |    8 ++++-
+ tests/gtfetch.c   |    8 ++++-
+ tests/gtload.c    |    8 ++++-
+ tests/gtopt.c     |   10 +++++-
+ tests/gtver.c     |    5 +++
+ tests/num2word.c  |    9 ++++-
+ tools/gdbm_load.c |    8 ++---
+ tools/gdbmshell.c |   19 +++++++++---
+ tools/gdbmtool.c  |    6 +--
+ tools/mem.c       |    2 -
+ tools/parseopt.c  |    3 +
+ tools/progname.c  |    2 -
+ tools/util.c      |    3 +
+ tools/wordwrap.c  |    8 +++++
+ 30 files changed, 312 insertions(+), 64 deletions(-)
+
+--- a/compat/dbmopen.c
++++ b/compat/dbmopen.c
+@@ -57,13 +57,17 @@ putint (unsigned char *cp, unsigned n)
+ 
+ /* FIXME: revise return codes */
+ static int
+-ndbm_open_dir_file0 (const char *file_name, int pagfd, int mode)
++ndbm_open_dir_file0 (const char *file_name, struct gdbm_file_info *pag, int mode)
+ {
+   int fd = -1;
+   struct stat st, pagst;
+   unsigned char dirbuf[DEF_DIR_SIZE];
+   int flags = (mode & GDBM_OPENMASK) == GDBM_READER ?
+                 O_RDONLY : O_RDWR;
++  int pagfd = pag->desc;
++#ifdef _WIN32
++  HANDLE hFile;
++#endif
+ 
+   if (mode & GDBM_CLOEXEC)
+     flags |= O_CLOEXEC;
+@@ -75,22 +79,49 @@ ndbm_open_dir_file0 (const char *file_na
+     } 
+       
+   /* Previous versions of GDBM linked pag to dir. Try to detect this: */
++#ifdef _WIN32
++  hFile = CreateFile(file_name, 0, FILE_SHARE_READ | FILE_SHARE_WRITE,
++		     NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,
++		     NULL);
++
++  if (hFile != INVALID_HANDLE_VALUE)
++    {
++      BY_HANDLE_FILE_INFORMATION fileInfo;
++      GetFileInformationByHandle (hFile, &fileInfo);
++      CloseHandle (hFile);
++      st.st_size = (fileInfo.nFileSizeHigh * MAXDWORD) + fileInfo.nFileSizeLow;
++
++      if (fileInfo.nNumberOfLinks >= 2)
++	{
++	   BY_HANDLE_FILE_INFORMATION pagInfo;
++	   GetFileInformationByHandle ((HANDLE)_get_osfhandle (pagfd), &pagInfo);
++	   if ((fileInfo.nFileIndexLow == pagInfo.nFileIndexLow) &&
++	       (fileInfo.nFileIndexHigh == pagInfo.nFileIndexHigh))
++	    {
++	      /* Close pag because unlink dir file fails on Windows */
++	      close (pagfd);
++#else
+   if (stat (file_name, &st) == 0)
+     {
+       if (st.st_nlink >= 2)
+ 	{
+ 	  if (st.st_dev == pagst.st_dev && st.st_ino == pagst.st_ino)
+ 	    {
+-	      if (unlink (file_name))
++#endif
++	      int ret = unlink (file_name);
++#ifdef _WIN32
++	      pagfd = pag->desc = open(pag->name, flags | O_BINARY);
++#endif
++	      if (ret)
+ 		{
+ 		  if ((mode & GDBM_OPENMASK) == GDBM_READER)
+ 		    /* Ok, try to cope with it. */
+ 		    return pagfd;
+ 		  else if (errno != ENOENT)
+ 		    {
+-		      gdbm_set_errno (NULL, GDBM_FILE_OPEN_ERROR, TRUE); 
++		      gdbm_set_errno (NULL, GDBM_FILE_OPEN_ERROR, TRUE);
+ 		      return -1;
+-		    } 
++		    }
+ 		}
+ 	    }
+ 	  else
+@@ -108,7 +139,7 @@ ndbm_open_dir_file0 (const char *file_na
+ 	}
+       else
+ 	{
+-	  fd = open (file_name, flags);
++	  fd = open (file_name, flags | O_BINARY);
+ 	  if (fd == -1)
+ 	    {
+ 	      gdbm_set_errno (NULL, GDBM_FILE_OPEN_ERROR, FALSE);
+@@ -140,7 +171,7 @@ ndbm_open_dir_file0 (const char *file_na
+     }
+   
+   /* File does not exist.  Create it. */
+-  fd = open (file_name, flags | O_CREAT, pagst.st_mode & 0777);
++  fd = open (file_name, flags | O_CREAT | O_BINARY, pagst.st_mode & 0777);
+   if (fd >= 0)
+     {
+       putint (dirbuf, GDBM_DIR_MAGIC);
+@@ -160,10 +191,11 @@ ndbm_open_dir_file0 (const char *file_na
+ }
+ 
+ static int
+-ndbm_open_dir_file (const char *base, int pagfd, int mode)
++ndbm_open_dir_file (const char *base, struct gdbm_file_info *pag, int mode)
+ {
+   char *file_name = malloc (strlen (base) + sizeof (DIRSUF));
+   int fd;
++  int pagfd = pag->desc;
+   
+   if (!file_name)
+     {
+@@ -171,7 +203,7 @@ ndbm_open_dir_file (const char *base, in
+       return -1;
+     }
+   fd = ndbm_open_dir_file0 (strcat (strcpy (file_name, base), DIRSUF),
+-			    pagfd, mode);
++			    pag, mode);
+   free (file_name);
+   return fd;
+ }
+@@ -264,7 +296,7 @@ dbm_open (char *file, int flags, int mod
+     }
+   else
+     {
+-      dbm->dirfd = ndbm_open_dir_file (file, dbm->file->desc, open_flags);
++      dbm->dirfd = ndbm_open_dir_file (file, dbm->file, open_flags);
+       if (dbm->dirfd == -1)
+ 	{
+ 	  gdbm_close (dbm->file);
+--- a/src/fullio.c
++++ b/src/fullio.c
+@@ -84,7 +84,13 @@ _gdbm_full_write (GDBM_FILE dbf, void *b
+ int
+ _gdbm_file_extend (GDBM_FILE dbf, off_t size)
+ {
++#ifdef _WIN32
++  SYSTEM_INFO si;
++  GetSystemInfo(&si);
++  size_t page_size = si.dwPageSize;
++#else
+   size_t page_size = sysconf (_SC_PAGESIZE);
++#endif
+   char *buf;
+   off_t file_end;
+ 
+--- a/tools/gdbm_load.c
++++ b/tools/gdbm_load.c
+@@ -18,16 +18,12 @@
+ # include "gdbm.h"
+ # include "gdbmapp.h"
+ # include "gdbmdefs.h"
+-# include <pwd.h>
+-# include <grp.h>
+ 
+ int replace = 0;
+ int meta_mask = 0;
+ int no_meta_option;
+ 
+ int mode;
+-uid_t owner_uid;
+-gid_t owner_gid;
+ 
+ char *parseopt_program_doc = N_("load a GDBM database from a file");
+ char *parseopt_program_args = N_("FILE [DB_FILE]");
+@@ -45,6 +41,7 @@ struct gdbm_option optab[] = {
+ static int
+ set_meta_info (GDBM_FILE dbf)
+ {
++#if 0
+   if (meta_mask)
+     {
+       int fd = gdbm_fdesc (dbf);
+@@ -63,6 +60,7 @@ set_meta_info (GDBM_FILE dbf)
+ 	  return 1;
+ 	}
+     }
++#endif
+   return 0;
+ }
+ 
+@@ -139,6 +137,7 @@ main (int argc, char **argv)
+ 	}
+ 	break;
+ 
++#if 0
+       case 'u':
+ 	{
+ 	  size_t len;
+@@ -198,6 +197,7 @@ main (int argc, char **argv)
+ 	  meta_mask |= GDBM_META_MASK_OWNER;
+ 	}
+ 	break;
++#endif
+ 	  
+       case 'r':
+ 	replace = 1;
+--- a/src/gdbmdump.c
++++ b/src/gdbmdump.c
+@@ -17,8 +17,6 @@
+ # include "autoconf.h"
+ # include "gdbmdefs.h"
+ # include "gdbm.h"
+-# include <pwd.h>
+-# include <grp.h>
+ # include <time.h>
+ 
+ static int
+@@ -56,8 +54,6 @@ _gdbm_dump_ascii (GDBM_FILE dbf, FILE *f
+   time_t t;
+   int fd;
+   struct stat st;
+-  struct passwd *pw;
+-  struct group *gr;
+   datum key;
+   size_t count = 0;
+   unsigned char *buffer = NULL;
+@@ -76,13 +72,7 @@ _gdbm_dump_ascii (GDBM_FILE dbf, FILE *f
+ 
+   fprintf (fp, "#:file=%s\n", dbf->name);
+   fprintf (fp, "#:uid=%lu,", (unsigned long) st.st_uid);
+-  pw = getpwuid (st.st_uid);
+-  if (pw)
+-    fprintf (fp, "user=%s,", pw->pw_name);
+   fprintf (fp, "gid=%lu,", (unsigned long) st.st_gid);
+-  gr = getgrgid (st.st_gid);
+-  if (gr)
+-    fprintf (fp, "group=%s,", gr->gr_name);
+   fprintf (fp, "mode=%03o\n", st.st_mode & 0777);
+   fprintf (fp, "#:format=%s\n", dbf->xheader ? "numsync" : "standard");
+   fprintf (fp, "# End of header\n");
+@@ -179,7 +169,7 @@ gdbm_dump (GDBM_FILE dbf, const char *fi
+   switch (open_flags)
+     {
+     case GDBM_WRCREAT:
+-      nfd = open (filename, O_WRONLY | O_CREAT | O_EXCL, mode);
++      nfd = open (filename, O_WRONLY | O_BINARY | O_CREAT | O_EXCL, mode);
+       if (nfd == -1)
+ 	{
+ 	  GDBM_SET_ERRNO (NULL, GDBM_FILE_OPEN_ERROR, FALSE);
+@@ -187,7 +177,7 @@ gdbm_dump (GDBM_FILE dbf, const char *fi
+ 	}
+       break;
+     case GDBM_NEWDB:
+-      nfd = open (filename, O_WRONLY | O_CREAT | O_TRUNC, mode);
++      nfd = open (filename, O_WRONLY | O_BINARY | O_CREAT | O_TRUNC, mode);
+       if (nfd == -1)
+ 	{
+ 	  GDBM_SET_ERRNO (NULL, GDBM_FILE_OPEN_ERROR, FALSE);
+--- a/src/gdbmexp.c
++++ b/src/gdbmexp.c
+@@ -18,7 +18,11 @@
+ 
+ /* Include system configuration before all else. */
+ # include "autoconf.h"
++#ifdef _WIN32
++# include <winsock2.h>
++#else
+ # include <arpa/inet.h>
++#endif
+ 
+ #ifdef GDBM_EXPORT_18
+ # define GDBM_SET_ERRNO(dbf, ec, fatal) gdbm_errno = ec
+@@ -108,7 +112,7 @@ gdbm_export (GDBM_FILE dbf, const char *
+   switch (flags)
+     {
+     case GDBM_WRCREAT:
+-      nfd = open (exportfile, O_WRONLY | O_CREAT | O_EXCL, mode);
++      nfd = open (exportfile, O_WRONLY | O_BINARY | O_CREAT | O_EXCL, mode);
+       if (nfd == -1)
+ 	{
+ 	  GDBM_SET_ERRNO (NULL, GDBM_FILE_OPEN_ERROR, FALSE);
+@@ -116,7 +120,7 @@ gdbm_export (GDBM_FILE dbf, const char *
+ 	}
+       break;
+     case GDBM_NEWDB:
+-      nfd = open (exportfile, O_WRONLY | O_CREAT | O_TRUNC, mode);
++      nfd = open (exportfile, O_WRONLY | O_BINARY | O_CREAT | O_TRUNC, mode);
+       if (nfd == -1)
+ 	{
+ 	  GDBM_SET_ERRNO (NULL, GDBM_FILE_OPEN_ERROR, FALSE);
+@@ -132,7 +136,7 @@ gdbm_export (GDBM_FILE dbf, const char *
+       return -1;
+   }
+ 
+-  fp = fdopen (nfd, "w");
++  fp = fdopen (nfd, "wb");
+   if (!fp)
+     {
+       close (nfd);
+--- a/src/gdbmimp.c
++++ b/src/gdbmimp.c
+@@ -17,7 +17,11 @@
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.   */
+ 
+ # include "autoconf.h"
++#ifdef _WIN32
++# include <winsock2.h>
++#else
+ # include <arpa/inet.h>
++#endif
+ # include <limits.h>
+ 
+ # include "gdbmdefs.h"
+--- a/src/gdbmload.c
++++ b/src/gdbmload.c
+@@ -18,8 +18,6 @@
+ # include "gdbmdefs.h"
+ # include "gdbm.h"
+ # include <sys/types.h>
+-# include <pwd.h>
+-# include <grp.h>
+ 
+ struct datbuf
+ {
+@@ -289,13 +287,12 @@ static int
+ _set_gdbm_meta_info (GDBM_FILE dbf, char *param, int meta_mask)
+ {
+   unsigned long n;
+-  uid_t owner_uid;
+-  uid_t owner_gid;
+   mode_t mode;
+   int meta_flags = 0;
+   const char *p;
+   char *end;
+ 
++#if 0
+   if (!(meta_mask & GDBM_META_MASK_OWNER))
+     {
+       p = getparm (param, "user");
+@@ -341,6 +338,7 @@ _set_gdbm_meta_info (GDBM_FILE dbf, char
+ 	    }
+ 	}
+     }
++#endif
+   
+   if (!(meta_mask & GDBM_META_MASK_MODE))
+     {
+@@ -357,6 +355,7 @@ _set_gdbm_meta_info (GDBM_FILE dbf, char
+ 	}
+     }
+   
++#if 0 
+   if (meta_flags)
+     {
+       int fd = gdbm_fdesc (dbf);
+@@ -387,6 +386,7 @@ _set_gdbm_meta_info (GDBM_FILE dbf, char
+ 	  return 1;
+ 	}
+     }
++#endif
+   return 0;
+ }
+ 
+--- a/src/gdbmopen.c
++++ b/src/gdbmopen.c
+@@ -23,7 +23,7 @@
+ #include <stddef.h>
+ 
+ static void
+-compute_directory_size (blksize_t block_size,
++compute_directory_size (ssize_t block_size,
+ 			int *ret_dir_size, int *ret_dir_bits)
+ {
+   /* Create the initial hash table directory.  */
+@@ -225,7 +225,7 @@ _gdbm_ftruncate (GDBM_FILE dbf)
+   return ftruncate (dbf->desc, 0);
+ #else
+   int fd;
+-  fd = open (dbf->name, O_RDWR|O_TRUNC, mode);
++  fd = open (dbf->name, O_RDWR|O_TRUNC|O_BINARY, mode);
+   if (fd == -1)
+     return -1;
+   return close (fd);
+@@ -396,8 +396,7 @@ gdbm_fd_open (int fd, const char *file_n
+ 	      if (!(flags & GDBM_CLOERROR))
+ 		dbf->desc = -1;
+ 	      gdbm_close (dbf);
+-	      GDBM_SET_ERRNO2 (NULL, GDBM_BLOCK_SIZE_ERROR, FALSE,
+-			       GDBM_DEBUG_OPEN);
++	      GDBM_SET_ERRNO2 (NULL, GDBM_BLOCK_SIZE_ERROR, FALSE,GDBM_DEBUG_OPEN);
+ 	      return NULL;
+ 	    }
+ 	  else
+@@ -737,6 +736,8 @@ gdbm_open (const char *file, int block_s
+     }
+   if (flags & GDBM_CLOEXEC)
+     fbits |= O_CLOEXEC;
++
++  fbits |= O_BINARY;
+   
+   fd = open (file, fbits, mode);
+   if (fd < 0)
+--- a/tools/gdbmtool.c
++++ b/tools/gdbmtool.c
+@@ -18,10 +18,6 @@
+ #include <errno.h>
+ #include <ctype.h>
+ #include <signal.h>
+-#include <pwd.h>
+-#include <sys/ioctl.h>
+-#include <sys/wait.h>
+-#include <termios.h>
+ #include <stdarg.h>
+ #ifdef HAVE_LOCALE_H
+ # include <locale.h>
+@@ -36,6 +32,7 @@ source_rcfile (void)
+     {
+       istr = instream_file_create (GDBMTOOLRC);
+     }
++#if 0
+   else
+     {
+       char *fname;
+@@ -64,6 +61,7 @@ source_rcfile (void)
+ 	exit (EXIT_FATAL);
+       yyparse ();
+     }
++#endif
+ }
+ 
+ #if GDBM_DEBUG_ENABLE
+--- a/src/lock.c
++++ b/src/lock.c
+@@ -23,7 +23,7 @@
+ 
+ #include <errno.h>
+ 
+-#if HAVE_FLOCK
++#if HAVE_FLOCK || defined(_WIN32)
+ # ifndef LOCK_SH
+ #  define LOCK_SH 1
+ # endif
+@@ -41,6 +41,83 @@
+ # endif
+ #endif
+ 
++#ifdef _WIN32
++#include <errno.h>
++#include <limits.h>
++
++/*
++ * flock support code for windows
++ *
++ * This code is derived from ruby (http://www.ruby-lang.org/).
++ * Original copyright notice is below.
++ */
++/*
++ *  Copyright (c) 1993, Intergraph Corporation
++ *
++ *  You may distribute under the terms of either the GNU General Public
++ *  License or the Artistic License, as specified in the perl README file.
++ *
++ *  Various Unix compatibility functions and NT specific functions.
++ *
++ *  Some of this code was derived from the MSDOS port(s) and the OS/2 port.
++ *
++ */
++
++#ifndef EWOULDBLOCK
++#define EWOULDBLOCK 10035 /* EBASEERR + 35 (winsock.h) */
++#endif
++
++#define LK_ERR(f,i) ((f) ? (i = 0) : (errno = GetLastError() == ERROR_LOCK_VIOLATION ? EWOULDBLOCK : EACCES))
++#define LK_LEN      ULONG_MAX
++
++static int
++flock_winnt(HANDLE fh, int oper)
++{
++    OVERLAPPED o;
++    int i = -1;
++
++    memset(&o, 0, sizeof(o));
++
++    switch(oper) {
++      case LOCK_SH:		/* shared lock */
++	LK_ERR(LockFileEx(fh, 0, 0, LK_LEN, LK_LEN, &o), i);
++	break;
++      case LOCK_EX:		/* exclusive lock */
++	LK_ERR(LockFileEx(fh, LOCKFILE_EXCLUSIVE_LOCK, 0, LK_LEN, LK_LEN, &o), i);
++	break;
++      case LOCK_SH|LOCK_NB:	/* non-blocking shared lock */
++	LK_ERR(LockFileEx(fh, LOCKFILE_FAIL_IMMEDIATELY, 0, LK_LEN, LK_LEN, &o), i);
++	break;
++      case LOCK_EX|LOCK_NB:	/* non-blocking exclusive lock */
++	LK_ERR(LockFileEx(fh,
++			  LOCKFILE_EXCLUSIVE_LOCK|LOCKFILE_FAIL_IMMEDIATELY,
++			  0, LK_LEN, LK_LEN, &o), i);
++	break;
++      case LOCK_UN:		/* unlock lock */
++	LK_ERR(UnlockFileEx(fh, 0, LK_LEN, LK_LEN, &o), i);
++	break;
++      default:            /* unknown */
++	errno = EINVAL;
++	break;
++    }
++    return i;
++}
++
++#undef LK_ERR
++
++int
++flock(int fd, int oper)
++{
++    static int (*locker)(HANDLE, int) = NULL;
++
++    if (!locker) {
++	locker = flock_winnt;
++    }
++
++    return locker((HANDLE)_get_osfhandle(fd), oper);
++}
++#endif /* _WIN32 */
++
+ #if defined(F_SETLK) && defined(F_RDLCK) && defined(F_WRLCK)
+ # define HAVE_FCNTL_LOCK 1
+ #else
+@@ -65,7 +142,7 @@ _gdbm_unlock_file (GDBM_FILE dbf)
+   switch (dbf->lock_type)
+     {
+       case LOCKING_FLOCK:
+-#if HAVE_FLOCK
++#if HAVE_FLOCK || defined(_WIN32)
+ 	flock (dbf->desc, LOCK_UN);
+ #endif
+ 	break;
+@@ -101,7 +178,7 @@ _gdbm_lock_file (GDBM_FILE dbf)
+ #endif
+   int lock_val = -1;
+ 
+-#if HAVE_FLOCK
++#if HAVE_FLOCK || defined(_WIN32)
+   if (dbf->read_write == GDBM_READER)
+     lock_val = flock (dbf->desc, LOCK_SH + LOCK_NB);
+   else
+--- a/tools/mem.c
++++ b/tools/mem.c
+@@ -14,7 +14,7 @@
+    You should have received a copy of the GNU General Public License
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.   */
+ 
+-# include "autoconf.h"
++# include "../autoconf.h"
+ # include "gdbm.h"
+ # include "gdbmapp.h"
+ # include "gdbmdefs.h"
+--- a/tools/parseopt.c
++++ b/tools/parseopt.c
+@@ -14,10 +14,11 @@
+    You should have received a copy of the GNU General Public License
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.   */
+ 
+-# include "autoconf.h"
++# include "../autoconf.h"
+ # include "gdbm.h"
+ # include "gdbmapp.h"
+ # include "gdbmdefs.h"
++#include "autoconf.h"
+ # include <stdio.h>
+ # include <stdarg.h>
+ # include <errno.h>
+--- a/tools/progname.c
++++ b/tools/progname.c
+@@ -14,7 +14,7 @@
+    You should have received a copy of the GNU General Public License
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.   */
+ 
+-# include "autoconf.h"
++# include "../autoconf.h"
+ # include "gdbm.h"
+ # include "gdbmapp.h"
+ # include <string.h>
+--- a/src/recover.c
++++ b/src/recover.c
+@@ -19,6 +19,20 @@
+ 
+ #define TMPSUF ".XXXXXX"
+ 
++#if !HAVE_RENAME
++#if defined(_WIN32)
++static int
++_gdbm_rename (char *old_name, char *new_name)
++{
++  if (!MoveFileEx (old_name, new_name, MOVEFILE_REPLACE_EXISTING))
++    return -1;
++
++  return 0;
++}
++#define rename _gdbm_rename
++#endif
++#endif
++
+ int
+ gdbm_copy_meta (GDBM_FILE dst, GDBM_FILE src)
+ {
+@@ -29,16 +43,20 @@ gdbm_copy_meta (GDBM_FILE dst, GDBM_FILE
+       GDBM_SET_ERRNO (src, GDBM_FILE_STAT_ERROR, src->need_recovery);
+       return -1;
+     }
++#if HAVE_FCHOWN
+   if (fchown (dst->desc, st.st_uid, st.st_gid))
+     {
+       GDBM_SET_ERRNO (dst, GDBM_ERR_FILE_OWNER, dst->need_recovery);
+       return -1;
+     }
++#endif
++#if HAVE_FCHMOD
+   if (fchmod (dst->desc, st.st_mode & 0777))
+     {
+       GDBM_SET_ERRNO (dst, GDBM_ERR_FILE_MODE, dst->need_recovery);
+       return -1;
+     }
++#endif
+   return 0;
+ }
+ 
+@@ -132,18 +150,34 @@ _gdbm_finish_transfer (GDBM_FILE dbf, GD
+     _gdbm_cache_init (new_dbf, dbf->cache_size);
+   
+   /* Move the new file to old name. */
++#ifdef _WIN32
++  close (new_dbf->desc);
+ 
++  if (dbf->file_locking)
++    {
++      _gdbm_unlock_file (dbf);
++    }
++  close (dbf->desc);
++#endif
+   if (rename (new_dbf->name, dbf->name) != 0)
+     {
+       GDBM_SET_ERRNO (NULL, GDBM_REORGANIZE_FAILED, FALSE);
++#ifdef _WIN32
++      dbf->desc = open (dbf->name, O_RDWR|O_BINARY, 0);
++      new_dbf->desc = open (new_dbf->name, O_RDWR|O_BINARY, 0);
++#endif
+       gdbm_close (new_dbf);
+       return -1;
+     }
+ 
+   /* Fix up DBF to have the correct information for the new file. */
++#ifdef _WIN32
++  new_dbf->desc = open (dbf->name, O_RDWR|O_BINARY, 0);
++#else
+   if (dbf->file_locking)
+     _gdbm_unlock_file (dbf);
+   close (dbf->desc);
++#endif
+   free (dbf->header);
+   free (dbf->dir);
+ 
+--- a/src/systems.h
++++ b/src/systems.h
+@@ -17,6 +17,11 @@
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.    */
+ 
+ /* Include all system headers first. */
++#ifdef _WIN32
++# undef _WIN32_WINNT
++# define _WIN32_WINNT 0x0601
++# include <windows.h>
++#endif
+ #include <sys/types.h>
+ #include <stdio.h>
+ #include <stddef.h>
+@@ -43,6 +48,10 @@
+ # define O_CLOEXEC 0
+ #endif
+ 
++#ifndef O_BINARY
++# define O_BINARY 0
++#endif
++
+ /* Default block size.  Some systems do not have blocksize in their
+    stat record. This code uses the BSD blocksize from stat. */
+ 
+@@ -63,4 +72,7 @@
+ # define STDERR_FILENO 2
+ #endif
+ 
+-
++/* Windows port of flock */
++#ifdef _WIN32
++extern int flock(int fd, int oper);
++#endif
+--- a/tools/util.c
++++ b/tools/util.c
+@@ -15,7 +15,6 @@
+    along with GDBM. If not, see <http://www.gnu.org/licenses/>.    */
+ 
+ #include "gdbmtool.h"
+-#include <pwd.h>
+ 
+ char *
+ mkfilename (const char *dir, const char *file, const char *suf)
+@@ -44,6 +43,7 @@ mkfilename (const char *dir, const char
+ char *
+ tildexpand (char *s)
+ {
++#if 0
+   if (s[0] == '~')
+     {
+       char *p = s + 1;
+@@ -64,6 +64,7 @@ tildexpand (char *s)
+       if (pw)
+ 	return mkfilename (pw->pw_dir, p + len + 1, NULL);
+     }
++#endif
+   return estrdup (s);
+ }
+ 
+--- a/tests/dtdel.c
++++ b/tests/dtdel.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include "dbm.h"
+@@ -30,7 +31,12 @@ main (int argc, char **argv)
+   int flags = 0;
+   int data_z = 0;
+   int rc = 0;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/dtdump.c
++++ b/tests/dtdump.c
+@@ -16,10 +16,13 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include "dbm.h"
+ #include "progname.h"
++#include "../src/gdbm.h"
++#include "../compat/dbm.h"
+ 
+ int
+ main (int argc, char **argv)
+@@ -29,7 +32,12 @@ main (int argc, char **argv)
+   datum key;
+   datum data;
+   int delim = '\t';
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/dtfetch.c
++++ b/tests/dtfetch.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include "dbm.h"
+@@ -44,7 +45,12 @@ main (int argc, char **argv)
+   int data_z = 0;
+   int delim = 0;
+   int rc = 0;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/dtload.c
++++ b/tests/dtload.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include <unistd.h>
+@@ -39,7 +40,13 @@ main (int argc, char **argv)
+   datum data;
+   int delim = '\t';
+   int data_z = 0;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdin), O_BINARY);
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/gtdel.c
++++ b/tests/gtdel.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include <errno.h>
+@@ -32,7 +33,12 @@ main (int argc, char **argv)
+   GDBM_FILE dbf;
+   int data_z = 0;
+   int rc = 0;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/gtdump.c
++++ b/tests/gtdump.c
+@@ -17,6 +17,7 @@
+ #include "autoconf.h"
+ #include <stdio.h>
+ #include <stdlib.h>
++#include <fcntl.h>
+ #include <string.h>
+ #include <errno.h>
+ #include "gdbm.h"
+@@ -32,7 +33,12 @@ main (int argc, char **argv)
+   int flags = 0;
+   GDBM_FILE dbf;
+   int delim = '\t';
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdin), O_BINARY);
++  _setmode(_fileno(stdout), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/gtfetch.c
++++ b/tests/gtfetch.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <string.h>
+ #include <errno.h>
+@@ -47,7 +48,12 @@ main (int argc, char **argv)
+   int data_z = 0;
+   int delim = 0;
+   int rc = 0;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++  _setmode(_fileno(stderr), O_BINARY);
++#endif
++
+   while (--argc)
+     {
+       char *arg = *++argv;
+--- a/tests/gtload.c
++++ b/tests/gtload.c
+@@ -16,6 +16,7 @@
+ */
+ #include "autoconf.h"
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <stdlib.h>
+ #include <stdarg.h>
+ #include <string.h>
+@@ -102,6 +103,11 @@ main (int argc, char **argv)
+ #ifdef GDBM_DEBUG_ENABLE
+   gdbm_debug_printer = debug_printer;
+ #endif
++
++#ifdef _WIN32
++  _setmode(_fileno(stdin), O_BINARY);
++  _setmode(_fileno(stdout), O_BINARY);
++#endif
+   
+   while (--argc)
+     {
+@@ -203,7 +209,7 @@ main (int argc, char **argv)
+   dbf = gdbm_open (dbname, block_size, mode|flags, 00664, NULL);
+   if (!dbf)
+     {
+-      fprintf (stderr, "gdbm_open failed: %s\n", gdbm_strerror (gdbm_errno));
++      fprintf (stderr, "gdbm_open failed: %s", gdbm_strerror (gdbm_errno));
+       exit (1);
+     }
+ 
+--- a/tests/gtopt.c
++++ b/tests/gtopt.c
+@@ -178,7 +178,11 @@ init_maxmapsize (void *valptr, int valsi
+ int
+ test_maxmapsize (void *valptr)
+ {
++#ifdef _SC_PAGESIZE
+   size_t page_size = sysconf (_SC_PAGESIZE);
++#else
++  size_t page_size = 4096;
++#endif
+   size_t expected_size = ((mapped_size_max + page_size - 1) / page_size) *
+ 	                          page_size;
+   return (*(size_t*) valptr == expected_size) ? RES_PASS : RES_FAIL;
+@@ -308,7 +312,11 @@ main (int argc, char **argv)
+ {
+   GDBM_FILE dbf;
+   struct optest *op;
+-  
++
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++#endif
++
+   progname = canonical_progname (argv[0]);
+   while (--argc)
+     {
+--- a/tests/gtver.c
++++ b/tests/gtver.c
+@@ -17,6 +17,7 @@
+ #include "autoconf.h"
+ #include <stdlib.h>
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <string.h>
+ #include "gdbm.h"
+ #include "progname.h"
+@@ -31,6 +32,10 @@ main (int argc, char **argv)
+   const char *progname = canonical_progname (argv[0]);
+   int library = 0;
+ 
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++#endif
++
+   if (argc == 1)
+     {
+       printf ("%s\n", gdbm_version);
+--- a/tests/num2word.c
++++ b/tests/num2word.c
+@@ -17,6 +17,7 @@
+ #include "autoconf.h"
+ #include <stdlib.h>
+ #include <stdio.h>
++#include <fcntl.h>
+ #include <string.h>
+ #include <unistd.h>
+ #include <errno.h>
+@@ -328,6 +329,10 @@ usage (FILE *fp)
+ int
+ main (int argc, char **argv)
+ {
++#ifdef _WIN32
++  _setmode(_fileno(stdout), O_BINARY);
++#endif
++
+   progname = *argv++;
+   --argc;
+ 
+@@ -403,10 +408,10 @@ main (int argc, char **argv)
+   
+   if (random_option)
+     {
+-      srandom (time (NULL));
++      srand (time (NULL));
+       while (range_total)
+ 	{
+-	  numeral_t n = range_get (random () % range_total);
++	  numeral_t n = range_get (rand () % range_total);
+ 	  print_number (n);
+ 	}
+     }
+--- a/src/gdbmsync.c
++++ b/src/gdbmsync.c
+@@ -440,6 +440,8 @@ gdbm_file_sync (GDBM_FILE dbf)
+       GDBM_SET_ERRNO (dbf, GDBM_FILE_SYNC_ERROR, TRUE);
+       r = 1;
+     }
++#elif _WIN32
++  FlushFileBuffers(dbf);
+ #else
+   sync ();
+   sync ();
+--- a/tools/gdbmshell.c
++++ b/tools/gdbmshell.c
+@@ -21,12 +21,7 @@
+ #include <errno.h>
+ #include <ctype.h>
+ #include <signal.h>
+-#include <pwd.h>
+-#include <sys/ioctl.h>
+-#include <sys/wait.h>
+ #include <sys/time.h>
+-#include <sys/resource.h>
+-#include <termios.h>
+ #include <stdarg.h>
+ #ifdef HAVE_LOCALE_H
+ # include <locale.h>
+@@ -1113,6 +1108,7 @@ struct snapshot_status_info
+ static char *
+ decode_mode (mode_t mode, char *buf)
+ {
++#ifndef _WIN32
+   char *s = buf;
+   *s++ = mode & S_IRUSR ? 'r' : '-';
+   *s++ = mode & S_IWUSR ? 'w' : '-';
+@@ -1130,6 +1126,7 @@ decode_mode (mode_t mode, char *buf)
+ 	       ? (mode & S_IXOTH ? 't' : 'T')
+ 	       : (mode & S_IXOTH ? 'x' : '-'));
+   *s = '\0';
++#endif
+   return buf;
+ }
+ 
+@@ -1744,6 +1741,9 @@ static int
+ shell_handler (struct command_param *param,
+ 	       struct command_environ *cenv GDBM_ARG_UNUSED)
+ {
++#ifdef _WIN32
++  return 0;
++#else
+   char *argv[4];
+   pid_t pid, rc;
+   int status;
+@@ -1792,6 +1792,7 @@ shell_handler (struct command_param *par
+ 	terror (_("command terminated on signal %d"), WTERMSIG (status));
+     }
+   return rc;
++#endif
+ }
+ 
+ static int
+@@ -2893,11 +2894,13 @@ struct timing
+ void
+ timing_start (struct timing *t)
+ {
++#ifndef _WIN32
+   struct rusage r;
+   gettimeofday (&t->real, NULL);
+   getrusage (RUSAGE_SELF, &r);
+   t->user  = r.ru_utime;
+   t->sys = r.ru_stime;
++#endif
+ }
+ 
+ static inline struct timeval
+@@ -2919,6 +2922,7 @@ timeval_sub (struct timeval a, struct ti
+ void
+ timing_stop (struct timing *t)
+ {	   
++#ifndef _WIN32
+   struct rusage r;
+   struct timeval now;
+   
+@@ -2927,6 +2931,7 @@ timing_stop (struct timing *t)
+   t->real = timeval_sub (now, t->real);
+   t->user = timeval_sub (r.ru_utime, t->user);
+   t->sys = timeval_sub (r.ru_stime, t->sys);
++#endif
+ }
+ 
+ static int
+@@ -3135,12 +3140,14 @@ gdbmshell_run (int (*init) (void *, inst
+       rc = input_context_push (instream);
+       if (rc == 0)
+ 	{
++#ifndef _WIN32
+ 	  struct sigaction act, old_act;
+ 	  
+ 	  act.sa_flags = 0;
+ 	  sigemptyset(&act.sa_mask);
+ 	  act.sa_handler = SIG_IGN;
+ 	  sigaction (SIGPIPE, &act, &old_act);
++#endif
+ 	  /* Welcome message. */
+ 	  if (instream_interactive (instream) && !variable_is_true ("quiet"))
+ 	    printf (_("\nWelcome to the gdbm tool.  Type ? for help.\n\n"));
+@@ -3148,7 +3155,9 @@ gdbmshell_run (int (*init) (void *, inst
+ 	  input_context_drain ();
+ 	  yylex_destroy ();
+ 	  closedb ();
++#ifndef _WIN32
+ 	  sigaction (SIGPIPE, &old_act, NULL);
++#endif
+ 	}
+       else
+ 	instream_close (instream);
+--- a/tools/wordwrap.c
++++ b/tools/wordwrap.c
+@@ -23,8 +23,10 @@
+ #include <wchar.h>
+ #include <errno.h>
+ #include <limits.h>
++#ifndef _WIN32
+ #include <termios.h>
+ #include <sys/ioctl.h>
++#endif
+ 
+ #define UNSET ((unsigned)-1)
+ #define ISSET(c) (c != UNSET)
+@@ -72,11 +74,15 @@ wordwrap_line_init (WORDWRAP_FILE wf)
+ static unsigned
+ detect_right_margin (WORDWRAP_FILE wf)
+ {
++#ifndef _WIN32
+   struct winsize ws;
++#endif
+   unsigned r = 0;
+   
++#ifndef _WIN32
+   ws.ws_col = ws.ws_row = 0;
+   if ((ioctl (wf->fd, TIOCGWINSZ, (char *) &ws) < 0) || ws.ws_col == 0)
++#endif
+     {
+       char *p = getenv ("COLUMNS");
+       if (p)
+@@ -91,8 +97,10 @@ detect_right_margin (WORDWRAP_FILE wf)
+       else
+ 	r = DEFAULT_RIGHT_MARGIN;
+     }
++#ifndef _WIN32
+   else
+     r = ws.ws_col;
++#endif
+   return r;
+ }
+ 
diff --git a/recipes-support/gdbm/gdbm_%.bbappend b/recipes-support/gdbm/gdbm_%.bbappend
new file mode 100644
index 0000000..19f92d4
--- /dev/null
+++ b/recipes-support/gdbm/gdbm_%.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+
+SRC_URI:append:mingw32:class-nativesdk = " \
+           file://gdbm-1.23-win32.patch \                                                                                                                                                                                                   
+"
+LDFLAGS:append:mingw32:class-nativesdk = " -lws2_32"
+
-- 
2.25.1


