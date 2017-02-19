Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB9EEE00A21; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD35E009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:51 -0800 (PST)
Received: by mail-it0-f65.google.com with SMTP id r141so7428937ita.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=SuVMfzWS0uL5Y4PAfu0mrEdHPccM8plUz60DvwyX/ck=;
	b=kLfq2vJCfd5CPRIoE5PnxKf5+/f4gTr3AdAFhdNsLIlJjypPReLKnSvw0vzytA8Zmn
	DBT5l6zAQsY6BodGhZM1ZR7cZPfvHu5jHKlu0ccdtdIwanYqilQDYKapZVmmsfNobVDT
	pnSuDR9MdJA5sNKMsZJuC7MhyAM4TNP20x/CadW7L40+zkN4RpYVcc46JYwG2mdTgSxp
	AcKsOlU0TQzujwT7zda/jhOKx/Lm4cJz9ImKWl4xZKWYCKb8X06+B1q5QHoEa++PBWQR
	6tnKDs3ULb9gWc1+NMbh83BprXUTrssRY8mDxFVhMLrdnbVHwMNKyjmWqP3e7YGQm1Pj
	jzYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=SuVMfzWS0uL5Y4PAfu0mrEdHPccM8plUz60DvwyX/ck=;
	b=NWcrXsASrxQj0oWqvi16kCLDS9uBLXGGzD/gbHQVLf+EIxxGViItK9fhDGBlLI5yz5
	quFqiSDVU7XK4iWmKcZJzi5I9f0c62ezQ1I4lR0kmcQevUNR0csjy4a8anuk6R8sv3yJ
	3YTh4q+vJz4cfryFxOVRzDKVVhlFoxKCS5sNicTiDAzx5Y9nhFjrwl6qGP5WHRBFtjPl
	akTbsaVWGD0+pd98tG4WOl2U0AXjubyRlTWC6RmWw2kOWOX8yUUbsJMMGQX2Q4p2QJpc
	jZrYImOQL7LfQwPR039HE3cOx0uc7Mmn+JB5uaL9z8dKLYbrWT1aD+rb9Ji1tIN43YgQ
	/5VQ==
X-Gm-Message-State: AMke39mL36Ixszpxw+C15GMyPiEKqyV4Cr1qQARade8VXfDqw8XVE6qDuinlsJ1Za20FTw==
X-Received: by 10.36.34.201 with SMTP id o192mr3604499ito.17.1487472231448;
	Sat, 18 Feb 2017 18:43:51 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:50 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:36 -0500
Message-Id: <20170219024340.23664-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
In-Reply-To: <20170219024340.23664-1-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH v2 1/5] machine: rk3288: enable SoC-specific assignments
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
X-List-Received-Date: Sun, 19 Feb 2017 02:43:54 -0000

Enable machine overrides for RK3288.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rk3288.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 86fc567..769e5c1 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -1,7 +1,10 @@
 # Copyright (C) 2015 Romain Perier
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+SOC_FAMILY = "rk3288"
+
 require conf/machine/include/tune-cortexa17.inc
+require conf/machine/include/soc-family.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
-- 
2.12.0.rc1.48.g076c053


