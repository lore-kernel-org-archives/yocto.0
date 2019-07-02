Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD523E00C43; Tue,  2 Jul 2019 08:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A565E00961
	for <yocto@lists.yoctoproject.org>;
	Tue,  2 Jul 2019 08:51:19 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id k8so38177426iot.1
	for <yocto@lists.yoctoproject.org>;
	Tue, 02 Jul 2019 08:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Hz9NGeDyDcOLWhdnUpFfyMyr5R5LaosR4fq4Y7tQRVI=;
	b=AvNHI4Ezax8oo8ezm4jVnuwCfqvF0hilPq/Ro6dcxpc0pUvJYUgrYQcEHALG8X8luz
	k9diZo2nmb4has+UOzF0Hzg/mjR8lQ37fx8ZVEztCvTpdHyIrmPu8UQOplT97uzRrCQP
	nBiGsqPlA+s+n7rbyvZdmaB+e/pAHLhIwsaWfxTAtXfOgp8vOAjiovbetmPmqiE4TDkp
	QDaQt8AUn9hb/W+T71xNcyrK6oUhfxhwMfpm8OLnOqYytOih2+xhxPWJJUZSXQPR7oec
	l5AkbzrXnhakDxkmwBh0K2B5xeHATwSUDtCdW+un0/YMm9M1NhZhI/XaCGfRg41vR++I
	kiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Hz9NGeDyDcOLWhdnUpFfyMyr5R5LaosR4fq4Y7tQRVI=;
	b=dVx5aLVpuRoSEB2X//gJJBV8i50EnA/wM2nwJVzNNNDHgIAdNCyW0HFJsiywOMfY2j
	Nat58dN7HTSqWJ9YPguv1qVpRvZ4VCZCoFe1Jq+bkScbTic5jxoGwO8YeRKvhnVlLR6C
	AkNy6OSWxgJQWc3UvvPS1Lf9UNDQQxjGUKJBmF7t7vQgFSFjHqQa8n9Bcasn8NnkS4FN
	Hg6AeJgZzPG6fUwDcf8E06Va9wJSAp7VlaqBd6SX74vG1bOdTHJ1Uy3Ar9D6ZtsOmMlZ
	zPJtMvhSw9TUhep1xOQPcv/QyO+uuf9V0eQVv4g+FQqPhx5WO9IeF4LEt0PR9mTdYhhy
	5+vQ==
X-Gm-Message-State: APjAAAVsEqqW+3C0nsIsn796NCblqPqk1MT/pYN9UX0k9iRgT/fVkQcA
	fN/NZNHCwO2d2jk3JEUhSaJqTE70
X-Google-Smtp-Source: APXvYqx8YCQErmOOHnbuG82I9oq+NVTu+jP+67N5S7t8Ipy9fW8xb46MTkzRFWO7+2cVAi1Mod4raQ==
X-Received: by 2002:a6b:b204:: with SMTP id b4mr2485435iof.177.1562082678441; 
	Tue, 02 Jul 2019 08:51:18 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	k5sm13954465ioj.47.2019.07.02.08.51.17
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 08:51:17 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue,  2 Jul 2019 10:51:05 -0500
Message-Id: <20190702155105.28148-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] gnupg: Enable native build support
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
X-List-Received-Date: Tue, 02 Jul 2019 15:51:19 -0000
Content-Transfer-Encoding: 8bit

Adds support for building gnupg as a -native recipe.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-support/gnupg/gnupg_1.4.7.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index 85636ab..a7fbd11 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -84,6 +84,7 @@ EXTRA_OECONF = "--disable-ldap \
                "
 
 # Force gcc's traditional handling of inline to avoid issues with gcc 5
+BUILD_CFLAGS += "-fgnu89-inline"
 CFLAGS += "-fgnu89-inline"
 
 do_install () {
@@ -95,6 +96,8 @@ do_install () {
 
 # split out gpgv from main package
 RDEPENDS_${PN} = "gpgv"
+RDEPENDS_${PN}_class-native = ""
+
 PACKAGES =+ "gpgv"
 FILES_gpgv = "${bindir}/gpgv"
 
@@ -104,3 +107,5 @@ FILES_${PN} = "${bindir}/* ${datadir}/${BPN} ${libexecdir}/${BPN}/*"
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR},--without-libcurl,curl"
 PACKAGECONFIG[libusb] = "--with-libusb=${STAGING_LIBDIR},--without-libusb,libusb-compat"
+
+BBCLASSEXTEND += "native"
-- 
2.21.0


