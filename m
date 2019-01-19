Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B24DFE00CED; Sat, 19 Jan 2019 03:16:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC089E00C8B
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 03:16:23 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id t13so18147641qtn.3
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 03:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=VqQ9pS0Binu8U5rQjdAaMVghPpnFcv6DGgDSkM6tgJw=;
	b=dJ0lqfaY5NUtsTsbjGw18YBmswsSQjiT1LDNkwGfSyKGBThZpxgFBgE7zO2SQZomrv
	wmGBxzKCS28VMqW3JPgTtWqJ+V9tni4nz0HgwQS1TCkycKBb9q7U1PffkSzMSlyVFNLI
	F7AqhwDMJTQDW6dsY/1ZKOE8FAiUhjilOuRGCSScc22CJqVY67uCp7en+KtRbNVE9ZRe
	PrNHZzjw79AQSb++n8zY68lZWmDIOAkiq2kIFR+ZPSp8AfOSC+TNxMOuQ47uY84Sb0Ep
	sc/NEt+50c0P5KGxpi0GWhgsOsYGm4qaZcKVscDmlyLZrJrWNnv6zCoGGcwaDro07gmR
	CI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VqQ9pS0Binu8U5rQjdAaMVghPpnFcv6DGgDSkM6tgJw=;
	b=YoXjq7E3D7eprSecLBEMbpDbS3TBiIeOoJtnJAZb9CKd2InMmOHLRjRAsXreUSdwQs
	XWbXVIUy605JJe9XSTdrtIsXIpI5KcBFKPgabAMDfIY6Kfo0xe4y74yEJnNc3ELgXKW3
	IwdgWzlUh8psFilRQHtwS47qEZ4GfRxLv3/lLEfKwTZqAQgi94LjJCKq9byYWTPT9Rmo
	dYdMh35s3Xevg9r5XpRTpC0hTNVKwdMqkS1uB2d4KBoDN/7WUBa9b/sDoGvb2ilyCk/8
	m9J0zmd82wn2cnjHLHuNpthdnqxnZG/tXmpntzoEzVattL9uy0hGN8Rx7YdxaN1F8hbs
	V6tg==
X-Gm-Message-State: AJcUuke5GWTDPK3TFfUvp4iktaDzQC8WjSnsXuMQ/wp1fCqM+4bqtUk3
	pYh7hh9k+r2c79ofxIKv/633J9ce
X-Google-Smtp-Source: ALg8bN7m8NMe3hTy6CoXLiFjdJ6sKYfgMBaTEui3de26JedpdEuwFbx+mAm4TvBiHEXwBjVld9lkAg==
X-Received: by 2002:ac8:3986:: with SMTP id v6mr19235803qte.1.1547896582863;
	Sat, 19 Jan 2019 03:16:22 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	q17sm66056368qtc.19.2019.01.19.03.16.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Jan 2019 03:16:22 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Sat, 19 Jan 2019 06:16:00 -0500
Message-Id: <1547896560-947-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCHv2] Upgrade scapy to 2.4.2
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
X-List-Received-Date: Sat, 19 Jan 2019 11:16:24 -0000

Upstream MANIFEST.in removed doc and test directories
so remove ptest.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/scapy/files/run-ptest        |  4 ----
 recipes-security/scapy/python-scapy.inc       | 11 +++--------
 recipes-security/scapy/python-scapy_2.4.0.bb  |  6 ------
 recipes-security/scapy/python-scapy_2.4.2.bb  |  4 ++++
 recipes-security/scapy/python3-scapy_2.4.0.bb |  4 ----
 recipes-security/scapy/python3-scapy_2.4.2.bb |  2 ++
 6 files changed, 9 insertions(+), 22 deletions(-)
 delete mode 100755 recipes-security/scapy/files/run-ptest
 delete mode 100644 recipes-security/scapy/python-scapy_2.4.0.bb
 create mode 100644 recipes-security/scapy/python-scapy_2.4.2.bb
 delete mode 100644 recipes-security/scapy/python3-scapy_2.4.0.bb
 create mode 100644 recipes-security/scapy/python3-scapy_2.4.2.bb

diff --git a/recipes-security/scapy/files/run-ptest b/recipes-security/scapy/files/run-ptest
deleted file mode 100755
index 91b29f9..0000000
--- a/recipes-security/scapy/files/run-ptest
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-UTscapy -t regression.uts -f text -l -C \
-    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
-    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index 5abe7db..95e5312 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -5,15 +5,10 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
 
-SRC_URI[md5sum] = "d7d3c4294f5a718e234775d38dbeb7ec"
-SRC_URI[sha256sum] = "452f714f5c2eac6fd0a6146b1dbddfc24dd5f4103f3ed76227995a488cfb2b73"
+SRC_URI[md5sum] = "e6a03d8c924a6bbde1e86fc58bd2b9d6"
+SRC_URI[sha256sum] = "1baa048936207ceb1a4281a0e1e3b4317667c754872a0bb4734c5213c468e86a"
 
-inherit pypi ptest
-
-do_install_ptest() {
-    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
-    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
-}
+inherit pypi
 
 RDEPENDS_${PN} = "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-netclient  \
                   ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_PN}-pkgutil ${PYTHON_PN}-shell \
diff --git a/recipes-security/scapy/python-scapy_2.4.0.bb b/recipes-security/scapy/python-scapy_2.4.0.bb
deleted file mode 100644
index 98db1fd..0000000
--- a/recipes-security/scapy/python-scapy_2.4.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-inherit setuptools
-require python-scapy.inc
-
-SRC_URI += "file://run-ptest"
-
-RDEPENDS_${PN} += "${PYTHON_PN}-subprocess"
diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-security/scapy/python-scapy_2.4.2.bb
new file mode 100644
index 0000000..ea8764a
--- /dev/null
+++ b/recipes-security/scapy/python-scapy_2.4.2.bb
@@ -0,0 +1,4 @@
+inherit setuptools
+require python-scapy.inc
+
+RDEPENDS_${PN} += "${PYTHON_PN}-subprocess"
diff --git a/recipes-security/scapy/python3-scapy_2.4.0.bb b/recipes-security/scapy/python3-scapy_2.4.0.bb
deleted file mode 100644
index 93ca7be..0000000
--- a/recipes-security/scapy/python3-scapy_2.4.0.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-inherit setuptools3
-require python-scapy.inc
-
-SRC_URI += "file://run-ptest"
diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-security/scapy/python3-scapy_2.4.2.bb
new file mode 100644
index 0000000..34eb2a3
--- /dev/null
+++ b/recipes-security/scapy/python3-scapy_2.4.2.bb
@@ -0,0 +1,2 @@
+inherit setuptools3
+require python-scapy.inc
-- 
2.7.4


