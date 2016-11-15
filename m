Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87A41E00953; Tue, 15 Nov 2016 00:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24BE2E0080A
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:21:35 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id a197so150659584wmd.0
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=pzjgP/qWTA+fBxSra3ra0F1r54msQfw2jVAFrRIu0d0=;
	b=hF8Q1RHaYgl7spDD/vSRWyx+cmXECn8ikz7cuR+Y3kbqpbIe0l5PGm54PBb7eKYAQp
	EYKKcXM99+QIa71xjkoZLNZD/7j3o7Xo/gaZ6UP3aYQJMy8ZaPEXX7zxZ7z137d4bFMw
	VWeAaSH53zHLIzhxXjn7SJpQVR9xaLfpDTZHwBqquoPuIzc//YX95mTTKp7K5LH3yE8j
	TB/+aon6xGoQfoV1BWdSonhxr31G6VE82AoNpcnq1SqcqJPOuY1yjkhmfDIsIhVok/CJ
	DKQDIETFxSD8QBzS0eqK1c/ia4b4D3ntyz5lqOX+/aRLNDfZ3+N4J9Y2Nt3/rAc32o/S
	rQMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=pzjgP/qWTA+fBxSra3ra0F1r54msQfw2jVAFrRIu0d0=;
	b=Yc5x+Fp/GrxMG9lXWmtkbhA+btMJOWhirtwIpHMyD4IU9hWS+Za7OEJ6t0whaBr9mp
	v6oqWLm7HdU0aAtzj7taqCMJ4dqmFoEMJHqDvZ31W6KtMIws4y3h+ja/0zt8L7JorCaT
	yg7ZyLYoCgnbXeh/u7FN8nUPJQpEEJOWHittCfYhbv75jWXhWyMIXI7oCq4KzpoBANaA
	pf5FllaqEPu4hA02OZwK6Xf/f2imrWJG3qmumkj7EIoH5HW85CGdNS7VXxh51//EZly+
	lE/QpdvHnIhsFdduNuxkAjf1g5aC1vlMpjamba7OVALkPfBcfH3nwvLUxbiG0bUfeA1k
	bXaQ==
X-Gm-Message-State: ABUngvcKecyq4L8gXyeXzx3Qgzrn8uLB7Sb5NQPdG5DBlXbHdhzeB4KSy5zT7VYri+OGDA==
X-Received: by 10.28.23.137 with SMTP id 131mr2220224wmx.121.1479198094655;
	Tue, 15 Nov 2016 00:21:34 -0800 (PST)
Received: from localhost.localdomain (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	wg8sm28395198wjb.42.2016.11.15.00.21.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 15 Nov 2016 00:21:34 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Tue, 15 Nov 2016 09:21:28 +0100
Message-Id: <1479198088-6559-2-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479198088-6559-1-git-send-email-piotr.lewicki@elfin.de>
References: <1479198088-6559-1-git-send-email-piotr.lewicki@elfin.de>
Subject: [meta-raspberrypi][PATCH 1/1] raspberrypi3.conf: fix typo for BCM43430
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
X-List-Received-Date: Tue, 15 Nov 2016 08:21:38 -0000

From: "piotr.lewicki" <piotr.lewicki@elfin.de>

Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
---
 conf/machine/raspberrypi3.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 438c6e6..9820209 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -4,7 +4,7 @@
 
 MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
 
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
 include conf/machine/raspberrypi2.conf
 
-- 
2.7.4


