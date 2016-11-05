Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ED12E00A48; Fri,  4 Nov 2016 20:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61766E008E4
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 20:57:00 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y68so9655932pfb.1
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2016 20:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=+1cidhx/5XH9GKx9ZcW8QTwK1AkCDK32NTa25UhM4KY=;
	b=Gy1UGQ5WDVmTjVcmSTiAWZufrfTobKYXa75rZkjLp/Zs8urBTBPmh7cYBKgvfTDsbC
	43jclMHvpJFYT/dw/luJff29mR1fNzaEr6tweg9jPXZ/Uz18mMh10cJdKurwfKdN2lyf
	TK0b5FocSC6LArunwxjJTJsrBbG2Rzy0Tapxx886cMEhWcmo0ivDfnFKBdk2OWJ24iVU
	gGjzfaMdHIpXfwu+xjkI6A70D4YAcvZDKGphs8NzLeRt3GsRKjEGLX9mFglufrg44qjj
	mx3jUXR7NNmstph4yy5GHbqrAvC4kMifvcVwUNKt2Za+ANQSXCupOWg7wGpnAjKO/U5Y
	sCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+1cidhx/5XH9GKx9ZcW8QTwK1AkCDK32NTa25UhM4KY=;
	b=kSmj8ejnhlene3VzeXvQMUhub8cKkzhlEQdIMcLUbBcj/TX7hlVuTaHYZOZ4TUyySt
	EZTOL5mVbRmtXd0xDJaQ7v4oQri3+NJL/i0MGwXv/Ple3qAS4H5UWgvl5DsJMFXFK3fx
	78YweskrbWw9D3TbMp7Uw1VaUUX3AFQJSyedP9L8XRi/FdEhrwSN4b3682c8RhsNYoW+
	WQLPaO2jQPIMIuoCk9ktFP0OivAnrJYINcHbfXAKorVK617c+aK23KdjcVOK0pw5+clj
	Q1QOVkSmD6UVkFgCjtRU4pJo61X/FbAmYI71ihG3IKczYUUSIhwc8kjSZcL5IS6jMRmW
	O8/A==
X-Gm-Message-State: ABUngvccG3NXUdhiI6pLM9oaFKrN4NUBL8360kQOtYpfJ9PT+tAtYnjJqZplstU8/UZ5YQ==
X-Received: by 10.99.136.194 with SMTP id l185mr27127922pgd.106.1478318220452; 
	Fri, 04 Nov 2016 20:57:00 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	p20sm23472706pfi.78.2016.11.04.20.56.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 04 Nov 2016 20:57:00 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Nov 2016 14:56:58 +1100
Message-Id: <20161105035658.9590-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.1
Subject: [meta-raspberrypi][PATCH] rpi-base.inc: Include pi3-disable-bt-overlay.dtb
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
X-List-Received-Date: Sat, 05 Nov 2016 03:57:06 -0000

This is used to disable Bluetooth and restore the serial console.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 3364516..6657aff 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -36,6 +36,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
     overlays/w1-gpio-pullup.dtbo \
+    overlays/pi3-disable-bt.dtbo \
     overlays/pi3-miniuart-bt.dtbo \
     overlays/vc4-kms-v3d.dtbo \
     "
-- 
2.10.1


