Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A4A0E00A21; Wed,  8 Feb 2017 06:41:04 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E99EFE009C9
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 06:40:51 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 194so15362899pgd.0
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 06:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Ui/OOGfQKIgQJxsf8FOBOxTXLBUukiu0dJKfE0Qyo6A=;
	b=bCSjs7ZOfTIMitEA2gy84z9OKkAKCeYEoLv05y8pNAvnpedqrQj/6M6b9K7Oi9wzOO
	qdUg+xz1XNr7tx8RSA03jhBioo/Y+bUrHG9UxZKNVNAGqe0S/OeZTh5G2A3dNZhcQxgD
	BAyYhecEmrrRKxPlVAa0QWdkza1E+ad2cZILyHcPwHaSFIPgRxkG4DWUI6ds3q4hsEV+
	WInDXSYV5yISfUSfPf4vZVY/4azh4KrpWF/3wT4POByHFXlCAZhVZBvJoO3g+AuxBSi9
	7ewkJxGJi/YsMn6IrIDHbJh2JbE0QllhxqsPH2xsoSRqlwszzEqDkyzzqazPbaige+xl
	ddDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Ui/OOGfQKIgQJxsf8FOBOxTXLBUukiu0dJKfE0Qyo6A=;
	b=hEMuloDkLklg5NSmsKzFdImLJqHjD0Bd2hTJ5c9uHAAOtQMa+jt0JxtiVO5LT/+PNY
	euUQb0ycvHizPJfTecDsI5DyE6S3XIuYD+U+xZ9Icy5PrsSG/xVfdv9mJK8PS+xaeUA4
	OASII3E5bZ6X1/IaxZwI+3OU2uuulA0Jcb6tIuwGGoycAJkrPCgb4ag+8nJLDUTdGCpk
	cIopTGHR7jTuAU4u4z+V670elxO1/PJYl8uAc3kxCIenrIpoLi6TJNl54jeNJe3lkqKG
	QSrHgSqKp0srsyjkaxHqpBqfEHVblIQsV7OzcmJP5UnS49KbMN/4DD3k5FHLhjk92+VP
	kpyQ==
X-Gm-Message-State: AIkVDXJt01/ogxVGBjlmXkq7UChqPevo2PZ5jjU23syKSjkOZxFfjXKbH5BzT4rklQlvHQ==
X-Received: by 10.84.139.195 with SMTP id 61mr34235637plr.116.1486564850795;
	Wed, 08 Feb 2017 06:40:50 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	p15sm21016966pfk.58.2017.02.08.06.40.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Feb 2017 06:40:50 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  8 Feb 2017 22:38:18 +0800
Message-Id: <1486564699-6001-3-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: [meta-rockchip][morty][PATH 2/3] machine: Use SOC specific assignements
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
X-List-Received-Date: Wed, 08 Feb 2017 14:41:04 -0000

From: Eddie Cai <eddie.cai@rock-chips.com>

In this way the modifications will be used on all RK3288 boards.

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


