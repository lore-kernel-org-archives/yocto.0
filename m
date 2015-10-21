Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CA3CE008AE; Wed, 21 Oct 2015 14:12:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7166BE00814
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:46 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so109329498wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CYDRZtwxdB15CcDdZF2BmU6kmxpFxwgiaAK668Upz3Y=;
	b=iZOm/ae4t8fkuKDZ30bHYPujU51P4hrfnRPJut3+qqPhpXhim9NhKTAydZ/UMmXh3d
	u1LZlG5fXw2Coi3j/oyJMta6I58P+gDc7ens5yzitY3+Vrc2oyr/IaB/pQVMOIFRHb5a
	Z+h/mxxdfnSZfkcJPHXKVeGSnuYXHibtiwo1FpVyIUziblTqEv7vdlFKSJR/nEfQ6nOH
	aFHtVs0t8agI37PCXApQ7w3CSHbJ+4N5EW22EtRbZL5ny2X9fCZFxHORWkgzDvAYC+cL
	H7NT+dl4u7oT8rn/nIejwOVIXS8pVgLMsdqtNVCtafpoUDOnt/e3STn7B+vx7Pcf5+LD
	OqtA==
X-Gm-Message-State: ALoCoQk/Tol95+N1SwVBDrcB+AVEZsMh9QxlIXoTHjYbajclwQiGvyCblmYu9FWjzIAo2KCWC30Y
X-Received: by 10.194.6.66 with SMTP id y2mr14273565wjy.82.1445461965503;
	Wed, 21 Oct 2015 14:12:45 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:44 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:03 +0200
Message-Id: <1445461931-18349-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 03/11] linux-raspberrypi: Update 4.1 recipe to 4.1.10
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:47 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 637c5b2..3a3cf40 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,6 @@
-LINUX_VERSION ?= "4.1.3"
+LINUX_VERSION ?= "4.1.10"
 
-SRCREV = "2a2dc4e5e4946e75b98c71eacc3660e913dbd302"
+SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
 
 require linux-raspberrypi.inc
-- 
2.6.0


