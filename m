Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85CA7E006EA; Fri, 20 Jan 2017 11:16:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43F8E003E1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:36 -0800 (PST)
Received: by mail-yw0-f195.google.com with SMTP id v73so12030935ywg.1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=MWUrOgmi9pbTOAATheofD4RKPCd/52v1RE4/A8YAFt0=;
	b=vZHiTRqFUwGbw9LSAwwAvENGIyhXynkvHQKGEfDZ49SD5+LFtRtCQxcynOW4MFWh/c
	GDd1Y6uqAWjE+FZerzCRWmxouEriFcq7/RYKWj1MX3ZE8tBzJD0MevsDVYZkl9rcItLX
	JUF2FGE0qDkwp9J6bMSnG5YXbxHhUq3OsClUpEW+qo4oz61cjicMLhZRRllhqNitYhRk
	Lc58zEprWcG1djIMLjQ3sEqPzreC2qZSnEuhSRIX173zL+a2sorqrhThxAffl3Mks2tU
	DNlZzBjtx5DaLxTYvsCrHlJzUAuqEPBFPrG5Ld7TER1l2glK9kIPx64it5T/AiCMQtI4
	JsBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=MWUrOgmi9pbTOAATheofD4RKPCd/52v1RE4/A8YAFt0=;
	b=Xh7Mou2P8NoDxubxgEA42T7hPT91BXvCDdCMmb1GqALLVMpdWB8gjC0cxcEcS77APx
	SB7/kFPuPiLh1ojnNp3vbNcAo+T8z53fppsG6bVRAVHbnwBRVk8RR6QABG44+D5I5MxL
	dNL+S1JAtRRi0kOb3CL44w9Mm+oGjb1XmBRgd+7FJrGxhjoJEHfBpY8NntEhTkE7Y3cQ
	73wi2UR6SNkiQ84PhCNHAU2oG6dthyUyw12kvQjCIlE77HFWGiyCBdHgaX8n5D3EOYFd
	jM/UgdgOJDGG8/nmKe7NJ5SSQgQQ2AAzJDj0iJwDo67SyCchacNd955UPMxcG0BOARzU
	p8Uw==
X-Gm-Message-State: AIkVDXLtri9tyqtLPVrHKh9qHpvSgmjx+u6lJlDCjubCvjbaqekF45495lkIeUytGF0Eeg==
X-Received: by 10.55.203.74 with SMTP id d71mr13721279qkj.269.1484939795503;
	Fri, 20 Jan 2017 11:16:35 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e3sm6673488qtg.7.2017.01.20.11.16.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Jan 2017 11:16:35 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2017 20:16:04 +0100
Message-Id: <1484939765-30566-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
References: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/5] rpi-base.inc: Include dtb file for CM1 and CM3
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
X-List-Received-Date: Fri, 20 Jan 2017 19:16:38 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 9f20663..e069e70 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -13,12 +13,13 @@ XSERVER = " \
     ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
     "
 
-# Really supported starting from linux-raspberrypi 3.18.y only
 KERNEL_DEVICETREE ?= " \
     bcm2708-rpi-b.dtb \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
     bcm2710-rpi-3-b.dtb \
+    bcm2708-rpi-cm.dtb \
+    bcm2710-rpi-cm3.dtb \
     \
     overlays/hifiberry-amp.dtbo \
     overlays/hifiberry-dac.dtbo \
-- 
2.7.4


