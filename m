Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C2CE00B45; Fri, 14 Apr 2017 13:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918B1E00A48
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:23 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o81so215054wmb.0
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=sEcKI1Dp1udPbG/EsCZwkQESKPXdy8HPxWmKYp2YTP8=;
	b=zavjqRPIWhSh7I2OWg8L+jGiqFpe7Qcrt/dU0mmCeBJhsXMxJ8KphpfwytJqzflb/6
	cyGcP6FnFvjnG3qJ3ZjoNJuOEyZsXXL4aZNIA/gMAcsfgbiorRLVqTTwXwypKgtxVQnI
	0ho7pvpYLT+v5rX4VNO/BCzUMnabhTKiSwkh8KNtChdy5NWYC/NKbYyWarJnhndxrcd3
	DaBSCh/YxT4xftAafX/Ur6TwmdFN7Hsapcifu0JPJlINuHj0cCPmzQHhGfXVt37/tz95
	/YVSSQBVG9F6NgLGK2Jr/TplGZdK7LI83HdXk0mnUGEm4tnicO5WWOIEUKAoHUVE07Sl
	BPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sEcKI1Dp1udPbG/EsCZwkQESKPXdy8HPxWmKYp2YTP8=;
	b=ffq/cpd7ejqMedtcABEI3QxLOTzDjK5pIW4QQt2UzkHyohynR4R/1MElU9Zp6EEKQs
	WqWZM5NIYzak1t8OvxAdjb5ZFYkYLu79lEL5kfpEVYfs0yBQaFqFZwSxnAm8ZLchQAQi
	ospiztQTCABJQWsFaKdkCzS75IiW36GsyBh9ctbLjzE52kYAbLP2M8p+6blr2KkQkOEn
	r3NaAoD8CMYKF8N976WEmEXkg6bUFku0Z/AuqI8NRxrL9vZ5Hk6xg/Q3wHAvqYTRiRro
	VnZ7D8w2IXp9jqnPkUM1ZQskSLs/xXW31WDotFrVVOR8Jr3pVO56qYe56S1szo3Cq7uP
	5mDg==
X-Gm-Message-State: AN3rC/49LWIKlYx+FCvLVm8HinZkEeGA+2/TIYD0AfoYhHDwr7o5nx5V
	UK9J5m58G6RTTw==
X-Received: by 10.28.184.73 with SMTP id i70mr217458wmf.104.1492200802901;
	Fri, 14 Apr 2017 13:13:22 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:22 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:10 +0100
Message-Id: <20170414201313.3138-4-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index 3aba67b..c0e8b83 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.13"
+LINUX_VERSION ?= "4.9.21"
 
-SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
+SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.12.1


