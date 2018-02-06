Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A3B0E00E2F; Tue,  6 Feb 2018 07:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E1CE00E2F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:50 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id b62so762408pfk.10
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EIxXIuFkTGuIU9Yd/pAVgC3m/tkqV4NUrrcZjFEDhU8=;
	b=acngcslc5ewLLqSR0EH8xi7quurs4m1P2bdK82KQNVborqWe6IFZJbMGL0RwAPdBZi
	Y1hEAcu6VoBra6eO9riIKJQca+NQhdm1B4GpFSecfIR2zjh1USN0wYgumebNz8y3SqgF
	RJ7rPY59I+jPoxo1V43cbcseJ3G+AshX6/w+LTn0MFiUgN0RE3BJ8TR/G6L2nCHr++Xy
	hdF5GiILkfeDgOUnYEbTXisUoSDNWNqT21oE6A/J1Z9wc1QQaDFpaNyLZklvWmHdsUlm
	b0MHxWVseVWPOgIb03bRG8xvyPhMSRYHtJ3A91TTmClPY/qjjm0H84qvGpqFG7S0udP3
	BEIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=EIxXIuFkTGuIU9Yd/pAVgC3m/tkqV4NUrrcZjFEDhU8=;
	b=OY7BHQEqUQYvIqxKg+g9ZmiuyEtnwbs2Ag38S4Cl5ZdYzwlBrtGrnJTLtZPhTjIxi9
	U9Mu4YrN//jP3VQwVeLwoRW3rG/HilEpOhsxez1c02iCWhRKelSsJpAbWY30u3qDUtfo
	SRZnFcP+I0l7h5ucQbzuB9HuKLIXnlTljz8zYwyGlhnMcS+aND8s1O1aqnLGhtTtr3nF
	MZOKGwnuNdPuAmbNcW38G93DwO1PObrbfmkGvVqZVPLziYtgoVWgaDeqqLMHyvlRQnC3
	ULMoMeNHrRdJzfrmUA+WHwnNy73+Dy0TAUQ0pGjJJb9FoeHuJXCxhZfIykCvEhMi7lPe
	oBjA==
X-Gm-Message-State: APf1xPAlYCFydqb4REl0LCK9FRFhmcQ8qhJaIRPtrYFggXB0HpsAmUnF
	hgFeifDLWX8QM2LhqrZp6vk=
X-Google-Smtp-Source: AH8x227D960C/KiLCrfdSyjb9sC4qO44Su9oh4ne+EC4C7n84Z2Zmn9AycHkvQx/p+6mGIEnK1c0rw==
X-Received: by 10.98.30.1 with SMTP id e1mr2850814pfe.37.1517931830605;
	Tue, 06 Feb 2018 07:43:50 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:50 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:26 +0530
Message-Id: <1517931813-13010-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/12] smack: update to 1.3.1
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:54 -0000

drop git hash from PV
Use master branch

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/smack/{smack_1.3.0.bb => smack_1.3.1.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/smack/{smack_1.3.0.bb => smack_1.3.1.bb} (92%)

diff --git a/recipes-security/smack/smack_1.3.0.bb b/recipes-security/smack/smack_1.3.1.bb
similarity index 92%
rename from recipes-security/smack/smack_1.3.0.bb
rename to recipes-security/smack/smack_1.3.1.bb
index 4c41f6c..246562a 100644
--- a/recipes-security/smack/smack_1.3.0.bb
+++ b/recipes-security/smack/smack_1.3.1.bb
@@ -5,13 +5,13 @@ LICENSE = "LGPL-2.1"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=4fbd65380cdd255951079008b364516c"
 
-SRCREV = "478f68d182c5070f510482194d3e097b11c21907"
+SRCREV = "4a102c7584b39ce693995ffb65e0918a9df98dd8"
 SRC_URI = " \
-	git://github.com/smack-team/smack.git;branch=v1.3.x \
+	git://github.com/smack-team/smack.git \
 	file://smack_generator_make_fixup.patch \
 	file://run-ptest"
 
-PV = "1.3.0+git${SRCPV}"
+PV = "1.3.1"
 
 inherit autotools update-rc.d pkgconfig ptest ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
-- 
2.7.4


