Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C660E0079B; Mon, 18 Aug 2014 18:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61BCE00655
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 18:27:52 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id w10so8640572pde.9
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 18:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=5IoA+2XuT4f8a4xAeOKKKN6Xfkk15zyDkMICTG3lld8=;
	b=h2VgkGaA7QqzKOtOLTeRl+pE+PLGABXHDK4BsHFXrUKsXrQrJ0cyReVz8+Ukhg+zYh
	eEt97h0gSjCTi773gTpqvfBHwzfzSKRtDpD88hMJn4KVHMqgB0sCpzMy45otDm1ZBu6K
	+0DUEpTMAB5rJwM7NHlg2izkVEBp064i2lQRtg31rvk/Bw6HWlyNO+2sBnsNtvE/sySu
	Ud2j64cdFi8HB3EsWXliOprPvqn/baougJulPK6eGAtEFN+vRi56Rw3hxZVptEo5JD7c
	izhzouOi5HWMxSL93oFfX6hh1rVrQbF0ULq73Cx5ljQSbKBK90XpcWs/Lt+F+0KEkkou
	Y0Sg==
X-Received: by 10.66.167.105 with SMTP id zn9mr40596703pab.103.1408411671453; 
	Mon, 18 Aug 2014 18:27:51 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	zf5sm63706274pac.41.2014.08.18.18.27.49 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Aug 2014 18:27:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Aug 2014 18:27:47 -0700
Message-Id: <1408411667-7298-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] pinentry: Fix QA error
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
X-List-Received-Date: Tue, 19 Aug 2014 01:27:54 -0000

This fixes: WARNING: QA Issue: pinentry rdepends on libcap, but it isn't a build dependency? [build-deps]

Also add pkgconfig support.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/pinentry/pinentry_0.8.3.bb | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/recipes-security/pinentry/pinentry_0.8.3.bb b/recipes-security/pinentry/pinentry_0.8.3.bb
index 3209e53..0bd3021 100644
--- a/recipes-security/pinentry/pinentry_0.8.3.bb
+++ b/recipes-security/pinentry/pinentry_0.8.3.bb
@@ -2,14 +2,19 @@ DESCRIPTION = "This is a collection of simple PIN or passphrase entry dialogs wh
 HOMEPAGE = "ftp://ftp.gnupg.org/gcrypt/"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-DEPENDS = "glib-2.0 ncurses"
+DEPENDS = "glib-2.0 "
 
 SRC_URI = "ftp://ftp.gnupg.org/gcrypt/pinentry/${PN}-${PV}.tar.bz2"
 
 SRC_URI[md5sum] = "2ae681cbca0d9fb774b2c90b11ebf56c"
 SRC_URI[sha256sum] = "568b0b09b50b2388a4f94d704d5bcb28718ecd4654ed1acc43ab1f97d921a0ad"
 
-inherit autotools
+inherit autotools pkgconfig
 
-EXTRA_OECONF +="--disable-pinentry-gtk2 --disable-pinentry-qt --disable-pinentry-qt4 --without-x --enable-ncurses \
-    --with-ncurses-include-dir=${STAGING_INCDIR} "
+EXTRA_OECONF +="--disable-pinentry-gtk2 --disable-pinentry-qt \
+                --disable-pinentry-qt4 --without-x "
+
+PACKAGECONFIG ??= "ncurses"
+
+PACKAGECONFIG[ncurses] = "--enable-ncurses  --with-ncurses-include-dir=${STAGING_INCDIR}, '--disable-ncurses', ncurses"
+PACKAGECONFIG[libcap] = "--with-libcap, --without-libcap, libcap"
-- 
1.9.1


