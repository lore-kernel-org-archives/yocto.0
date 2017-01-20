Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E2EBE00546; Fri, 20 Jan 2017 11:16:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f194.google.com (mail-yb0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A974E0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:32 -0800 (PST)
Received: by mail-yb0-f194.google.com with SMTP id w194so8849416ybe.1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=5LAnt2AhN0StpIPsdXgp957OHMZB+x27IgueIVLDscY=;
	b=ll82+11Q6RyH8j8fKy2meRIoxUBilroOQvBeLnz3wEDYow3GqcCw8tnXfzRkb5VcPY
	FYFsWJcyi1JT45b+kLr7QT0ujOVqYDapa1C4UHKi24mt4dSOO7fd+ZIiF3yF9na7uH4M
	nRLu8X+yao1j0iag7TTa7BFMaNPcuIEVvxTZXzaSaMDumASV9YYv2yixIgyAfoy1SbCD
	0YjGL5+QtTTuc8Sn0K3WCrr9JeNzD3G7s7FiQmI9E/Iel2JOj3qrtpXOyn8YwTSl7QcJ
	Zfx0olr4/ENrSUXUwHNjatrH+pUqT2tUMrbZZ2YofA9B1iYyYkJAr53iePHvqD08VotT
	H7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5LAnt2AhN0StpIPsdXgp957OHMZB+x27IgueIVLDscY=;
	b=JYJoPkoQk1XR3ww+MSwXdJSBIB03cCYMK1Rk8KUm0GFqRMptudcX1geNE9AO8UR3V/
	AlJV+as1FDlTb1QwNh+T5RmGmZa61JBAivrC/lHfCNBxXM2fdCBwyP/GrbLe1fAEZt93
	TFjEEQOw97xX9D0Zp7ezH6zOD7a0M7vnBHTztvo00/xdULKvHx9Hep4Mmx5i62miJvcT
	sNUDNQ3tPlF9ExYTpD2AOpKDQ+9ECl8sDPaDeUU4npEeIXnThqh0qsRJH6lIHIyTeiH8
	slxKs7M+Let1hoL8tlPDab6CdsPKMxTiBD7Xrav8rdobvZTdA4AUikx5Zn3aplSqVa1D
	giKg==
X-Gm-Message-State: AIkVDXIJZDXqP3jm0QwZetFFOOMBDqiNIv5CKK1jI6liBo3dqaI64BPRrf2SwW7XBsZELA==
X-Received: by 10.55.159.20 with SMTP id i20mr13479805qke.317.1484939791987;
	Fri, 20 Jan 2017 11:16:31 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e3sm6673488qtg.7.2017.01.20.11.16.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Jan 2017 11:16:31 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2017 20:16:01 +0100
Message-Id: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 1/5] raspberrypi-cm.conf: Add dummy machine for CM1 (alias for RPi1)
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
X-List-Received-Date: Fri, 20 Jan 2017 19:16:37 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi-cm.conf | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 conf/machine/raspberrypi-cm.conf

diff --git a/conf/machine/raspberrypi-cm.conf b/conf/machine/raspberrypi-cm.conf
new file mode 100644
index 0000000..2da7d50
--- /dev/null
+++ b/conf/machine/raspberrypi-cm.conf
@@ -0,0 +1,6 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi Compute Module (CM1)
+#@DESCRIPTION: Machine configuration for the RaspberryPi Compute Module (CM1)
+
+MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+include conf/machine/raspberrypi.conf
-- 
2.7.4


