Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41382E009C9; Wed, 21 Sep 2016 22:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A68EE009C9
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 133so12095015wmq.2
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=Cy5lRYbQRBEKkoKxMFy4xTgHa09N1mu6i7LHDILGoM4=;
	b=uRFsQf67ws+AEIX08jYL8FylJGCD2/yiAX99VsoLzrLXuEW1p32yLD51n0BrJKbScT
	kb8ygQeONn5+SXrCwiaegJq7DjPYXGDZWAyS6OXjDycUnbQz5p8GbjjWzBW7Y0LkH6/A
	rHsCO0f29UT8wk/oVLD8nfihXqIKhfBIPEJxteCVodhtxOao5kDeSaIwlTvvCoCYjleK
	tz8ot+y9z3FyWQ43w4yl03GD29noCi2QVa9pxfodL4XtKUvoWg7dkwafcpQR/CL7UZTc
	h3w4Nxfm/L/EBEZjGumWRRS/CMcUnlNZbgy8tWnUno+niP7y7Hk+WQfg6PAXNwDcZWJX
	F9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Cy5lRYbQRBEKkoKxMFy4xTgHa09N1mu6i7LHDILGoM4=;
	b=U8Nz5hPt3Tz7nfLvfITZWtHtK2p0pi+aFgYy+FXaci+3QHXpZlTNR4ZYx8T5AwRfOx
	6sttEjVA/iX0541HwCtypZ7mDOR9JUgyTjnw/Fqvtx/1xXlBct+jslY3MX8d7I8rWXUU
	Mp4wGDHQU3iZyWtLaNAJ6cb9DDAKDRDoWoMMSN8IMM8DOS0L5lrGPTKGN64qeAKkXHyj
	2Wuo+3e5ZMSwUWwnVnff/TrSDk9MHsD2LgEpr4eV1kLTDQSnXk5zYLhK2SG+QOkD3u3Y
	GOnW+oUMXrQTypEib8WnQ+Nuo4TanN4bgin+oMM07/Psj5lPdyDj/mGrxky+duR4AZoi
	WlSQ==
X-Gm-Message-State: AE9vXwP5HJty2z4YRExuPns7uxa64Fci2IZSsRQB9ppHROKGYNq9fzo8qyh07UcO7IcI7A==
X-Received: by 10.28.164.130 with SMTP id n124mr5940498wme.105.1474523286404; 
	Wed, 21 Sep 2016 22:48:06 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:51 +0200
Message-Id: <1474523274-3883-4-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 3/6] vc4: why no framebuffer device?
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 recipes-kernel/linux/linux-rpi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 3eeefee..95a9530 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -116,7 +116,7 @@ do_configure_prepend() {
     if [ ${VC4GRAPHICS} = "1" ]; then
         kernel_configure_variable I2C_BCM2835 y
         kernel_configure_variable DRM y
-        kernel_configure_variable DRM_FBDEV_EMULATION n
+        kernel_configure_variable DRM_FBDEV_EMULATION y
         kernel_configure_variable DRM_VC4 y
         kernel_configure_variable FB_BCM2708 n
     fi
-- 
2.5.5


