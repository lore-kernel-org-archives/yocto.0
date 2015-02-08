Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2340FE007AB; Sun,  8 Feb 2015 03:57:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FACDE007AB
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:57:09 -0800 (PST)
Received: by lams18 with SMTP id s18so8615273lam.13
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:57:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=xvxWvGeED26d5fL6qrfTNI2ZmKQLj/UzjoGGh4T9ZVY=;
	b=PxhnfRVNy/OnJnfju420sYjMj04maTrC9pLXNUJwdA75DjssRo/i2yCfbydY30eDFw
	jdFM1FhY9afhGWvsqono5YISIxq0NTDsMj5Zu54u70SD56RTUPHF5Wb5MDFT32fD1YiS
	okRJSimRpKZAXHQGUC57U0JtAeUb2pQP2n7JBk0RocOANggG/ZQMcJzQZaT5Y/7el64E
	MF//x2NxSwdh2zSFCMUwaCwuAbZSh+SO+bkhvjLmGumTRp0cMYfXacM7vAwFdoSYzxZE
	YGqhqUaHs4jNtByvqr97H8Ik4oGKviRVk5UKO7cIuOceiRK/xSZmzDqwrbhuq1MJeOJy
	fJjg==
X-Gm-Message-State: ALoCoQkk/h2zMracHFhK3GuDA2bVyIULdi4yiKhq6MefgghmSjzy9m7aSZIK+bqE+7w6St5JYQ1S
X-Received: by 10.112.185.101 with SMTP id fb5mr11691971lbc.12.1423396627875; 
	Sun, 08 Feb 2015 03:57:07 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	jf3sm1434173lbc.44.2015.02.08.03.57.07 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:57:07 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:56:55 +0200
Message-Id: <1423396620-22510-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
References: <1423396620-22510-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/8] rpi-default-versions.inc: Use kernel v3.18 by default
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
X-List-Received-Date: Sun, 08 Feb 2015 11:57:13 -0000

Change-Id: If3ff46ae10b7bee2decead6dfa408833713d16f8
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index 1ca9701..bcf7828 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "3.18.%"
-- 
2.1.0


