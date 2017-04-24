Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A58A4E00AB9; Mon, 24 Apr 2017 07:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FEA0E00839
	for <yocto@lists.yoctoproject.org>;
	Mon, 24 Apr 2017 07:29:42 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id g12so2922700wrg.2
	for <yocto@lists.yoctoproject.org>;
	Mon, 24 Apr 2017 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Ih4XrYbPouzHTb7b0OusrOa6f5krMCdZ4NcfRgNxsL8=;
	b=AvY7wWCZYm7d8OKFTgg+LpOGPLmHjssErm3ByHY6dtiV2Qj2k3QOzkXv4IvouxXLya
	UdAAWZjG15GjmL3Yz0Mg1WIb/FRpKEUCtRyeNlp0qzUgk58lDkV5AfcqC0FkhqmYkRC3
	irL89gbg4YRTqJnhbSuLctzmTlKxnYeQuNYAgpYXi2IcjtUQjaIrOCcg9aqLmLbKBDKE
	X8hHvigQ08UDNOy1CT05latRnT7HJBj0HFDBUhJ43Fir9kABMrHNhCNmMCMuH3U3k8WL
	X+C1wxMxiudx/f3OnZ6UFeVfBD1S6e1hVV45wa/mixZ7fWAPvRf6BTyjgBFVePZcOHLP
	aplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Ih4XrYbPouzHTb7b0OusrOa6f5krMCdZ4NcfRgNxsL8=;
	b=ZRh0Y/KSWrv/BONY8jVD93qxsJqS2yF3DZKAAMR2ozkBDzcukA1CuBr9cLWSH7rsFy
	/S7VUd4ve5s3K0s0vBuHt7jZ0qPytqGxj1zOGgxT+aV8wpVjnlmv5snCzUVuWF/6kq2w
	qwO1Ro3BnGd1s87X5Sfxd+ihLQ7X1oQpGvfon1cMi7ZImwIaaqCMvKRoH5tqzxsjEmGk
	c8NsGIhn7K3Zjv2VPTgVYKM/ATPLa2/sSeFwAaJ8WjqXePkXTnKiANaWKFSS1T6NK4rz
	Q1ysv/snryKCbsdjzpCOlfy3GSMkNPw1KV8/K3/NtJXrefymb+B8kEQjdCZmbnkVuGMR
	/8TA==
X-Gm-Message-State: AN3rC/4ndsq33QuCrQtqw1vaS/RiFBISILwySh2wWiY+T4WYlhwSj2xf
	UqTIubkvaUc5lMqD
X-Received: by 10.223.162.147 with SMTP id s19mr5997303wra.142.1493044181872; 
	Mon, 24 Apr 2017 07:29:41 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	g132sm673142wmd.33.2017.04.24.07.29.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Apr 2017 07:29:40 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Mon, 24 Apr 2017 16:29:54 +0200
Message-Id: <20170424142954.21979-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170420162022.20237-1-Martin.Jansa@gmail.com>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
Subject: [PATCHv2][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Mon, 24 Apr 2017 14:29:44 -0000

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
index 0000000..c98da34
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
+# but it still has the libidn dependency, without this option
+EXTRA_OECONF += "--disable-crywrap"
+
+# This version doesn't support this option added in newer gnutls
+EXTRA_OECONF_remove = "--without-libunistring-prefix"
-- 
2.12.2


