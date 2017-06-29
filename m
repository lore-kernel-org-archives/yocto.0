Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A135DE00B57; Thu, 29 Jun 2017 15:52:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A37CE00B18
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 15:52:20 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id z62so1793779ioi.0
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 15:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=6O7QGxX16Buhoi43kQdRsJl67nvtN8asisqTlKFcFos=;
	b=EJaz+/5RjpMj/FpGhTto/joNO/GLXI0Y0wG4qpvoahc9DcbkuzL5wANqOP7xM5z0yB
	pODOaK85kudRmTbdwCXh9gA6q/+l408XLKiXnndy1pj1PcEnBnO6XWBGLvq/hNhwECB0
	ezDXxq/oyBeUaSPWEmgqJXoudN1tuXinwOB3g1xoudeAwQ48KEmBvTC+L9HHQP7uXFE7
	qEjOeoz6RCNK2UWrAucsHG6T5SfjvXSLqkOpbgw0UVliBjvB/srvv2Z72Of4xIcAjbYB
	GJsAWyRoD2w+6fAdHhGMVuE74fcPOuEesKyERH4G2kr4t4woJvswkxsVbywV9J2v6Coz
	xA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6O7QGxX16Buhoi43kQdRsJl67nvtN8asisqTlKFcFos=;
	b=gbCAPaXIILYnuS5QJGlZscVkI+oKRV4eFIer5fBq67a0mhN9SSDpov+hxAzgGsSHwx
	WaHADA99FIYSH60HC8Ex2un6C9QFq05iebyN6b0wmbvXVwUU49s+7m+MXEiFM8gu9+8c
	GKBYxp1aFSMRUysWZPq26Q4FrBysfLuts1NmbevVfkPwJKCGu9Eg8lvYfd9IrupAlbJr
	eQShV7VAj7jqbF+uI9ewqM9xQ63hvtrFNf3HheRVYrGhAdC16TPqQapDVo5LGWJbs6BZ
	xJ0GccPUk1r2HHYCJtAMKxAT/2ewDkRtBoCAy0DrIiX2cjev4T1D9w5i6gaq/ZV5iPAW
	Eykw==
X-Gm-Message-State: AKS2vOyoHQBULURh/IoaXfXgp0JfgRtDTrXHFErqJWNd8QgDKLA/oK6G
	/e+foX8ivmbcxRnur5k=
X-Received: by 10.107.183.204 with SMTP id h195mr20883078iof.29.1498776739496; 
	Thu, 29 Jun 2017 15:52:19 -0700 (PDT)
Received: from linux-uys3.suse ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id
	j87sm3364010ioo.23.2017.06.29.15.52.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 29 Jun 2017 15:52:18 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Jun 2017 18:52:09 -0400
Message-Id: <20170629225209.28826-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.13.0
Subject: [meta-rockchip][PATCH] rockchip-gpt-img: fix deprecated notation
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
X-List-Received-Date: Thu, 29 Jun 2017 22:52:22 -0000

The older "IMAGE_DEPENDS..." notation has been deprecated in favour of the
newer "do_image_...[depends]" notation.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 classes/rockchip-gpt-img.bbclass | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass
index 941bae3..aa8cbe7 100644
--- a/classes/rockchip-gpt-img.bbclass
+++ b/classes/rockchip-gpt-img.bbclass
@@ -30,10 +30,10 @@ LOADER2_SIZE = "8192"
 ATF_SIZE = "8192"
 BOOT_SIZE = "229376"
 
-IMAGE_DEPENDS_rockchip-gpt-img = "parted-native \
-	u-boot-mkimage-native \
-	mtools-native \
-	dosfstools-native \
+do_image_rockchip_gpt_img[depends] = "parted-native:do_populate_sysroot \
+	u-boot-mkimage-native:do_populate_sysroot \
+	mtools-native:do_populate_sysroot \
+	dosfstools-native:do_populate_sysroot \
 	virtual/kernel:do_deploy \
 	virtual/bootloader:do_deploy"
 
-- 
2.13.0


