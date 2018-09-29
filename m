Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1234CE00ABE; Sat, 29 Sep 2018 11:31:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03E8FE0097C
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 11:31:45 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id i4-v6so6081501pgq.9
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 11:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=WX+dCMeDTCXgVU6ScUh+rMuhY164O6ekI5hBRcS1Eh8=;
	b=PhuOtXLonCtP1k/NFab58l3G7Y4aqBxXpxwkAnrAClo16E/1eWc8kwJ2XnWWBd59YU
	EfyImvPaYHtilBXH4vuMm0L5/XlqfbExwD65qgCFjsgRYqvGZ8nfnROYQs858LCF2yel
	xHQ15bsEQIw4jU+yalKrRfjyMxPPenMkyaPfuJRQkn7HqaNUgNE6p7VG/tRW6IcrAJ6J
	FmYvHhWAcLgRmdwBuv5K7cJ0SG4pmBeV2xfSQQ4LLe6y6lLfqnsXL+I+65p5CInKQ9jR
	AkbWIZ42L/kWZZsoacjbKshTva6dG3aBKchH1NR/6PQqmX6rY8fITeF8swGIrk2IBfEI
	L7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WX+dCMeDTCXgVU6ScUh+rMuhY164O6ekI5hBRcS1Eh8=;
	b=MjhaDeB08RYx84acNynYtRt4eeo/nEO4hAERaKmSBFdA8Vr67exDzJ6OhcxQVrlgpt
	j4FlrqyX9lLZCPZOM/nDSYwHWj5elAAynH1CIFBPUEZK/8vUd8+eeAXRPKo1lDYZSKoX
	vaqywGzUhFwKTZ/mtlxpwMAZg6bwqmveyPwxkLdgEZdEu8n7FJurcKR+URWXyGONKVVE
	7U7FJoeBI8JrphcLUnMLveBqZQBjSwUi+YRnSF9C1GYK0+G7tD/wdf0uNE8qMgxdDtwm
	1SN86m2IlDcngNbKiRzK9ujUtI3GeglYCasyJXB9ejW9CciEYO4jD0YfdZkdXsTXeP6G
	ordg==
X-Gm-Message-State: ABuFfojYiuN/u1gyuGiW0d4//LkGhOzO0xuW/ZIXF3aCRdKgH0m31MWG
	7Sf+LKjn/uOGxuURIfnyOkg=
X-Google-Smtp-Source: ACcGV61Olw18XESF2bLboBZgId0CK65215XbFlkUy0nMMKrkxNNtxElwjoFOsdmp6zJyfwdHZu+upQ==
X-Received: by 2002:a62:7043:: with SMTP id
	l64-v6mr4110491pfc.65.1538245905470; 
	Sat, 29 Sep 2018 11:31:45 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	l185-v6sm17077606pga.5.2018.09.29.11.31.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 29 Sep 2018 11:31:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sat, 29 Sep 2018 11:31:43 -0700
Message-Id: <20180929183143.22778-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] packagegroup-security-tpm2: cleanup to reflect tss changes
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
X-List-Received-Date: Sat, 29 Sep 2018 18:31:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 13b505f..363367c 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -12,7 +12,6 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2.0-tools \
     trousers \
     libtss2 \
-    libtctidevice \
-    libtctisocket \
+    libtss2-tcti-device \
     resourcemgr \
     "
-- 
2.17.1


