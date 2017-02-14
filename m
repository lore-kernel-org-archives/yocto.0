Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC53DE00A4F; Mon, 13 Feb 2017 21:57:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D6F3E00AB6
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:57:01 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id 203so3242616ith.2
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=BQc0GCiVXjSeszZEn9bcH3tjkifaJs2hjm2rVVl+A0A=;
	b=X/fwF20ZUFgiSYA9M+NEN/HAtHgbduHlGC+ATVtob4qrmARjb/x3Y6Tovqe8aAMuJp
	rGT4S0H70a6fs6tGj27I4BSJoOark76RXEVS6dynrmt1tegGDhpQev7weKvaeBMINPFa
	P3aOPyp86CMYtoKUgQf8I/9kq0LCtQsfdV00//ai4hJnaTsnNDoUlC1rnMiIxpbcrmoT
	qwWjw3ixApce7MshSwvP1Qips4LNnuDinU3SQ56E8OjTLdWyK71riIm89iDbxl8qlkdV
	WVEltW7jTo+jUlsUkdBL9o9CDuPFU8RHdQMsn3uhjGlmpcCD1ElIwFL9x4HDLs8kNGL2
	KIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=BQc0GCiVXjSeszZEn9bcH3tjkifaJs2hjm2rVVl+A0A=;
	b=Gm2UhR+cfJ8c66ZC0eUm5aO5zR785O3OOI6qmGJFOCUQC6x3s6eYYYtu3/KZ+w4ARD
	oOLwzRah08VNaJeDOn4OqYqKJEFNgBFSH7RSIudcMjoedHVCK+4sf6A+ryqZ1iCv9468
	BB54Ju3+7ZyQsWb5jROfrVduKuagENGMpDBQjRDYKXSP7Mz7N6uSgL00QyYcqFFZkwRH
	Ds41s16BKXouD7sO1yHGk5KtrrG4GfjO7k1U+Ihi/C9s2a6iTZxQOteP0aRWu6V306dJ
	ZP9skpKCJj8JwzfCbfbkrc2VY3qauk+NJm77dS705zgjBT0L3Yi+detNlD3xAp302IMh
	kKzw==
X-Gm-Message-State: AMke39lD69eCEH+eY0982uOXucUQBRd+juQqywCHo8r39+iQTs5jqLsjIRTY/7wq/tanDQ==
X-Received: by 10.99.112.6 with SMTP id l6mr30562233pgc.33.1487051821273;
	Mon, 13 Feb 2017 21:57:01 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:57:00 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:25 +0800
Message-Id: <1487051666-20888-6-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 5/6] machine: Use SOC specific assignements
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
X-List-Received-Date: Tue, 14 Feb 2017 05:57:20 -0000

In this way the modifications will be used on all RK3066 boards.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3066.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
index d43a88c..e454b08 100644
--- a/conf/machine/include/rk3066.inc
+++ b/conf/machine/include/rk3066.inc
@@ -1,9 +1,10 @@
 # Copyright (C) 2014 NEO-Technologies
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY  = "rk3066"
 DEFAULTTUNE = "cortexa9-neon"
 require conf/machine/include/tune-cortexa9.inc
-
+require conf/machine/include/soc-family.inc
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 
 XSERVER = "xserver-xorg \
-- 
2.7.4


