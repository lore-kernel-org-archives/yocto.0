Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 805F0E009B8; Thu, 16 Feb 2017 10:47:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2671E00970
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:02 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 13so1720283pgd.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=WhiC9ZBYyG74Rp0jdLBdXyrrj394TOUmVy0OXq2WJSc=;
	b=FNEQZEZU9wutH5jcQ87phQosx9ZQ/YBrkQOYVdeMTeFMoXUw2HqpcBEJufjXr2saNo
	qG3EvvfoOLyXm3Ig+bLjG4EkbO/TzmYljlXRartPjwhONs1lQ/3H9j7Jv70Du4AbQ+Yw
	xTthaYeMu9G9LCDxC5U+vpbPtO4J2WtuxLCVVTfctDU25R8hBBTUMImjGy3gHuEMfZUS
	CJho52lik58nvjO70RNF/c1lorkhF+TniWNYXwU49YTu6qQfdr3L0nB2uT6VyA9fPWX/
	fmAvo6aVn/8TGWu0dHZkAJfDjHV0Uw6rOEfr2JUpaJA5djdVYWXKAuEzqkzteQUMJncm
	mA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=WhiC9ZBYyG74Rp0jdLBdXyrrj394TOUmVy0OXq2WJSc=;
	b=AGfzDYThrFpJGjf1YBAVh7Q8DSTJr6M72zFfKuY+6lkM29c7XVkd358E5eJ/q4bhSX
	yxHYfu9FwcbTCHt+YZgz7iepGVquouMa/SGHoCoSpOONGn1SRTdTqk7E9JiklC370wR9
	19bOoeu7we509grN9R/UQTzdvmWN1NQJpKObi5zfZi9/cFsfhJo/CM04MwRErH9WU3t/
	TZ1pBYBF1nZlg+wUiHyqp33K56HzE6VmjBZtVulYWPZHlsFJB6R1j9wEJusYOuXrkt+h
	h+ZrjneibwUW/ggaYzZft1y+loTQYZuVE/NmPXevCj3hGrEEXYuf5RE/whqbsM+1a8G+
	Ktng==
X-Gm-Message-State: AMke39lAtAxcxmoVY1wqC3X39JJk1ZQiQRSb/GcKg+qxqVbAGhfW6SzCaZ/kRZFWYTXHEA==
X-Received: by 10.98.212.23 with SMTP id a23mr4436355pfh.18.1487270822359;
	Thu, 16 Feb 2017 10:47:02 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.47.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:47:01 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:43 -0800
Message-Id: <20170216184645.6258-12-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 12/14] rpi-default-versions.inc: Use fallback weak assignment
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:03 -0000

This lets machines use ?= to choose their preferred kernel
e.g. 64bit rpi3 needs 4.9 minimum but default right now
is 4.4

At the same time it keeps the option for user to override
any of these settings via config metadata e.g. local.conf

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index e65a4ae..2007cc0 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"
+PREFERRED_VERSION_linux-raspberrypi ??= "4.4.%"
-- 
2.11.1


