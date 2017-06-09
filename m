Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C22C9E00B87; Thu,  8 Jun 2017 18:17:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17855E00B57
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:17:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v591Hck9007549
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 18:17:38 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 18:17:37 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 09:17:36 +0800
Message-ID: <20170609011736.19419-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] msmtp: add old version with gplv2
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
X-List-Received-Date: Fri, 09 Jun 2017 01:17:40 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

msmtp changed to gplv3 from 1.4.13

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../msmtp-fixup-api-and-compiler-warning.patch     | 244 +++++++++++++++++++++
 .../files/msmtp-replace-deprecated-function.patch  |  60 +++++
 recipes-extended/msmtp/msmtp_1.4.12.bb             |  35 +++
 3 files changed, 339 insertions(+)
 create mode 100644 recipes-extended/msmtp/files/msmtp-fixup-api-and-compiler-warning.patch
 create mode 100644 recipes-extended/msmtp/files/msmtp-replace-deprecated-function.patch
 create mode 100644 recipes-extended/msmtp/msmtp_1.4.12.bb

diff --git a/recipes-extended/msmtp/files/msmtp-fixup-api-and-compiler-warning.patch b/recipes-extended/msmtp/files/msmtp-fixup-api-and-compiler-warning.patch
new file mode 100644
index 0000000..14c95d7
--- /dev/null
+++ b/recipes-extended/msmtp/files/msmtp-fixup-api-and-compiler-warning.patch
@@ -0,0 +1,244 @@
+msmtp: fixup api and compiler warnings
+
+Upstream-Status: Inappropriate [upstream rewrote with GPLv3]
+
+Author: Morgan Little <morgan.little@windriver.com>
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
+diff -Naur msmtp-1.4.12.orig/configure.ac msmtp-1.4.12/configure.ac
+--- msmtp-1.4.12.orig/configure.ac
++++ msmtp-1.4.12/configure.ac
+@@ -40,8 +40,8 @@
+ dnl System
+ case "${target}" in *-*-mingw32*) windows=yes ;; *) windows=no ;; esac
+ 
+-dnl gnulib 
+-gl_INIT
++#dnl gnulib 
++#gl_INIT
+ 
+ dnl Gettext
+ AM_GNU_GETTEXT([external])
+diff -Naur msmtp-1.4.12.orig/gnulib/base64.c msmtp-1.4.12/gnulib/base64.c
+--- msmtp-1.4.12.orig/gnulib/base64.c
++++ msmtp-1.4.12/gnulib/base64.c
+@@ -64,8 +64,8 @@
+    possible.  If OUTLEN is larger than BASE64_LENGTH(INLEN), also zero
+    terminate the output buffer. */
+ void
+-base64_encode (const char *restrict in, size_t inlen,
+-	       char *restrict out, size_t outlen)
++base64_encode (const char *in, size_t inlen,
++	       char *out, size_t outlen)
+ {
+   static const char b64str[64] =
+     "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
+@@ -310,8 +310,8 @@
+    that, when applicable, you must remove any line terminators that is
+    part of the data stream before calling this function.  */
+ bool
+-base64_decode (const char *restrict in, size_t inlen,
+-	       char *restrict out, size_t *outlen)
++base64_decode (const char *in, size_t inlen,
++	       char *out, size_t *outlen)
+ {
+   size_t outleft = *outlen;
+ 
+diff -Naur msmtp-1.4.12.orig/gnulib/base64.h msmtp-1.4.12/gnulib/base64.h
+--- msmtp-1.4.12.orig/gnulib/base64.h
++++ msmtp-1.4.12/gnulib/base64.h
+@@ -31,13 +31,13 @@
+ 
+ extern bool isbase64 (char ch);
+ 
+-extern void base64_encode (const char *restrict in, size_t inlen,
+-			   char *restrict out, size_t outlen);
++extern void base64_encode (const char *in, size_t inlen,
++			   char *out, size_t outlen);
+ 
+ extern size_t base64_encode_alloc (const char *in, size_t inlen, char **out);
+ 
+-extern bool base64_decode (const char *restrict in, size_t inlen,
+-			   char *restrict out, size_t *outlen);
++extern bool base64_decode (const char *in, size_t inlen,
++			   char *out, size_t *outlen);
+ 
+ extern bool base64_decode_alloc (const char *in, size_t inlen,
+ 				 char **out, size_t *outlen);
+diff -Naur msmtp-1.4.12.orig/gnulib/Makefile.am msmtp-1.4.12/gnulib/Makefile.am
+--- msmtp-1.4.12.orig/gnulib/Makefile.am
++++ msmtp-1.4.12/gnulib/Makefile.am
+@@ -59,20 +59,18 @@
+ 
+ ## begin gnulib module crypto/hmac-md5
+ 
++libgnu_a_SOURCES += hmac-md5.c
+ 
+ EXTRA_DIST += hmac-md5.c hmac.h
+ 
+-EXTRA_libgnu_a_SOURCES += hmac-md5.c
+-
+ ## end   gnulib module crypto/hmac-md5
+ 
+ ## begin gnulib module crypto/md5
+ 
++libgnu_a_SOURCES += md5.c
+ 
+ EXTRA_DIST += md5.c md5.h
+ 
+-EXTRA_libgnu_a_SOURCES += md5.c
+-
+ ## end   gnulib module crypto/md5
+ 
+ ## begin gnulib module getdelim
+@@ -149,11 +147,10 @@
+ 
+ ## begin gnulib module memxor
+ 
++libgnu_a_SOURCES += memxor.c
+ 
+ EXTRA_DIST += memxor.c memxor.h
+ 
+-EXTRA_libgnu_a_SOURCES += memxor.c
+-
+ ## end   gnulib module memxor
+ 
+ ## begin gnulib module size_max
+@@ -219,47 +216,6 @@
+ 
+ ## end   gnulib module stdint
+ 
+-## begin gnulib module stdio
+-
+-BUILT_SOURCES += stdio.h
+-
+-# We need the following in order to create <stdio.h> when the system
+-# doesn't have one that works with the given compiler.
+-stdio.h: stdio_.h
+-	rm -f $@-t $@
+-	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
+-	  sed -e 's|@''ABSOLUTE_STDIO_H''@|$(ABSOLUTE_STDIO_H)|g' \
+-	      -e 's|@''GNULIB_FPRINTF_POSIX''@|$(GNULIB_FPRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_PRINTF_POSIX''@|$(GNULIB_PRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_SNPRINTF''@|$(GNULIB_SNPRINTF)|g' \
+-	      -e 's|@''GNULIB_SPRINTF_POSIX''@|$(GNULIB_SPRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_VFPRINTF_POSIX''@|$(GNULIB_VFPRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_VPRINTF_POSIX''@|$(GNULIB_VPRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_VSNPRINTF''@|$(GNULIB_VSNPRINTF)|g' \
+-	      -e 's|@''GNULIB_VSPRINTF_POSIX''@|$(GNULIB_VSPRINTF_POSIX)|g' \
+-	      -e 's|@''GNULIB_VASPRINTF''@|$(GNULIB_VASPRINTF)|g' \
+-	      -e 's|@''REPLACE_FPRINTF''@|$(REPLACE_FPRINTF)|g' \
+-	      -e 's|@''REPLACE_VFPRINTF''@|$(REPLACE_VFPRINTF)|g' \
+-	      -e 's|@''REPLACE_PRINTF''@|$(REPLACE_PRINTF)|g' \
+-	      -e 's|@''REPLACE_VPRINTF''@|$(REPLACE_VPRINTF)|g' \
+-	      -e 's|@''REPLACE_SNPRINTF''@|$(REPLACE_SNPRINTF)|g' \
+-	      -e 's|@''HAVE_DECL_SNPRINTF''@|$(HAVE_DECL_SNPRINTF)|g' \
+-	      -e 's|@''REPLACE_VSNPRINTF''@|$(REPLACE_VSNPRINTF)|g' \
+-	      -e 's|@''HAVE_DECL_VSNPRINTF''@|$(HAVE_DECL_VSNPRINTF)|g' \
+-	      -e 's|@''REPLACE_SPRINTF''@|$(REPLACE_SPRINTF)|g' \
+-	      -e 's|@''REPLACE_VSPRINTF''@|$(REPLACE_VSPRINTF)|g' \
+-	      -e 's|@''HAVE_VASPRINTF''@|$(HAVE_VASPRINTF)|g' \
+-	      -e 's|@''REPLACE_VASPRINTF''@|$(REPLACE_VASPRINTF)|g' \
+-	      -e '/definition of GL_LINK_WARNING/r $(LINK_WARNING_H)' \
+-	      < $(srcdir)/stdio_.h; \
+-	} > $@-t
+-	mv $@-t $@
+-MOSTLYCLEANFILES += stdio.h stdio.h-t
+-
+-EXTRA_DIST += stdio_.h
+-
+-## end   gnulib module stdio
+-
+ ## begin gnulib module sys_socket
+ 
+ BUILT_SOURCES += $(SYS_SOCKET_H)
+@@ -302,40 +258,6 @@
+ 
+ ## end   gnulib module sysexits
+ 
+-## begin gnulib module unistd
+-
+-BUILT_SOURCES += unistd.h
+-
+-# We need the following in order to create an empty placeholder for
+-# <unistd.h> when the system doesn't have one.
+-unistd.h: unistd_.h
+-	rm -f $@-t $@
+-	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
+-	  sed -e 's|@''HAVE_UNISTD_H''@|$(HAVE_UNISTD_H)|g' \
+-	      -e 's|@''ABSOLUTE_UNISTD_H''@|$(ABSOLUTE_UNISTD_H)|g' \
+-	      -e 's|@''GNULIB_CHOWN''@|$(GNULIB_CHOWN)|g' \
+-	      -e 's|@''GNULIB_DUP2''@|$(GNULIB_DUP2)|g' \
+-	      -e 's|@''GNULIB_FCHDIR''@|$(GNULIB_FCHDIR)|g' \
+-	      -e 's|@''GNULIB_FTRUNCATE''@|$(GNULIB_FTRUNCATE)|g' \
+-	      -e 's|@''GNULIB_GETCWD''@|$(GNULIB_GETCWD)|g' \
+-	      -e 's|@''GNULIB_GETLOGIN_R''@|$(GNULIB_GETLOGIN_R)|g' \
+-	      -e 's|@''GNULIB_READLINK''@|$(GNULIB_READLINK)|g' \
+-	      -e 's|@''HAVE_DUP2''@|$(HAVE_DUP2)|g' \
+-	      -e 's|@''HAVE_FTRUNCATE''@|$(HAVE_FTRUNCATE)|g' \
+-	      -e 's|@''HAVE_READLINK''@|$(HAVE_READLINK)|g' \
+-	      -e 's|@''HAVE_DECL_GETLOGIN_R''@|$(HAVE_DECL_GETLOGIN_R)|g' \
+-	      -e 's|@''REPLACE_CHOWN''@|$(REPLACE_CHOWN)|g' \
+-	      -e 's|@''REPLACE_FCHDIR''@|$(REPLACE_FCHDIR)|g' \
+-	      -e 's|@''REPLACE_GETCWD''@|$(REPLACE_GETCWD)|g' \
+-	      < $(srcdir)/unistd_.h; \
+-	} > $@-t
+-	mv $@-t $@
+-MOSTLYCLEANFILES += unistd.h unistd.h-t
+-
+-EXTRA_DIST += unistd_.h
+-
+-## end   gnulib module unistd
+-
+ ## begin gnulib module vasnprintf
+ 
+ 
+@@ -375,11 +297,10 @@
+ 
+ ## begin gnulib module xalloc
+ 
++libgnu_a_SOURCES += xmalloc.c
+ 
+ EXTRA_DIST += xalloc.h xmalloc.c
+ 
+-EXTRA_libgnu_a_SOURCES += xmalloc.c
+-
+ ## end   gnulib module xalloc
+ 
+ ## begin gnulib module xsize
+diff -Naur msmtp-1.4.12.orig/gnulib/memxor.c msmtp-1.4.12/gnulib/memxor.c
+--- msmtp-1.4.12.orig/gnulib/memxor.c
++++ msmtp-1.4.12/gnulib/memxor.c
+@@ -23,7 +23,7 @@
+ #include "memxor.h"
+ 
+ void *
+-memxor (void *restrict dest, const void *restrict src, size_t n)
++memxor (void *dest, const void *src, size_t n)
+ {
+   char const *s = src;
+   char *d = dest;
+diff -Naur msmtp-1.4.12.orig/gnulib/memxor.h msmtp-1.4.12/gnulib/memxor.h
+--- msmtp-1.4.12.orig/gnulib/memxor.h
++++ msmtp-1.4.12/gnulib/memxor.h
+@@ -26,6 +26,6 @@
+ /* Compute binary exclusive OR of memory areas DEST and SRC, putting
+    the result in DEST, of length N bytes.  Returns a pointer to
+    DEST. */
+-void *memxor (void *restrict dest, const void *restrict src, size_t n);
++void *memxor (void *dest, const void *src, size_t n);
+ 
+ #endif /* MEMXOR_H */
+diff -Naur msmtp-1.4.12.orig/gnulib/xsize.h msmtp-1.4.12/gnulib/xsize.h
+--- msmtp-1.4.12.orig/gnulib/xsize.h
++++ msmtp-1.4.12/gnulib/xsize.h
+@@ -24,9 +24,7 @@
+ 
+ /* Get SIZE_MAX.  */
+ #include <limits.h>
+-#if HAVE_STDINT_H
+ # include <stdint.h>
+-#endif
+ 
+ /* The size of memory objects is often computed through expressions of
+    type size_t. Example:
diff --git a/recipes-extended/msmtp/files/msmtp-replace-deprecated-function.patch b/recipes-extended/msmtp/files/msmtp-replace-deprecated-function.patch
new file mode 100644
index 0000000..ca1fd0e
--- /dev/null
+++ b/recipes-extended/msmtp/files/msmtp-replace-deprecated-function.patch
@@ -0,0 +1,60 @@
+From 090017efca9396a7cef0ccdc645a88c5457c63b8 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Wed, 29 Jun 2016 01:22:46 -0400
+Subject: [PATCH] Replace deprecated function gnutls_protocol_set_priority
+
+The function gnutls_protocol_set_priority is deprecated
+since GnuTLS >= 2.12.0 and replaced by gnutls_priority_set_direct.
+
+Reference:
+http://www.gnutls.org/manual/html_node/Upgrading-from-previous-versions.html#Upgrading-from-previous-versions
+
+Upstream-Status: Inappropriate [upstream rewrote with GPLv3]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ src/tls.c | 20 +++++++++++++++++---
+ 1 file changed, 17 insertions(+), 3 deletions(-)
+
+diff --git a/src/tls.c b/src/tls.c
+index 10818fa..881e94b 100644
+--- a/src/tls.c
++++ b/src/tls.c
+@@ -928,7 +928,15 @@ int tls_init(tls_t *tls, const char *key_file, const char *cert_file,
+ 	const char *trust_file, int force_sslv3, char **errstr)
+ {
+ #ifdef HAVE_LIBGNUTLS
++#if GNUTLS_VERSION_MAJOR >= 2 && GNUTLS_VERSION_MINOR >= 12
++    const char *force_sslv3_str = ":-VERS-TLS-ALL:+VERS-SSL3.0";
++#else
++    const char *force_sslv3_str =
++        ":-VERS-TLS1.2:-VERS-TLS1.1:-VERS-TLS1.0:+VERS-SSL3.0";
++#endif
+     int error_code;
++    char *priorities;
++    const char *error_pos;
+     
+     if ((error_code = gnutls_init(&tls->session, GNUTLS_CLIENT)) != 0)
+     {
+@@ -945,9 +953,15 @@ int tls_init(tls_t *tls, const char *key_file, const char *cert_file,
+     }
+     if (force_sslv3)
+     {
+-	const int force_sslv3_proto_prio[2] = { GNUTLS_SSL3, 0 };
+-	if ((error_code = gnutls_protocol_set_priority(tls->session, 
+-			force_sslv3_proto_prio)) != 0)
++	priorities = xstrdup("NORMAL");
++	error_pos = NULL;
++
++	priorities = xrealloc(priorities,
++		strlen(priorities) + strlen(force_sslv3_str) + 1);
++	strcat(priorities, force_sslv3_str);
++
++	if ((error_code = gnutls_priority_set_direct(tls->session,
++			priorities, &error_pos)) != 0)
+ 	{
+ 	    *errstr = xasprintf(_("cannot force SSLv3: %s"),
+ 	    	    gnutls_strerror(error_code));
+-- 
+2.8.1
+
diff --git a/recipes-extended/msmtp/msmtp_1.4.12.bb b/recipes-extended/msmtp/msmtp_1.4.12.bb
new file mode 100644
index 0000000..e03d432
--- /dev/null
+++ b/recipes-extended/msmtp/msmtp_1.4.12.bb
@@ -0,0 +1,35 @@
+SUMMARY = "msmtp is an SMTP client."
+DESCRIPTION = "A sendmail replacement for use in MTAs like mutt"
+HOMEPAGE = "http://msmtp.sourceforge.net/"
+SECTION = "console/network"
+
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+DEPENDS = "zlib gnutls"
+
+SRC_URI = "http://sourceforge.net/projects/msmtp/files/msmtp/${PV}/${BPN}-${PV}.tar.bz2 \
+           file://msmtp-fixup-api-and-compiler-warning.patch \
+           file://msmtp-replace-deprecated-function.patch \
+           "
+
+SRC_URI[md5sum] = "ba5b61d5f7667d288f1cfadccfff8ac5"
+SRC_URI[sha256sum] = "ab794bb014cdaeae0a1460a7aca1869dab8c93383bf01f41aca41b3d99b69509"
+
+EXTRA_OECONF += "--with-libgnutls-prefix=${STAGING_DIR}/${HOST_SYS}"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[libidn] = "--with-libidn,--without-libidn,libidn"
+
+inherit gettext autotools update-alternatives
+
+ALTERNATIVE_${PN} = "sendmail"
+ALTERNATIVE_TARGET[sendmail] = "${bindir}/msmtp"
+ALTERNATIVE_LINK_NAME[sendmail] = "${sbindir}/sendmail"
+ALTERNATIVE_PRIORITY = "100"
+
+pkg_postinst_${PN}_linuxstdbase () {
+    # /usr/lib/sendmail is required by LSB specification
+    [ ! -L $D/usr/lib/sendmail ] && ln -sf ${sbindir}/sendmail $D/usr/lib
+}
-- 
2.11.0


