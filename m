Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B332E008AE; Wed, 21 Oct 2015 14:12:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE142E00AD1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:51 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so109031219wic.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Qf76hEV1DNxObuaPIVlhUlnkn2aOn3C7cJMqX+DRKWE=;
	b=SfsqbXdsmwyQx0FkL14hM5bWGCTPA/XM3ZvN0gH/vuyEubHMES6E5woc/W9DDEd1cF
	JgbvQBQQfypsQtjomCTJ60jQIl8SP5MWeHAXIPQaGRO8hWsZsAoOc4LFVYifwTSD32cL
	pP4debLkRqHkQMLeVOzGOW4bCECtuI3jASXshLjtWcwYAiKH97xq0IulO3JqQ0i7xCzB
	iXD42qHAsMQZzgUSbq7yqMLyt0SkgqU/XAYQqZbo4uIrxFMww/ufiRdLjMRDIJ/zGXL4
	u4QyjKNBax+f2qkcV0nb1TQSnuHc7QTV6yT8GrFd789WIIJnOcnFPQSZrUCIcEPqUNZi
	lb1g==
X-Gm-Message-State: ALoCoQm1ozG1JawBzFQnB58rVxjoLZU2dRFlOFMoBMxKFHlSj64ffJ0arFc+/M4gJ15/zfF+ns4S
X-Received: by 10.194.2.5 with SMTP id 5mr14998905wjq.153.1445461970847;
	Wed, 21 Oct 2015 14:12:50 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:49 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:07 +0200
Message-Id: <1445461931-18349-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 07/11] firmware: Bump revision
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:55 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index a5a5412..020f0ed 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "89881b5488a5a60088677333dcbd97e1836c0e7e"
-RPIFW_DATE ?= "20150630"
+RPIFW_SRCREV ?= "f7108cfdc715f79c5fd051fb4c3ae6f4b1b01f23"
+RPIFW_DATE ?= "20151021"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.6.0


