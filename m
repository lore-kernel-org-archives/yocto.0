Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 442EAE00A71; Fri,  3 Feb 2017 00:46:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61CCE009DA
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:32 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id v96so12854864ioi.0
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=n9mV/UHviZdfPgnq1zhxSXrFuCIguNI3+rmh1lD20OY=;
	b=VQKupPTjzYKQACmxWSfRN6TsARxcIIAHwr6dAjLh52n6xA34NfMhyzFlJHGV5ebD7i
	1KrIxVXfLs/5J2/R6XWW9rjGmqEfsb+LAsqyLySIyUv8qeQBtkdoL3x1D2L/TcupEHuM
	UFJHBcnbtPMrLnAGeffKaKPFhJhOSKxhxBZbOgfZqQ88JqGxa4xNnZpr+vQH0EGfsbWT
	pkeiGHIx6plr6Rgayi6v1Pb5cr7sXeJZmLhecKZOgtHfKEQH0ZMvk3c7Y60TiwCA4jIt
	QuWVUmUixTWYm/onIjAyFXsCLBb8sbhom3T3npj9lwVzwP3R81KUkns4Af8Hbu58aGUD
	8wCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=n9mV/UHviZdfPgnq1zhxSXrFuCIguNI3+rmh1lD20OY=;
	b=kDCWkrzqBqkwvEm8aenoMUXPmHJelNjrpnqL8Hmq8qxbho+Dg3RGzLQL5+Jo3gv1Rw
	tV/3f1qDOv6+B6G/pd5QzoxomoDNOKYEwxVRfpixnOQ99v3cQRuf5BpOJrv/WOxBLVpG
	L5SX9vMNhLKqiLtQx6w/AISMcZOkB9bkphC6R48fpoTLb9K9tY1BbOLjHQ8kmry6VkMA
	dYVfecS5tqBscTtx4KbncaQp9P0+adP+F2Yq6be8hyHF9ECZOWKO8MAlVb1diZDI2tPg
	UJq13PYOS8A7etgpm5tOnoo43LwqOKQCw8PZt03XjIa3O6ruWEh1hkgdQKfkGUUSp0XV
	bgfw==
X-Gm-Message-State: AIkVDXJNchPrPrm6te4hFxpzev16GNX6FXp84dYL2xojjaMDeAhSiWrAZ5hRES4ZrbZyN7uD
X-Received: by 10.107.16.217 with SMTP id 86mr9238960ioq.2.1486111591542;
	Fri, 03 Feb 2017 00:46:31 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:30 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:09 +0100
Message-Id: <9c744335f69f105bf964023d9cffab0c4f9c5f62.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 4/9] swtpm: enable native and nativesdk flavors
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:42 -0000

For use with qemu-tpm as described in the swtpm main README, swtpm
must be compiled natively. nativesdk is added just in case that
someone wants to add this to an SDK.

The fix_lib_search_path.patch was recently removed during the version
update, but it is still needed when building natively. Here's a
version that applies cleanly again.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 64 ++++++++++++++++-
 recipes-tpm/swtpm/swtpm_1.0.bb                    |  3 +-
 2 files changed, 67 insertions(+)
 create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch

diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
new file mode 100644
index 0000000..28aca4a
--- /dev/null
+++ b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
@@ -0,0 +1,64 @@
+From 85706ceb6877ade3b589d3c390abf5b3492bb718 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Thu, 13 Oct 2016 02:03:56 -0700
+Subject: [PATCH] swtpm: add new package
+
+Upstream-Status: Inappropriate [OE config]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Rebased to current tip.
+
+Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+
+---
+ configure.ac | 32 ++++++++++----------------------
+ 1 file changed, 10 insertions(+), 22 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index c4a9c6d..6267f64 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -395,29 +395,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-security"
+ dnl We have to make sure libtpms is using the same crypto library
+ dnl to avoid problems
+ AC_MSG_CHECKING([the crypto library libtpms is using])
+-dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
+-       sed -n '/SEARCH_DIR/p' | \
+-       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
+-for dir in $dirs $LIBRARY_PATH; do
+-  if test -r $dir/libtpms.so; then
+-    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
+-      libtpms_cryptolib="openssl"
+-      break
+-    fi
+-    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
+-      libtpms_cryptolib="freebl"
+-      break
+-    fi
++dir="$SEARCH_DIR"
++if test -r $dir/libtpms.so; then
++  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
++    libtpms_cryptolib="openssl"
++    break
+   fi
+-  case $host_os in
+-  cygwin)
+-    if test -r $dir/libtpms.a; then
+-      if test -n "$(nm $dir/libtpms.a | grep "U AES_encrypt")"; then
+-        libtpms_cryptolib="openssl"
+-      fi
+-    fi
+-  esac
+-done
++  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
++    libtpms_cryptolib="freebl"
++    break
++  fi
++fi
+ 
+ if test -z "$libtpms_cryptolib"; then
+   AC_MSG_ERROR([Could not determine libtpms crypto library.])
+-- 
+2.1.4
+
diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 27b4b8c..d5a2a58 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -9,6 +9,7 @@ SRCREV = "ca906a02124d0ed8b6194e845d272d23ee394a34"
 SRC_URI = " \
 	git://github.com/stefanberger/swtpm.git \
 	file://fix_signed_issue.patch \
+	file://fix_lib_search_path.patch \
 	"
 
 S = "${WORKDIR}/git"
@@ -45,3 +46,5 @@ USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
 RDEPENDS_${PN} = "libtpm expect socat bash"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
git-series 0.9.1

