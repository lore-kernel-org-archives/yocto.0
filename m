Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E5A1E00C13; Wed, 16 Dec 2015 15:43:14 -0800 (PST)
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
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E927E00321
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 15:43:12 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id yq9so16438980lbb.3
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 15:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=0MUOvwjDtN7uIHqPio06PuRbwM65CnzxKYZvYyr63h4=;
	b=OBRSJ3flhBvR3JjqFsriQthrDZDOW7r5pfGXds1LsvcnAC+4HHYxu3TpYJZFaGgfsH
	IumLZU2gznfi1ScF3aOpM9PKf83VeprGLEX5ZgT1Vz/63geucPMVFeUrgWcncJc/j1We
	Xry6tXb+aCBY5XfCWyFq9k/chN5mIXAVMeHah9jwtwrfr1yr7acUan3JyTRHSkg0EUmN
	Xq/RcXPAnV/8impcvQK/4UldDGXkNjdtfbWY8QBQN3mK96HShAF7BJbVMyRdLyLX4+WC
	UxYK/h3ZcgkQBhExKail0X33TlAt91EII3OFojnXGgqpSd5Bg64TNLFul6v40eFodEgB
	MyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0MUOvwjDtN7uIHqPio06PuRbwM65CnzxKYZvYyr63h4=;
	b=I4AdzF4UQOuZZyt3MIilPpDSloiCG3tC7t6cd0z6gs0W64gkQ0Ek47RDJqCTFYuoNh
	VCDPeP+vhAzA2Mlt6xLb2Zs2gG90Wz8BYno10Ok/eUx+DN2rvDgdm6r2ZyZ0aFBap2GL
	2fuwrsx3tgrs59mUCpr61dAv06ZuKE2AP9zltAZEd50/1AQRdIsGXNSLm/Et2ra1roq9
	Hb3AdkP1QZMzSxkIJQbtA9KF6GePT3lYESyVKfbaNWZ0v7UKFP1BPJkjD04CCJaWRpu3
	aMwWa5AEHfx53YoaXCDskOEJeQurpNXQ0t29SeO6rqGDOeHKSufJFY1SjOhJ+eBSLAVH
	BF2w==
X-Gm-Message-State: ALoCoQkUB3NUdlJTEeFtXEf6fFrcuQ4gKicGn0xU9SZoJ1cW0x6if3fnaoWyqUhoCv+lvV4deKvanRaV89IZK5Xg6QR24o4oOw==
X-Received: by 10.112.141.201 with SMTP id rq9mr19463170lbb.4.1450309391981;
	Wed, 16 Dec 2015 15:43:11 -0800 (PST)
Received: from resin.localdomain
	(dslb-178-007-064-118.178.007.pools.vodafone-ip.de. [178.7.64.118])
	by smtp.gmail.com with ESMTPSA id ak1sm1480415lbc.2.2015.12.16.15.43.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 16 Dec 2015 15:43:10 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 17 Dec 2015 00:42:54 +0100
Message-Id: <1450309374-1270-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.3
Subject: [PATCH 1/1] raspberrypi0.conf: Add machine configuration for Raspberry Pi Zero
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
X-List-Received-Date: Wed, 16 Dec 2015 23:43:14 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi0.conf | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 conf/machine/raspberrypi0.conf

diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
new file mode 100644
index 0000000..58468ed
--- /dev/null
+++ b/conf/machine/raspberrypi0.conf
@@ -0,0 +1,6 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi Zero Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi Zero board (https://www.raspberrypi.org/blog/raspberry-pi-zero)
+
+MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+include conf/machine/raspberrypi.conf
-- 
2.6.3


