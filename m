Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D597EE00961; Mon, 30 Jan 2017 23:48:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98BBCE00961
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:27 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id c7so210833785itd.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=n9mV/UHviZdfPgnq1zhxSXrFuCIguNI3+rmh1lD20OY=;
	b=FsWXfJn5v0E2fI5q43OHwAbmJ4KWMUsiR1GQ0bt5qoVrYFBoKQuxTZlsdLs9WHPl99
	O94psOd85kOfrCq7SCjKMbIJrCyn8XE/qfU7KKi1fi/gifCDeYNHV8L0d+OMVHozZE4J
	58qOwx1v7XgIBBH/r9WYm8s3m7JFXadwXx/Fm3SGd9itEilOBDgRp9Yf3osKUO0+uvRN
	pGZQwZVVNyDld8sbmpjg74FJKM0MHcfjWRvzWLaWrJAR2+3107o9nV4Wk6oRPPed4aVQ
	LHhFu2NlMQtEhaKn85T/aNJAVnubaLWLspVGqrAnkzS5OJT3MNiRFyHDm0Ry5CdWPLT6
	X/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=n9mV/UHviZdfPgnq1zhxSXrFuCIguNI3+rmh1lD20OY=;
	b=e9shxtAIIoJDRyr3yov2f6B801Q/JUzha0BFRjT24wkKubjdLqTn8Y+gqdkkjhZDYW
	Z+LC613bIcjueROF7RA8BZvkJUf1lIx882xOyyKG/aFVnJLOeBj6gZNl/87ZhTbxMHg9
	pAyvh43R1IWO95jwu7iaTf5V9gj+AgGv4O1b564dvz3G+8jDxyTULGML7l1BaLNRKiwp
	FohMY4wU5jr1zSciy8Ig4UfXf1Fgjto6pvq0a8rNr1PKuiwBrgpq3BPbwNIDTM9TAqNQ
	KmN/khYNsDnX65leBgRdBjH3NmkehnTdYrB/OD7WAbDpKs5/pxORckIRoWx2ZFX35Oko
	8y+w==
X-Gm-Message-State: AIkVDXJ+TIxgpm4quMiMaPq8hd17qwdcX4DRGS8Bcdl6aVHJK9utpUWPHXDhXEGgqqhJRS24
X-Received: by 10.36.7.196 with SMTP id f187mr19269822itf.65.1485848906602;
	Mon, 30 Jan 2017 23:48:26 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:25 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:03 +0100
Message-Id: <b37fc322cf0efffaad17ebc4d691dbcfd5cf31fa.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 4/8] swtpm: enable native and nativesdk flavors
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:30 -0000

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

