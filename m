Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A22A7E007B5; Mon, 17 Apr 2017 05:37:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CF6E00349
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:15 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id l28so20173072wre.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ZhgOzOEWymFJGim2QVarGFjkFiTZAXsfrNw0I4JAl+8=;
	b=HWigs258Mi6SLojNJGgPCMJ9olo0HzRx2oaHASn5cCsH9zNBLZjamH0u48LUbZ+4aS
	+umHaiwkaEB+1GZHkge2n2duu2tp/2yvFfb3ACwyBEeHj7q0ic/NNZ0XxoKMwPerd+nD
	gvg4NZpBS5CEOX54zR8KtmUlKIDcQxATbfa6X2rSZAN3ZBQkcJmViiYVK8Mhyig7DXvr
	c0/Ko/VWJaHR3JamBLY9b8PUrPO/JDjry8pMVfTNT52tK8wFQvFKwmg5ph/YVtLAUPdb
	KfhlZA/ScBNxxCL7msSEFO+8VCohFzBbdowFpm2rguYfJcwI2kZxqaRyKjbwDQ2//NxY
	w01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ZhgOzOEWymFJGim2QVarGFjkFiTZAXsfrNw0I4JAl+8=;
	b=CBK5dWo3aYMvMfD9nNGabR/KDK+kcgDT/uDNGbbBU3QHdqM0QIiXN3JCZpnIIabL8M
	9BjZnIW1nXZ/PGti5qe3MaajGIok32wAXfodMw+GgR+zHgRyBTMxTO9wKOBjoWQZpEXK
	bzcEWPSRDtqua2HHkjVvZQPsUFAiitwsRFVpREveosokkjPECM9a3kk74TThHhWGz4fu
	V9KFEyu0mDAmqrQeLZ0TWWW/1wrNxaPGnx0sa6Ap0AP+t7P8ucpz2Ay8WF4RNkB5hCqg
	AXRixJKQANtnOhc0CKbA76v80LKlC5hEXIeTT4LRbgtOTOzpUQOgKk7wU9IfaAcOz+B0
	tgnw==
X-Gm-Message-State: AN3rC/4xdA7z4l9U22mNzUyVzzagDgiWFPLnmFc1QXkvcwzV3wCTKWtX
	YFPV73whSAXGIA==
X-Received: by 10.223.130.150 with SMTP id 22mr18299754wrc.89.1492432634480;
	Mon, 17 Apr 2017 05:37:14 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:13 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:05 +0100
Message-Id: <20170417123710.6374-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 2/7] firmware: Update to 20161215 release
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:19 -0000

From: Khem Raj <raj.khem@gmail.com>

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 1961b48..8aea628 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161125"
+RPIFW_DATE ?= "20161215"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
-SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
+SRC_URI[md5sum] = "ddd7645988360d7ef267b48c32293ad7"
+SRC_URI[sha256sum] = "bda18f2affb50053940fd88c3f3bec5af9a4b4ced753d01107a2b106cfb02d13"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.12.2


