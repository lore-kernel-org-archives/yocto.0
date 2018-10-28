Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB624E00C09; Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3056E00AC5
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id l81-v6so2896424pfg.3
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=pOZOJAfhWbSNrp2bTJ9VdrN/ByT6WYmyfqM3iKOv2Rw=;
	b=CLijvFxQNOmX4ZROKys46s6ZDDH43UqWTFZMtNJww9d5sNmktlzDQ0yv0jj2A9ciUW
	khACJKawpBLvp7Pb652Pw1xOJG8SmfRSgJBbvhAAI7t0mWo4kzga/FsRMdVUF0WKOaea
	/dcpWGfaWl1KxeFCJGafnab7/887Ac1htX3+U4Yy5iEaolcH7YQw0dijq2uzhDVDKaQU
	h8qmNq2mHxCy/zU2dQg3q4VM/BhFUPwgRfsyWYD1xORM4cuV9DuDOTxCnq8p/CdHOCtz
	SllZCFal5EGZLfTujeG+3v+Zn14opTTKCem3stp6ljX5FrSBWtA3Hr1PefAhtr/JY3hN
	yN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=pOZOJAfhWbSNrp2bTJ9VdrN/ByT6WYmyfqM3iKOv2Rw=;
	b=cofCM83+pnrpK3/rVSSKVbP5B5c8BwP72Zy/EAqKloFw1X55X3pSEkt1GV8pB7VMKr
	h/hBG8DyhlUmiFR5gcqjMl8fx2D0qceM2Z8+/SlTunRCFPtiw7Ij93IIN8c7v1QMuZeQ
	69hT/Kl8eAwRBMZgpaMkbf4/Scs3Pe8yFWl1R4/ajpbfvLQInswhpTUQskHjuKzUpy4j
	IKm8SzdlwR82hz55DsThp3XK+RAXwR5niy1FUGU+blZyqHjxuyxbWNaGEtAgnlIHZdAI
	Shs4/Ux2eaG88VH8vgdhpW0Y1PohWaNdro5IVLS3eQpnXuTSj+yiNMOGKzFJg+McQb6w
	ue/A==
X-Gm-Message-State: AGRZ1gJOigZiK7lmtyPnMFUOpDWXDyK2989DcBLWMJnwYOSnOI4mjit1
	sLpUTzfYY+fbeV/qK9KoeSSgoE/T
X-Google-Smtp-Source: AJdET5etIG3Q1m/q7IIR59ry1VZGfhD3aSbgC8Z2KSdtyOoGAPfXta7J9wdSzYQe9v3bj5OWqAFWFQ==
X-Received: by 2002:a62:8647:: with SMTP id
	x68-v6mr12578378pfd.252.1540752633009; 
	Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:19 +0000
Message-Id: <1540752628-10832-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/13] swtpm: switch to stable branch and clean up recipe
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:35 -0000

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


