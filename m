Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7C39E00CF4; Wed, 23 Jan 2019 05:21:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E55A5E00CEE
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 05:21:10 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id t33so2266502qtt.4
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 05:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=0jHY/P1E7ceRLuzRSl7fhSWmLp4v7o5i8Iu3knd5+R4=;
	b=C7E2JbzgCHh8raYspeZA5qUHdm4UjTg78nBgdOxSZamPW96QURiW1GQ//1BwBmhFQq
	7wY31LH8MTF8kqe3fJh2M110quTmjkxN59miSsEci8RhiuZPbrQG+0EOX+BEIGgxpmOV
	Kp7eAwE2ztBB5z/rLEX4RCBLVnmmAEJSqRNvLrbDD/PdZ2yemZfmD/M/hI+3jpQv+/El
	cCKM0zZT1h6mJ34nzvcuBB/VSk+qR/fiUdtFiVbrRzp3tQ0DBw4vNIn0KSd0ukWN+mWR
	CToswZcJasiWqy9Oqhk/qxrScI4GVbzH1Yu8OG/vPAh+iV2gjqbG3Kai0z9HhDxrjkH/
	HofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0jHY/P1E7ceRLuzRSl7fhSWmLp4v7o5i8Iu3knd5+R4=;
	b=URKxiDaBKfoioNKS3wLDNXqEEFCiEXLesai6DZXCWVzBDhpy+LeiSegxxCDXtijcE3
	bCgYw+F2gIfRxuSYCb6DzoRPNBkZ8ixQ+HunR1PoKUvRp1EHXAoCCku9iFr187ptSc74
	hnXlyZGF+EF3Ustoy7ul1QVACUzf+f5Q+wnfI0UxMLr6Yb3IdT+vOOFHqC2k7Mohoi08
	JUsR3EtMIdUou8wiN/UToq9/NiR7fo9wvgrp6xcNt5YWVSR41nqdNyMY15Z0Jy0AXcEa
	Zi9S627lli9kSNW9LjYuRdjb8hQsfFZEcXHt89ciKxEnAF9TXQAyvJQrStFv/LsdKind
	9kHg==
X-Gm-Message-State: AJcUukeF3cmfjImr0+0UoDDJajOfFHhXPPSsLI+850XoOd4L/rbdSrbR
	MuM2/70emAUmbD502VJAOmrfQuWw
X-Google-Smtp-Source: ALg8bN5YQysZkBUeaXe/Kg3Eg7t8HnZYsz8gcI25q/EFlPfGRkI36VHIGoMWcbY9KZ3ntCBMqO292Q==
X-Received: by 2002:ac8:203:: with SMTP id k3mr2291598qtg.64.1548249670115;
	Wed, 23 Jan 2019 05:21:10 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	x41sm88942100qth.92.2019.01.23.05.21.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 23 Jan 2019 05:21:09 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Jan 2019 08:21:07 -0500
Message-Id: <1548249667-18624-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] checksec: Upgrade to latest upstream
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
X-List-Received-Date: Wed, 23 Jan 2019 13:21:27 -0000

More kernel checks, particularly arm64.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/checksec/checksec_1.11.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/checksec/checksec_1.11.bb b/recipes-security/checksec/checksec_1.11.bb
index 59a67bd..0ca6e07 100644
--- a/recipes-security/checksec/checksec_1.11.bb
+++ b/recipes-security/checksec/checksec_1.11.bb
@@ -6,7 +6,7 @@ HOMEPAGE="https://github.com/slimm609/checksec.sh"
 
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=93fddcca19f6c897871f9b5f9a035f4a"
 
-SRCREV = "a57e03c4f62dbaca0ec949bbc58491fb0c461447"
+SRCREV = "afcbaf954169771fc88ebba7727acdd2d26c27c7"
 SRC_URI = "git://github.com/slimm609/checksec.sh"
 
 S = "${WORKDIR}/git"
-- 
2.7.4


