Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3C3BE00C9B; Thu, 23 Jun 2016 14:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5746EE00C7A
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:55 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id i123so7533621pfg.3
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=VtjRBmpT7G9Ee56I4ubTkewZ2Dk8GIjnMarTHpmAjJE=;
	b=iIixKAGXoe/KvNsipHLlu4P4U2iD1PGG0LNdQ41KDrevQOk3HF0mZS9ar/xjxsFFHZ
	7aAI7NB2moJlbJweWOprnLDHec6BitLgIv+jTykI9fj+Mr3Zmml5UQ9zJM6/cnISlseo
	5VSb8Zo8Z6IYpkxXClyU9GVxDgGy+aD72DYRsNQs4aNRSS+HMKZZdauR06zFW05Jp3Pi
	4hO+FV9PzPcO8PJ4ua7fYncIIc+J/Lt5jAgH1rC3808ufQyeu6HvKmm3qQP15IByV+Qg
	QnWPjwHGBpqPYMs6d2x7OrRp2BNZASKpnyO1jAb21ZewyUUIOv/TZPboyEN9qbMCQJDN
	/tqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=VtjRBmpT7G9Ee56I4ubTkewZ2Dk8GIjnMarTHpmAjJE=;
	b=ahVpS8pVa4fXrAWEO9Fe1rn9cNkeRZpQO9wo3RdGLMF5f9nGusWDADHDpmwGVXuf6w
	0+z7HEEU5+AOigRsD9mNpujw/1df66U65M5tfDutXKFgHm0b6zF0anFZeEJeflhnwvR0
	3dUF4nniflCSXGu4tad1F5PL2d0/NDy18Ly5cceUm100arH69pQlaYxcp0QQBwZjdRM9
	zX8uxcBelSO6zdE2XXJ6yvCruOnPUzD3hTbjM1LbJRN7UZmnbXir9Z0xFkJH0fEsD5WB
	kOtaSpyRwpSq+FWJTjSQVoOXivGz7bLSIqwDDhwXAyrKgwe7VTE0UNSumXXAi4FUrNVG
	Ydvg==
X-Gm-Message-State: ALyK8tL8OKRDpqHPLg8m2Tw2EQ2jo15CybwVC274A2W0Qr2l+Pp0tGlzqasSmVvVZLF4fQ==
X-Received: by 10.98.32.65 with SMTP id g62mr1033602pfg.12.1466717695462;
	Thu, 23 Jun 2016 14:34:55 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	q127sm2277847pfb.34.2016.06.23.14.34.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jun 2016 14:34:54 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 14:34:30 -0700
Message-Id: <20160623213431.5513-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20160623213431.5513-1-raj.khem@gmail.com>
References: <20160623213431.5513-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/4] linux-raspberrypi_4.4: Upgrade to 4.4.13
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
X-List-Received-Date: Thu, 23 Jun 2016 21:34:58 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index ba47b22..3291ffd 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.9"
+LINUX_VERSION ?= "4.4.13"
 
-SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
+SRCREV = "680be5e27a9593cf26079c6e5744a04cc2809d13"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
 "
 require linux-raspberrypi.inc
-- 
2.9.0


