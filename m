Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D076FE00953; Mon, 12 Jan 2015 19:50:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B16EE00571
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 19:50:18 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YAsTD-0001jA-SJ; Tue, 13 Jan 2015 03:48:46 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Tue, 13 Jan 2015 03:50:02 +0000
Message-Id: <1421121004-8592-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1421121004-8592-1-git-send-email-flihp@twobit.us>
References: <1421121004-8592-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][ 1/3] findutils: Upgrade recipe to 4.5 and use wildcard for pico version.
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
X-List-Received-Date: Tue, 13 Jan 2015 03:50:32 -0000

The latest version eliminates the need for the two patches from
fedora. The previously pinned glib version needed updating so drop
that in favor of the default.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../findutils-with-selinux-gnulib.patch            |   55 --
 .../findutils-4.4.2/findutils-with-selinux.patch   |  528 --------------------
 .../findutils/findutils_4.4.2.bbappend             |   14 -
 .../findutils/findutils_4.5.%.bbappend             |    4 +
 4 files changed, 4 insertions(+), 597 deletions(-)
 delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch
 delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
 delete mode 100644 recipes-extended/findutils/findutils_4.4.2.bbappend
 create mode 100644 recipes-extended/findutils/findutils_4.5.%.bbappend

diff --git a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch b/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch
deleted file mode 100644
index 285c495..0000000
--- a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-Subject: [PATCH] selinux: fetch proper version of gnulib.
-
-This patch will fetch a proper version of gnulib, and import
-needed modules including selinux-at.
-
-* lstat module has removed lstat.h and now we should include
-  <sys/stat.h> instead.
-  - http://git.savannah.gnu.org/cgit/gnulib.git/tree/modules/lstat
-
-Upstream-Status: Backport
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- import-gnulib.config |    3 ++-
- lib/dircallback.c    |    2 +-
- 2 files changed, 3 insertions(+), 2 deletions(-)
-
-diff --git a/import-gnulib.config b/import-gnulib.config
-index f2e8998..aeeb638 100644
---- a/import-gnulib.config
-+++ b/import-gnulib.config
-@@ -1,7 +1,7 @@
- # findutils gnulib.config -*- sh -*-
- 
- # What version of gnulib to use?
--gnulib_version="e5573b1bad88bfabcda181b9e0125fb0c52b7d3b"
-+gnulib_version="0e0635af0b23826911dc456bd0da40dcb19247de"
- destdir="gnulib"
- 
- # Random extra gnulib files needed for findutils.
-@@ -68,6 +68,7 @@ realloc
- regex
- rpmatch
- savedir
-+selinux-at
- stat-macros
- stat-time
- stpcpy
-diff --git a/lib/dircallback.c b/lib/dircallback.c
-index 5dbf3b3..a692b38 100644
---- a/lib/dircallback.c
-+++ b/lib/dircallback.c
-@@ -28,8 +28,8 @@
- #include <errno.h>
- 
- #include "fcntl--.h"
--#include "lstat.h"
- #include "save-cwd.h"
-+#include <sys/stat.h>
- 
- 
- #ifdef HAVE_LOCALE_H
--- 
-1.7.5.4
-
diff --git a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch b/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
deleted file mode 100644
index 574285e..0000000
--- a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
+++ /dev/null
@@ -1,528 +0,0 @@
-Subject: [PATCH] findutils: support selinux
-
-Upstream-Status: Backport
-
-This is modified from a F13'sx SRPM patch, with conditional
-selinux support.
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- configure.ac     |   11 ++++
- doc/find.texi    |   18 ++++++-
- find/Makefile.am |    2 +-
- find/defs.h      |   14 +++++
- find/find.1      |    4 ++
- find/parser.c    |  155 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
- find/pred.c      |   54 +++++++++++++++++++
- find/tree.c      |    6 +++
- 8 files changed, 261 insertions(+), 3 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index f4849b3..2dd3b13 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -114,6 +114,17 @@ AC_CHECK_LIB([m],[fabs],[FINDLIBS="-lm $FINDLIBS"]
-   AC_DEFINE_UNQUOTED(HAVE_FABS_IN_LIBM,1,[fabs is defined in -lm]))
- AC_SUBST([FINDLIBS])
- 
-+AC_ARG_WITH([selinux],
-+  AS_HELP_STRING([--without-selinux], [disable SELinux support]),
-+  [:],
-+  [AC_CHECK_LIB([selinux], [is_selinux_enabled], [with_selinux=yes], [with_selinux=no])])
-+if test x$with_selinux = xyes; then
-+  AC_DEFINE([WITH_SELINUX], [1], [Define to support SELinux])
-+  AC_SUBST([LIBSELINUX], [-lselinux])
-+else
-+  AC_SUBST([LIBSELINUX], [ ])
-+fi
-+
- dnl Checks for header files.
- AC_HEADER_STDC
- dnl Assume unistd.h is present - coreutils does too.
-diff --git a/doc/find.texi b/doc/find.texi
-index 391ffa0..f599bbc 100644
---- a/doc/find.texi
-+++ b/doc/find.texi
-@@ -7,7 +7,6 @@
- @c %**end of header
- 
- @include version.texi
--@include ../locate/dblocation.texi
- 
- @iftex
- @finalout
-@@ -1242,6 +1241,14 @@ situation.
- 
- @end deffn
- 
-+@deffn Test -context pattern
-+True if file's SELinux context matches the pattern @var{pattern}.
-+The pattern uses shell glob matching.
-+
-+This predicate is supported only on @code{find} versions compiled with
-+SELinux support and only when SELinux is enabled.
-+@end deffn
-+
- @node Contents
- @section Contents
- 
-@@ -1733,6 +1740,7 @@ from the novel you are reading.
- * Size Directives::
- * Location Directives::
- * Time Directives::
-+* Other Directives::
- @end menu
- 
- @node Name Directives
-@@ -1890,6 +1898,14 @@ File's last modification time in the format specified by @var{k}
- (@pxref{Time Formats}).
- @end table
- 
-+@node Other Directives
-+@subsubsection Other Directives
-+
-+@table @code
-+@item %Z
-+File's SELinux context, or empty string if the file has no SELinux context.
-+@end table
-+
- @node Time Formats
- @subsection Time Formats
- 
-diff --git a/find/Makefile.am b/find/Makefile.am
-index b001509..6fc7df3 100644
---- a/find/Makefile.am
-+++ b/find/Makefile.am
-@@ -26,7 +26,7 @@ endif
- 
- EXTRA_DIST = defs.h $(man_MANS)
- INCLUDES = -I../gnulib/lib -I$(top_srcdir)/lib -I$(top_srcdir)/gnulib/lib -I../intl -DLOCALEDIR=\"$(localedir)\"
--LDADD = ./libfindtools.a ../lib/libfind.a ../gnulib/lib/libgnulib.a @INTLLIBS@ @LIB_CLOCK_GETTIME@ @FINDLIBS@
-+LDADD = ./libfindtools.a ../lib/libfind.a ../gnulib/lib/libgnulib.a @INTLLIBS@ @LIB_CLOCK_GETTIME@ @FINDLIBS@ @LIBSELINUX@
- man_MANS = find.1
- SUBDIRS = . testsuite
- 
-diff --git a/find/defs.h b/find/defs.h
-index 4539fd9..4f3b168 100644
---- a/find/defs.h
-+++ b/find/defs.h
-@@ -48,6 +48,9 @@ Please stop compiling the program now
- #include <stdbool.h>		/* for bool/boolean */
- #include <stdint.h>		/* for uintmax_t */
- #include <sys/stat.h> /* S_ISUID etc. */
-+#ifdef WITH_SELINUX
-+#include <selinux/selinux.h>
-+#endif
- 
- 
- 
-@@ -315,6 +318,9 @@ struct predicate
-     struct samefile_file_id samefileid; /* samefile */
-     mode_t type;		/* type */
-     struct format_val printf_vec; /* printf fprintf fprint ls fls print0 fprint0 print */
-+#ifdef WITH_SELINUX
-+    security_context_t scontext; /* security context */
-+#endif
-   } args;
- 
-   /* The next predicate in the user input sequence,
-@@ -459,6 +465,9 @@ PREDICATEFUNCTION pred_used;
- PREDICATEFUNCTION pred_user;
- PREDICATEFUNCTION pred_writable;
- PREDICATEFUNCTION pred_xtype;
-+#ifdef WITH_SELINUX
-+PREDICATEFUNCTION pred_context;
-+#endif
- 
- 
- 
-@@ -604,6 +613,11 @@ struct options
-    */
-   int regex_options;
- 
-+#ifdef WITH_SELINUX
-+  /* function used to get file context */
-+  int (*x_getfilecon) (int, const char *, security_context_t *);
-+#endif
-+
-   /* Optimisation level.  One is the default. 
-    */
-   unsigned short optimisation_level;
-diff --git a/find/find.1 b/find/find.1
-index 8b67ae3..1d23b17 100644
---- a/find/find.1
-+++ b/find/find.1
-@@ -933,6 +933,8 @@ if \fIc\fR is `l'.  In other words, for symbolic links,
- checks the type of the file that 
- .B \-type
- does not check.
-+.IP "\-context \fIpattern\fR"
-+(SELinux only) Security context of the file matches glob \fIpattern\fR.
- 
- .SS ACTIONS
- .IP "\-delete\fR"
-@@ -1354,6 +1356,8 @@ File's type (like in
- U=unknown type (shouldn't happen)
- .IP %Y
- File's type (like %y), plus follow symlinks: L=loop, N=nonexistent
-+.IP %Z
-+(SELinux only) file's security context.
- .PP
- A `%' character followed by any other character is discarded, but the
- other character is printed (don't rely on this, as further format
-diff --git a/find/parser.c b/find/parser.c
-index 08758ee..02f9067 100644
---- a/find/parser.c
-+++ b/find/parser.c
-@@ -53,6 +53,10 @@
- #include <unistd.h>
- #include <sys/stat.h>
- 
-+#ifdef WITH_SELINUX
-+#include "selinux-at.h"
-+#endif
-+
- #if ENABLE_NLS
- # include <libintl.h>
- # define _(Text) gettext (Text)
-@@ -155,6 +159,9 @@ static boolean parse_noignore_race PARAMS((const struct parser_table*, char *arg
- static boolean parse_warn          PARAMS((const struct parser_table*, char *argv[], int *arg_ptr));
- static boolean parse_xtype         PARAMS((const struct parser_table*, char *argv[], int *arg_ptr));
- static boolean parse_quit          PARAMS((const struct parser_table*, char *argv[], int *arg_ptr));
-+#ifdef WITH_SELINUX
-+static boolean parse_context       PARAMS((const struct parser_table*, char *argv[], int *arg_ptr));
-+#endif
- 
- boolean parse_print             PARAMS((const struct parser_table*, char *argv[], int *arg_ptr));
- 
-@@ -251,6 +258,9 @@ static struct parser_table const parse_table[] =
-   PARSE_TEST       ("cmin",                  cmin),	     /* GNU */
-   PARSE_TEST       ("cnewer",                cnewer),	     /* GNU */
-   {ARG_TEST,       "ctime",                  parse_time, pred_ctime}, /* POSIX */
-+#ifdef WITH_SELINUX
-+  PARSE_TEST       ("context",               context),      /* GNU */
-+#endif
-   PARSE_POSOPT     ("daystart",              daystart),	     /* GNU */
-   PARSE_ACTION     ("delete",                delete), /* GNU, Mac OS, FreeBSD */
-   PARSE_OPTION     ("d",                     d), /* Mac OS X, FreeBSD, NetBSD, OpenBSD, but deprecated  in favour of -depth */
-@@ -347,6 +357,89 @@ static struct parser_table const parse_table[] =
- static const char *first_nonoption_arg = NULL;
- static const struct parser_table *noop = NULL;
- 
-+#ifdef WITH_SELINUX
-+static int
-+fallback_getfilecon (int fd, const char *name, security_context_t *p,
-+		     int prev_rv)
-+{
-+  /* Our original getfilecon () call failed.  Perhaps we can't follow a
-+   * symbolic link.  If that might be the problem, lgetfilecon () the link.
-+   * Otherwise, admit defeat. */
-+  switch (errno)
-+    {
-+      case ENOENT:
-+      case ENOTDIR:
-+#ifdef DEBUG_STAT
-+	fprintf (stderr, "fallback_getfilecon(): getfilecon(%s) failed; falling "
-+			"back on lgetfilecon()\n", name);
-+#endif
-+	return lgetfileconat (fd, name, p);
-+
-+      case EACCES:
-+      case EIO:
-+      case ELOOP:
-+      case ENAMETOOLONG:
-+#ifdef EOVERFLOW
-+      case EOVERFLOW:        /* EOVERFLOW is not #defined on UNICOS. */
-+#endif
-+      default:
-+	return prev_rv;
-+    }
-+}
-+
-+/* optionh_getfilecon () implements the getfilecon operation when the
-+ * -H option is in effect.
-+ *
-+ * If the item to be examined is a command-line argument, we follow
-+ * symbolic links.  If the getfilecon () call fails on the command-line
-+ * item, we fall back on the properties of the symbolic link.
-+ *
-+ * If the item to be examined is not a command-line argument, we
-+ * examine the link itself. */
-+int
-+optionh_getfilecon (int fd, const char *name, security_context_t *p)
-+{
-+  int rv;
-+  if (0 == state.curdepth)
-+    {
-+      /* This file is from the command line; dereference the link (if it is
-+	 a link). */
-+      rv = getfileconat (fd, name, p);
-+      if (0 == rv)
-+	return 0;               /* success */
-+      else
-+	return fallback_getfilecon (fd, name, p, rv);
-+    }
-+  else
-+    {
-+      /* Not a file on the command line; do not dereference the link. */
-+      return lgetfileconat (fd, name, p);
-+    }
-+}
-+
-+/* optionl_getfilecon () implements the getfilecon operation when the
-+ * -L option is in effect.  That option makes us examine the thing the
-+ * symbolic link points to, not the symbolic link itself. */
-+int
-+optionl_getfilecon (int fd, const char *name, security_context_t *p)
-+{
-+  int rv = getfileconat (fd, name, p);
-+  if (0 == rv)
-+    return 0;                  /* normal case. */
-+  else
-+    return fallback_getfilecon (fd, name, p, rv);
-+}
-+
-+/* optionp_getfilecon () implements the stat operation when the -P
-+ * option is in effect (this is also the default).  That option makes
-+ * us examine the symbolic link itself, not the thing it points to. */
-+int
-+optionp_getfilecon (int fd, const char *name, security_context_t *p)
-+{
-+  return lgetfileconat (fd, name, p);
-+}
-+
-+#endif
- 
- void
- check_option_combinations(const struct predicate *p)
-@@ -450,11 +543,17 @@ set_follow_state(enum SymlinkOption opt)
- 	{
- 	case SYMLINK_ALWAYS_DEREF:  /* -L */
- 	  options.xstat = optionl_stat;
-+#ifdef WITH_SELINUX
-+	  options.x_getfilecon = optionl_getfilecon;
-+#endif
- 	  options.no_leaf_check = true;
- 	  break;
- 
- 	case SYMLINK_NEVER_DEREF:	/* -P (default) */
- 	  options.xstat = optionp_stat;
-+#ifdef WITH_SELINUX
-+	  options.x_getfilecon = optionp_getfilecon;
-+#endif
- 	  /* Can't turn no_leaf_check off because the user might have specified
- 	   * -noleaf anyway
- 	   */
-@@ -462,6 +561,9 @@ set_follow_state(enum SymlinkOption opt)
- 
- 	case SYMLINK_DEREF_ARGSONLY: /* -H */
- 	  options.xstat = optionh_stat;
-+#ifdef WITH_SELINUX
-+	  options.x_getfilecon = optionh_getfilecon;
-+#endif
- 	  options.no_leaf_check = true;
- 	}
-     }
-@@ -1146,8 +1248,14 @@ tests (N can be +N or -N or N): -amin N -anewer FILE -atime N -cmin N\n\
-       -nouser -nogroup -path PATTERN -perm [+-]MODE -regex PATTERN\n\
-       -readable -writable -executable\n\
-       -wholename PATTERN -size N[bcwkMG] -true -type [bcdpflsD] -uid N\n\
--      -used N -user NAME -xtype [bcdpfls]\n"));
-+      -used N -user NAME -xtype [bcdpfls]"));
-+#ifdef WITH_SELINUX
-   puts (_("\
-+      -context CONTEXT\n"));
-+#else
-+  puts (_("\n"));
-+#endif
-+  puts (_("\n\
- actions: -delete -print0 -printf FORMAT -fprintf FILE FORMAT -print \n\
-       -fprint0 FILE -fprint FILE -ls -fls FILE -prune -quit\n\
-       -exec COMMAND ; -exec COMMAND {} + -ok COMMAND ;\n\
-@@ -2574,6 +2682,13 @@ parse_version (const struct parser_table* entry, char **argv, int *arg_ptr)
-   printf("LEAF_OPTIMISATION ");
-   ++features;
- #endif
-+#ifdef WITH_SELINUX
-+  if (0 < is_selinux_enabled ())
-+    {
-+      printf ("SELINUX ");
-+      ++features;
-+    }
-+#endif
- 
-   flags = 0;
-   if (is_fts_enabled(&flags))
-@@ -2608,6 +2723,33 @@ parse_version (const struct parser_table* entry, char **argv, int *arg_ptr)
-   exit (0);
- }
- 
-+#ifdef WITH_SELINUX
-+static boolean
-+parse_context (const struct parser_table* entry, char **argv, int *arg_ptr)
-+{
-+  struct predicate *our_pred;
-+
-+  if ((argv == NULL) || (argv[*arg_ptr] == NULL))
-+    return false;
-+
-+  if (is_selinux_enabled () <= 0)
-+    {
-+      error (1, 0, _("invalid predicate -context: SELinux is not enabled."));
-+      return false;
-+    }
-+  our_pred = insert_primary (entry, NULL);
-+  our_pred->est_success_rate = 0.01f;
-+  our_pred->need_stat = false;
-+#ifdef DEBUG
-+  our_pred->p_name = find_pred_name (pred_context);
-+#endif /*DEBUG*/
-+  our_pred->args.scontext = argv[*arg_ptr];
-+
-+  (*arg_ptr)++;
-+  return true;
-+}
-+#endif
-+
- static boolean
- parse_xdev (const struct parser_table* entry, char **argv, int *arg_ptr)
- {
-@@ -2861,7 +3003,11 @@ insert_fprintf (struct format_val *vec,
- 	  if (*scan2 == '.')
- 	    for (scan2++; ISDIGIT (*scan2); scan2++)
- 	      /* Do nothing. */ ;
-+#ifdef WITH_SELINUX
-+	  if (strchr ("abcdDfFgGhHiklmMnpPsStuUyYZ", *scan2))
-+#else
- 	  if (strchr ("abcdDfFgGhHiklmMnpPsStuUyY", *scan2))
-+#endif
- 	    {
- 	      segmentp = make_segment (segmentp, format, scan2 - format,
- 				       KIND_FORMAT, *scan2, 0,
-@@ -2991,6 +3137,13 @@ make_segment (struct segment **segment,
-       *fmt++ = 's';
-       break;
- 
-+#ifdef WITH_SELINUX
-+    case 'Z':			/* SELinux security context */
-+      mycost = NeedsAccessInfo;
-+      *fmt++ = 's';
-+      break;
-+#endif
-+
-     case 'H':			/* ARGV element file was found under */
-       *fmt++ = 's';
-       break;
-diff --git a/find/pred.c b/find/pred.c
-index b1f48a0..43cfd19 100644
---- a/find/pred.c
-+++ b/find/pred.c
-@@ -48,6 +48,10 @@
- #include "error.h"
- #include "verify.h"
- 
-+#ifdef WITH_SELINUX
-+#include <selinux/selinux.h>
-+#endif
-+
- #if ENABLE_NLS
- # include <libintl.h>
- # define _(Text) gettext (Text)
-@@ -230,6 +234,9 @@ struct pred_assoc pred_table[] =
-   {pred_user, "user    "},
-   {pred_writable, "writable "},
-   {pred_xtype, "xtype   "},
-+#ifdef WITH_SELINUX
-+  {pred_context, "context"},
-+#endif
-   {0, "none    "}
- };
- #endif
-@@ -1054,6 +1061,32 @@ do_fprintf(struct format_val *dest,
- 			     mode_to_filetype(stat_buf->st_mode & S_IFMT));
- 	  }
- 	  break;
-+
-+#ifdef WITH_SELINUX
-+	case 'Z':               /* SELinux security context */
-+	  {
-+	    security_context_t scontext;
-+	    int rv = (*options.x_getfilecon) (state.cwd_dir_fd, state.rel_pathname,
-+					      &scontext);
-+	    if (rv < 0)
-+	      {
-+		/* If getfilecon fails, there will in the general case
-+		   still be some text to print.   We just make %Z expand
-+		   to an empty string. */
-+		checked_fprintf (dest, segment->text, "");
-+
-+		error (0, errno, "getfilecon: %s",
-+		    safely_quote_err_filename (0, pathname));
-+		state.exit_status = 1;
-+	      }
-+	    else
-+	      {
-+		checked_fprintf (dest, segment->text, scontext);
-+		freecon (scontext);
-+	      }
-+	  }
-+	  break;
-+#endif
- 	}
-       /* end of KIND_FORMAT case */
-       break;
-@@ -1844,6 +1877,27 @@ pred_xtype (const char *pathname, struct stat *stat_buf, struct predicate *pred_
-    */
-   return (pred_type (pathname, &sbuf, pred_ptr));
- }
-+
-+#ifdef WITH_SELINUX
-+boolean
-+pred_context (const char *pathname, struct stat *stat_buf,
-+	      struct predicate *pred_ptr)
-+{
-+  security_context_t scontext;
-+  int rv = (*options.x_getfilecon) (state.cwd_dir_fd, state.rel_pathname,
-+				    &scontext);
-+  if (rv < 0)
-+    {
-+      error (0, errno, "getfilecon: %s", safely_quote_err_filename (0, pathname));
-+      return false;
-+    }
-+
-+  rv = (fnmatch (pred_ptr->args.scontext, scontext, 0) == 0);
-+  freecon (scontext);
-+  return rv;
-+}
-+#endif
-+
- 
- /*  1) fork to get a child; parent remembers the child pid
-     2) child execs the command requested
-diff --git a/find/tree.c b/find/tree.c
-index 60a0601..6d48c09 100644
---- a/find/tree.c
-+++ b/find/tree.c
-@@ -909,6 +909,9 @@ static struct pred_cost_lookup costlookup[] =
-     { pred_cmin      ,  NeedsStatInfo,       },
-     { pred_cnewer    ,  NeedsStatInfo,       },
-     { pred_comma     ,  NeedsNothing,        },
-+#ifdef WITH_SELINUX
-+    { pred_context   ,  NeedsAccessInfo      },
-+#endif
-     { pred_ctime     ,  NeedsStatInfo,       },
-     { pred_delete    ,  NeedsSyncDiskHit     },
-     { pred_empty     ,  NeedsStatInfo        },
-@@ -1453,6 +1456,9 @@ get_new_pred (const struct parser_table *entry)
-   last_pred->p_cost = NeedsUnknown;
-   last_pred->arg_text = "ThisShouldBeSetToSomethingElse";
-   last_pred->args.str = NULL;
-+#ifdef WITH_SELINUX
-+  last_pred->args.scontext = NULL;
-+#endif
-   last_pred->pred_next = NULL;
-   last_pred->pred_left = NULL;
-   last_pred->pred_right = NULL;
--- 
-1.7.9.6
-
diff --git a/recipes-extended/findutils/findutils_4.4.2.bbappend b/recipes-extended/findutils/findutils_4.4.2.bbappend
deleted file mode 100644
index 3245e5c..0000000
--- a/recipes-extended/findutils/findutils_4.4.2.bbappend
+++ /dev/null
@@ -1,14 +0,0 @@
-PR .= ".5"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-SRC_URI += "git://git.savannah.gnu.org/gnulib.git;protocol=git;rev=0e0635af0b23826911dc456bd0da40dcb19247de"
-SRC_URI += "file://findutils-with-selinux.patch"
-SRC_URI += "file://findutils-with-selinux-gnulib.patch"
-
-inherit with-selinux
-
-do_configure_prepend() {
-	cd ${S} && ./import-gnulib.sh -d ${WORKDIR}/git && cd ${B}
-}
-
diff --git a/recipes-extended/findutils/findutils_4.5.%.bbappend b/recipes-extended/findutils/findutils_4.5.%.bbappend
new file mode 100644
index 0000000..5b28391
--- /dev/null
+++ b/recipes-extended/findutils/findutils_4.5.%.bbappend
@@ -0,0 +1,4 @@
+PR .= ".5"
+
+inherit with-selinux
+
-- 
1.7.10.4


