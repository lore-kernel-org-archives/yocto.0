Return-Path: <meerkoetter@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B75BFE00C40; Mon, 28 Nov 2016 12:46:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (meerkoetter[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.175 listed in dnsbl.sorbs.net]
Received: from mail-wj0-f175.google.com (mail-wj0-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D0A3E00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 12:45:57 -0800 (PST)
Received: by mail-wj0-f175.google.com with SMTP id xy5so127174933wjc.0
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 12:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=b3RaQ+xDisvarwFZaZo6tjDY1WdAL7hNxb36PZKmZ8Q=;
	b=kL0wObGGKSNRQsaH4iUi/fAFdxtyOr7HYE5J92/mINj28Dt8OHBsIh7Eh5BmPJno7c
	e+GoQ/jGq0MgnSL2qW02XuOlQ8sx6aUOqyAuyYYChhHiUCSHiGtotFDJctSYDu9w+PKg
	9aGVKwHtrLm7l3fRpqnKqF3Dw9ixpc1jEdhfJMuTu0d/CZ37lFGEfz4Hn1LlEyAbGPg8
	2kgShVm1H3tANqzPHJM8ApmCnUDv+a4QVRr6XxKZI+XkwMd3E3VlWQ2BTYXPOP+7qKCc
	s0ScNRowGMvgW20uoL1EYDAyqra20ZRxBQb9sbOYnDddNae5Gy2FwHi2duSrXJKyE9QK
	y25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=b3RaQ+xDisvarwFZaZo6tjDY1WdAL7hNxb36PZKmZ8Q=;
	b=D1IgFvGZTyAxTtLMdd3jNjSXaZnOPGCmoa6wPrk9ax4uUq4okhxKlr+c5yQj6NQy+Q
	eqln7fuNS+hXVzBAtgN5Rvmbpm4vOHClR/wnAmjqWiJS+6svc4f9LvB575I35n64FmCX
	CTVBESQTTVeM8zN6PiHDNfVRMyaXSgInewZ1LqLTwSxFndFTedzWHNMD3HNcUkdYWEMl
	+SjGktwAi7Ql0kUCqKI4MH/0tvTwQkpDIuEWpHFn7nDbopuECAv4AItxSFt1fkMHnKtL
	ZVq4RUDzUQtWeUfVwSNQtrUReHbdlZmjgoXQ6svagxo91r0Lh75AZfaihbzwvtSPJaS2
	1IoA==
X-Gm-Message-State: AKaTC03NpWJlqLKhbYyHPE0Nj8gtKR5X3OWqaGZbMfpU5gii1YYZVszYuX3LyH8NlKCEHg==
X-Received: by 10.194.235.98 with SMTP id ul2mr20069469wjc.229.1480365955934; 
	Mon, 28 Nov 2016 12:45:55 -0800 (PST)
Received: from naos.fritz.box
	(p20030071EF27C90038C08788B208AAEC.dip0.t-ipconnect.de.
	[2003:71:ef27:c900:38c0:8788:b208:aaec])
	by smtp.gmail.com with ESMTPSA id
	191sm30690684wmr.11.2016.11.28.12.45.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 12:45:55 -0800 (PST)
From: Frank Meerkoetter <meerkoetter@googlemail.com>
X-Google-Original-From: Frank Meerkoetter <frank@meerkoetter.org>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 21:45:48 +0100
Message-Id: <1480365948-13507-1-git-send-email-frank@meerkoetter.org>
X-Mailer: git-send-email 2.7.4
Cc: Frank Meerkoetter <frank@meerkoetter.org>
Subject: [meta-chip][PATCH] Fix missing LICENSE field for u-boot-chip
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
X-List-Received-Date: Mon, 28 Nov 2016 20:46:01 -0000

ERROR: /projects/meta-chip/recipes-bsp/u-boot/u-boot-chip_git.bb: This recipe does not have the LICENSE field set (u-boot-chip)
ERROR: Failed to parse recipe: /data/projects/rpi-a2dp-sink/meta-chip/recipes-bsp/u-boot/u-boot-chip_git.bb
---
 recipes-bsp/u-boot/u-boot-chip_git.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index 60db3e0..a5f2624 100644
--- a/recipes-bsp/u-boot/u-boot-chip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
@@ -2,6 +2,7 @@ require recipes-bsp/u-boot/u-boot.inc
 
 DESCRIPTION = "U-Boot port for C.H.I.P. boards"
 
+LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
 
 DEPENDS += "dtc-native"
-- 
2.7.4


