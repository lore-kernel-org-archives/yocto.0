Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21073E00A93; Mon, 13 Feb 2017 21:57:08 -0800 (PST)
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
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693D3E00A96
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:56 -0800 (PST)
Received: by mail-it0-f65.google.com with SMTP id r141so3245013ita.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1rLyU2yikgaBPuqYkqmZSZvZ3fEcyREauMDRiwWVX3A=;
	b=dSyrib8FIckpsDszruR8Oe/WuBegXhxwgmNeFJED8Yl7qWpIF/K+0soiKXlxRPl0ko
	tMF0x9wnT4jpQMg/NGi9+03Jt5Fw2HyRp2O/8qjRHEUXlr9RkMWdjpTVZF4s9UO2xlMt
	xK6ivL5PospQT3tNqbrK5tFgbQJWOAb3BXgSpHykBSxMyf/PdZlgj4JxzfKhe7tcmh4T
	h8dyxT8Tvmiq8L7qfYQHD/IPVMe3s/fjiutuTNhjIIipCMTLuiTtxn1lw6CvqnP2JsIZ
	l+jAHcrIScZvx+5cdDTOvUq/l6glz6p4j3Wt5b/PT7vsrwFYefLqEoriVGrh7MFFAZt+
	nGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1rLyU2yikgaBPuqYkqmZSZvZ3fEcyREauMDRiwWVX3A=;
	b=ixtpZgAnPV+3tkYzq8vvbfI7YVZt954ASwyCTwmsPyEfDgtNYdirkwJhwldosgrV9l
	0h+BdtsvM/UTtNoEfKeSTmsA1DJuurG1bUkkW1QaytTodzPHWy/yDoxAl+AmjY/zKKzz
	q3Bpo/QLgiwganVc3NHq36yA5pS4uBU8Swe5wt3tSBhqSPh2n3Y8cPGhvqRUe1KaoYQM
	j2+xibW4kfzc7TRqoY31lwdlT4NKz5V7BXntfpJI6uKBy2mPPO3DMOb77mAFfUHMgfIY
	ZdJVGTc4zBoQtDPACCFy+jX+/Tc3N1SGpdmtadzQd/y8kMmZLUPFOrKYDTc9hY59G5Ir
	ycFw==
X-Gm-Message-State: AMke39m1k8PSrcwwMC432sUo7g+TK5bax19IiXOeAdmNFFnFZqHNeFjTJyc1aFEoTWWLjA==
X-Received: by 10.99.175.16 with SMTP id w16mr30804037pge.32.1487051815678;
	Mon, 13 Feb 2017 21:56:55 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:56:55 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:24 +0800
Message-Id: <1487051666-20888-5-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATHV2 4/6] machine: Use SOC specific assignements
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
X-List-Received-Date: Tue, 14 Feb 2017 05:57:08 -0000

In this way the modifications will be used on all RK3188 boards.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3188.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
index 72255a0..6a18a6f 100644
--- a/conf/machine/include/rk3188.inc
+++ b/conf/machine/include/rk3188.inc
@@ -1,9 +1,10 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY  = "rk3188"
 DEFAULTTUNE = "cortexa9-neon"
 require conf/machine/include/tune-cortexa9.inc
-
+require conf/machine/include/soc-family.inc
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 
 XSERVER = "xserver-xorg \
-- 
2.7.4


