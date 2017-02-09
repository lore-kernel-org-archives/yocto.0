Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E194E00939; Wed,  8 Feb 2017 21:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD854E00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:25 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id v184so16925577pgv.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=v8EtSKY6AsOMrNjJHV/ehhzS2omCYeZj97iq3BXdaaw=;
	b=etZcVF0UEeTQW8dAdOe/tRFTRdvJc8Mkd3no/MzyXiag+U5DdGDAWyi6w568EBgUgn
	CtG/81xqG22ZtYnpnMAUtWh+GwaE4pH/FpxiwIQZq5h2BEbyyDmC98TdAbaMRLWxO95Q
	uFIEQeO5yjIfsjJen9y4QPyDbVdpA9DYSTNvLdJ81RgS/Ml+NUiPRRZqBkK7xXTI+IMx
	LwsFO71uEqk/QeumpTsFyVMuohWG9yc/KlvMtdc5pYMbBzDxw8cVwXr2WIFWt09FVB/W
	TG66an3bVsuzY+0gka8VEhfb629sC1fKC6XZLGZucloQLUIlJ/n915bDJtc98WCA3xYj
	+oYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=v8EtSKY6AsOMrNjJHV/ehhzS2omCYeZj97iq3BXdaaw=;
	b=EpVJwwcvAVsnSD0fkUjoIwyo+qqWkmlC6egS3+Ef/WRATZa2ExtUj7GENhu3cLsfe2
	8ND18tUQgCmhZE3bMAyUPMKLuRE72SQK6Ghbf63vv0BuUFbrk0Z1G0xPKqg/v4l/dMh+
	nj0wts950J4vOQxggoxY6ZnJJsTo++GEQY4GkoEgYPnaQ91tj0G7tQ9BFntM4UxYKQub
	yNG2HzAlN+5WtMcLaUL7cjehxcNKuNJqMhHxZU50NxfUKaWWZR0OW4H27unzqIhFX0Iz
	MU17nIBxEq2ix2orqc5WskNFVBCOsabsQ0idfYrR8jKlTd0NFdJlJXa7YZAih2bR1YFd
	WIJg==
X-Gm-Message-State: AMke39kVj3xdj7scMTmmZo3BmwmtlfWN4G5bQ0w4OCbg9tWeocQdXdK+GuitjoN8kxj/VA==
X-Received: by 10.98.41.5 with SMTP id p5mr1698570pfp.183.1486619365687;
	Wed, 08 Feb 2017 21:49:25 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:25 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:48:59 -0800
Message-Id: <20170209054903.31598-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 5/9] linux-raspberrypi_4.9.bb: Upgrade to 4.9.5
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:27 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index cffea1a..1f8fe11 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.4"
+LINUX_VERSION ?= "4.9.5"
 
-SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
+SRCREV = "fd03479116aebe4a9faf64e108b3ab7eeb8cb71a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


