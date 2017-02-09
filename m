Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CD45E009EA; Wed,  8 Feb 2017 21:49:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41571E009CD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:24 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 204so16933392pge.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=Xilcdj+O+SwYCeKBcAFJDB+1P3rpz+qhI9QSx668VNOUkPjuzzTXgTe3lWKxEHUiFV
	5MLwBpd3nBUKS4rSkXKB4+Tbg1FzyX7R4ORViyAKJB2qdC8xMUeypxcF8QNzb5egmXhf
	RGAIUG2j+Wkh8slaqwFHjk3K2SdvIeEQs+1SuzjPQnIkEJkqQhyuRA4R7VYVw9vgOGAj
	YrVAQRUdJzwk1bklcvVeu+VblQU8XxkrRsg4USSnvzNqRAiZgXsEuci3dbM+wHP5+OJ3
	ImirflcEdTqdYiQvFfb1JSRLKip+Y+E2ShjA3l9+lblOId8zFRwu93PjY1ixh4d7aBIO
	GFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4Krkfq2672Dinz6UpibRh4r/bZWDp5bAQ9CWTMVj21U=;
	b=BJ4LrkDBdK5HUqF0aGG9GIWYogewNzlIrIRPr69NqLRS13SytUOi+Du3GouTRjzrj4
	80uZpVFIRw48+I4s0eEfYA+BUSg9SJVvgpEfRAux3ynipEuNm6EHvaJ3gJ/ImEQh2v2M
	3FIesiIUbDEq7tHd3GzaUDqFhxyLkONqiBAN3BWzBM5QoUSzh9xTv0CMSfGFuEOWxW+p
	6y/kMGChk8QQGnLBeoocQr+4X03ulJnui/YLM9r4xxYDTEEt25HiDWHW74meLz/pB0od
	huL1cBT8DZjz3z57P/+HvYCgzLT74gmDA/vkYKPHsjyfEkJyoT321RhN/SleEEiitueO
	a7qA==
X-Gm-Message-State: AMke39nyS7UeNKBhPKnr47fsw/4e90Fz8fLzvObQ0EYypQIdmTJeA0AjW/g+sLFDypOpcw==
X-Received: by 10.99.217.85 with SMTP id e21mr1851240pgj.79.1486619363875;
	Wed, 08 Feb 2017 21:49:23 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:23 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:48:57 -0800
Message-Id: <20170209054903.31598-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/9] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:26 -0000

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


