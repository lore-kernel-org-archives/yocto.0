Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AF71E00AA5; Mon, 13 Feb 2017 21:56:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A347E008D0
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:37 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id r141so3243302ita.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=zhcFWImrT4zExVJjoM3Kzqh5gW5qYIJPZwIH5YcIDpQ=;
	b=amZC+rOTXnwR50Rku+su/4LYm4xXR87yZn1aj72RRyRYzlDas1cTIjyugD/wrtca/G
	EYU5+0b3or68XEKNaY/RYrRgf3vpyFnFZSEdU2iNhp0MjuWtAH1y30ZN2zrrpwQnLfbj
	xfX13/etlABxoukzKU721yYVDdSF564qLNR0cY0bmi/5AiITNe1zJb5Soh64AsJAwyhk
	XbEGgJ2GY1ZjFIXPWSyfg99jY0Kuhj9XrAE/4hPfEX8f94jQPxnqcgCdoMUdBGcNPMmb
	+T6DiRNgtKw9MnR2iF8h83Q7NrBUq1g7+IrrlaUwACGqxUcZaRso7telxn43hxMQLx7e
	S6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=zhcFWImrT4zExVJjoM3Kzqh5gW5qYIJPZwIH5YcIDpQ=;
	b=ihOm+jdTst6YL67Lql1qRYGqGmKWP/5MPWKGiq19znmW4TXt2E4ja8X3bVFUo2itDG
	RasEv7SYF0mPcPX0I+RX8TL0MfOs3Im9z5BBuGvotngT4ldX1zCyGgNN1IiCoCXwVabe
	EmuwhWimcNJkStP6prMcYr6wA7zXEAog+QYhUE5Rl3v4f0XfVBBIEgdWqinx5MiCJzKV
	ZQVHEYrxknlHPry3IUWNLBDdvAcDjdOPybP+H1DOPrO0X1TEurkE5We3pmy+7b0DA06K
	oylKizWtEM95qSc2N7a4aBdXRqqwPQUz493a/Gq0JZJXUzbEsxE1UHfmr2qugni29KDG
	SSJw==
X-Gm-Message-State: AMke39lPsz8pEVEkpreaU3lSyb4OY9bYp+W5CV8w0hV/3wTev8nlgCG205DeW7E2il/kbg==
X-Received: by 10.99.108.74 with SMTP id h71mr30186366pgc.99.1487051797232;
	Mon, 13 Feb 2017 21:56:37 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:56:36 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:21 +0800
Message-Id: <1487051666-20888-2-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 1/6] machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
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
X-List-Received-Date: Tue, 14 Feb 2017 05:56:49 -0000

RK3288 support hard float and vfpv4. So we should use cortexa17hf-neon-vfpv4
as default tune.

Reviewed-by: Romain Perier <romain.perier@collabora.com>
Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3288.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index e6c19a2..6d4affd 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -3,7 +3,7 @@
 
 require conf/machine/include/tune-cortexa17.inc
 
-DEFAULTTUNE="cortexa17-neon"
+DEFAULTTUNE="cortexa17hf-neon-vfpv4"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
-- 
2.7.4


