Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76C3BE00AA5; Thu, 19 Jan 2017 03:51:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E225FE00A9B
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:27 -0800 (PST)
Received: by mail-yw0-f195.google.com with SMTP id l75so3694365ywb.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ya/IjL6RTb4gMJblKZ+2ZFTe0tT/uboOH7a7tDtupQA=;
	b=mwdwb4QwL5dMp5a9RmpxxRtyIb84YXHD/C3xvVvYLK6tN9RNPe/iAw0YEKZVkPUQSe
	6iv6kY/E7AgKnvcIifeKdE4ZCg2q/ArU/JrctRKe0DjECG0EPz3XM0+mca9UWkvm6qbT
	hPI3NiXxemrO1rliMmc8CBMq4gbeL736eDUUjaOxMu/VMidrqrpYIJy4XMj+WoLHe/vE
	/5kK02LErbErwPr480TGT3BArEpRJEQGcFahgsH4D20F2w5I32z6ghMiywvL3kAlDPRw
	tFLOmqY1LS7XTYO8XObIMKr7qxMjO+SF1jlKxLo2ha/Hq2NDpyIaDu84+Ppr7fJt/vE3
	crlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ya/IjL6RTb4gMJblKZ+2ZFTe0tT/uboOH7a7tDtupQA=;
	b=rJHnZYS2UhHHJhn3xWnhi4z42yAP9GY2HWVjcR1hAtr8Qgym1QOuY1BZWqxXDWP4fH
	IfTuqaehzsLOycpA10o4mW84xohaLEwF7tmZ5AZ+6JRZndt4hNHWzSLCQgL0t8mdkc4j
	r3P/yn0ASFI3cMn9gVr46iJMagcFSXwoJzWKDpV64YtS9u50LwQrw7mpHLi4QhrdsOrb
	hPPsJAHptPSf+kva3pyoz/SIY+9nnyuoeSCpVzqpdXeQxShAWW7b1rtYeQ9ABh4udJIG
	XG+MJ7aI3vu3FzMwAJ8XdcKcKm5+wbpXG7zt7+OV+G4CMuBG39IhrFOBY2+cLDPdzjv8
	80UQ==
X-Gm-Message-State: AIkVDXJZaoZh9Q9j/rctyQAQRQl5nODOMyyi9nS8bHVTm74sp7JpHL6sGFmyCRhTMZNipw==
X-Received: by 10.55.200.76 with SMTP id c73mr7311666qkj.291.1484826687263;
	Thu, 19 Jan 2017 03:51:27 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:26 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:58 +0100
Message-Id: <1484826659-21692-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 5/6] linux-raspberrypi_4.4: Update to 4.4.43
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:28 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 3317c02..0f78225 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.39"
+LINUX_VERSION ?= "4.4.43"
 
-SRCREV = "5e46914b3417fe9ff42546dcacd0f41f9a0fb172"
+SRCREV = "17ca1c930978a9ea6ddfec61fd0e2043e8ab3b17"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.7.4


