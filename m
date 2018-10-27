Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B34BAE00BD0; Fri, 26 Oct 2018 23:25:05 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76579E00A4F
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:04 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id u1-v6so3354271wrn.0
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=pOZOJAfhWbSNrp2bTJ9VdrN/ByT6WYmyfqM3iKOv2Rw=;
	b=T4Ch6xOYuD+QjyWe3MXaqP0p36DX2L4ZRA2zvnOE76hJReBxtf9wJb02ABqc1k8aVt
	bdO1APU0QB9rmlMkiImwCpcyeNb+pMLWhWimkUsq/1jD8l9sSIw3brBlKyKTQIS2dvdZ
	4/oINxCyyBkEpo0JfoiI0GmFiKuhsAWvanLiKcx+SNrJSskUe2bhhKi1XzFFiQ5eg8x+
	qB+Ek+4ubTvO2pK0g9AIZ4YbISov/yFlIaNpWnQwGh+xGajm0RIZWyT3YG0boPJ4/v4Q
	+pn8k+9ahYnH5N1a8KdOH/qsz1dIu5dZxNtAaOYlmj7XoPC0OrCXSl+0GQ8kquQw8UMh
	jfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=pOZOJAfhWbSNrp2bTJ9VdrN/ByT6WYmyfqM3iKOv2Rw=;
	b=axDNMSFpbG3IrZWP3BHYalMLhsxJMYKvjHAu45qR/Xe61CRBCUNOk7ufSXPCCXqXvn
	TA6NIWLdw32CC6bq3CZSkEfEAyxrwQtOPB7FuoTDtdAIx+eG9VEpUj9XQVAR1xZCfuid
	3C6wFVuEpF91VhIAxXiFryhk3YUg7f7pjRg5A0cg9ZJk6gJt+0Jv3XJSwQtho+J7++SE
	oqd6Zxj1+ILF0KmRLwkOxjSFuy2SpE732aeFgOTUYFWpAdZZBCScdPtyi/7nhhIK/IMM
	1tpbDKp29+EmUte9VCcz3Ppri/N+wg9up39dHZGXYnpHGozgjFkgZqjiYmKZSGq2RxFm
	Pcdg==
X-Gm-Message-State: AGRZ1gKoSstCLjjptXyD6ZLjon5yONhIrIZJEz52VumFxkvWUciJ5NNG
	shcWQFWvK6dogQHS7EnIEnrxwVgDsls=
X-Google-Smtp-Source: AJdET5e0PDzR5rtlN+7x2pPIrokC1zW0fuVf9Pgyie7NjLcrzsI2L92lTDyu8wLtS4iInbBys2O0tA==
X-Received: by 2002:adf:c6c7:: with SMTP id
	c7-v6mr8283615wrh.243.1540621503138; 
	Fri, 26 Oct 2018 23:25:03 -0700 (PDT)
Received: from localhost.localdomain ([195.11.164.221])
	by smtp.gmail.com with ESMTPSA id
	c24-v6sm21528848wre.44.2018.10.26.23.25.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Oct 2018 23:25:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Sat, 27 Oct 2018 07:24:56 +0100
Message-Id: <1540621496-21289-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540621496-21289-1-git-send-email-akuster808@gmail.com>
References: <1540621496-21289-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] swtpm: switch to stable branch and clean up recipe
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
X-List-Received-Date: Sat, 27 Oct 2018 06:25:05 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
index e0c5ffe..3fe1393 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -3,22 +3,21 @@ LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
-DEPENDS = "libtasn1 expect socat glib-2.0 libtpm libtpm-native"
+DEPENDS = "libtasn1 expect socat glib-2.0 net-tools-native libtpm libtpm-native"
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
 DEPENDS += "tpm-tools-native expect-native socat-native"
 
-SRCREV = "66b42f52ef363998cb57f039889d59381d20bdf1"
-SRC_URI = "git://github.com/stefanberger/swtpm.git \
-           file://fix_lib_search_path.patch \
+SRCREV = "94bb9f2d716d09bcc6cd2a2e033018f8592008e7"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=tpm2-preview.v2 \
            file://fix_fcntl_h.patch \
            file://ioctl_h.patch \
            "
 
 S = "${WORKDIR}/git"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools pkgconfig
 PARALLEL_MAKE = ""
 
 TSS_USER="tss"
@@ -35,21 +34,12 @@ EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
 export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
 
-# dup bootstrap 
-do_configure_prepend () {
-	libtoolize --force --copy
-	autoheader
-	aclocal
-	automake --add-missing -c
-	autoconf
-}
-
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
 USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
-RDEPENDS_${PN} = "libtpm expect socat bash"
+RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools"
 
 BBCLASSEXTEND = "native nativesdk"
 
@@ -58,5 +48,3 @@ python() {
         'filesystems-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
         raise bb.parse.SkipRecipe('Cuse enabled which requires meta-filesystems to be present.')
 }
-
-RDEPENDS_${PN} += "tpm-tools"
-- 
2.7.4


