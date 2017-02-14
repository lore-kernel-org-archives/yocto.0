Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0367E009CA; Mon, 13 Feb 2017 21:56:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84474E00A16
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:44 -0800 (PST)
Received: by mail-ot0-f196.google.com with SMTP id 73so15181960otj.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 21:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=aiUYkC5fQePL1gvmqqe9pybuAhfAMQ6FeuuaS3YvaGs=;
	b=a+fpyfNre0Dnf/I+GFDHIq6yzAfXcYBOOhVRKOOTLP0uRmQX80LzY+Rl1MxT3SrDun
	QL9mGFzreyIFUk3URLbGCCbX5EkroQmRjSXhSS1Xw9RYhm4lwfwYag7QhevBofXiDj9z
	jPFO5dlKw+dxizG5vcpgB4wTXkOOCWq0MB1b3YJE6lXhEqFO05yEncknFfhj3qOnEs/S
	lS3X5+WxjcucbabGnFDwxDLva3VfCbBJ+a9h/m/geAYBeqn5MTvvO+oeTw23lcvDRQjv
	n/IJMGlogJDG+TuGW9MAFq1Skiu3RpEqnzNuLFiWSxfWbmjSDNeh84N5Eey/+W8XwLZk
	XZ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=aiUYkC5fQePL1gvmqqe9pybuAhfAMQ6FeuuaS3YvaGs=;
	b=UsWCgt5ffidBMFSaL5IoFQxRuEebAO/YmLJYTNZQ3V5u/swd+g9zcIBt9XQSTMPNFD
	sWCv7pmdaerC4JhaD2VOTdBM+mamWpjVL+D3oTxXFQNHZUH7nlsEYOSeE0qsW1PVF2y/
	xRYasfN/DMp7vx/WX7okX2NWuHNuubqLdX8trPR9XlvX9Gk275xiXoAP/E/ISy4uGIjx
	kYLDLLxNj5hezhpKW5sqgj6Jd0hRmh9S+pleVo/8aHsqsFgXa/JLTyUT8qhEpIzPKq6w
	kQjHUbNZEZKjojqmw2DwpvY7/pEHi6JRFqc0dyKJgHMjGl42gC28696SO57kGQ6jkely
	PuWg==
X-Gm-Message-State: AMke39nOtvroEqF46BglpN+AK5vYY9u5PEim0VeQ6ED+lIjnMQ0SJ+QrqajAJvoVJykRrA==
X-Received: by 10.98.208.70 with SMTP id p67mr30188256pfg.101.1487051803477;
	Mon, 13 Feb 2017 21:56:43 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	f188sm24158887pfa.35.2017.02.13.21.56.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Feb 2017 21:56:42 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com, twoerner@gmail.com, romain.perier@collabora.com
Date: Tue, 14 Feb 2017 13:54:22 +0800
Message-Id: <1487051666-20888-3-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: [meta-rockchip][morty][PATHV2 2/6] machine: Use SOC specific assignements
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
X-List-Received-Date: Tue, 14 Feb 2017 05:56:55 -0000

From: Eddie Cai <eddie.cai@rock-chips.com>

In this way the modifications will be used on all RK3288 boards.

Reviewed-by: Romain Perier <romain.perier@collabora.com>
Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 conf/machine/include/rk3288.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 6d4affd..b3726ee 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -1,7 +1,10 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY  = "rk3288"
+
 require conf/machine/include/tune-cortexa17.inc
+require conf/machine/include/soc-family.inc
 
 DEFAULTTUNE="cortexa17hf-neon-vfpv4"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
-- 
2.7.4


