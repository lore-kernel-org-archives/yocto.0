Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8007DE00D46; Tue, 18 Oct 2016 09:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE672E00D40
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:53:15 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id r16so15590124pfg.3
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=5yayXPthIP62EAJCqc1byuEQZ3CVoev3mM2v6odYcMU=;
	b=rCvqL4LAFEUbV6ggKdST+zasxx6lZ0tPl7MS0AB1t3bT0XpuxtqsJ5VS1WDx6Avlsp
	sULoOYm8CA8+Hk4euHadqUuwM1RfZzPeeFycStT2avnrKdPw2hS874bb/l/cpCDFQ1qP
	MAsqVLkCtn1wszUSn6+O2LNcmtoiMBwGO54mVj48VVSDPBC12nHC7BAhMpSmmLqcPnXy
	gELA8JiFmYZ6lrjY4spEa2Fbflf3zUPYUWm1+rYyFYxmfimgXM8ANDlbVWMq7Y9xu0BL
	7sawdGDAofH40uIIDz8c8Jxs3hbQ83O24g7blFWnau5QjHst/xZVExKfHRq5vafQzCzx
	n/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=5yayXPthIP62EAJCqc1byuEQZ3CVoev3mM2v6odYcMU=;
	b=dk5Ehscs8Z+tF8CU8pzzuwcHc0kmpRTuH85puk8AoSQo4nknvcup3k6qDTIPMWusTo
	Qw7DUN81wfzY74xB66b8ob3bnNDYPUnU7dNBr6mA8ROlL/d0SJGzXvvDZWzPCSBB2N6s
	d6Jq4uvGtHCiO5qmgXth5ymWiM7qOuFgrZheucc+Swo/kulh8pWeiJtW7GOaajvB7KAr
	mxPKTsLDgLnNlyUiMnVwAx2h/GToo5z3mQTEuT0FQ785XxyrzeuWBIet5XzjM3jqh0Tl
	uE46AAJoeBdhZi3yEFkvjL9+Wx9Po74FyIlfrp8HIFmkvSJBcRhX8yzs0Bp4xf530RnA
	IZ0Q==
X-Gm-Message-State: AA6/9Rln+zt0MY6cmwmAg5Ont2qTLv6flZkVNtjWilP6bJQ5+0OBCu31mHnp/AjCmDFdPg==
X-Received: by 10.98.9.147 with SMTP id 19mr2391793pfj.68.1476809595185;
	Tue, 18 Oct 2016 09:53:15 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	j63sm57260882pfj.70.2016.10.18.09.53.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 18 Oct 2016 09:53:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 18 Oct 2016 09:53:13 -0700
Message-Id: <1476809593-21758-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][V2][PATCH] swtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 16:53:16 -0000

V2:
remove CACHED_CONFIGUREVARS, not needed after all
fix typo in selinux option

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 +++++++++++++++++++++++
 recipes-tpm/swtpm/swtpm_1.0.bb                    | 35 +++++++++++++++++++
 2 files changed, 76 insertions(+)
 create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
 create mode 100644 recipes-tpm/swtpm/swtpm_1.0.bb

diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
new file mode 100644
index 0000000..015f418
--- /dev/null
+++ b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
@@ -0,0 +1,41 @@
+
+Upstream-Status: Inappropriate [OE config]
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: configure.ac
+===================================================================
+--- a/configure.ac
++++ b/configure.ac
+@@ -349,21 +349,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-securi
+ dnl We have to make sure libtpms is using the same crypto library
+ dnl to avoid problems
+ AC_MSG_CHECKING([the crypto library libtpms is using])
+-dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
+-       sed -n '/SEARCH_DIR/p' | \
+-       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
+-for dir in $dirs; do
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
+-done
++  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
++    libtpms_cryptolib="freebl"
++    break
++  fi
++fi
+ 
+ if test -z "$libtpms_cryptolib"; then
+   AC_MSG_ERROR([Could not determine libtpms crypto library.])
diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
new file mode 100644
index 0000000..04777e1
--- /dev/null
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -0,0 +1,35 @@
+SUMMARY = "SWTPM - Software TPM Emulator"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
+SECTION = "apps"
+
+DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
+
+SRCREV = "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
+SRC_URI = "git://github.com/stefanberger/swtpm.git \
+	   file://fix_lib_search_path.patch"
+
+S = "${WORKDIR}/git"
+
+inherit autotools-brokensep pkgconfig
+PARALLEL_MAKE = ""
+
+TSS_USER="tss"
+TSS_GROUP="tss"
+
+PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
+PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
+PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
+
+EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
+
+export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
+USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
+    --no-create-home  --shell /bin/false ${BPN}"
+
+RDEPENDS_${PN} = "libtpm expect socat bash"
-- 
2.7.4


