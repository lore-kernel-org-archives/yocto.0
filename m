Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1457E00C97; Thu, 23 Jun 2016 14:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A445AE00C75
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:54 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id ts6so7350670pac.0
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=uCcSZdLjGO0FgjWCkPoxNeLaZMJX2N8y7XbRD166SPY=;
	b=sxfyGgoBxoCisxzjzIyMmgEQTv9y2Bp/vb4xwKFBQQkRCB83rE27LLL2QUOOyUOC7V
	YMjysOFX7ntjBiEUqGEkuQ8WZDC2pXW33UkvtxGirzoe1L0NnJRbDwXVYx9/oxK/wXhw
	aFym+oLLIC7xbkdsTvQMl2jsjHw74T9bwT661ROVY3SlpFUDr9KB3vXcsYX+40TZAbzT
	gYzCQmpyhvBtuvxdpNU7tBRaoeKpJxXSojAo9yXswce6A6YeJ7z4InDG+Gzh9qN5nNCD
	xzK5KpGWOUAYXCrV7bvT1ZL6tr+ObRTijpUPBFWyJFEjjLaD3HTg9BJC5HhZWYdW+GVQ
	a7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=uCcSZdLjGO0FgjWCkPoxNeLaZMJX2N8y7XbRD166SPY=;
	b=Vxp+lSt/h5PD9zsvTrqjuKacru/WGS8ygzU9Ysx/I2hA+pBgPaHBtZVWbVl+a4HdrX
	8c/XcvC6aARwEZaLEPE8m8SzMVozUj3HuGP3kgWiaGWuc99ooeaFHWfpz82aaHViSbp4
	IZxnaZ+jR7vRuu0vfdkaiFWuAAoyrXCHDcA5NZq5vViCOsm1aaVtRvTPYcRYbF6mD2LM
	DQfNC3hCnDjK1gXqkygwC9HOyZMG9Jiupji6wNqef7CQdEXp/jhVALM1z1h6A7aU4lRO
	GcQi8S7dnhk245Mfv+L9XrJiLqyFco8mf6W/GbowMmll82uaBV2JM0Ci0upNdZyPk/wS
	5gHw==
X-Gm-Message-State: ALyK8tIOtC8AnZAzUJltSWS+J6x5QvjhkTIJkJWFZKE9gc51zb0VlNDlOJNxJvKgR3muDQ==
X-Received: by 10.66.63.35 with SMTP id d3mr1202224pas.69.1466717694497;
	Thu, 23 Jun 2016 14:34:54 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	q127sm2277847pfb.34.2016.06.23.14.34.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jun 2016 14:34:53 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 14:34:29 -0700
Message-Id: <20160623213431.5513-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20160623213431.5513-1-raj.khem@gmail.com>
References: <20160623213431.5513-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/4] firmware: Upgrade to 20160622
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
X-List-Received-Date: Thu, 23 Jun 2016 21:34:58 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index bf11e4c..9df6156 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "3816e1ce1e6ebc6d2bf0596dbd52849e16aa7e94"
-RPIFW_DATE ?= "20160512"
+RPIFW_SRCREV ?= "390f53ed0fd79df274bdcc81d99e09fa262f03ab"
+RPIFW_DATE ?= "20160622"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.9.0


