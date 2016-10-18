Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F1BE00A30; Mon, 17 Oct 2016 17:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1CB6E00A30
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:35 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i85so10241416pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=T2hkfYLOABTOlhcUgOY4RrF1jElOnVnMQfsGMB0aDdc=;
	b=QK9OosMR5oDjkVH9bSw0oPdz18S0mpQorsRh+SQZB7FZQDHDfnbeGl/haZV7oVtDNw
	6eSYBrJbWR+Tn7fasYNMqiEnAd9eOKvt9S4/XIPS8+v5lNEzHaRZlsBfwDWgmgqy14U5
	iH2Sm2p4sSbkwW69DhBVM+2bx91ekUSmlVl/CMrs2SfR7GmFFQoihE6MoeJE8iQk+R6k
	2dUUyNy1ipcjB5iihMexpyauZYh3uX5Ga2qGtmIgXVkpVlG1c6yhEvIuTBw3Zacc++BL
	co5kjwk+J0WxQKWTacYJPC1PTDmVT+zIfDvV1LuscYNc94euWGpMcZg4GxDTaK1pKJ4g
	zwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=T2hkfYLOABTOlhcUgOY4RrF1jElOnVnMQfsGMB0aDdc=;
	b=PsMcDMkEFgbZ+QVHmrS9tklZ9VUiNlxs2Vl5OCKHh0yH0UtkajBUOVRtV7IIPpVNkE
	5TiIGA8p+ky7sHAZrMzmEZLyL5umxcFQoROvRnUwGggBSW6X77PZx3Vp3RsWmv7WJ7bz
	m0cvffTe/HybHd9e0m5Hn12dQ2k95NNtIVwpJQ4V9Nh+DUiCCQv33ckgf5PXoqqtlhC7
	Ve+LTEoJtm81CRkXMWkKd8howE8drd+Iy2A4HscVe8lKD+FfPboaWnuOzFV6y/bINvzw
	ZSedYQKVBkn6+3OgqxTvipVhKzDzf0E67IHSMlEWA2NvDTCBU/koSEcnYpRS91ghm2Zk
	4l8Q==
X-Gm-Message-State: AA6/9RnaKRn24MqKQWEIlOFOwtgt3cjW8S6dMj/8ndKYaCRIsJZ47IDMq8hR0TbMe1emGQ==
X-Received: by 10.99.0.204 with SMTP id 195mr149080pga.78.1476748955163;
	Mon, 17 Oct 2016 17:02:35 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:17 -0700
Message-Id: <1476748950-21342-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/17] swtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:38 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 +++++++++++++++++++++++
 recipes-tpm/swtpm/swtpm_1.0.bb                    | 38 +++++++++++++++++++++
 2 files changed, 79 insertions(+)
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
index 0000000..ae16e51
--- /dev/null
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -0,0 +1,38 @@
+SUMMARY = "SWTPM - Software TPM Emulator"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
+SECTION = "tpm"
+
+DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm-native"
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
+PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, linselinux"
+
+CACHED_CONFIGUREVARS = "ac_cv_path_EXPECT=${STAGING_LIBDIR} \ 
+ac_cv_path_SOCAT=${STAGING_LIBDIR} "
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


