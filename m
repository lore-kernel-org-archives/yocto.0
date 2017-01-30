Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE299E009FA; Mon, 30 Jan 2017 00:44:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C48E0093F
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:42 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 194so31006664pgd.0
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=XhWTpTLme8SP46qGLKA0y1ydaI3wsn/iFlVUbvilyoQ=;
	b=AoiH8LO1k7WJXWGiXQCmMSWdc85x/vSQVVEJBOMarTT6EkGy8jBpf01hr2nH1aNRZb
	7sYIpfc4eWBuFZgJmYIS7AyUhdzCADYyEZX6Z0j7eAAUSrUer83P5nBa0yrSg390OwwJ
	wIv6CexD6gDivO0Q2nVdjHzWj9rEtJN7Va3FKp/VQvkwhHkFhUNO0rvSPJQFDZYPlgPb
	quZv7dn3uUxdB4jQJOlLVedl+n8KKiMzwEA0A4ozgajn/MFVtbW89gohkpCxBJta1wb9
	D7TL/3vzYc6LdjK4WYCW02sj82dlRD3C7DSa2LsW9hpkIAmlLG2eRzNjF3tpgaTBv5WM
	pw3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=XhWTpTLme8SP46qGLKA0y1ydaI3wsn/iFlVUbvilyoQ=;
	b=gZ7YU0HkTBMLSyeU3mTXxGB5JByc9Q2BGJ0L/0Fp1zL99K5+LmPEyXweLvhLQnFiyQ
	B08ctt/JP3BO6mTJinhD/tcL+/GSFeoUZxrV4MQWE3ZGQPJGoSB/M/mCqQCgvHMnwL9K
	V9EiQmOv3et8Thwe4UsKCMbvRVEXGatOeQb3e7nCyRQ5LNjvPtzld2TdlqJJfZmHpLXc
	bSqpM1qiOcPUNSMNyydq9F3SdVK4AgOSHsf5Nd5t2NI87eb3MYlhmGOfdVbsXArHwN2V
	UfrkyrFphZs/DnKZTUjooabRlhxsK7AZ6vEPFagXvvkx69NkZl07QjNaK+onNJ2UaHUE
	i0+A==
X-Gm-Message-State: AIkVDXIboIoeqHhaqWM/fteLE+LXHljn9FyEUbg3qrayIuCcTYbg6MIzyImkRjnOzLNHbw==
X-Received: by 10.98.29.195 with SMTP id d186mr22062765pfd.144.1485765881757; 
	Mon, 30 Jan 2017 00:44:41 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	j185sm30289843pgd.35.2017.01.30.00.44.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:41 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-5-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 5/19] gettext_0.19.%.bbappend: Fix/enable shared building of gettext
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Fix building of shared gettext for i686/32-bit mingw32. This adds a
patch which fixes an issue with gnulib that is included in gettext.

This patch does not need to be submitted upstream as it is fixing an
issue with the included version of gnulib. Upstream gnulib has already
fixed this issue and upstream gettext has already updated the included
gnulib, however gettext has not yet made a release that includes this
fix.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 .../fix-gl_cv_prog_as_underscore-test.patch        | 67 ++++++++++++++++++++++
 recipes-core/gettext/gettext_0.19.%.bbappend       |  7 ++-
 2 files changed, 73 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch

diff --git a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
new file mode 100644
index 0000000000..636789f31d
--- /dev/null
+++ b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
@@ -0,0 +1,67 @@
+Backport gnulib fix for mingw into gettext's included version of gnulib
+
+http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=68b6adebef05670a312fb92b05e7bd089d2ed43a
+
+Upstream-Status: Backport
+Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
+
+--- a/gettext-runtime/gnulib-m4/asm-underscore.m4
++++ b/gettext-runtime/gnulib-m4/asm-underscore.m4
+@@ -27,11 +27,11 @@
+ #endif
+ int foo(void) { return 0; }
+ EOF
+      # Look for the assembly language name in the .s file.
+      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
+-     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
++     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
+        gl_cv_prog_as_underscore=yes
+      else
+        gl_cv_prog_as_underscore=no
+      fi
+      rm -f conftest*
+--- a/gettext-runtime/configure
++++ b/gettext-runtime/configure
+@@ -24601,11 +24601,11 @@
+   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
+   (eval $ac_try) 2>&5
+   ac_status=$?
+   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
+   test $ac_status = 0; }; } >/dev/null 2>&1
+-     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
++     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
+        gl_cv_prog_as_underscore=yes
+      else
+        gl_cv_prog_as_underscore=no
+      fi
+      rm -f conftest*
+--- a/gettext-tools/gnulib-m4/asm-underscore.m4
++++ b/gettext-tools/gnulib-m4/asm-underscore.m4
+@@ -27,11 +27,11 @@
+ #endif
+ int foo(void) { return 0; }
+ EOF
+      # Look for the assembly language name in the .s file.
+      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
+-     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
++     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
+        gl_cv_prog_as_underscore=yes
+      else
+        gl_cv_prog_as_underscore=no
+      fi
+      rm -f conftest*
+--- a/gettext-tools/configure
++++ b/gettext-tools/configure
+@@ -32284,11 +32284,11 @@
+   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
+   (eval $ac_try) 2>&5
+   ac_status=$?
+   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
+   test $ac_status = 0; }; } >/dev/null 2>&1
+-     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
++     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
+        gl_cv_prog_as_underscore=yes
+      else
+        gl_cv_prog_as_underscore=no
+      fi
+      rm -f conftest*
diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index efd10d6bb6..1cf0188ea5 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -2,5 +2,10 @@ DEPENDS_append_mingw32 = " pthreads-win32"
 LDFLAGS_prepend_mingw32 = " -lpthread "
 
 CFLAGS_append_mingw32 = " -DLIBXML_STATIC"
-EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static --disable-shared "
+EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
+SRC_URI_append = " \
+		file://fix-gl_cv_prog_as_underscore-test.patch \
+		"
 
-- 
2.11.0


