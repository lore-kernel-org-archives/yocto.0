Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73B79E0095F; Thu, 20 Apr 2017 09:20:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12463E0083D
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 09:20:17 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id l44so8215799wrc.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 09:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=BILYLb3GP3Tgtz9KHGHIWUvVEbMJOggrBzUyCPwEvNg=;
	b=jZSTc7+oFhFTlnlq1lQ5SGZlCjELqvrFN5bMFYMGDWtHpKl4kwjR6tNcnh7PYUFvzv
	PHm4wQbaQ3+KfmbyB8dMtE30xIo01TiNcrNdW6yW7QSf2jlMR1jPHOIs3b6CA5vGbhKq
	c0PbWhJBT+KzUQTD7PCMjz/IKhaDLcSmeq/+NJwgOW4qqxwEAG8/0VKSTeyC4hzINS9O
	A6cwDMrnV9czEHWU0DtP+pTutD60LQwJY21DDWqlhqQsmqnBErVlsLbFtK+kvnuwyZeU
	rdf5ZqBsvBFIadKFebP3C1tRBAtPZfLVwPQsChWvGAp2QZ1vTYXLnFfIei6YzZcKRf4a
	r/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=BILYLb3GP3Tgtz9KHGHIWUvVEbMJOggrBzUyCPwEvNg=;
	b=jVBKrspADg5UpuZX6Ung+sg+sWCdGtNLMHSsDYgGyAO4myr9I/IbPY102JT+w9TxnN
	u/f2stq2+lbYf3r/Aq1s+0yyuUuF9iY3BFXP/1t6AqpnPlrFfsztz5cTZmnSZ6z76diC
	2f9RwPWXshKqL9plUVElG5OP4rxs0AkZ2EobRap5KurqifVVNk+FHEqhjnitjnTh7Ow5
	TBt/T6IDQmsSLROHvKMaOUwAkhndyzF6uHK4Y79Y1aHYa8KhyhyWZYdZIByooFLz1kK8
	0ArMFW+qNOYQuEZ3Jb9ARPgtU8FCplu2TsRaWdTe3yBti2X3uY6jRX4aUOHjLa+bJ3Kx
	lhfg==
X-Gm-Message-State: AN3rC/4+0HZ47hxZBoI0D1DZmJqADlu63k4B/bjFgAlPK7F3sk8qD3CY
	Igc3NPcLLXMuvXcG
X-Received: by 10.223.166.9 with SMTP id k9mr8684518wrc.177.1492705216656;
	Thu, 20 Apr 2017 09:20:16 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	n193sm489901wmg.30.2017.04.20.09.20.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 09:20:15 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Thu, 20 Apr 2017 18:20:22 +0200
Message-Id: <20170420162022.20237-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [PATCH][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Thu, 20 Apr 2017 16:20:21 -0000

* gnutls depends on nettle-3.1* since 3.4.0:
  The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
  https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e507632771b0e76498
  and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
  https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba463d6e731c
* add recipe for last release in 3.3 branch which is compatible
  with nettle 2.7.1 used in meta-gplv2

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../gnutls/configure.ac-fix-sed-command.patch      | 31 ++++++++++++++++++++++
 recipes-support/gnutls/gnutls_3.3.27.bb            | 23 ++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
 create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb

diff --git a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
new file mode 100644
index 0000000..44a9934
--- /dev/null
+++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
@@ -0,0 +1,31 @@
+From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
+From: Robert Yang <liezhi.yang@windriver.com>
+Date: Sat, 17 Jan 2015 17:02:15 +0000
+Subject: [PATCH] configure.ac: fix sed command
+
+The "sed 's/.bak//g'" matchs "bitbake", which would cause strange errors
+when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index c6818a0..1c4582d 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" = "true";then
+ 	dnl replace libopts-generated files with distributed backups, if present
+ 	missing_baks=
+ 	for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak; do
+-		nam=`echo $i|sed 's/.bak//g'`
++		nam=`echo $i|sed 's/\.bak$//'`
+ 		if test -f $i;then
+ 			cp -f $i $nam
+ 		else
+-- 
+2.0.1
+
diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
new file mode 100644
index 0000000..2828581
--- /dev/null
+++ b/recipes-support/gnutls/gnutls_3.3.27.bb
@@ -0,0 +1,23 @@
+require recipes-support/gnutls/gnutls.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+FILESEXTRAPATHS_prepend = "${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
+
+SRC_URI += " \
+    file://correct_rpl_gettimeofday_signature.patch \
+    file://configure.ac-fix-sed-command.patch \
+    file://use-pkg-config-to-locate-zlib.patch \
+"
+SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
+SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb56b17f"
+
+# This version doesn't support this option added in newer gnutls
+# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was passed unrecognised options: --with-idn [unknown-configure-option]
+PACKAGECONFIG[libidn] = ""
+# but it has the dependency
+DEPENDS += "libidn"
+
+# This version doesn't support this option added in newer gnutls
+EXTRA_OECONF_remove = "--without-libunistring-prefix"
-- 
2.12.2


