Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D2EE00E00; Thu, 21 Apr 2016 12:31:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE38E00DBA
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:20 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n3so24115424wmn.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JuDJNZ2wIsXnY/IlmTKH2wI1GHHoW0YnjUgYltHGruw=;
	b=tcklOziTI+pta9PCMoDQDzi23mv7dnvRsEaRl0yYh7yHc2QVuxHyAch19oxW2bJOto
	7fisYzwbev+RdYz/aaaRfjTkX6lo6RXkGKGvRzO7NkT5aHJfM5zkcOlhJmnVANsbbdOd
	sCM9S7xSv+f+vUI8JH2wQunPQh0KaGTA0u9030tPVBlMVsJ1L2gR86s049pkxkpDnQ1U
	S7C4vRfmHylMV/Y6QYulN7km41KxDYHJ9dFqXi3HDXPNP02y6RRzk4+wB6H9pwybQdOe
	kXLdFdBA228dDMhSWKPC1bNXdTTuCugeQIGxJBRF1o2kw+HcVCUoQ7vHcECQRZk/8jhr
	YaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JuDJNZ2wIsXnY/IlmTKH2wI1GHHoW0YnjUgYltHGruw=;
	b=VCTQIq42LGGpZJe2T0HxqR27GoNaIU833coJtch+8cd1GLySCEA7wnn8yvmUmlGK1T
	3uB1I5+ZoBPuk0dMiHl8aEr3MM2Ayo/jY+qNP881v4Ye5klu+eX4RYLT/ch0rXWI0/rY
	FNfvviv+BG4jrp2cs/o4XrNdJW2QVvIzbkfTrgMM3FGu20h3Jw6QZltyzq3LiCx8Zx+4
	uiGEMInFmK6qx/VNUDficaF5oDBXnWtmyqDmo2jwWHmmMe26zsuLUExW2HAgo6PLMgbl
	qyC4pID19JD0OHzqT4d67LcPuCzKrOtKBg1PgI4vGQUoVHkEPSHhw/Av5wYRPEofVmrS
	3phg==
X-Gm-Message-State: AOPr4FVxy4kl0YLPpuTqEfr8vZW7yOVFKST5HjAhtiFAWu/z8ljHMEva/V+heO4vvmqIBg==
X-Received: by 10.28.165.216 with SMTP id o207mr6611314wme.31.1461267080064;
	Thu, 21 Apr 2016 12:31:20 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id m14sm4744524wmc.4.2016.04.21.12.31.18
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 12:31:19 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 20:31:09 +0100
Message-Id: <1461267069-9448-4-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
References: <1461267069-9448-1-git-send-email-theodor@gherzan.ro>
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
X-List-Received-Date: Thu, 21 Apr 2016 19:31:21 -0000

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


