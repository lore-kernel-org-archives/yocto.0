Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48EB34C80655
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 12:58:11 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga002.jf.intel.com with ESMTP; 01 Jun 2011 12:58:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:55:58 -0500
Message-Id: <7465558d56f319dd9ceec9e84bcf2b6528da0429.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
References: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] meta-intel: add xserver-xf86-dri-lite_1.9.3 to common
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Jun 2011 19:58:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd 1.6 requires xserver 1.9.3, which is no longer in meta, and it
needs to be shared by multiple BSPs, so add it to common.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../cache-xkbcomp-output-for-fast-start-up.patch   |  358 ++++++++++++++++++++
 .../xserver-xf86-dri-lite/crosscompile.patch       |   20 ++
 .../xserver-xf86-dri-lite/doublefix.patch          |   13 +
 .../xserver-xf86-dri-lite/drmfix.patch             |   13 +
 .../xserver-xf86-dri-lite/fix_macros.patch         |   21 ++
 .../xserver-xf86-dri-lite/fix_macros1.patch        |   22 ++
 .../fix_open_max_preprocessor_error.patch          |   13 +
 .../libdri-xinerama-symbol.patch                   |   50 +++
 .../xserver-xf86-dri-lite/macro_tweak.patch        |   28 ++
 .../xserver-xf86-dri-lite/nodolt.patch             |   12 +
 .../xorg-server-disable-dri_sarea.patch            |   12 +
 .../xorg-server-enable-dri2.patch                  |   23 ++
 .../xserver-1.5.0-bg-none-root.patch               |  156 +++++++++
 .../xserver-DRI2Swapbuffer.patch                   |  179 ++++++++++
 .../xserver-xf86-dri-lite/xserver-boottime.patch   |   38 ++
 .../xserver-xf86-dri-lite/xserver-no-root-2.patch  |  105 ++++++
 .../xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb    |   19 +
 17 files changed, 1082 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/cache-xkbcomp-output-for-fast-start-up.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/doublefix.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/drmfix.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros1.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/libdri-xinerama-symbol.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch
 create mode 100755 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-disable-dri_sarea.patch
 create mode 100755 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-enable-dri2.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-1.5.0-bg-none-root.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-DRI2Swapbuffer.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-boottime.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-no-root-2.patch
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb

diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/cache-xkbcomp-output-for-fast-start-up.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/cache-xkbcomp-output-for-fast-start-up.patch
new file mode 100644
index 0000000..b121bba
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/cache-xkbcomp-output-for-fast-start-up.patch
@@ -0,0 +1,358 @@
+From 0f70ba9d3412b17ac4e08e33e1be3c226c06ea54 Mon Sep 17 00:00:00 2001
+From: Yan Li <yan.i.li@intel.com>
+Date: Tue, 12 May 2009 17:49:07 +0800
+Subject: [PATCH] XKB: cache xkbcomp output for fast start-up v5 for 1.6.1
+Organization: Intel
+
+xkbcomp outputs will be cached in files with hashed keymap as
+names. This saves boot time for around 1s on commodity netbooks.
+
+Signed-off-by: Yan Li <yan.i.li@intel.com>
+---
+ configure.ac        |    6 +-
+ xkb/README.compiled |    8 +-
+ xkb/ddxLoad.c       |  192 +++++++++++++++++++++++++++++++++++++++++---------
+ 3 files changed, 164 insertions(+), 42 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 4c4c797..7a5020a 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -476,9 +476,9 @@ AC_ARG_WITH(default-font-path, AS_HELP_STRING([--with-default-font-path=PATH], [
+ AC_ARG_WITH(xkb-path,         AS_HELP_STRING([--with-xkb-path=PATH], [Path to XKB base dir (default: ${datadir}/X11/xkb)]),
+ 				[ XKBPATH="$withval" ],
+ 				[ XKBPATH="${datadir}/X11/xkb" ])
+-AC_ARG_WITH(xkb-output,       AS_HELP_STRING([--with-xkb-output=PATH], [Path to XKB output dir (default: ${datadir}/X11/xkb/compiled)]),
++AC_ARG_WITH(xkb-output,       AS_HELP_STRING([--with-xkb-output=PATH], [Path to XKB output dir (default: ${localstatedir}/cache/xkb)]),
+ 				[ XKBOUTPUT="$withval" ],
+-				[ XKBOUTPUT="compiled" ])
++				[ XKBOUTPUT="${localstatedir}/cache/xkb" ])
+ AC_ARG_WITH(serverconfig-path, AS_HELP_STRING([--with-serverconfig-path=PATH],
+ 				   [Directory where ancillary server config files are installed (default: ${libdir}/xorg)]),
+ 				[ SERVERCONFIG="$withval" ],
+@@ -1757,7 +1757,7 @@ AC_DEFINE_DIR(XKB_BIN_DIRECTORY, bindir, [Path to XKB bin dir])
+ XKBOUTPUT_FIRSTCHAR=`echo $XKBOUTPUT | cut -b 1`
+ 
+ if [[ x$XKBOUTPUT_FIRSTCHAR != x/ ]] ; then
+-   XKBOUTPUT="$XKB_BASE_DIRECTORY/$XKBOUTPUT"
++   AC_MSG_ERROR([xkb-output must be an absolute path.])
+ fi
+ 
+ # XKM_OUTPUT_DIR (used in code) must end in / or file names get hosed
+diff --git a/xkb/README.compiled b/xkb/README.compiled
+index 71caa2f..a4a2ae0 100644
+--- a/xkb/README.compiled
++++ b/xkb/README.compiled
+@@ -4,10 +4,10 @@ current keymap and/or any scratch keymaps used by clients.  The X server
+ or some other tool might destroy or replace the files in this directory,
+ so it is not a safe place to store compiled keymaps for long periods of
+ time.  The default keymap for any server is usually stored in:
+-     X<num>-default.xkm
+-where <num> is the display number of the server in question, which makes
+-it possible for several servers *on the same host* to share the same 
+-directory.
++     server-<SHA1>.xkm
++
++where <SHA1> is the SHA1 hash of keymap source, so that compiled
++keymap of different keymap sources are stored in different files.
+ 
+ Unless the X server is modified, sharing this directory between servers on
+ different hosts could cause problems.
+diff --git a/xkb/ddxLoad.c b/xkb/ddxLoad.c
+index 4d5dfb6..60a68af 100644
+--- a/xkb/ddxLoad.c
++++ b/xkb/ddxLoad.c
+@@ -32,6 +32,12 @@ THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ #include <xkb-config.h>
+ #endif
+ 
++#ifdef HAVE_SHA1_IN_LIBMD /* Use libmd for SHA1 */
++# include <sha1.h>
++#else /* Use OpenSSL's libcrypto */
++# include <stddef.h>  /* buggy openssl/sha.h wants size_t */
++# include <openssl/sha.h>
++#endif
+ #include <stdio.h>
+ #include <ctype.h>
+ #define	NEED_EVENTS 1
+@@ -46,24 +52,13 @@ THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ #define	XKBSRV_NEED_FILE_FUNCS
+ #include <xkbsrv.h>
+ #include <X11/extensions/XI.h>
++#include <errno.h>
+ #include "xkb.h"
+ 
+ #if defined(CSRG_BASED) || defined(linux) || defined(__GNU__)
+ #include <paths.h>
+ #endif
+ 
+-	/*
+-	 * If XKM_OUTPUT_DIR specifies a path without a leading slash, it is
+-	 * relative to the top-level XKB configuration directory.
+-	 * Making the server write to a subdirectory of that directory
+-	 * requires some work in the general case (install procedure
+-	 * has to create links to /var or somesuch on many machines),
+-	 * so we just compile into /usr/tmp for now.
+-	 */
+-#ifndef XKM_OUTPUT_DIR
+-#define	XKM_OUTPUT_DIR	"compiled/"
+-#endif
+-
+ #define	PRE_ERROR_MSG "\"The XKEYBOARD keymap compiler (xkbcomp) reports:\""
+ #define	ERROR_PREFIX	"\"> \""
+ #define	POST_ERROR_MSG1 "\"Errors from xkbcomp are not fatal to the X server\""
+@@ -179,6 +174,45 @@ OutputDirectory(
+ }
+ 
+ static Bool    	
++Sha1Asc(char sha1Asc[SHA_DIGEST_LENGTH*2+1], const char * input)
++{
++    int i;
++    unsigned char sha1[SHA_DIGEST_LENGTH];
++
++#ifdef HAVE_SHA1_IN_LIBMD /* Use libmd for SHA1 */
++    SHA1_CTX ctx;
++
++    SHA1Init (&ctx);
++    SHA1Update (&ctx, input, strlen(input));
++    SHA1Final (sha1, &ctx);
++#else /* Use OpenSSL's libcrypto */
++    SHA_CTX ctx;
++    int success;
++
++    success = SHA1_Init (&ctx);
++    if (! success)
++	return BadAlloc;
++
++    success = SHA1_Update (&ctx, input, strlen(input));
++    if (! success)
++	return BadAlloc;
++
++    success = SHA1_Final (sha1, &ctx);
++    if (! success)
++	return BadAlloc;
++#endif
++
++    /* convert sha1 to sha1_asc */
++    for(i=0; i<SHA_DIGEST_LENGTH; ++i) {
++        sprintf(sha1Asc+i*2, "%02X", sha1[i]);
++    }
++
++    return Success;
++}
++
++/* call xkbcomp and compile XKB keymap, return xkm file name in
++   nameRtrn */
++static Bool
+ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+ 				XkbComponentNamesPtr	names,
+ 				unsigned		want,
+@@ -187,7 +221,11 @@ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+ 				int			nameRtrnLen)
+ {
+     FILE *	out;
+-    char	*buf = NULL, keymap[PATH_MAX], xkm_output_dir[PATH_MAX];
++    char *	buf = NULL, xkmfile[PATH_MAX], xkm_output_dir[PATH_MAX];
++    char *	tmpXkmFile = NULL;
++    char *	canonicalXkmFileName = NULL;
++    char	sha1Asc[SHA_DIGEST_LENGTH*2+1], xkbKeyMapBuf[100*1024];
++    int	ret, result;
+ 
+     const char	*emptystring = "";
+     const char	*xkbbasedirflag = emptystring;
+@@ -198,16 +236,70 @@ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+     /* WIN32 has no popen. The input must be stored in a file which is
+        used as input for xkbcomp. xkbcomp does not read from stdin. */
+     char tmpname[PATH_MAX];
+-    const char *xkmfile = tmpname;
++    const char *xkbfile = tmpname;
+ #else
+-    const char *xkmfile = "-";
++    const char *xkbfile = "-";
+ #endif
+ 
+-    snprintf(keymap, sizeof(keymap), "server-%s", display);
++    /* Write keymap source (xkbfile) to memory buffer `xkbKeyMapBuf',
++       of which SHA1 is generated and used as result xkm file name  */
++    memset(xkbKeyMapBuf, 0, sizeof(xkbKeyMapBuf));
++    out = fmemopen(xkbKeyMapBuf, sizeof(xkbKeyMapBuf), "w");
++    if (NULL == out) {
++        ErrorF("[xkb] Open xkbKeyMapBuf for writing failed\n");
++        return False;
++    }
++    ret = XkbWriteXKBKeymapForNames(out, names, xkb, want, need);
++    if (fclose(out) !=0)
++    {
++        ErrorF("[xkb] XkbWriteXKBKeymapForNames error, perhaps xkbKeyMapBuf is too small\n");
++        return False;
++    }
++#ifdef DEBUG
++    if (xkbDebugFlags) {
++       ErrorF("[xkb] XkbDDXCompileKeymapByNames compiling keymap:\n");
++       fputs(xkbKeyMapBuf, stderr);
++    }
++#endif
++    if (!ret) {
++        ErrorF("[xkb] Generating XKB Keymap failed, giving up compiling keymap\n");
++        return False;
++    }
++
++    DebugF("[xkb] computing SHA1 of keymap\n");
++    if (Success == Sha1Asc(sha1Asc, xkbKeyMapBuf)) {
++        snprintf(xkmfile, sizeof(xkmfile), "server-%s", sha1Asc);
++    }
++    else {
++        ErrorF("[xkb] Computing SHA1 of keymap failed, "
++               "using display name instead as xkm file name\n");
++        snprintf(xkmfile, sizeof(xkmfile), "server-%s", display);
++    }
+ 
+-    XkbEnsureSafeMapName(keymap);
++    XkbEnsureSafeMapName(xkmfile);
+     OutputDirectory(xkm_output_dir, sizeof(xkm_output_dir));
+ 
++    /* set nameRtrn, fail if it's too small */
++    if ((strlen(xkmfile)+1 > nameRtrnLen) && nameRtrn) {
++        ErrorF("[xkb] nameRtrn too small to hold xkmfile name\n");
++        return False;
++    }
++    strncpy(nameRtrn, xkmfile, nameRtrnLen);
++
++    /* if the xkm file already exists, reuse it */
++    canonicalXkmFileName = Xprintf("%s%s.xkm", xkm_output_dir, xkmfile);
++    if (access(canonicalXkmFileName, R_OK) == 0) {
++        /* yes, we can reuse the old xkm file */
++        LogMessage(X_INFO, "XKB: reuse xkmfile %s\n", canonicalXkmFileName);
++        result = True;
++        goto _ret;
++    }
++    LogMessage(X_INFO, "XKB: generating xkmfile %s\n", canonicalXkmFileName);
++
++    /* continue to call xkbcomp to compile the keymap. to avoid race
++       condition, we compile it to a tmpfile then rename it to
++       xkmfile */
++
+ #ifdef WIN32
+     strcpy(tmpname, Win32TempDir());
+     strcat(tmpname, "\\xkb_XXXXXX");
+@@ -230,19 +322,30 @@ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+ 	}
+     }
+ 
++    if ( (tmpXkmFile = tempnam(xkm_output_dir, NULL)) == NULL ) {
++        ErrorF("[xkb] Can't generate temp xkm file name");
++        result = False;
++        goto _ret;
++    }
++
+     buf = Xprintf("\"%s%sxkbcomp\" -w %d %s -xkm \"%s\" "
+-		  "-em1 %s -emp %s -eml %s \"%s%s.xkm\"",
++		  "-em1 %s -emp %s -eml %s \"%s\"",
+ 		  xkbbindir, xkbbindirsep,
+ 		  ( (xkbDebugFlags < 2) ? 1 :
+ 		    ((xkbDebugFlags > 10) ? 10 : (int)xkbDebugFlags) ),
+-		  xkbbasedirflag, xkmfile,
++		  xkbbasedirflag, xkbfile,
+ 		  PRE_ERROR_MSG, ERROR_PREFIX, POST_ERROR_MSG1,
+-		  xkm_output_dir, keymap);
++		  tmpXkmFile);
+ 
+     if (xkbbasedirflag != emptystring) {
+ 	xfree(xkbbasedirflag);
+     }
+     
++    /* there's a potential race condition between calling tempnam()
++       and invoking xkbcomp to write the result file (potential temp
++       file name conflicts), but since xkbcomp is a standalone
++       program, we have to live with this */
++
+ #ifndef WIN32
+     out= Popen(buf,"w");
+ #else
+@@ -250,31 +353,43 @@ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+ #endif
+     
+     if (out!=NULL) {
+-#ifdef DEBUG
+-    if (xkbDebugFlags) {
+-       ErrorF("[xkb] XkbDDXCompileKeymapByNames compiling keymap:\n");
+-       XkbWriteXKBKeymapForNames(stderr,names,xkb,want,need);
++        /* write XKBKeyMapBuf to xkbcomp */
++        if (EOF==fputs(xkbKeyMapBuf, out))
++        {
++            ErrorF("[xkb] Sending keymap to xkbcomp failed\n");
++            result = False;
++            goto _ret;
+     }
+-#endif
+-	XkbWriteXKBKeymapForNames(out,names,xkb,want,need);
+ #ifndef WIN32
+ 	if (Pclose(out)==0)
+ #else
+ 	if (fclose(out)==0 && System(buf) >= 0)
+ #endif
+ 	{
++        /* xkbcomp success */
+             if (xkbDebugFlags)
+                 DebugF("[xkb] xkb executes: %s\n",buf);
+-	    if (nameRtrn) {
+-		strncpy(nameRtrn,keymap,nameRtrnLen);
+-		nameRtrn[nameRtrnLen-1]= '\0';
++
++            /* if canonicalXkmFileName already exists now, we simply
++               overwrite it, this is OK */
++            ret = rename(tmpXkmFile, canonicalXkmFileName);
++            if (0 != ret) {
++                ErrorF("[xkb] Can't rename %s to %s, error: %s\n",
++                       tmpXkmFile, canonicalXkmFileName,
++                       strerror(errno));
++
++                /* in case of error, don't unlink tmpXkmFile, leave it
++                   for debugging */
++
++                result = False;
++                goto _ret;
+ 	    }
+-            if (buf != NULL)
+-                xfree (buf);
+-	    return True;
++
++            result = True;
++            goto _ret;
+ 	}
+ 	else
+-	    LogMessage(X_ERROR, "Error compiling keymap (%s)\n", keymap);
++           LogMessage(X_ERROR, "Error compiling keymap (%s)\n", xkbfile);
+ #ifdef WIN32
+         /* remove the temporary file */
+         unlink(tmpname);
+@@ -289,9 +404,17 @@ XkbDDXCompileKeymapByNames(	XkbDescPtr		xkb,
+     }
+     if (nameRtrn)
+ 	nameRtrn[0]= '\0';
++    result = False;
++
++_ret:
++    if (tmpXkmFile)
++        free(tmpXkmFile);
++    if (canonicalXkmFileName)
++        xfree(canonicalXkmFileName);
+     if (buf != NULL)
+         xfree (buf);
+-    return False;
++
++    return result;
+ }
+ 
+ static FILE *
+@@ -375,7 +498,6 @@ unsigned	missing;
+ 	DebugF("Loaded XKB keymap %s, defined=0x%x\n",fileName,(*xkbRtrn)->defined);
+     }
+     fclose(file);
+-    (void) unlink (fileName);
+     return (need|want)&(~missing);
+ }
+ 
+-- 
+1.5.6.5
+
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
new file mode 100644
index 0000000..8b82de2
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
@@ -0,0 +1,20 @@
+diff --git a/configure.ac b/configure.ac
+index b3b752c..600500b 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -523,13 +523,9 @@ dnl Uses --default-font-path if set, otherwise checks for /etc/X11/fontpath.d,
+ dnl otherwise uses standard subdirectories of FONTROOTDIR. When cross
+ dnl compiling, assume default font path uses standard FONTROOTDIR directories.
+ DEFAULT_FONT_PATH="${FONTMISCDIR}/,${FONTTTFDIR}/,${FONTOTFDIR}/,${FONTTYPE1DIR}/,${FONT100DPIDIR}/,${FONT75DPIDIR}/"
+-if test "$cross_compiling" != yes; then
+-	AC_CHECK_FILE([${sysconfdir}/X11/fontpath.d],
+-		[DEFAULT_FONT_PATH='catalogue:${sysconfdir}/X11/fontpath.d'],
+-		[case $host_os in
++		case $host_os in
+ 			darwin*) DEFAULT_FONT_PATH="${DEFAULT_FONT_PATH},/Library/Fonts,/System/Library/Fonts" ;;
+-		esac])
+-fi
++		esac
+ AC_ARG_WITH(default-font-path, AS_HELP_STRING([--with-default-font-path=PATH], [Comma separated list of font dirs]),
+ 				[ FONTPATH="$withval" ],
+ 				[ FONTPATH="${DEFAULT_FONT_PATH}" ])
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/doublefix.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/doublefix.patch
new file mode 100644
index 0000000..092a712
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/doublefix.patch
@@ -0,0 +1,13 @@
+Index: xorg-server-1.6.0/hw/xfree86/common/Makefile.am
+===================================================================
+--- xorg-server-1.6.0.orig/hw/xfree86/common/Makefile.am	2010-02-01 14:04:53.247789918 +0000
++++ xorg-server-1.6.0/hw/xfree86/common/Makefile.am	2010-02-01 14:05:27.787817002 +0000
+@@ -46,7 +46,7 @@
+ sdk_HEADERS = compiler.h fourcc.h xf86.h xf86Module.h xf86Opt.h \
+               xf86PciInfo.h xf86Priv.h xf86Privstr.h xf86Resources.h \
+               xf86cmap.h xf86fbman.h xf86str.h xf86RAC.h xf86Xinput.h xisb.h \
+-              $(XVSDKINCS) xorgVersion.h \
++              xorgVersion.h \
+               xf86sbusBus.h xf86xv.h xf86xvmc.h xf86xvpriv.h
+ 
+ DISTCLEANFILES = xf86Build.h
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/drmfix.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/drmfix.patch
new file mode 100644
index 0000000..a62a767
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/drmfix.patch
@@ -0,0 +1,13 @@
+Index: xorg-server-1.4/hw/xfree86/os-support/linux/Makefile.am
+===================================================================
+--- xorg-server-1.4.orig/hw/xfree86/os-support/linux/Makefile.am	2007-08-23 21:04:53.000000000 +0200
++++ xorg-server-1.4/hw/xfree86/os-support/linux/Makefile.am	2008-03-13 18:27:23.000000000 +0100
+@@ -41,7 +41,7 @@
+ 
+ AM_CFLAGS = -DUSESTDRES -DHAVE_SYSV_IPC $(DIX_CFLAGS) $(XORG_CFLAGS) $(PLATFORM_DEFINES)
+ 
+-INCLUDES = $(XORG_INCS) $(PLATFORM_INCLUDES) -I/usr/include/drm # FIXME this last part is crack
++INCLUDES = $(XORG_INCS) $(PLATFORM_INCLUDES) $(LIBDRM_CFLAGS)
+ 
+ # FIXME: These need to be added to the build
+ LNX_EXTRA_SRCS = \
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros.patch
new file mode 100644
index 0000000..eed491b
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros.patch
@@ -0,0 +1,21 @@
+We need to insert the sysroot path into compiler commandlines for this
+kind of variable use, otherwise we're looking into /usr/include/.
+
+RP - 26/11/09
+
+Index: git/xorg-server.m4
+===================================================================
+--- git.orig/xorg-server.m4	2009-11-10 12:04:34.000000000 +0000
++++ git/xorg-server.m4	2009-11-27 00:05:02.000000000 +0000
+@@ -28,9 +28,10 @@
+ # Checks for the $1 define in xorg-server.h (from the sdk).  If it
+ # is defined, then add $1 to $REQUIRED_MODULES.
+ 
++m4_pattern_allow([^PKG_CONFIG_SYSROOT_DIR$])
+ AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
+ 	SAVE_CFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -I`pkg-config --variable=sdkdir xorg-server`"
++	CFLAGS="$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`pkg-config --variable=sdkdir xorg-server`"
+ 	AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
+ #include "xorg-server.h"
+ #if !defined $1
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros1.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros1.patch
new file mode 100644
index 0000000..94852f0
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_macros1.patch
@@ -0,0 +1,22 @@
+We need to insert the sysroot path into compiler commandlines for this
+kind of variable use, otherwise we're looking into /usr/include/.
+
+RP - 26/11/09
+
+Index: git/xorg-server.m4
+===================================================================
+--- git.orig/xorg-server.m4	2010-02-05 10:00:55.000000000 +0000
++++ git/xorg-server.m4	2010-02-05 10:02:12.000000000 +0000
+@@ -28,10 +28,11 @@
+ # Checks for the $1 define in xorg-server.h (from the sdk).  If it
+ # is defined, then add $1 to $REQUIRED_MODULES.
+ 
++m4_pattern_allow([^PKG_CONFIG_SYSROOT_DIR$])
+ AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
+ 	AC_REQUIRE([PKG_PROG_PKG_CONFIG])
+ 	SAVE_CFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -I`$PKG_CONFIG --variable=sdkdir xorg-server`"
++	CFLAGS="$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`$PKG_CONFIG --variable=sdkdir xorg-server`"
+ 	AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
+ #include "xorg-server.h"
+ #if !defined $1
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch
new file mode 100644
index 0000000..565832e
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch
@@ -0,0 +1,13 @@
+Index: git/os/osdep.h
+===================================================================
+--- git.orig/os/osdep.h	2008-10-07 18:38:21.000000000 +0100
++++ git/os/osdep.h	2008-10-07 18:39:36.000000000 +0100
+@@ -92,7 +92,7 @@
+  * like sysconf(_SC_OPEN_MAX) is not supported.
+  */
+ 
+-#if OPEN_MAX <= 256
++#if 0
+ #define MAXSOCKS (OPEN_MAX - 1)
+ #else
+ #define MAXSOCKS 256
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/libdri-xinerama-symbol.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/libdri-xinerama-symbol.patch
new file mode 100644
index 0000000..db29da9
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/libdri-xinerama-symbol.patch
@@ -0,0 +1,50 @@
+Index: xorg-server-1.5.0/hw/xfree86/dri/dri.c
+===================================================================
+--- xorg-server-1.5.0.orig/hw/xfree86/dri/dri.c	2008-09-24 17:43:04.000000000 +0100
++++ xorg-server-1.5.0/hw/xfree86/dri/dri.c	2008-09-24 17:46:38.000000000 +0100
+@@ -73,10 +73,6 @@
+ 
+ #define PCI_BUS_NO_DOMAIN(bus) ((bus) & 0xffu)
+ 
+-#if !defined(PANORAMIX)
+-extern Bool noPanoramiXExtension;
+-#endif
+-
+ static int DRIEntPrivIndex = -1;
+ static DevPrivateKey DRIScreenPrivKey = &DRIScreenPrivKey;
+ static DevPrivateKey DRIWindowPrivKey = &DRIWindowPrivKey;
+@@ -307,7 +303,6 @@
+     drm_context_t *       reserved;
+     int                 reserved_count;
+     int                 i;
+-    Bool                xineramaInCore = FALSE;
+     DRIEntPrivPtr       pDRIEntPriv;
+     ScrnInfoPtr         pScrn = xf86Screens[pScreen->myNum];
+     DRIContextFlags	flags    = 0;
+@@ -320,20 +315,13 @@
+ 	return FALSE;
+     }
+ 
+-    /*
+-     * If Xinerama is on, don't allow DRI to initialise.  It won't be usable
+-     * anyway.
+-     */
+-    if (xf86LoaderCheckSymbol("noPanoramiXExtension"))
+-	xineramaInCore = TRUE;
+-
+-    if (xineramaInCore) {
+-	if (!noPanoramiXExtension) {
+-	    DRIDrvMsg(pScreen->myNum, X_WARNING,
+-		"Direct rendering is not supported when Xinerama is enabled\n");
+-	    return FALSE;
+-	}
++#if defined(PANORAMIX)
++    if (!noPanoramiXExtension) {
++        DRIDrvMsg(pScreen->myNum, X_WARNING,
++            "Direct rendering is not supported when Xinerama is enabled\n");
++        return FALSE;
+     }
++#endif
+ 
+     if (!DRIOpenDRMMaster(pScrn, pDRIInfo->SAREASize,
+ 			  pDRIInfo->busIdString,
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
new file mode 100644
index 0000000..cd408c7
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
@@ -0,0 +1,28 @@
+This is the revised version of files/macro_tweak.patch for
+xorg-server 1.8.99.904.
+
+the files/macro_tweak.patch can not removed now since it is used by
+xserver-kdrive-1.7.99.2 and xserver-xf86-lite_1.7.99.2. Once they
+are all upgraded to 1.8.99.904, the the files/macro_tweak.patch
+can be safely replace by this patch.
+
+Signed-off-by: Yu Ke <ke.yu@intel.com>
+
+diff --git a/xorg-server.m4 b/xorg-server.m4
+index bdecf62..040fdb8 100644
+--- a/xorg-server.m4
++++ b/xorg-server.m4
+@@ -28,10 +28,12 @@ dnl
+ # Checks for the $1 define in xorg-server.h (from the sdk).  If it
+ # is defined, then add $1 to $REQUIRED_MODULES.
+ 
++m4_pattern_allow(PKG_CONFIG_SYSROOT_DIR)
++
+ AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
+ 	AC_REQUIRE([PKG_PROG_PKG_CONFIG])
+ 	SAVE_CFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -I`$PKG_CONFIG --variable=sdkdir xorg-server`"
++	CFLAGS="$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`$PKG_CONFIG --variable=sdkdir xorg-server`"
+ 	AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
+ #include "xorg-server.h"
+ #if !defined $1
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch
new file mode 100644
index 0000000..6b34032
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch
@@ -0,0 +1,12 @@
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac	2009-01-15 20:35:31.000000000 +0000
++++ git/configure.ac	2009-01-15 20:35:38.000000000 +0000
+@@ -62,7 +62,6 @@
+ AC_LIBTOOL_WIN32_DLL
+ AC_DISABLE_STATIC
+ AC_PROG_LIBTOOL
+-DOLT
+ AC_PROG_MAKE_SET
+ PKG_PROG_PKG_CONFIG
+ AC_PROG_LEX
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-disable-dri_sarea.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-disable-dri_sarea.patch
new file mode 100755
index 0000000..3d2fa16
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-disable-dri_sarea.patch
@@ -0,0 +1,12 @@
+diff -urN xorg-server-1.5.99.1/hw/xfree86/dri2/dri2.c xorg-server-1.5.99.1.new/hw/xfree86/dri2/dri2.c
+--- xorg-server-1.5.99.1/hw/xfree86/dri2/dri2.c	2008-09-01 03:26:37.000000000 +0800
++++ xorg-server-1.5.99.1.new/hw/xfree86/dri2/dri2.c	2008-09-18 00:28:16.000000000 +0800
+@@ -39,7 +39,7 @@
+ #include "scrnintstr.h"
+ #include "windowstr.h"
+ #include "dri2.h"
+-#include <GL/internal/dri_sarea.h>
++//#include <GL/internal/dri_sarea.h>
+ 
+ #include "xf86.h"
+ 
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-enable-dri2.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-enable-dri2.patch
new file mode 100755
index 0000000..7ff3658
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xorg-server-enable-dri2.patch
@@ -0,0 +1,23 @@
+commit 67b9b3a77a8b86eef03af36a0f4be3a07411efee
+Author: Eric Anholt <eric@anholt.net>
+Date:   Thu Sep 11 16:18:17 2008 -0700
+
+    Enable DRI2 build.
+
+diff --git a/hw/xfree86/Makefile.am b/hw/xfree86/Makefile.am
+index eff2c31..98d7ec8 100644
+--- a/hw/xfree86/Makefile.am
++++ b/hw/xfree86/Makefile.am
+@@ -4,9 +4,9 @@ if DRI
+ DRI_SUBDIR = dri
+ endif
+ 
+-#if DRI2
+-#DRI2_SUBDIR = dri2
+-#endif
++if DRI2
++DRI2_SUBDIR = dri2
++endif
+ 
+ if XF86UTILS
+ XF86UTILS_SUBDIR = utils
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-1.5.0-bg-none-root.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-1.5.0-bg-none-root.patch
new file mode 100644
index 0000000..ef53689
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-1.5.0-bg-none-root.patch
@@ -0,0 +1,156 @@
+From a3e15680da24cb8259f6a83dee0c930dab024290 Mon Sep 17 00:00:00 2001
+From: Kristian <krh@redhat.com>
+Date: Fri, 15 Aug 2008 15:15:14 +1000
+Subject: [PATCH] Add nr for background=none root
+
+---
+ dix/globals.c                |    1 +
+ dix/window.c                 |   22 ++++++++++++----------
+ hw/xfree86/common/xf86Init.c |   11 +++++++++++
+ hw/xfree86/common/xf86str.h  |    5 ++++-
+ include/opaque.h             |    1 +
+ os/utils.c                   |    3 +++
+ 6 files changed, 32 insertions(+), 11 deletions(-)
+
+diff --git a/dix/globals.c b/dix/globals.c
+index 973dc43..dbd76bb 100644
+--- a/dix/globals.c
++++ b/dix/globals.c
+@@ -141,6 +141,7 @@ FontPtr defaultFont;   /* not declared in dix.h to avoid including font.h in
+ CursorPtr rootCursor;
+ Bool party_like_its_1989 = FALSE;
+ Bool whiteRoot = FALSE;
++Bool bgNoneRoot = FALSE;
+ 
+ int cursorScreenDevPriv[MAXSCREENS];
+ 
+diff --git a/dix/window.c b/dix/window.c
+index c31fa87..8bb178d 100644
+--- a/dix/window.c
++++ b/dix/window.c
+@@ -482,23 +482,24 @@ InitRootWindow(WindowPtr pWin)
+     pWin->cursorIsNone = FALSE;
+     pWin->optional->cursor = rootCursor;
+     rootCursor->refcnt++;
+-
++    pWin->backingStore = defaultBackingStore;
++    pWin->forcedBS = (defaultBackingStore != NotUseful);
+ 
+     if (party_like_its_1989) {
+         MakeRootTile(pWin);
+         backFlag |= CWBackPixmap;
++        pScreen->ChangeWindowAttributes(pWin, backFlag);
++    } else if (bgNoneRoot) {
++	/* nothing, handled in xf86CreateRootWindow */
+     } else {
+ 	if (whiteRoot)
+             pWin->background.pixel = pScreen->whitePixel;
+         else
+             pWin->background.pixel = pScreen->blackPixel;
+         backFlag |= CWBackPixel;
+-    } 
+ 
+-    pWin->backingStore = defaultBackingStore;
+-    pWin->forcedBS = (defaultBackingStore != NotUseful);
+-    /* We SHOULD check for an error value here XXX */
+-    (*pScreen->ChangeWindowAttributes)(pWin, backFlag);
++        pScreen->ChangeWindowAttributes(pWin, backFlag);
++    }
+ 
+     MapWindow(pWin, serverClient);
+ }
+diff --git a/hw/xfree86/common/xf86Init.c b/hw/xfree86/common/xf86Init.c
+index 236c00b..083a6ac 100644
+--- a/hw/xfree86/common/xf86Init.c
++++ b/hw/xfree86/common/xf86Init.c
+@@ -79,6 +79,7 @@
+ #ifdef RENDER
+ #include "picturestr.h"
+ #endif
++#include "xace.h"
+ 
+ #include "globals.h"
+ 
+@@ -328,6 +329,7 @@ xf86CreateRootWindow(WindowPtr pWin)
+   int ret = TRUE;
+   int err = Success;
+   ScreenPtr pScreen = pWin->drawable.pScreen;
++  ScrnInfoPtr pScrn = xf86Screens[pScreen->myNum];
+   RootWinPropPtr pProp;
+   CreateWindowProcPtr CreateWindow = (CreateWindowProcPtr)
+       dixLookupPrivate(&pScreen->devPrivates, xf86CreateRootWindowKey);
+@@ -381,6 +383,15 @@ xf86CreateRootWindow(WindowPtr pWin)
+     }
+   }
+ 
++  if (bgNoneRoot && pScrn->canDoBGNoneRoot || 1) {
++      pWin->backgroundState = XaceBackgroundNoneState(pWin);
++      pWin->background.pixel = pScreen->whitePixel;
++      pScreen->ChangeWindowAttributes(pWin, CWBackPixmap | CWBorderPixel | CWCursor | CWBackingStore);
++  } else {
++      pWin->background.pixel = pScreen->blackPixel;
++      pScreen->ChangeWindowAttributes(pWin, CWBackPixel | CWBorderPixel | CWCursor | CWBackingStore);
++  }
++
+ #ifdef DEBUG
+   ErrorF("xf86CreateRootWindow() returns %d\n", ret);
+ #endif
+diff --git a/hw/xfree86/common/xf86str.h b/hw/xfree86/common/xf86str.h
+index 904c369..8c38f69 100644
+--- a/hw/xfree86/common/xf86str.h
++++ b/hw/xfree86/common/xf86str.h
+@@ -531,7 +531,7 @@ typedef struct _confdrirec {
+ } confDRIRec, *confDRIPtr;
+ 
+ /* These values should be adjusted when new fields are added to ScrnInfoRec */
+-#define NUM_RESERVED_INTS		16
++#define NUM_RESERVED_INTS		15
+ #define NUM_RESERVED_POINTERS		15
+ #define NUM_RESERVED_FUNCS		11
+ 
+@@ -959,6 +959,9 @@ typedef struct _ScrnInfoRec {
+     ClockRangesPtr	clockRanges;
+     int			adjustFlags;
+ 
++    /* -nr support */
++    int			canDoBGNoneRoot;
++
+     /*
+      * These can be used when the minor ABI version is incremented.
+      * The NUM_* parameters must be reduced appropriately to keep the
+diff --git a/include/opaque.h b/include/opaque.h
+index 07a0715..be1577b 100644
+--- a/include/opaque.h
++++ b/include/opaque.h
+@@ -71,6 +71,7 @@ extern Bool defeatAccessControl;
+ extern long maxBigRequestSize;
+ extern Bool party_like_its_1989;
+ extern Bool whiteRoot;
++extern Bool bgNoneRoot;
+ 
+ extern Bool CoreDump;
+ 
+diff --git a/os/utils.c b/os/utils.c
+index b100949..c41b45b 100644
+--- a/os/utils.c
++++ b/os/utils.c
+@@ -515,6 +515,7 @@ void UseMsg(void)
+ #endif
+     ErrorF("-nolisten string       don't listen on protocol\n");
+     ErrorF("-noreset               don't reset after last client exists\n");
++    ErrorF("-nr                    create root window with no background\n");
+     ErrorF("-reset                 reset after last client exists\n");
+     ErrorF("-p #                   screen-saver pattern duration (minutes)\n");
+     ErrorF("-pn                    accept failure to listen on all ports\n");
+@@ -859,6 +860,8 @@ ProcessCommandLine(int argc, char *argv[])
+ 	    defaultBackingStore = WhenMapped;
+         else if ( strcmp( argv[i], "-wr") == 0)
+             whiteRoot = TRUE;
++        else if ( strcmp( argv[i], "-nr") == 0)
++            bgNoneRoot = TRUE;
+         else if ( strcmp( argv[i], "-maxbigreqsize") == 0) {
+              if(++i < argc) {
+                  long reqSizeArg = atol(argv[i]);
+-- 
+1.5.3.4
+
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-DRI2Swapbuffer.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-DRI2Swapbuffer.patch
new file mode 100644
index 0000000..2754170
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-DRI2Swapbuffer.patch
@@ -0,0 +1,179 @@
+diff --git a/glx/glxdri2.c b/glx/glxdri2.c
+index 146ea82..3b5338b 100644
+--- a/glx/glxdri2.c
++++ b/glx/glxdri2.c
+@@ -70,6 +70,7 @@ struct __GLXDRIscreen {
+ 
+     const __DRIcoreExtension *core;
+     const __DRIdri2Extension *dri2;
++    const __DRI2flushExtension *flush;	
+     const __DRIcopySubBufferExtension *copySubBuffer;
+     const __DRIswapControlExtension *swapControl;
+     const __DRItexBufferExtension *texBuffer;
+@@ -135,10 +136,14 @@ __glXDRIdrawableCopySubBuffer(__GLXdrawable *drawable,
+ static GLboolean
+ __glXDRIdrawableSwapBuffers(__GLXdrawable *drawable)
+ {
+-    __GLXDRIdrawable *private = (__GLXDRIdrawable *) drawable;
++    __GLXDRIdrawable *priv = (__GLXDRIdrawable *) drawable;
++    __GLXDRIscreen *screen = priv->screen;
++
++    if (!DRI2SwapBuffers(drawable->pDraw))
++		return FALSE;
+ 
+-    __glXDRIdrawableCopySubBuffer(drawable, 0, 0,
+-				  private->width, private->height);
++    if (screen->flush->flushInvalidate)
++	(*screen->flush->flushInvalidate)(priv->driDrawable);
+ 
+     return TRUE;
+ }
+diff --git a/hw/xfree86/dri2/dri2.c b/hw/xfree86/dri2/dri2.c
+index 580383d..23e6467 100644
+--- a/hw/xfree86/dri2/dri2.c
++++ b/hw/xfree86/dri2/dri2.c
+@@ -70,6 +70,7 @@ typedef struct _DRI2Screen {
+     DRI2CreateBufferProcPtr	 CreateBuffer;
+     DRI2DestroyBufferProcPtr	 DestroyBuffer;
+     DRI2CopyRegionProcPtr	 CopyRegion;
++    DRI2SwapBuffersProcPtr	 SwapBuffers;	
+ 
+     HandleExposuresProcPtr       HandleExposures;
+ } DRI2ScreenRec, *DRI2ScreenPtr;
+@@ -422,6 +423,49 @@ DRI2CopyRegion(DrawablePtr pDraw, RegionPtr pRegion,
+     return Success;
+ }
+ 
++Bool
++DRI2SwapBuffers(DrawablePtr pDraw)
++{
++    DRI2ScreenPtr   ds = DRI2GetScreen(pDraw->pScreen);
++    DRI2DrawablePtr pPriv;
++    DRI2BufferPtr   pDestBuffer, pSrcBuffer;
++    int		    i;
++
++    pPriv = DRI2GetDrawable(pDraw);
++    if (pPriv == NULL)
++	return FALSE;
++
++    pDestBuffer = NULL;
++    pSrcBuffer = NULL;
++    for (i = 0; i < pPriv->bufferCount; i++)
++    {
++	if (pPriv->buffers[i]->attachment == DRI2BufferFrontLeft)
++	    pDestBuffer = (DRI2BufferPtr) pPriv->buffers[i];
++	if (pPriv->buffers[i]->attachment == DRI2BufferBackLeft)
++	    pSrcBuffer = (DRI2BufferPtr) pPriv->buffers[i];
++    }
++    if (pSrcBuffer == NULL || pDestBuffer == NULL)
++	return FALSE;
++
++    if (ds->SwapBuffers) {
++	if ((*ds->SwapBuffers)(pDraw, pDestBuffer, pSrcBuffer))
++	    return TRUE;
++    }
++
++    BoxRec box;
++    RegionRec region;
++
++    box.x1 = 0;
++    box.y1 = 0;
++    box.x2 = pDraw->width;
++    box.y2 = pDraw->height;
++    REGION_INIT(drawable->pDraw->pScreen, &region, &box, 0);
++    if (DRI2CopyRegion(pDraw, &region, DRI2BufferFrontLeft, DRI2BufferBackLeft) != Success)
++	return FALSE;
++
++    return TRUE;
++}
++
+ void
+ DRI2DestroyDrawable(DrawablePtr pDraw)
+ {
+@@ -538,6 +582,9 @@ DRI2ScreenInit(ScreenPtr pScreen, DRI2InfoPtr info)
+     }
+     ds->CopyRegion     = info->CopyRegion;
+ 
++    if (info->version >= 3)
++	ds->SwapBuffers    = info->SwapBuffers;
++
+     dixSetPrivate(&pScreen->devPrivates, dri2ScreenPrivateKey, ds);
+ 
+     xf86DrvMsg(pScreen->myNum, X_INFO, "[DRI2] Setup complete\n");
+diff --git a/hw/xfree86/dri2/dri2.h b/hw/xfree86/dri2/dri2.h
+index f369267..e2784dd 100644
+--- a/hw/xfree86/dri2/dri2.h
++++ b/hw/xfree86/dri2/dri2.h
+@@ -67,6 +67,10 @@ typedef void		(*DRI2CopyRegionProcPtr)(DrawablePtr pDraw,
+ 						 DRI2BufferPtr pDestBuffer,
+ 						 DRI2BufferPtr pSrcBuffer);
+ 
++typedef Bool		(*DRI2SwapBuffersProcPtr)(DrawablePtr pDraw,
++						  DRI2BufferPtr pFrontBuffer,
++						  DRI2BufferPtr pBackBuffer);
++
+ typedef void		(*DRI2WaitProcPtr)(WindowPtr pWin,
+ 					   unsigned int sequence);
+ 
+@@ -90,6 +94,7 @@ typedef struct {
+     DRI2CreateBuffersProcPtr	CreateBuffers;
+     DRI2DestroyBuffersProcPtr	DestroyBuffers;
+     DRI2CopyRegionProcPtr	CopyRegion;
++    DRI2SwapBuffersProcPtr	SwapBuffers;	
+     DRI2WaitProcPtr		Wait;
+ 
+     /**
+@@ -153,4 +158,6 @@ extern _X_EXPORT DRI2Buffer2Ptr *DRI2GetBuffersWithFormat(DrawablePtr pDraw,
+ 	int *width, int *height, unsigned int *attachments, int count,
+ 	int *out_count);
+ 
++extern _X_EXPORT Bool DRI2SwapBuffers(DrawablePtr pDraw);
++
+ #endif
+diff --git a/hw/xfree86/dri2/dri2ext.c b/hw/xfree86/dri2/dri2ext.c
+index 3c06174..67b419b 100644
+--- a/hw/xfree86/dri2/dri2ext.c
++++ b/hw/xfree86/dri2/dri2ext.c
+@@ -81,7 +81,7 @@ ProcDRI2QueryVersion(ClientPtr client)
+     rep.length = 0;
+     rep.sequenceNumber = client->sequence;
+     rep.majorVersion = 1;
+-    rep.minorVersion = 1;
++    rep.minorVersion = 2;
+ 
+     if (client->swapped) {
+     	swaps(&rep.sequenceNumber, n);
+@@ -323,6 +323,24 @@ ProcDRI2CopyRegion(ClientPtr client)
+ }
+ 
+ static int
++ProcDRI2SwapBuffers(ClientPtr client)
++{
++    REQUEST(xDRI2SwapBuffersReq);
++    DrawablePtr pDrawable;
++    int status;
++
++    REQUEST_SIZE_MATCH(xDRI2SwapBuffersReq);
++
++    if (!validDrawable(client, stuff->drawable, &pDrawable, &status))
++	return status;
++
++    if (!DRI2SwapBuffers(pDrawable))
++	return BadAlloc;
++
++    return client->noClientException;
++}
++
++static int
+ ProcDRI2Dispatch (ClientPtr client)
+ {
+     REQUEST(xReq);
+@@ -350,6 +368,8 @@ ProcDRI2Dispatch (ClientPtr client)
+ 	return ProcDRI2CopyRegion(client);
+     case X_DRI2GetBuffersWithFormat:
+ 	return ProcDRI2GetBuffersWithFormat(client);
++    case X_DRI2SwapBuffers:
++	return ProcDRI2SwapBuffers(client);	
+     default:
+ 	return BadRequest;
+     }
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-boottime.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-boottime.patch
new file mode 100644
index 0000000..efc85a4
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-boottime.patch
@@ -0,0 +1,38 @@
+diff --git a/os/log.c b/os/log.c
+index 0860847..2c46f1a 100644
+--- a/os/log.c
++++ b/os/log.c
+@@ -255,6 +255,33 @@ LogVWrite(int verb, const char *f, va_list args)
+     static char tmpBuffer[1024];
+     int len = 0;
+ 
++    struct timeval time;
++    time_t tv_sec;
++    suseconds_t tv_usec;
++    static Bool first = TRUE;
++    static time_t start_tv_sec;
++    static suseconds_t start_usec;
++    int diff_sec, diff_usec;
++
++    gettimeofday(&time, NULL);
++    tv_sec = time.tv_sec;
++    tv_usec = time.tv_usec;
++    if (first == TRUE) {
++        start_tv_sec = tv_sec;
++        start_usec = tv_usec;
++        first = FALSE;
++    }
++    diff_sec = (int)difftime(tv_sec, start_tv_sec);
++    diff_usec = (tv_usec - start_usec);
++    if (diff_usec < 0) {
++        diff_sec--;
++        diff_usec += 1000000;
++    }
++    sprintf(tmpBuffer, "[%d sec: %06d usec]", diff_sec , diff_usec);
++    len = strlen(tmpBuffer);
++    if (logFile)
++          fwrite(tmpBuffer, len, 1, logFile);
++
+     /*
+      * Since a va_list can only be processed once, write the string to a
+      * buffer, and then write the buffer out to the appropriate output
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-no-root-2.patch b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-no-root-2.patch
new file mode 100644
index 0000000..afc94dc
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/xserver-no-root-2.patch
@@ -0,0 +1,105 @@
+diff --git a/hw/xfree86/os-support/linux/lnx_init.c b/hw/xfree86/os-support/linux/lnx_init.c
+index 7f40857..cf58c01 100644
+--- a/hw/xfree86/os-support/linux/lnx_init.c
++++ b/hw/xfree86/os-support/linux/lnx_init.c
+@@ -49,6 +49,7 @@ static Bool KeepTty = FALSE;
+ static int VTnum = -1;
+ static Bool VTSwitch = TRUE;
+ static Bool ShareVTs = FALSE;
++Bool NoHwAccess = FALSE;
+ static int activeVT = -1;
+ 
+ static int vtPermSave[4];
+@@ -80,9 +81,11 @@ saveVtPerms(void)
+ static void
+ restoreVtPerms(void)
+ {
+-    /* Set the terminal permissions back to before we started. */
+-    chown("/dev/tty0", vtPermSave[0], vtPermSave[1]);
+-    chown(vtname, vtPermSave[2], vtPermSave[3]);
++    if (geteuid() == 0) {
++	 /* Set the terminal permissions back to before we started. */
++	 (void)chown("/dev/tty0", vtPermSave[0], vtPermSave[1]);
++	 (void)chown(vtname, vtPermSave[2], vtPermSave[3]);
++    }
+ }
+ 
+ static void *console_handler;
+@@ -210,20 +213,22 @@ xf86OpenConsole(void)
+ 	        xf86Msg(X_WARNING,
+ 		        "xf86OpenConsole: Could not save ownership of VT\n");
+ 
+-	    /* change ownership of the vt */
+-	    if (chown(vtname, getuid(), getgid()) < 0)
+-	        xf86Msg(X_WARNING,"xf86OpenConsole: chown %s failed: %s\n",
+-		        vtname, strerror(errno));
+-
+-	    /*
+-	     * the current VT device we're running on is not "console", we want
+-	     * to grab all consoles too
+-	     *
+-	     * Why is this needed??
+-	     */
+-	    if (chown("/dev/tty0", getuid(), getgid()) < 0)
+-	        xf86Msg(X_WARNING,"xf86OpenConsole: chown /dev/tty0 failed: %s\n",
+-                    strerror(errno));
++	    if (geteuid() == 0) {
++		    /* change ownership of the vt */
++		    if (chown(vtname, getuid(), getgid()) < 0)
++			    xf86Msg(X_WARNING,"xf86OpenConsole: chown %s failed: %s\n",
++				    vtname, strerror(errno));
++
++		    /*
++		     * the current VT device we're running on is not
++		     * "console", we want to grab all consoles too
++		     *
++		     * Why is this needed??
++		     */
++		    if (chown("/dev/tty0", getuid(), getgid()) < 0)
++			    xf86Msg(X_WARNING,"xf86OpenConsole: chown /dev/tty0 failed: %s\n",
++				    strerror(errno));
++	    }
+         }
+ 
+ 	/*
+@@ -433,6 +438,11 @@ xf86ProcessArgument(int argc, char *argv[], int i)
+                 ShareVTs = TRUE;
+                 return(1);
+         }
++	if (!strcmp(argv[i], "-nohwaccess"))
++	{
++		NoHwAccess = TRUE;
++		return(1);
++	}
+ 	if ((argv[i][0] == 'v') && (argv[i][1] == 't'))
+ 	{
+ 		if (sscanf(argv[i], "vt%2d", &VTnum) == 0)
+@@ -454,5 +464,6 @@ xf86UseMsg()
+ 	ErrorF("don't detach controlling tty (for debugging only)\n");
+         ErrorF("-novtswitch            don't immediately switch to new VT\n");
+         ErrorF("-sharevts              share VTs with another X server\n");
++	ErrorF("-nohwaccess            don't access hardware ports directly\n");
+ 	return;
+ }
+diff --git a/hw/xfree86/os-support/linux/lnx_video.c b/hw/xfree86/os-support/linux/lnx_video.c
+index 688106a..34a845b 100644
+--- a/hw/xfree86/os-support/linux/lnx_video.c
++++ b/hw/xfree86/os-support/linux/lnx_video.c
+@@ -51,6 +51,7 @@
+ #define MAP_FAILED ((void *)-1)
+ #endif
+ 
++extern Bool NoHwAccess;
+ static Bool ExtendedEnabled = FALSE;
+ 
+ #ifdef __ia64__
+@@ -509,6 +510,9 @@ xf86EnableIO(void)
+ 	int fd;
+ 	unsigned int ioBase_phys;
+ #endif
++	/* Fake it... */
++	if (NoHwAccess)
++		return TRUE;
+ 
+ 	if (ExtendedEnabled)
+ 		return TRUE;
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
new file mode 100644
index 0000000..81d70bc
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
@@ -0,0 +1,19 @@
+require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
+
+PROTO_DEPS += "xf86driproto dri2proto"
+
+DEPENDS += "font-util"
+
+PE = "1"
+PR = "r0"
+
+SRC_URI += "file://nodolt.patch \
+            file://crosscompile.patch"
+
+# Misc build failure for master HEAD
+SRC_URI += "file://fix_open_max_preprocessor_error.patch"
+
+SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
+SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
+
+EXTRA_OECONF += "--enable-dri --enable-dri2 --enable-dga"
-- 
1.7.0.4


