Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14EBEE013D6
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2013 16:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747448"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:15 +0100
Message-Id: <d524bc712812a5da436584e28fe58ba8bfa7f7d2.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 2/6] libgsm: remove
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:05 -0000

No longer needed. The recipe is currently maintained in meta-telephony.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../libgsm/libgsm-1.0.12/01_makefile.patch         |  82 -----------
 .../libgsm/libgsm-1.0.12/02_cplusplus.patch        |  33 -----
 .../libgsm/libgsm-1.0.12/03_config.patch           | 162 ---------------------
 .../libgsm/libgsm-1.0.12/04_includes.patch         |  51 -------
 .../libgsm-1.0.12/05_compiler_warnings.patch       | 106 --------------
 recipes-multimedia/libgsm/libgsm_1.0.12.bb         |  40 -----
 6 files changed, 474 deletions(-)
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/01_makefile.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/02_cplusplus.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/03_config.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/04_includes.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm-1.0.12/05_compiler_warnings.patch
 delete mode 100644 recipes-multimedia/libgsm/libgsm_1.0.12.bb

diff --git a/recipes-multimedia/libgsm/libgsm-1.0.12/01_makefile.patch b/recipes-multimedia/libgsm/libgsm-1.0.12/01_makefile.patch
deleted file mode 100644
index 5338b15..0000000
--- a/recipes-multimedia/libgsm/libgsm-1.0.12/01_makefile.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-Some changes to Makefile.
-
-Use symbol link instead of hard link.
-Build out dynamic libgsm library.
-
-Derived from meta-demo layer
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Inappropriate [configuration]
-
-diff -urNad libgsm-1.0.12~/Makefile libgsm-1.0.12/Makefile
---- libgsm-1.0.12~/Makefile	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.12/Makefile	2007-11-01 15:43:06.000000000 +0100
-@@ -96,7 +96,7 @@
- #  Other tools
- 
- SHELL		= /bin/sh
--LN		= ln
-+LN		= ln -s
- BASENAME 	= basename
- AR		= ar
- ARFLAGS		= cr
-@@ -140,6 +140,7 @@
- # Targets
- 
- LIBGSM	= $(LIB)/libgsm.a
-+LIBGSMSO= $(LIB)/libgsm.so
- 
- TOAST	= $(BIN)/toast
- UNTOAST	= $(BIN)/untoast
-@@ -279,7 +280,7 @@
- 
- # Target rules
- 
--all:		$(LIBGSM) $(TOAST) $(TCAT) $(UNTOAST)
-+all:		$(LIBGSM) $(LIBGSMSO) $(TOAST) $(TCAT) $(UNTOAST)
- 		@-echo $(ROOT): Done.
- 
- tst:		$(TST)/lin2cod $(TST)/cod2lin $(TOAST) $(TST)/test-result
-@@ -299,6 +300,11 @@
- 
- # The basic API: libgsm
- 
-+$(LIBGSMSO):	$(LIB) $(GSM_OBJECTS)
-+		$(LD) -o $@.1.0.12 -shared -Xlinker -soname -Xlinker libgsm.so.1 $(GSM_OBJECTS) -lc $(LDFLAGS)
-+		ln -fs libgsm.so.1.0.12 lib/libgsm.so.1
-+		ln -fs libgsm.so.1.0.12 lib/libgsm.so
-+
- $(LIBGSM):	$(LIB) $(GSM_OBJECTS)
- 		-rm $(RMFLAGS) $(LIBGSM)
- 		$(AR) $(ARFLAGS) $(LIBGSM) $(GSM_OBJECTS)
-@@ -308,15 +314,15 @@
- # Toast, Untoast and Tcat -- the compress-like frontends to gsm.
- 
- $(TOAST):	$(BIN) $(TOAST_OBJECTS) $(LIBGSM)
--		$(LD) $(LFLAGS) -o $(TOAST) $(TOAST_OBJECTS) $(LIBGSM) $(LDLIB)
-+		$(LD) $(LFLAGS) -o $(TOAST) $(TOAST_OBJECTS) $(LIBGSMSO) $(LDLIB)
- 
- $(UNTOAST):	$(BIN) $(TOAST)
- 		-rm $(RMFLAGS) $(UNTOAST)
--		$(LN) $(TOAST) $(UNTOAST)
-+		$(LN) toast $(UNTOAST)
- 
- $(TCAT):	$(BIN) $(TOAST)
- 		-rm $(RMFLAGS) $(TCAT)
--		$(LN) $(TOAST) $(TCAT)
-+		$(LN) toast $(TCAT)
- 
- 
- # The local bin and lib directories
-@@ -426,7 +432,9 @@
- 
- clean:	semi-clean
- 		-rm $(RMFLAGS) $(LIBGSM) $(ADDTST)/add		\
--			$(TOAST) $(TCAT) $(UNTOAST)	\
-+			$(LIBGSMSO) $(LIB)/libgsm.so.1.0.12	\
-+			$(LIB)libgsm.so.1			\
-+			$(TOAST) $(TCAT) $(UNTOAST)		\
- 			$(ROOT)/gsm-1.0.tar.Z
- 
- 
diff --git a/recipes-multimedia/libgsm/libgsm-1.0.12/02_cplusplus.patch b/recipes-multimedia/libgsm/libgsm-1.0.12/02_cplusplus.patch
deleted file mode 100644
index 1b55ff9..0000000
--- a/recipes-multimedia/libgsm/libgsm-1.0.12/02_cplusplus.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-Add some cpluplus declarations
-
-Derived from meta-demo layer
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Pending
-
-diff -urNad libgsm-1.0.10~/inc/gsm.h libgsm-1.0.10/inc/gsm.h
---- libgsm-1.0.10~/inc/gsm.h	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/inc/gsm.h	2007-11-01 15:44:52.000000000 +0100
-@@ -54,6 +54,10 @@
- #define	GSM_OPT_FRAME_INDEX	5
- #define	GSM_OPT_FRAME_CHAIN	6
- 
-+#ifdef __cplusplus
-+extern "C" {
-+#endif
-+
- extern gsm  gsm_create 	GSM_P((void));
- extern void gsm_destroy GSM_P((gsm));	
- 
-@@ -66,6 +70,10 @@
- extern int  gsm_explode GSM_P((gsm, gsm_byte   *, gsm_signal *));
- extern void gsm_implode GSM_P((gsm, gsm_signal *, gsm_byte   *));
- 
-+#ifdef __cplusplus
-+}
-+#endif
-+
- #undef	GSM_P
- 
- #endif	/* GSM_H */
diff --git a/recipes-multimedia/libgsm/libgsm-1.0.12/03_config.patch b/recipes-multimedia/libgsm/libgsm-1.0.12/03_config.patch
deleted file mode 100644
index 5ae83e8..0000000
--- a/recipes-multimedia/libgsm/libgsm-1.0.12/03_config.patch
+++ /dev/null
@@ -1,162 +0,0 @@
-Use gsm_config.h instead of config.h
-
-Derived from meta-demo layer
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Inappropriate [configuration]
-
-diff -urNad libgsm-1.0.10~/Makefile libgsm-1.0.10/Makefile
---- libgsm-1.0.10~/Makefile	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/Makefile	2007-11-01 15:48:02.000000000 +0100
-@@ -151,7 +151,7 @@
- 
- HEADERS	=	$(INC)/proto.h		\
- 		$(INC)/unproto.h	\
--		$(INC)/config.h		\
-+		$(INC)/gsm_config.h	\
- 		$(INC)/private.h	\
- 		$(INC)/gsm.h		\
- 		$(INC)/toast.h		\
-diff -urNad libgsm-1.0.10~/inc/config.h libgsm-1.0.10/inc/config.h
---- libgsm-1.0.10~/inc/config.h	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/inc/config.h	1970-01-01 01:00:00.000000000 +0100
-@@ -1,37 +0,0 @@
--/*
-- * Copyright 1992 by Jutta Degener and Carsten Bormann, Technische
-- * Universitaet Berlin.  See the accompanying file "COPYRIGHT" for
-- * details.  THERE IS ABSOLUTELY NO WARRANTY FOR THIS SOFTWARE.
-- */
--
--/*$Header: /tmp_amd/presto/export/kbs/jutta/src/gsm/RCS/config.h,v 1.5 1996/07/02 11:26:20 jutta Exp $*/
--
--#ifndef	CONFIG_H
--#define	CONFIG_H
--
--/*efine	SIGHANDLER_T	int 		/* signal handlers are void	*/
--/*efine HAS_SYSV_SIGNAL	1		/* sigs not blocked/reset?	*/
--
--#define	HAS_STDLIB_H	1		/* /usr/include/stdlib.h	*/
--#define	HAS_LIMITS_H	1		/* /usr/include/limits.h	*/
--#define	HAS_FCNTL_H	1		/* /usr/include/fcntl.h		*/
--#define	HAS_ERRNO_DECL	1		/* errno.h declares errno	*/
--
--#define	HAS_FSTAT 	1		/* fstat syscall		*/
--#define	HAS_FCHMOD 	1		/* fchmod syscall		*/
--#define	HAS_CHMOD 	1		/* chmod syscall		*/
--#define	HAS_FCHOWN 	1		/* fchown syscall		*/
--#define	HAS_CHOWN 	1		/* chown syscall		*/
--/*efine	HAS__FSETMODE 	1		/* _fsetmode -- set file mode	*/
--
--#define	HAS_STRING_H 	1		/* /usr/include/string.h 	*/
--/*efine	HAS_STRINGS_H	1		/* /usr/include/strings.h 	*/
--
--#define	HAS_UNISTD_H	1		/* /usr/include/unistd.h	*/
--#define	HAS_UTIME	1		/* POSIX utime(path, times)	*/
--/*efine	HAS_UTIMES	1		/* use utimes()	syscall instead	*/
--#define	HAS_UTIME_H	1		/* UTIME header file		*/
--#define	HAS_UTIMBUF	1		/* struct utimbuf		*/
--/*efine	HAS_UTIMEUSEC   1		/* microseconds in utimbuf?	*/
--
--#endif	/* CONFIG_H */
-diff -urNad libgsm-1.0.10~/inc/gsm_config.h libgsm-1.0.10/inc/gsm_config.h
---- libgsm-1.0.10~/inc/gsm_config.h	1970-01-01 01:00:00.000000000 +0100
-+++ libgsm-1.0.10/inc/gsm_config.h	2007-11-01 15:46:19.000000000 +0100
-@@ -0,0 +1,37 @@
-+/*
-+ * Copyright 1992 by Jutta Degener and Carsten Bormann, Technische
-+ * Universitaet Berlin.  See the accompanying file "COPYRIGHT" for
-+ * details.  THERE IS ABSOLUTELY NO WARRANTY FOR THIS SOFTWARE.
-+ */
-+
-+/*$Header: /tmp_amd/presto/export/kbs/jutta/src/gsm/RCS/config.h,v 1.5 1996/07/02 11:26:20 jutta Exp $*/
-+
-+#ifndef	CONFIG_H
-+#define	CONFIG_H
-+
-+/*efine	SIGHANDLER_T	int 		-* signal handlers are void	*/
-+/*efine HAS_SYSV_SIGNAL	1		-* sigs not blocked/reset?	*/
-+
-+#define	HAS_STDLIB_H	1		/* /usr/include/stdlib.h	*/
-+#define	HAS_STDIO_H 	1		/* /usr/include/stdio.h 	*/
-+/*efine	HAS_LIMITS_H	1		-* /usr/include/limits.h	*/
-+#define	HAS_FCNTL_H	1		/* /usr/include/fcntl.h		*/
-+
-+#define	HAS_FSTAT 	1		/* fstat syscall		*/
-+#define	HAS_FCHMOD 	1		/* fchmod syscall		*/
-+#define	HAS_CHMOD 	1		/* chmod syscall		*/
-+#define	HAS_FCHOWN 	1		/* fchown syscall		*/
-+#define	HAS_CHOWN 	1		/* chown syscall		*/
-+/*efine	HAS__FSETMODE 	1		-* _fsetmode -- set file mode	*/
-+
-+#define	HAS_STRING_H 	1		/* /usr/include/string.h 	*/
-+/*efine	HAS_STRINGS_H	1		-* /usr/include/strings.h 	*/
-+
-+#define	HAS_UNISTD_H	1		/* /usr/include/unistd.h	*/
-+#define	HAS_UTIME	1		/* POSIX utime(path, times)	*/
-+/*efine	HAS_UTIMES	1		-* use utimes()	syscall instead	*/
-+#define	HAS_UTIME_H	1		/* UTIME header file		*/
-+/*efine	HAS_UTIMBUF	1		-* struct utimbuf		*/
-+/*efine	HAS_UTIMEUSEC   1		-* microseconds in utimbuf?	*/
-+
-+#endif	/* CONFIG_H */
-diff -urNad libgsm-1.0.10~/inc/toast.h libgsm-1.0.10/inc/toast.h
---- libgsm-1.0.10~/inc/toast.h	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/inc/toast.h	2007-11-01 15:48:17.000000000 +0100
-@@ -9,7 +9,7 @@
- #ifndef	TOAST_H
- #define	TOAST_H				/* Guard against multiple includes */
- 
--#include "config.h"
-+#include "gsm_config.h"
- 
- #include <sys/types.h>
- #include <sys/stat.h>
-diff -urNad libgsm-1.0.10~/src/code.c libgsm-1.0.10/src/code.c
---- libgsm-1.0.10~/src/code.c	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/src/code.c	2007-11-01 15:48:34.000000000 +0100
-@@ -6,7 +6,7 @@
- 
- /* $Header: /tmp_amd/presto/export/kbs/jutta/src/gsm/RCS/code.c,v 1.3 1996/07/02 09:59:05 jutta Exp $ */
- 
--#include	"config.h"
-+#include	"gsm_config.h"
- 
- 
- #ifdef	HAS_STDLIB_H
-diff -urNad libgsm-1.0.10~/src/gsm_create.c libgsm-1.0.10/src/gsm_create.c
---- libgsm-1.0.10~/src/gsm_create.c	1996-07-02 16:32:44.000000000 +0200
-+++ libgsm-1.0.10/src/gsm_create.c	2007-11-01 15:48:48.000000000 +0100
-@@ -6,7 +6,7 @@
- 
- static char const	ident[] = "$Header: /tmp_amd/presto/export/kbs/jutta/src/gsm/RCS/gsm_create.c,v 1.4 1996/07/02 09:59:05 jutta Exp $";
- 
--#include	"config.h"
-+#include	"gsm_config.h"
- 
- #ifdef	HAS_STRING_H
- #include	<string.h>
-diff -urNad libgsm-1.0.10~/src/gsm_destroy.c libgsm-1.0.10/src/gsm_destroy.c
---- libgsm-1.0.10~/src/gsm_destroy.c	1996-07-02 16:32:39.000000000 +0200
-+++ libgsm-1.0.10/src/gsm_destroy.c	2007-11-01 15:48:57.000000000 +0100
-@@ -7,7 +7,7 @@
- /* $Header: /tmp_amd/presto/export/kbs/jutta/src/gsm/RCS/gsm_destroy.c,v 1.3 1994/11/28 19:52:25 jutta Exp $ */
- 
- #include "gsm.h"
--#include "config.h"
-+#include "gsm_config.h"
- #include "proto.h"
- 
- #ifdef	HAS_STDLIB_H
-diff -urNad libgsm-1.0.10~/tls/taste.c libgsm-1.0.10/tls/taste.c
---- libgsm-1.0.10~/tls/taste.c	1996-07-02 16:33:05.000000000 +0200
-+++ libgsm-1.0.10/tls/taste.c	2007-11-01 15:49:54.000000000 +0100
-@@ -10,7 +10,7 @@
- #include	<string.h>
- #include	<memory.h>
- 
--#include	"config.h"
-+#include	"gsm_config.h"
- 
- #ifdef	HAS_STDLIB_H
- #	include	<stdlib.h>
diff --git a/recipes-multimedia/libgsm/libgsm-1.0.12/04_includes.patch b/recipes-multimedia/libgsm/libgsm-1.0.12/04_includes.patch
deleted file mode 100644
index 7557e85..0000000
--- a/recipes-multimedia/libgsm/libgsm-1.0.12/04_includes.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-Add proper headers and declarations
-
-Derived from meta-demo layer
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Pending
-
-diff -urNad libgsm-1.0.10~/inc/toast.h libgsm-1.0.10/inc/toast.h
---- libgsm-1.0.10~/inc/toast.h	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/inc/toast.h	2007-11-01 15:52:33.000000000 +0100
-@@ -16,11 +16,12 @@
- 
- #include <stdio.h>
- #include <ctype.h>
-+#include <pthread.h>
- #include <signal.h>
- 
- #include <errno.h>
--#ifndef	HAS_ERRNO_DECL
--	 extern int	errno;
-+#ifndef errno
-+ extern int	errno;
- #endif
- 
- #ifdef	HAS_LIMITS_H
-@@ -37,6 +38,10 @@
- # endif
- #endif
- 
-+#ifdef  HAS_STDIO_H
-+# include <stdio.h>
-+#endif
-+
- #include "gsm.h"
- 
- #ifndef	S_ISREG
-diff -urNad libgsm-1.0.10~/src/code.c libgsm-1.0.10/src/code.c
---- libgsm-1.0.10~/src/code.c	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/src/code.c	2007-11-01 15:52:33.000000000 +0100
-@@ -9,8 +9,8 @@
- #include	"config.h"
- 
- 
--#ifdef	HAS_STDLIB_H
--#include	<stdlib.h>
-+#ifdef	HAS_STRING_H
-+#include	<string.h>
- #else
- #	include "proto.h"
- 	extern char	* memcpy P((char *, char *, int));
diff --git a/recipes-multimedia/libgsm/libgsm-1.0.12/05_compiler_warnings.patch b/recipes-multimedia/libgsm/libgsm-1.0.12/05_compiler_warnings.patch
deleted file mode 100644
index 08f2c0d..0000000
--- a/recipes-multimedia/libgsm/libgsm-1.0.12/05_compiler_warnings.patch
+++ /dev/null
@@ -1,106 +0,0 @@
-Fix compiler warnings
-
-Derived from meta-demo layer
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Pending
-
-diff -urNad libgsm-1.0.10~/src/debug.c libgsm-1.0.10/src/debug.c
---- libgsm-1.0.10~/src/debug.c	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/src/debug.c	2007-11-01 15:53:42.000000000 +0100
-@@ -49,7 +49,7 @@
- 	fprintf( stderr, "%s [%d .. %d]: ", name, from, to );
- 	while (from <= to) {
- 
--		fprintf(stderr, "%d ", ptr[ from ] );
-+		fprintf(stderr, "%ld ", ptr[ from ] );
- 		from++;
- 		if (nprinted++ >= 7) {
- 			nprinted = 0;
-@@ -63,14 +63,14 @@
- 	char		* name,
- 	longword	  value	)
- {
--	fprintf(stderr, "%s: %d\n", name, (long)value );
-+	fprintf(stderr, "%s: %ld\n", name, (long)value );
- }
- 
- void gsm_debug_word P2(  (name, value),
- 	char	* name,
- 	word	  value	)
- {
--	fprintf(stderr, "%s: %d\n", name, (long)value);
-+	fprintf(stderr, "%s: %ld\n", name, (long)value);
- }
- 
- #endif
-diff -urNad libgsm-1.0.10~/src/toast.c libgsm-1.0.10/src/toast.c
---- libgsm-1.0.10~/src/toast.c	2007-11-01 15:37:52.000000000 +0100
-+++ libgsm-1.0.10/src/toast.c	2007-11-01 15:53:42.000000000 +0100
-@@ -251,8 +251,8 @@
- {
- 	char * s;
- 	if (!(s = malloc(len))) {
--		fprintf(stderr, "%s: failed to malloc %d bytes -- abort\n",
--			progname, len);
-+		fprintf(stderr, "%s: failed to malloc %ld bytes -- abort\n",
-+			progname, (long) len);
- 		onintr();
- 		exit(1);
- 	}
-@@ -270,7 +270,7 @@
- 	maxlen = strlen(name) + 1 + strlen(want) + strlen(cut);
- 	p = strcpy(emalloc(maxlen), name);
- 
--	if (s = suffix(p, cut)) strcpy(s, want);
-+	if ((s = suffix(p, cut))) strcpy(s, want);
- 	else if (*want && !suffix(p, want)) strcat(p, want);
- 
- 	return p;
-@@ -386,7 +386,7 @@
- 		ut[0] = instat.st_atime;
- 		ut[1] = instat.st_mtime;
- 
--		(void) utime(outname, ut);
-+		(void) utime(outname, (struct utimbuf *)ut);
- 
- #endif	/* UTIMBUF */
- 	}
-@@ -416,7 +416,7 @@
- 	}
- 	if (st->st_nlink > 1 && !f_cat && !f_precious) {
- 		fprintf(stderr, 
--		      "%s: \"%s\" has %s other link%s -- unchanged.\n",
-+		      "%s: \"%s\" has %d other link%s -- unchanged.\n",
- 			progname,name,st->st_nlink - 1,"s" + (st->st_nlink<=2));
- 		return 0;
- 	}
-@@ -585,8 +585,8 @@
- 
- 		if (cc != sizeof(s)) {
- 			if (cc >= 0) fprintf(stderr,
--			"%s: incomplete frame (%d byte%s missing) from %s\n",
--					progname, sizeof(s) - cc,
-+			"%s: incomplete frame (%ld byte%s missing) from %s\n",
-+					progname, (long) sizeof(s) - cc,
- 					"s" + (sizeof(s) - cc == 1),
- 					inname ? inname : "stdin" );
- 			gsm_destroy(r);
-@@ -624,8 +624,6 @@
- 
- static int process P1((name), char * name)
- {
--	int step = 0;
--
- 	out     = (FILE *)0;
- 	in      = (FILE *)0;
- 
-@@ -779,7 +777,6 @@
- 	case 'h': help();    exit(0);
- 
- 	default: 
--	usage:
- 		fprintf(stderr,
- 	"Usage: %s [-fcpdhvuaslFC] [files...] (-h for help)\n",
- 			progname);
diff --git a/recipes-multimedia/libgsm/libgsm_1.0.12.bb b/recipes-multimedia/libgsm/libgsm_1.0.12.bb
deleted file mode 100644
index 747e2bb..0000000
--- a/recipes-multimedia/libgsm/libgsm_1.0.12.bb
+++ /dev/null
@@ -1,40 +0,0 @@
-DESCRIPTION = "GSM Audio Library"
-SECTION = "libs"
-#DEPENDS = ""
-LICENSE = "libgsm"
-LIC_FILES_CHKSUM = "file://README;md5=f0ab53a6be4aefa9705f39b4bdafd62a"
-
-PR = "r3"
-
-# dvhart - bad URL, trying a new one - note: 1.0.13 exists
-#SRC_URI = "http://user.cs.tu-berlin.de/~jutta/gsm/gsm-${PV}.tar.gz
-SRC_URI = "http://www.quut.com/gsm/gsm-${PV}.tar.gz \
-	   file://01_makefile.patch \
-           file://02_cplusplus.patch \
-           file://03_config.patch \
-           file://04_includes.patch \
-           file://05_compiler_warnings.patch \
-	  "
-
-S = "${WORKDIR}/gsm-1.0-pl12/"
-
-CFLAGS += "-c -g -fPIC -Wall -D_GNU_SOURCE -D_REENTRANT -DNeedFunctionPrototypes=1 -DWAV49 -I./inc"
-
-PARALLEL_MAKE = ""
-
-do_compile() {
-	unset LD
-	oe_runmake CCFLAGS="${CFLAGS}"
-}
-
-do_install() {
-	oe_libinstall -a -C lib libgsm ${D}${libdir}
-        oe_libinstall -so -C lib libgsm ${D}${libdir}
-        install -d ${D}${includedir}/gsm
-        install -m 0644 ${S}/inc/gsm.h ${D}${includedir}/gsm/
-	cd ${D}${includedir}
-	ln -s gsm/gsm.h gsm.h
-}
-
-SRC_URI[md5sum] = "8909828c601e82e842e6a0ceade60a4e"
-SRC_URI[sha256sum] = "dde4e62e4ce35af29a15d26beca2fc0f98c0219553927453425cda01f16e4de4"
-- 
1.8.1.2


