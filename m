Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0AAE00E30; Thu, 21 Apr 2016 12:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0EC0E00AAF
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:50 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id n3so24188416wmn.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JuDJNZ2wIsXnY/IlmTKH2wI1GHHoW0YnjUgYltHGruw=;
	b=WeVZ3Avstp0/nO7+JU7uVx0KV8ie2EpR0qnliAKWtfWSe+0LNspIHWAs2Ziwuc09jB
	wIKRefGkXuftiGrhCsu8I+qE/Gffhn7VrILXm9fzhPyuCpr3UFKsaA+m34TGdVvVGmuP
	7coSWdj9lgFbhnqpTEG+bLVuughU2fw3WkLd11KdDcVzWeTeoxwjnvLEfauuCYLc1+oD
	m2pk4A43C0tL5PlraG2342yt1zOKp9eoMsCi39BGMg9w3l7Cw6Z2dVEeu+7DdK+h1GZi
	VCmBBihY4nurZPfiFykrX0+B8VxHkIaOf0rp2qDR0S46xanGWPrWyvIJJw5DxRMxbywR
	Ti0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JuDJNZ2wIsXnY/IlmTKH2wI1GHHoW0YnjUgYltHGruw=;
	b=au0o1DnxeiSFhqgIJbe9hfMarQatXv/9T+QtCQjG3xgUpn7nAcFSAfgv2iB6IPUq3w
	JSPbXNIy0znf6Ffrgcb4RbEB4oGuWPFsU+2g8fqbfw8f1qz83GaDbwXoSHVdETHbZTkD
	/TfJUxVpsOBaV1eZ0c5Et1UeRhliM6TFxx2ODAjVQNWZv0LNpJ97eLK5sL+nMpvHyl/m
	GTCmp/EzL0M6WzmfRr4HMoef81F4yqJYWMXP2I7rxcqrO7IonJBSRxShtU6pBfVfT6r8
	lNAaIZyqpWcPb4/vPBJQHAdF9fQ4mOFNyRuCBP/ZhnVqwig4BJWonSPoBP8DGXFec8yx
	rWIw==
X-Gm-Message-State: AOPr4FVKUbwkMQOwbtA9LxfRlFWhIo2L6sxvIQoaQOdPyLaUTJcJaIU9rk5IOxtcTgqmrg==
X-Received: by 10.194.179.168 with SMTP id dh8mr18681478wjc.130.1461267769952; 
	Thu, 21 Apr 2016 12:42:49 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	u79sm16375815wmu.8.2016.04.21.12.42.48
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:42:49 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:42:39 +0100
Message-Id: <1461267759-10268-4-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
References: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/4] README: Document new variable configuration
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
X-List-Received-Date: Thu, 21 Apr 2016 19:42:51 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 README | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README b/README
index ec9f905..ee330df 100644
--- a/README
+++ b/README
@@ -29,6 +29,7 @@ Contents:
     3.L. Enable SPI bus
     3.M. Enable I2C
     3.N. Enable PiTFT support
+    3.O. Enable UART support
 4. Extra apps
     4.A. omxplayer
 5. Board Configuration
@@ -238,6 +239,12 @@ List of currently supported models:
     - pitft22
     - pitft28r
 
+3.O. Enable UART
+===============
+Set this variable to enable UART on raspberypi3:
+ENABLE_UART = "1"
+
+Note: The value of enable_uart would be set to 1 by default on raspberrypi 1/2.
 
 4. Extra apps
 =============
-- 
2.1.4


