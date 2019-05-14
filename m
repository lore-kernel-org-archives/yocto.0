Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1B4EE00DB7; Mon, 13 May 2019 21:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B49E00DB7
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:16 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id r18so2819497pls.13
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=rhDmhqyiqeaUz5ScNVOBiFPaavCgoLmwOU35jnC8ucY=;
	b=PaEINTRTjBhMwee+fFiaxGybQ9IC2zMJbUkrAJwnQv2sFgkcuzwDhDgKFq4CXLigDH
	nMiEvivF2r2jovbCa0eWtas+/4nbGtQYTu4c5KplTTzPhu4slYHlJOwXvFZauzmQzzkB
	TiQwK1ZleEE72kGOld3LJZn0oxxTDYVV1+0fS9j1XRJq3kCQIn8wrALUIef8A97TqoD+
	OVgcFcnBQhIk9R1CqmbQIROA4IUQ/FMhf2dt9FHO7Pm4tKJGqUbmyliitRF0HQa4G3mj
	5apbAelgAAniukcp9UuH+hlkV7y7LBCrn6YeCTUodx/k8/o13wOgcCVIWhxuplGmgKSF
	jUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=rhDmhqyiqeaUz5ScNVOBiFPaavCgoLmwOU35jnC8ucY=;
	b=kZNvAfyApH43mG/2AOoV+3/XMbvGe24gXXqYutzdpxOaPU0ZsmWiy6yOZ/WsFufnZT
	ho5K5/PqZ/5PGHUmYirn14dNhTY0nyv5V9TFjwScqrs7w/WOma3JPomyfwai8YE+/oBn
	jPX1v2mx6s/9mNxp/b40ZhGxuXOUpD/+Eb1HhCTFC6HbMyULrWXgSIafDgj8wJwUW5Si
	butFrosmR+BihmRMyIIkgmmV1nDC7Xd0wTf/eTK+AD/NjAMrpB8jMlAA/6B3mqpFr2Hv
	bXc9a6/aQ+7Ofo3wkliuFJjfqfbCupldKQitGWKtHgSeHdlrAG0z+JxFKd+dGD32SC5u
	cBpA==
X-Gm-Message-State: APjAAAXYf8UYdBtA+g3qXzSijlh5Om2ZcSqzsHbjX261VxfphfVdEihK
	fiooAwbl7V4RZYRRJbhDOtrZHaHt
X-Google-Smtp-Source: APXvYqxTTfsjesqFU0ySdKlS1AwjKgmrYF+o81L05inqvKEc77AwRQwDucrXwNnT3JTI24t3xBqk5A==
X-Received: by 2002:a17:902:e104:: with SMTP id
	cc4mr34119871plb.254.1557809236155; 
	Mon, 13 May 2019 21:47:16 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:d909:eb3d:d2ab:fd1d])
	by smtp.gmail.com with ESMTPSA id
	a69sm9095750pfa.81.2019.05.13.21.47.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 May 2019 21:47:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 May 2019 21:47:11 -0700
Message-Id: <783d6663bb1449b4db1ec23975782a311bd83e77.1557809019.git.akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1557809019.git.akuster@mvista.com>
References: <cover.1557809019.git.akuster@mvista.com>
Subject: [PATCH 2/2] oeqa/systemd_boot: Drop OETestID
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
X-List-Received-Date: Tue, 14 May 2019 04:47:20 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Matching changes in OE-Core. drop OETestID.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index dfd739a..0a3a2cd 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -1,14 +1,11 @@
 import os
 
 from oeqa.selftest.case import OESelftestTestCase
-from oeqa.core.decorator.oeid import OETestID
 from oeqa.core.decorator.depends import OETestDepends
 from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
 
 class Systemdboot(OESelftestTestCase):
 
-    @OETestID(1445)
-    @OETestID(1528)
     def test_efi_systemdboot_images_can_be_built(self):
         """
         Summary:     Check if systemd-boot images can be built correctly
-- 
2.7.4


