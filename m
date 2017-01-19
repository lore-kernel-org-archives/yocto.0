Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BC0AE00AB3; Thu, 19 Jan 2017 03:51:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C1E5E00AAA
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:29 -0800 (PST)
Received: by mail-yw0-f196.google.com with SMTP id u68so3724200ywg.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0qLshHnfuSKWRoB/q3+mri05cnVeUp0zdaeEO9jZIrI=;
	b=eqcPrAr9Rwk2Ln3HEuaaHPy+Gx8GvLWTCkrPa80n2yXFytYuFpHfCLT6gWmV9uzdGW
	XcFujsVjlo8SheEkRn2swU/CHbvG70qQo+aAfmwRlGut274xYpVetn6cTgOBZTvYOuEP
	+gCDu0+SmsmcQY85bqELVwkwPqWtjImYMz1Tqa//8DwRpD7XqdfhRxOqdzpBztHj+okh
	xKtRUDHP9yEOp45/JFbAVr2Ea7lcfoPX2GdwmelVfJ473ULQXi7+AO0o7erIi7lOas6F
	k6WKBo6TiCEOF9LO8i1I2nl2FDKnJfqpimnqLjAxjEkSPBq1KZSR5fNkV09i1Rjna+iN
	b9Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0qLshHnfuSKWRoB/q3+mri05cnVeUp0zdaeEO9jZIrI=;
	b=MHCoBTWTeCDS6nXWlSH4OZLd2Lyr/o4OJgwzsazpMaeEK0CcgBLkMZuotDHR2d+gWh
	7oyN/bkre2qzGHjpqHBF4njrwa635QSSBKeFmMGV0JV8EjUjEQON0/c+N7DncyGcFnuo
	SwZrUocwL+M/a+cV5DqgXVLbn8O3ZEnuQDO1q5rOTofAb1uwpCSzEoQCuE4Zw+qgY96S
	rg5HxkS1cVGVw1gYgvZM9ktlNL3Z0Oh8ihHDHR2aSHq2Ddh6ZZKzW3iFrl4Wo5/I2qSQ
	dKywjRYN+MNgcVmZjpWlSW59fNX5Q6aRtDLbdN0A+vus+6o+UKdX6t5HIVb4XA2SV0aX
	sE5A==
X-Gm-Message-State: AIkVDXKdJpg67bL8zppRzDeexFpq8rTBqz4lh6sLGjh/bMuumPinHolhhS2svgoQvPxQnA==
X-Received: by 10.55.128.5 with SMTP id b5mr7446113qkd.319.1484826688421;
	Thu, 19 Jan 2017 03:51:28 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:59 +0100
Message-Id: <1484826659-21692-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 6/6] linux-raspberrypi_4.9: Update to 4.9.4
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:29 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 20f43aa..cffea1a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.2"
+LINUX_VERSION ?= "4.9.4"
 
-SRCREV = "4052b0da7dbab0df22ca8733cf50b3e573e221e0"
+SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.7.4


