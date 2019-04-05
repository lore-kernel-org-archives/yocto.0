Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79EA7E00D15; Thu,  4 Apr 2019 20:36:51 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62383E00D07
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 20:36:50 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id c8so2470882pfd.10
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 20:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=caCzbVEEmkxcTCTtjVyYTsf3WZ4UaNKp0w1fQmBlRSY=;
	b=ZKDS+ukqnXV+Kz0O6+pVIUG01/4OVmT470sh8su6X66A+JDHD1nHiKqq3uhpU0GXGG
	AX9ALU5KUIz8i1e+Y102V19b0sus199Ffs0zuyZJAFTmL3lqGbP/8lxZl3UyE/pYzQ/U
	9gEST1XPirDi16tAenPsXwlEBNWQlr3fqX3oG8T/FOk9vRCzbfW3ZC02SiFiIimwevTp
	Uxi34mnmxSy9K06W95oOzzT0dFHIWk3UIXlFrgVfQah3sLmoKLpB5S4ECi1bwCrT3Bzn
	+a5P9Ycih7ghNGx9/L+siT1IltW4Xy8xKb1iAOyU9XY8nMD74kKtmK15t9zeF1zhtBzW
	RnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=caCzbVEEmkxcTCTtjVyYTsf3WZ4UaNKp0w1fQmBlRSY=;
	b=Uk8RIKBbawy08pz2eb2pzDB3Wvh0TE8+tHOVNqs3ohKS8xN1OXccTCZD1XCTG4d17T
	RGLU6NBZx7MQ3YuGoBDbNr8lZJ4hCrJWd31+bHBphGsYxEGO+hXvsaxaSx03bSbHHUs4
	cvgLc8m1yRQ/7ts/LD7CN83BSUIutswqucdRBalxzRMLnePenMR1TFpG4wp1ziIKtdBv
	Rg8/V46nLgSsech+UFoIdtbLdwah4KrOTkGgpmmw2ZlBnNO3FxBZlJrnSHrcruQ6QVNc
	ZnaKKiXseB9FzkUqBJgk64zHS1q+2tXoygWqeiPZRMx6VnCxzVrpSCpLLZn9r8e33Wet
	JvQw==
X-Gm-Message-State: APjAAAWmb+croLVqhtMAaez5m4AMHJBbQ/GEN7VsbEyJrwVOdTyNe8Sr
	oMqvIy+8mUbGKxOsAJ40fDA6+Y3lx40=
X-Google-Smtp-Source: APXvYqzvKd6iil/uPETsrS3L2PwKRNH97hSs72ao9J0585jltP9l1g4nC6RxwJudVWQq4t2z7gdTCw==
X-Received: by 2002:a62:458a:: with SMTP id n10mr9819363pfi.136.1554435409513; 
	Thu, 04 Apr 2019 20:36:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	c22sm17647898pfn.136.2019.04.04.20.36.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Apr 2019 20:36:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2019 09:06:36 +0530
Message-Id: <1554435397-21590-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] ccs-tools: move to reciped-mac
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
X-List-Received-Date: Fri, 05 Apr 2019 03:36:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 {recipes-security => recipes-mac}/ccs-tools/README             | 0
 {recipes-security => recipes-mac}/ccs-tools/ccs-tools_1.8.4.bb | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-mac}/ccs-tools/README (100%)
 rename {recipes-security => recipes-mac}/ccs-tools/ccs-tools_1.8.4.bb (100%)

diff --git a/recipes-security/ccs-tools/README b/recipes-mac/ccs-tools/README
similarity index 100%
rename from recipes-security/ccs-tools/README
rename to recipes-mac/ccs-tools/README
diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
similarity index 100%
rename from recipes-security/ccs-tools/ccs-tools_1.8.4.bb
rename to recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
-- 
2.7.4


