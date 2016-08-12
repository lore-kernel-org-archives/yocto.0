Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193CAE01255; Thu, 11 Aug 2016 18:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A9B0E0125D
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:38 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id hh10so565609pac.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=+HEo1asr0Fx7XJml1smdEqsyh5itn6nvA9LTZXdjBNk=;
	b=Ass65CsMUn68710zYKHdTB/Bj55VeB1EcWQL2U5DtZ3NAeb7TyDLL1ZWuNC4p4Lp3A
	0nwnTLVWAbjVYNS/Rd4MJUdT3YkoWVBbmfILSH/h8//l5/mE6BPSrVzL0ZJPSRG2BrVU
	j/vmeFaQwBUqf/c5hOFuUxwLq2ZVGw2Oqc/IUHssUI4BLYMoibjnDR8zLig3l0J+CEM+
	ryAfOCY8wOqGS2hgiUiwpfniQkBMLtfkxMLUDFUHFrmf0SECtSsCrz11G8ozklQJuYVs
	CyWrbTYWpl7O9wIOg6fbTNDGrAdWZezfDvjFatzJ1hhNC+o6h0LolooWoj7EvW51iAG7
	ZNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+HEo1asr0Fx7XJml1smdEqsyh5itn6nvA9LTZXdjBNk=;
	b=DqRGPYHT5eVyC1ZLBPJEJQe4pfZyJD/fz0Ezk1JVeBo1Ykqj90s392I9I0pNFm/kEU
	mHwBo1lQh8yqocKLxNMJMD1TVmnecTZ1ZgbLPsszKPGYJyW529JZhtnJd4STh07YDTTi
	i2YbO7Mn5Wep7vPcTiFI5Ow/UXQM8kgUZoLmIVK/bA8HZzA0ZPBVpZnlqcGe4ePN45Ci
	WAEmZx+YL2+bbZbFffWqee+MgR55oGGixYKIyONuD3Kl2rY+slv3gnUUXzK5HPAXxHOy
	NafxHKPmH15i3rkTEoyn8ZJ6ikyVIYhxSeuw0cDllEX7ThS0Rz2emCAcJch9LFXgJ60q
	gqmA==
X-Gm-Message-State: AEkoouv61uY7YNBkNDJBMm1cpMpNtEfEAZ10GRiL0XpPiv3jTWCw+bagAQNM+lTfgkBtYA==
X-Received: by 10.67.1.35 with SMTP id bd3mr22395742pad.16.1470963997992;
	Thu, 11 Aug 2016 18:06:37 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:37 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:08 -0700
Message-Id: <20160812010608.31182-23-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 23/23] weston: Fix typo with override
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:41 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/weston/weston_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
index 70f4360..b964542 100644
--- a/recipes-graphics/weston/weston_%.bbappend
+++ b/recipes-graphics/weston/weston_%.bbappend
@@ -1,4 +1,4 @@
-PACKAGECONFIG_rpi_remove = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
+PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
 EXTRA_OECONF += "--disable-xwayland-test \
                  --disable-simple-egl-clients \
 "
-- 
2.9.2


