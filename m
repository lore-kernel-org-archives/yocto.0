Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A94ECE00D8D; Thu,  7 Sep 2017 06:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE12E00D89
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:24:52 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id p17so1380515wmd.3
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=NkAUu+yxh/yqAJw3xdLCEh5YoGfi0URGaR7DHDpQ/fM=;
	b=B275poWJQBNcdjCUkbpbqf+00MvyzfOQei+blQ/CtQ/sgbiJe7Ky81OaPy8egnuxlt
	h4HgpLEvXojwYk2Llc3rRaqhzx7p+ukJ4yuUn/R/YLZTtUYPi8MFOPRTeQCqKMdmPiF3
	jrM9/ErEENtaYH9wT5jjKMaCkwBUgk9qzinmU/j+Oj2qP5e9lzOKwyJ+hCuRt5RxAWhe
	bLH29cKS7UBLVnUxc/sgZFeMQqzMaXEFHsbMzYdbzT8ZAMyJEE9bQQrHlX93OF49gQL0
	rCqBBlEaDSIEaSP0ZSlmtGWFGLSKz2303I+GLyeqvUn0OqSI2AS3Tz+FHEWulf3uhx5e
	7PBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=NkAUu+yxh/yqAJw3xdLCEh5YoGfi0URGaR7DHDpQ/fM=;
	b=QU3tMFQD7X6pNP2Oa5lj7/lD7NlOi+eraUDs2e2DhsVvxkLxlWkyVyOZu5We8q/qv1
	E5B0k6pjH7Lam07cY2MlXq88a3VHPiCr2L9YDVXfmcUuaniQpFl5wcSHOSBA9gDmkVqh
	BcLUsgEj11/zwNMmBJjW8rineDlW0wuHogkaJCXQfGIXrz0QZEnapSTlg4i4/rccq4uO
	xPf9k31ZD8sM4AIaxbnCMqDtEt5Qr/bROntxAnAaK5UTIVdH9R3VkRNdlcb8cZ+ve9+L
	G6lvBdQxULSZtZexV9YslpiSo5C00QhfbGTt4uxy5W52lIWotNFtDzdzVasevN4yWv2t
	/0/w==
X-Gm-Message-State: AHPjjUjbQAxVNssW9L1AWdQNYx/sZrqYsYD2kz3D3BMQNfer2znM3HJq
	ctcfehFe8/gnGiLIH6xE9A==
X-Google-Smtp-Source: AOwi7QDEBTNLREhLFI3Py4qQpt3ks9Vu9Dfk2IV/F3zgZTYTinnmpUiEDBiR0Tul066fnJTNu68uYQ==
X-Received: by 10.28.133.75 with SMTP id h72mr490765wmd.113.1504790690232;
	Thu, 07 Sep 2017 06:24:50 -0700 (PDT)
Received: from localhost.localdomain
	(host109-150-130-236.range109-150.btcentralplus.com.
	[109.150.130.236]) by smtp.gmail.com with ESMTPSA id
	z108sm2581622wrc.49.2017.09.07.06.24.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Sep 2017 06:24:49 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 14:24:37 +0100
Message-Id: <1504790680-20783-2-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
References: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [PATCH 2/5] python-sense-hat: Update to 2.2.0
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
X-List-Received-Date: Thu, 07 Sep 2017 13:24:53 -0000

As well integrate with meta-oe bbclass pypi.

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-devtools/python/python-sense-hat_2.1.0.bb | 28 -----------------------
 recipes-devtools/python/python-sense-hat_2.2.0.bb | 24 +++++++++++++++++++
 2 files changed, 24 insertions(+), 28 deletions(-)
 delete mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb
 create mode 100644 recipes-devtools/python/python-sense-hat_2.2.0.bb

diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb b/recipes-devtools/python/python-sense-hat_2.1.0.bb
deleted file mode 100644
index e990a28..0000000
--- a/recipes-devtools/python/python-sense-hat_2.1.0.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in the Astro Pi mission"
-HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
-SECTION = "devel/python"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
-
-SRCNAME = "sense-hat"
-
-SRC_URI = "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
-SRC_URI[sha256sum] = "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
-
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit setuptools
-
-DEPENDS += " \
-    jpeg \
-    zlib \
-    freetype \
-    "
-
-RDEPENDS_${PN} += " \
-    python-numpy \
-    python-rtimu \
-    python-imaging \
-    "
diff --git a/recipes-devtools/python/python-sense-hat_2.2.0.bb b/recipes-devtools/python/python-sense-hat_2.2.0.bb
new file mode 100644
index 0000000..f7c4e34
--- /dev/null
+++ b/recipes-devtools/python/python-sense-hat_2.2.0.bb
@@ -0,0 +1,24 @@
+SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in the Astro Pi mission"
+HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
+SECTION = "devel/python"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
+
+inherit setuptools pypi
+
+PYPI_PACKAGE = "sense-hat"
+
+SRC_URI[md5sum] = "69929250cb72349a8a82edf2584b1d83"
+SRC_URI[sha256sum] = "f000998d042d96ed722d459312e1bebd0107f9f3015cd34b3e4fabcab9c800af"
+
+DEPENDS += " \
+    jpeg \
+    zlib \
+    freetype \
+    "
+
+RDEPENDS_${PN} += " \
+    python-numpy \
+    python-rtimu \
+    python-imaging \
+    "
-- 
2.7.4


