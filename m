Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AE9DE00A53; Mon, 13 Feb 2017 21:57:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.67 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2E63E00AA2
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:51 -0800 (PST)
Received: by mail-oi0-f67.google.com with SMTP id x84so863294oix.2
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ibGBCs7BgklkhVJVZV/W66cRa2rkj7sr+K5xMbOBdf8=;
	b=tnz7HEOU5izBK3oWmwziDg5aOHxro4OYb3eA2cipQdGe6z+DGLaXY8d/Xn6b0DSGXJ
	wS/LTOatgnsyu8dvfiNCCAHTcDy8lDiILdTpvgwKjJusf7Me1F7zmvzGi5I3CkhCv7SS
	U+ti6tY+OD+qhRhLfxRg0anRjMhz0M/cFjarh3UX3XSOqa8eLjRvGi48R7ncbHKsV7Z8
	4SnuyKL2gyDdHs2sTVFfmylX4X0Kjze2kzo3LcbqvDuHlaRwbJgGccrf2LqULJbBoCb/
	h1O6wDKTyzNaM/lilpKMhHF5qh17C6HNHj3/r4uAAS0wVue0VFGl8Hz7dmqJGyXGO+px
	5Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ibGBCs7BgklkhVJVZV/W66cRa2rkj7sr+K5xMbOBdf8=;
	b=Ia11cRCJxrbXKqfSQVyxOA95HpZxJ5uPPyToFrnIc6FPFljoHPaILWbCcSlUkfUZsz
	bN6/2tRdeJrbM30DVVQDQMdDEwx1X4wpgRQFKPQMFbjvKEMzlMGiSQGe0dydY0v0kh9L
	FnSERu+bL0pnYTenKWyGfOK4ZbQGVPtneNRhh1uxPqssEWl07pGFVY7ppgNbDDHvkX6C
	6neJ3hU+k+EN26+G9GumYnNO3nKoxSH+GL4JkdBH+h1g6a5YhLRKigVmu+23qRaQ31Q9
	xCLKBqIoNF8OweKwKeDTaUUGN6OLI6XvG4g55rqfXWgdEWPNQQVaOnxUixMd7xKhowID
	Dk7A==
X-Gm-Message-State: AMke39nGdU3paE1t5NhxnP3NokKBcMU987Cgkno0dgu/ZvWGwtRYSUspa4QKfFNrAr4a3w==
X-Received: by 10.84.231.193 with SMTP id g1mr34555666pln.12.1487051810420;
	Mon, 13 Feb 2017 21:56:50 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:56:49 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:23 +0800
Message-Id: <1487051666-20888-4-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 3/6] machine: separate rk3188 inc file from rk3066
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
X-List-Received-Date: Tue, 14 Feb 2017 05:57:01 -0000

Every SoC should have their own inc file. So separate it.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3188.inc | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index 428392b..72255a0 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -1,4 +1,22 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
-require conf/machine/include/rk3066.inc
+DEFAULTTUNE = "cortexa9-neon"
+require conf/machine/include/tune-cortexa9.inc
+
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+
+XSERVER = "xserver-xorg \
+           xf86-video-fbturbo \
+           xf86-input-evdev \
+           xf86-input-mouse \
+           xf86-input-keyboard"
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip-3.0"
+
+KERNEL_IMAGETYPE = "zImage"
+
+IMAGE_FSTYPES += "ext4"
+
+SERIAL_CONSOLES ?= "115200;ttyFIQ0"
+KBUILD_DEFCONFIG = "multi_v7_defconfig"
-- 
2.7.4


