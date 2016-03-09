Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53D03E00C39; Wed,  9 Mar 2016 06:15:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F318DE00C0B
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 06:15:21 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id p65so10319315wmp.1
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 06:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OgJmKH8ePLaRclUTYKOrNc0n1HCn+TGVmVuoqFYOLq8=;
	b=sUW9PMHIRsl6/DoNXCrGuGdYWX2yqFI5XYKOAzS5OY0DCynjud+frRqjN/OPg6suEj
	HsgfMBByJKGN0q/RDjR3WRYN6abH4HIhdSzoEN+KwYDiRlQuRKkPcnpFRS2NxfSTGixt
	7GM/+VgR4bFzT1I1VV+8DR7VGVldGEF1aHN3D7MCfj245zRPHaOdGejrqvoeCnQ/9NUM
	+u5lgbBAKP/suO41lnjOkkPtoHWsRGFBvlwEqcMOqiKSJEeuc6Ohm83OTJoj85/G7BA/
	K5m4cWYTpMEqUNeMbQrd4nqC209x5qrXyC0zP+WI3gnv/a/IBAA4pLrJdE4bDHSg4w/w
	p0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OgJmKH8ePLaRclUTYKOrNc0n1HCn+TGVmVuoqFYOLq8=;
	b=YLB0gjAmGHvyrbN5HDyi7uVtLlwed2h3S/R02vCVXK2UmT4w4bGpRQ7ysnudpJ7q4E
	5NMze2mCFUT0wbZojQ4KY0CaYdSV5vofWnn2B9sxp0srnIiapV5LpeQUp6cQ9oD0efGd
	KHzqGFQVBQcujhKEpu+zrTG+kpE8XdLWtNYQ6jpSyesW/cbcj8GZ7v4+9Mk907aWOryg
	Qvu2PhE4pQBYNBV4hbslLGAfIR2d+ObcsOLszgziqpHLLgYOQGM/jm39SMKC9RhFnDdC
	fjZIv6gO1Qq/Y7GfC9gL5vbhkjBe86TlaZLb3r8+Y0gg68NGNoPPXwCq/Um+IjsUkKhy
	L6cA==
X-Gm-Message-State: AD7BkJJpobbZBhNV63fAX1uXf6TyK7OHhdi5yPPf1Og2IH1mswrXry/n6DtQJQcuCqE63w==
X-Received: by 10.28.183.84 with SMTP id h81mr175152wmf.100.1457532920570;
	Wed, 09 Mar 2016 06:15:20 -0800 (PST)
Received: from localhost.localdomain ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id
	e19sm24214662wmd.1.2016.03.09.06.15.19
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Wed, 09 Mar 2016 06:15:20 -0800 (PST)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 16:15:03 +0200
Message-Id: <1457532907-49811-2-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
In-Reply-To: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/6] firmware.inc: Update revision to include rpi3 support
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
X-List-Received-Date: Wed, 09 Mar 2016 14:15:25 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 020f0ed..2c4f497 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "f7108cfdc715f79c5fd051fb4c3ae6f4b1b01f23"
-RPIFW_DATE ?= "20151021"
+RPIFW_SRCREV ?= "028b1f6585280bd0a21885973589c4b101355597"
+RPIFW_DATE ?= "20160303"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.1.4


