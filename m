Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9777EE00A73; Wed, 21 Oct 2015 14:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC2FE00A7F
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:47 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so92737054wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=A/PxehYQujbIvP7Laf9itOBxBpQRadLAk3I8jorxDgo=;
	b=Q+A4MgPnfJnL0UERYQfTwpCxkWq9wNhp84Sqd3aMDbfFQiXMqKB4o+6qmL7bsVkCnt
	tIpfQ5Tf3zgQjIZeCuRhG5teXHn9S+VKBARICEwyDOZ4yGL9AvkUn4g6rgjfvZhdePWA
	KZhV4wsqhorM4XEbEWcSaivcTYwZBRQRmRjq2wIOIMEQ/Ff6TaBoE0oUgzwvPSMeqUN9
	i4g/AbVb/2p5QLKQwhbtvDV701/UH7QCREq19TtYF5kV5QnnYFb7PTNJVf9SGVW8Yj8z
	gHaGM9pRW4MHiPKoFq2S4ZAfMc7dr/nKaT9tmooiI+ldOFkmSAR+Vy4Pr05wT1RsiiZ6
	CudQ==
X-Gm-Message-State: ALoCoQloSiVerODABY+7iF+bnxxkYJIND0KfrIaKc2XJCpquVhL0EjtEECDG+wY73OT4qMjJo0im
X-Received: by 10.180.8.226 with SMTP id u2mr19895122wia.90.1445461966920;
	Wed, 21 Oct 2015 14:12:46 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:45 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:04 +0200
Message-Id: <1445461931-18349-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 04/11] linux-raspberrypi: Remove old 3.12 version
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:48 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.bb | 7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
deleted file mode 100644
index 71fba49..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-LINUX_VERSION ?= "3.12.36"
-
-SRCREV = "ee9b8c7d46f2b1787b1e64604acafc70f70191cf"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-          "
-
-require linux-raspberrypi.inc
-- 
2.6.0


