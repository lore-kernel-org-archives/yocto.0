Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF56EE00E0E; Thu, 21 Apr 2016 12:31:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514D3E00AAF
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:17 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id l6so24012750wml.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=2oT8tD/M0UpimaqRoqLFgd/21mRG/1UWq8J3ziwmmdM=;
	b=suHHBb7xjWCzxeKi4hAVAWnbBqU7z3pYPlRgPCMkHii6kjVl/Dq/9GiDjLaWcmFUdx
	L5dAhUM5pxqysGucISqhyBKdX0GDPD0JCE17my5BFPFFg2HGUWy4zZMBgu8zFUHXL9gA
	mEm+DXZJ3+wtYu3BAu8hK4DTUMK+KzvvJSKRXnUFqRasQpoA/FUT7yqwdlegR7K9ZNrv
	9VBhmyALd3FvR9hyJiajF7Wqopgo3h/zZngVjnGjA6l3JWRkF1gUBijeOSWxxNTGuc90
	lTBMwVyQFjPBEb+kJUeLZ33X/OPTuiCuYEm0uvard5kKZRbImFlP1ra5/XzXTn72gJUJ
	5jrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2oT8tD/M0UpimaqRoqLFgd/21mRG/1UWq8J3ziwmmdM=;
	b=ioLUW+qtKBfIoQb8/1JsF1r1r6voIMiW2yWiuOhW30EU/L0wlr7fe4nsE3M1AfwfUi
	8/gGzVk0lFTxZ+tNlxBIvv+7BcAxV9kJxNSPDEMXh8DLx6RNMR6LA5BDLygnJf2lC6Mu
	Nc7WtAU1iWsFE3ExFXWH6jqeaynrzSa0ahnxHlhU0v73D7QMXl+WWuPKuQzRs3advjB8
	Q/e/fjM7oJONak/RbTuNvSP5T6S8vtKPgYDmp2fxCBrlikmUTYryojAo+E47xVPG0gRZ
	vMyC3jrgsva9ZFUJKROP5YMXc6cXt9EfzIuch+sjQRT9ykz8Pi+j6drU60ulbQfPk5ba
	KxEQ==
X-Gm-Message-State: AOPr4FVDCu+gPl/7LYSygsNaHgPJhiEUxttMbp4Er2zGjynunUOKLvxGLUi2PHpol88OZg==
X-Received: by 10.194.192.36 with SMTP id hd4mr15491190wjc.85.1461267076596;
	Thu, 21 Apr 2016 12:31:16 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id m14sm4744524wmc.4.2016.04.21.12.31.15
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:31:15 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:31:06 +0100
Message-Id: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
Subject: [meta-raspberrypi][PATCH 1/4] firmware.inc: Update firmware to include various serial fixes
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
X-List-Received-Date: Thu, 21 Apr 2016 19:31:20 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index c1117d6..abc7d06 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "046effa13ebc4cc7601df4f06f4834bd0eebb0f8"
-RPIFW_DATE ?= "20160326"
+RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
+RPIFW_DATE ?= "20160303"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"

--
2.1.4


