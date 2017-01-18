Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30348E009CE; Wed, 18 Jan 2017 09:34:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.196 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2308DE009CA
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:34:40 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id l7so2700916qtd.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0qLshHnfuSKWRoB/q3+mri05cnVeUp0zdaeEO9jZIrI=;
	b=YdilFpaMFZpFtq4PkL+LYYy3QcSVEqKGnwE8mprC5Krk4gMJsPGrIiLCazOrZsy2Su
	rPjua/2vR5vpSvPQA2aQb2vsOYzodx/bZFRNQXC2jBmlQqm3Hd8IWJQeP3wE1fLflRq6
	gyL9R4o9nDje46Az07kjvMbt94aaX8W3oUmt+vwzMQagI4zQpMmWbrvS0vETNFaqRkkG
	RgtRXWtacIGMuFdDcFP80cFhM59eFluMHXW3wpvi28VWgF5MXvN5qDtgzBLJeduBP/Nn
	531++Vncd/FHOsqn69RwQkVpnMNs6r31kZckO9x5enegSRK7c0p/IV5oRctVtn9dlw/C
	cF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0qLshHnfuSKWRoB/q3+mri05cnVeUp0zdaeEO9jZIrI=;
	b=Bbb6kl8lNAEvwocBDUuQ9RPQURsMthm7qHXKqHNV+bAVyOf229pAlZ9+ZfpGWKrtL4
	cCO0mg//470Oi6qzUgAVe2VBhVElwpWBHkK/xCl9SziANelNFO06XXZbADk0oxm1Jk4Z
	5NceRkXXG5TvjPusxhgacop+aeh3Yi5Os92QpM3ruDSLHIhdYl8kc5LtMg916KCK/AU8
	3/8RbERAPslBBJ0t34LykeJOyoN8La20WPLzHQyf/a4r7gioVCxkXxH25V+x39Tkaapl
	9nTyTlWuopdHZ8wvAdvQ9xNougw6aEkSQfKZcPSpm0vUKbvDOW0ncvkUC/CUZZKm3Fd2
	JiLw==
X-Gm-Message-State: AIkVDXKf9d7weUsCTWo3oEhLqNctw9S9I1RYlMTBroUaPDtVQIRzjqINgSCnL1QEFJEkIw==
X-Received: by 10.237.46.162 with SMTP id k31mr4124134qtd.133.1484760880081;
	Wed, 18 Jan 2017 09:34:40 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e33sm727791qtb.31.2017.01.18.09.34.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 Jan 2017 09:34:39 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 18:34:02 +0100
Message-Id: <1484760842-5100-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484760842-5100-1-git-send-email-andrei@gherzan.ro>
References: <1484760842-5100-1-git-send-email-andrei@gherzan.ro>
Subject: [PATCH 2/2] linux-raspberrypi_4.9: Update to 4.9.4
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
X-List-Received-Date: Wed, 18 Jan 2017 17:34:44 -0000

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


