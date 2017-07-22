Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFCDBE00BAD; Sat, 22 Jul 2017 15:40:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD9DE00849
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 15:40:44 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id t78so3665006ita.1
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 15:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=co1ARDaz/mgyLNixsbzSGyb4bgpJMQPDqKyFIRqM1GA=;
	b=bHN0rXVy3tlKAIW/1z4qL0pA1xfkYdKeZ6Wews6yyWZn+Mn4sYra+AI0EBTl6eiiGZ
	eja8Tfs+/yK9+bUXgIUf2P0YYpIPLJnmstWy+C/wE75O565XI3zxYTy+2H7fBmYyfz7D
	FKfHgoFM2698yW0IqpwULbp7xJwXded3vdduMS4LZHubhQc0xJQJmzReBdu9/rawOZBG
	pEbFAkAUj0kAd4vySiMrx7XxHsejEgl0VfGXfH7fAeAd13g2BaJawwmvS1hueN8c9Hes
	DdSZBn8esP+QECiXs9xTpIKLtE9RA/dkI9ilbk8TYgecEHGGCM/bgKrhTnH6Q25m/AuO
	9I6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=co1ARDaz/mgyLNixsbzSGyb4bgpJMQPDqKyFIRqM1GA=;
	b=oZy0eMEn911T1luD6gWw5MuUAxDhwAnTycNn/+egwrA/yYYL6e8zIxpAXNIt72tFJs
	GqLJfVL6qcxqu4d4nWcFgmineEXGbl+angzf+mmbUESIAAS88tcj0ShqPfbJKJ9MODDZ
	CVUakcl5s/54yi57GQLlC2+fnVUmXuXpQrtopE4BLv6kjSCenWHPL65xNw/Zb4eAERfn
	HypDpUscMi8fzIVSapUA5Tyd/qCebBCdpXMim6Q+wNFCOhgP9tqjg33R0cPSI9fdA6Yg
	HNV4r4aIoG+N/RuDC/moRTI/9mkcwvsHd0geJWZcZcXGECa3hFIpD6KIOVN3UuHOxjcd
	nHrw==
X-Gm-Message-State: AIVw111+txPrqgiGAH4Gzt8uTK6whd7E9moD2+/MzPGq4rmMIx++SXiW
	OW10rhdBJY0qszcZ290=
X-Received: by 10.36.204.131 with SMTP id x125mr3027389itf.124.1500763243637; 
	Sat, 22 Jul 2017 15:40:43 -0700 (PDT)
Received: from linux-uys3.suse ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id
	y12sm3930490iod.83.2017.07.22.15.40.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Jul 2017 15:40:42 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Jul 2017 18:40:32 -0400
Message-Id: <20170722224032.1963-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.13.0
Subject: [PATCH] u-boot-rockchip: update require path
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
X-List-Received-Date: Sat, 22 Jul 2017 22:40:45 -0000

The oe-core recipe was updated (2017.05 -> 2017.07), this recipe needed to
be updated to suit. However, this u-boot (from rockchip) is still at version
2017.05.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index c0b1ff6..1f4a644 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -4,7 +4,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 require recipes-bsp/u-boot/u-boot.inc
-require recipes-bsp/u-boot/u-boot-common_2017.05.inc
+require recipes-bsp/u-boot/u-boot-common_2017.07.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
 COMPATIBLE_MACHINE = "(firefly-rk3288|rock2-square)"
-- 
2.13.0


