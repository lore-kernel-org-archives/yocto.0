Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB93DE00C82; Tue, 14 Jun 2016 16:50:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA16E00C70
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:50:25 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m124so1967661wme.3
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=TfSd4FORTge5udFSU1x0yYwZMRuERR3zoefdnxx4b0Y=;
	b=MBxa3raAzpfCZfOshPG+1Uv2s47rupXmuXd1O/2qOdJzyoQskK6pdLD3cg1Pg9wcl3
	rd9MpVHyS+7t51G4LPxjXK2quX/xX/9/3KQsXsMcGZ8lEXYgy+y3VNOekio294KBcqKi
	jdtAT/9p5+CdyI82fNyRTHNZ70+M5gAJxmNOp639WbU4SwBxD+E2IhwFYR8ArFEiZqQK
	ghtIRq4KFRaeL3GdNak9ASnNVIL/02TnSw8NoptNseJVy4EvJCXmVWDQATC0a0tmoX6f
	7Qz5UAbAzrRRlq27oAXSy0Vc+pi4E8E8HHmuO+Sp4fD7U5h5TAxDCIqFrp0zpY1+snhb
	CvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TfSd4FORTge5udFSU1x0yYwZMRuERR3zoefdnxx4b0Y=;
	b=XyH8t6eba185Y9vbUP87mgDxaU3OBfj6xr0sRR6WVPb6rlC7YhuP5UCFT8tfj7vTli
	htwhMBdrNfzFCFcWoj2EQVF3EWHaqGU1GO65+B2vL9sL2Te3KmKjyHgE4nAnGYYlNKYJ
	NAKHDjntGFzlXgIo9XHkx6wxtmXpsFycK9XiyGXRaYScJlBrZK00XRnGP6bb65cIO04L
	4BdVh2aG5+wcmcxsN+uaabN2crzl13NVsmQ7sz/ngL/nkNJ8K9gau8eKyS0gsDoLqYIC
	q4KjJxN2z1NHLhlQbs0pcD9H5vlOykZu6P/TLrD/tXtcjAaj6JZRNjFy0E7gFanb+J+3
	wyWw==
X-Gm-Message-State: ALyK8tKekcpppbueokxk2COYv/MQyYC/aWgYLjcZlkmAQUQyK1wr+zqQkMs5H2PYkyvhvw==
X-Received: by 10.194.96.208 with SMTP id du16mr9642942wjb.0.1465948224375;
	Tue, 14 Jun 2016 16:50:24 -0700 (PDT)
Received: from resin.localdomain ([85.255.232.185])
	by smtp.gmail.com with ESMTPSA id
	f189sm1075563wmf.19.2016.06.14.16.50.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 14 Jun 2016 16:50:23 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 15 Jun 2016 00:50:19 +0100
Message-Id: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.2
Subject: [PATCH 1/2] packagegroup-rpi-test: Poky moved the license so fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Tue, 14 Jun 2016 23:50:32 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
index ae16cec..a47aeb2 100644
--- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "RaspberryPi Test Packagegroup"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3f40d7994397109285ec7b81fdeb3b58"
 
 inherit packagegroup
 
-- 
2.8.2


