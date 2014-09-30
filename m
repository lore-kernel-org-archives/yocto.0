Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445DDE00876; Tue, 30 Sep 2014 10:56:10 -0700 (PDT)
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
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A413AE0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 10:56:06 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id x19so1429175ier.39
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 10:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=aMLj5S0/kX/nmZn7yOoBIpWSDjTuazuKlPf3UpHB+Hg=;
	b=fjFka+dn0Ocxds+rIlQATz6M+rX2Pf4JMMxb4xH7z5eS8nokzQAeKZnHKwZ32fv/yp
	OVX+Yis7H8nxU3bTcSI2ecge5/kWxM1aF8erdJfOhun7cjvI+y1YmsLNC9/GCCuBAJqr
	gR6jLxJdU/59P6WzpuhaGsJ2B+qtvOk1fJV5PA0LGpxdQDbR+w6gn7edT+QKF4nTIT3F
	E0V/sxgxuYWVzNvdxiDb61KENqbQjLE2i0KNiBGGiNFzDhPOCyIoJ+FHUXf8vWCf6HE4
	fdrAQJ96kKJvLuLspJvpGDEDkXzBRNIe9LqxibwzK1HVJ48X145hxGgwf5wPyWSpy1WL
	8L+A==
X-Received: by 10.50.142.97 with SMTP id rv1mr10642260igb.11.1412099765642;
	Tue, 30 Sep 2014 10:56:05 -0700 (PDT)
Received: from Pahoa2.Home (75-163-187-147.clsp.qwest.net. [75.163.187.147])
	by mx.google.com with ESMTPSA id j4sm13589662igx.20.2014.09.30.10.56.03
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 30 Sep 2014 10:56:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 10:56:02 -0700
Message-Id: <1412099762-4697-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] pinentry: remove from layer
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
X-List-Received-Date: Tue, 30 Sep 2014 17:56:10 -0000

pinentry is now in oe-core so remove it from this layer.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/pinentry/pinentry_0.8.3.bb | 20 --------------------
 1 file changed, 20 deletions(-)
 delete mode 100644 recipes-security/pinentry/pinentry_0.8.3.bb

diff --git a/recipes-security/pinentry/pinentry_0.8.3.bb b/recipes-security/pinentry/pinentry_0.8.3.bb
deleted file mode 100644
index 0bd3021..0000000
--- a/recipes-security/pinentry/pinentry_0.8.3.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-DESCRIPTION = "This is a collection of simple PIN or passphrase entry dialogs which utilize the Assuan protocol as described by the aegypten project"
-HOMEPAGE = "ftp://ftp.gnupg.org/gcrypt/"
-LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-DEPENDS = "glib-2.0 "
-
-SRC_URI = "ftp://ftp.gnupg.org/gcrypt/pinentry/${PN}-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "2ae681cbca0d9fb774b2c90b11ebf56c"
-SRC_URI[sha256sum] = "568b0b09b50b2388a4f94d704d5bcb28718ecd4654ed1acc43ab1f97d921a0ad"
-
-inherit autotools pkgconfig
-
-EXTRA_OECONF +="--disable-pinentry-gtk2 --disable-pinentry-qt \
-                --disable-pinentry-qt4 --without-x "
-
-PACKAGECONFIG ??= "ncurses"
-
-PACKAGECONFIG[ncurses] = "--enable-ncurses  --with-ncurses-include-dir=${STAGING_INCDIR}, '--disable-ncurses', ncurses"
-PACKAGECONFIG[libcap] = "--with-libcap, --without-libcap, libcap"
-- 
1.9.1


