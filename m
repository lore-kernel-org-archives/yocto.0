Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E271EE00A28; Wed,  8 Feb 2017 06:41:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CD1E009DF
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 06:41:04 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so15359592pgf.3
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 06:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Zlkt/jX4/3obQvnErjvqqlTP5BYUIrlcDsWbH/r73U0=;
	b=penWHyslLwKG0/+EmrAT8jURqVjaUYER9DnL0OMUvunYluhOp13lut2YDGePm1jepF
	tQd0Lr3deNFrn4bZTFJsUIpnQmilJjWHWcCjRUjPsuAAje8yvTJUMaYeTaCxvqe8c4pN
	tRo7DOVbRi0cZjSbCtkcfSmXz29thYctPunu7ZbiFlSWVWJxmx3l+N1HF3cZMYfwv6qs
	gwZhy1V6l44MLy0jlaBFKNHyw9mdYP+NugCFzjlK1+Hecau+C7vl13LKhTuJhDKO2jVR
	rw7uI20Sb1YxAj4mLujmsbQfvbv6KnaXhtWveiPR6F3Laoyotdb5XPP9eB25WYA08eHy
	/atQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Zlkt/jX4/3obQvnErjvqqlTP5BYUIrlcDsWbH/r73U0=;
	b=BL09OuGzhdjvrJDDHY0tdSPTxmROihQIVCTMWnZzpd3ojW1GrHfADH68QNCxEXMuoO
	G/txR08+sGDCWehNKyUItHVd13QVlnpfccmQIvf4hHKElKifqvbksFy8VobiD/0O2e0t
	+bnWsvyBDyWHwbvuzENqICfV9EVLXNNPGWA/j8J8tCQRKuXKLVIF9fSxdfbgUNW62r2n
	Tkz+laHLTvRUk11Fnh5UnvcdXc89oRrzdBhlu4paf016dS5pWCEqzuXKVba9bhnxXYMI
	FV2Opglz9LK4XxHoiacEVtb2X8Mew34bvzvxh/ezJH6wE4VNQmiKuY+KQ0i6/ih+pOV+
	bQBw==
X-Gm-Message-State: AIkVDXK7+3yPClXKLk6tLZOpXaZEGlIO9gdfwSVKv2dDPcR9AEU+1cEi3ZjRucdjK6fLAA==
X-Received: by 10.98.218.9 with SMTP id c9mr26379780pfh.99.1486564864616;
	Wed, 08 Feb 2017 06:41:04 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	p15sm21016966pfk.58.2017.02.08.06.41.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Feb 2017 06:41:03 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  8 Feb 2017 22:38:19 +0800
Message-Id: <1486564699-6001-4-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATH 3/3] recipes-kernel: linux: Add mainline kernel
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
X-List-Received-Date: Wed, 08 Feb 2017 14:41:13 -0000

Add mainline kervel support. Now the version is 4.10.-rc7.

Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
---
 recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 recipes-kernel/linux/linux_4.10.bb

diff --git a/recipes-kernel/linux/linux_4.10.bb b/recipes-kernel/linux/linux_4.10.bb
new file mode 100644
index 0000000..7abdc56
--- /dev/null
+++ b/recipes-kernel/linux/linux_4.10.bb
@@ -0,0 +1,18 @@
+# Copyright (C) 2017 Eddie Cai
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require recipes-kernel/linux/linux-yocto.inc
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
+
+SRCREV = "${AUTOREV}"
+LINUX_VERSION = "4.10"
+# Override local version in order to use the one generated by linux build system
+# And not "yocto-standard"
+LINUX_VERSION_EXTENSION = ""
+PR = "r1"
+PV = "${LINUX_VERSION}-rc7"
+
+# Include only supported boards for now
+COMPATIBLE_MACHINE = "(radxarock|marsboard-rk3066|rk3288)"
+deltask kernel_configme
-- 
2.7.4


