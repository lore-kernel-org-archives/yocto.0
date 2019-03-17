Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F5E1E00CAF; Sat, 16 Mar 2019 21:50:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCA6DE00C45
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 21:50:16 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id j5so9046732pfa.2
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 21:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=H+zk+pJgfuuKIng0NoRmRFrDstRNHrE7CYteG30T4ik=;
	b=dXCiOblnMvKtcxoFHnTg1d9XckOVbEKaOaYfnYQS9Sd/J5MJxwBSnXCpsUvjvKmSvr
	zmLgP5wGyj6N/rprWdQNYOcc6RFwdmj6uioi4f3e1xVFq08/tlDtBtSRGyxm4VQ5NKnA
	Mr5fYIKeEn9lumHbsaEPpSiEjIXH8802vhk/MmK3fahPwJCcbv1dK3ywxafpE+ghSw7S
	CWa/f+qCdY1expHUvi4Z8VfGx9Ia7Fq4+a49V6OqjBUzJfvtRp8R8d4zGWb6TL8FSEbi
	hcixVrQz06NmPz8K4BDVwB7BWEeVzoP8UEIjyNzegLCkizMxImhN0AppRXdrxRkWp9ok
	tKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=H+zk+pJgfuuKIng0NoRmRFrDstRNHrE7CYteG30T4ik=;
	b=q54s6KB+0cbsVFUi0jBX6cZ40YG8pSVCDxRMtn9W0mnpu5xS4YGqYTjDJlJ57zK8Ym
	oA6FgwTQh4x0eMqncLH4XQx1yj7dyE7jd4ChhpJyXhoXP5RQAhDtbPzXfHnJLS+lFUac
	K/Jv0MmvpMBGrtwxY+fit/yxl/PU5cgAcwu0O82HZoi48a4HUnobYH/3rCPL1jje15rc
	5YhSKS7Lky505YFRigHxh6Dh1KXyj/LD4wMKHU8cHhrkxw9EMkepHjGg/6MxxhWJza7g
	oKP8gI823Zj9R8llrQvmQnI6eMqsQUfUBWTGemMjna3GhgjiYkfcxqXBALjLqv+pFYkW
	fhMA==
X-Gm-Message-State: APjAAAV6spbMI4TTDaBuzPAO5ZKyfQOiErjK8QX1eKmssDPr/lnOK+Tv
	ImW7tdMvhYxo3sL+TLS0ywyxKZSv
X-Google-Smtp-Source: APXvYqz53Xy8zSfA7uDhnSGZu1QJq56ELQK6IaX1ZwDTCcZMCQvJUT28RJXHI0EgEi6ai6uqY6DhJA==
X-Received: by 2002:a63:7d41:: with SMTP id m1mr11469660pgn.374.1552798214876; 
	Sat, 16 Mar 2019 21:50:14 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	g67sm15091720pfg.13.2019.03.16.21.50.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Mar 2019 21:50:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Mar 2019 21:50:12 -0700
Message-Id: <20190317045012.24642-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][V2][PATCH] cryptsetup-tpm-incubator: add new package
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
X-List-Received-Date: Sun, 17 Mar 2019 04:50:20 -0000

[v2]
add missing patch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator_0.9.9.bb         | 41 +++++++++++++++++++
 .../files/configure_fix.patch                 | 16 ++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
 create mode 100644 meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
new file mode 100644
index 0000000..8b50445
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -0,0 +1,41 @@
+SUMMARY = "An extension to cryptsetup/LUKS that enables use of the TPM 2.0 via tpm2-tss"
+DESCRIPTION = "Cryptsetup is utility used to conveniently setup disk encryption based on DMCrypt kernel module."
+
+SECTION = "security/tpm"
+LICENSE = "LGPL-2.1 | GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=32107dd283b1dfeb66c9b3e6be312326 \
+                    file://COPYING.LGPL;md5=1960515788100ce5f9c98ea78a65dc52 \
+                    "
+
+DEPENDS = "autoconf-archive pkgconfig gettext libtss2-dev libdevmapper popt libgcrypt json-c"
+
+SRC_URI = "git://github.com/AndreasFuchsSIT/cryptsetup-tpm-incubator.git;branch=luks2tpm \
+           file://configure_fix.patch "
+
+SRCREV = "15c283195f19f1d980e39ba45448683d5e383179"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig gettext
+
+PACKAGECONFIG ??= "openssl"
+PACKAGECONFIG[openssl] = "--with-crypto_backend=openssl,,openssl"
+PACKAGECONFIG[gcrypt] = "--with-crypto_backend=gcrypt,,libgcrypt"
+
+EXTRA_OECONF = "--enable-static"
+
+RRECOMMENDS_${PN} = "kernel-module-aes-generic \
+                     kernel-module-dm-crypt \
+                     kernel-module-md5 \
+                     kernel-module-cbc \
+                     kernel-module-sha256-generic \
+                     kernel-module-xts \
+                    "
+
+RDEPENDS_${PN} += "lvm2"
+RRECOMMENDS_${PN} += "lvm2-udevrules"
+
+RREPLACES_${PN} = "cryptsetup"
+RCONFLICTS_${PN}  ="cryptsetup"
+
+BBCLASSEXTEND = "native nativesdk"
diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch
new file mode 100644
index 0000000..8c7b6da
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch
@@ -0,0 +1,16 @@
+Upstream-Status: OE specific
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -16,7 +16,7 @@ AC_CONFIG_HEADERS([config.h:config.h.in]
+ 
+ # For old automake use this
+ #AM_INIT_AUTOMAKE(dist-xz subdir-objects)
+-AM_INIT_AUTOMAKE([dist-xz 1.12 serial-tests subdir-objects])
++AM_INIT_AUTOMAKE([dist-xz 1.12 serial-tests subdir-objects foreign])
+ 
+ if test "x$prefix" = "xNONE"; then
+ 	sysconfdir=/etc
-- 
2.17.1


