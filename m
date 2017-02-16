Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0680EE0050B; Thu, 16 Feb 2017 10:46:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9287FE00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:55 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 5so2658169pgj.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=IaF3WWKZQK1eB4op6H2xp0dL58yu4YSHI4O3AfHK7O6QYraQ5SsxyOVnoczlhvZaHz
	6wHsowo+h+2gW/ODUS6i23es2FrWkSR8ua/+qb+YNqEPOOQHoDahI8aZEFCUTesFS43f
	4Rk0eOrxcILUIzuthSGzNvOMaLAUoFFVwjKqavQRjWQ7cUWoyEji/Pl8Pi9L/bPKYreM
	lYn8glayloBaM5jdss+weMSmaUxoGML2s4brVQZzfcq2ZHWdvZowYisFK79AJ6/kHHrM
	gLi+qWnmuYtbYVydF2DqyeoSq5tmsQ6Q5389Kc8s5yC+W7tYzmEFnEsk0klw8oE9qRGL
	2+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=r5xlfJMuDd6ywM6AoBTdD9GOY6QbVfx3pJoI1C1dqBpMrj3MNEmRI/S4tpqrgZYzC9
	Uw8kY9HHCkqcvYKfhw3+xXnlL//iSDSwxz4R1/xumFXezWjaOaiMFbWHbbsIkJH7CUme
	XFMdY12C43JDQA48M1SnPxHpiOlQaUrmKX+XWA3hZsNP8rSF8GE1seDp2+z7Y12x7eC6
	hkVbbeNdk7x+EHynfgG7Up3MAtw9KynRWgSjKk4BfEn5DNvgVfWJkSFtg2PMuJK7D66L
	BbzWKInH8zzgaOdtiDTe8FDtvTj59NoCAK9oUKilgj9jWGqm31Yt5j1sm2wlLBNm2YGZ
	8Fgg==
X-Gm-Message-State: AMke39lNIaws51suMQCbJbWcWdnoXFrpywADITagEXlpfHPSzbODVJRoxwEIlE7CkA8etA==
X-Received: by 10.99.172.88 with SMTP id z24mr706504pgn.12.1487270814775;
	Thu, 16 Feb 2017 10:46:54 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:54 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:34 -0800
Message-Id: <20170216184645.6258-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 03/14] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 18:46:57 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 5598e50..cdcd726 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
+
+PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.11.1


