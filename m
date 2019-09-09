Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E14AE00DFA; Sun,  8 Sep 2019 21:16:36 -0700 (PDT)
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
	*      [209.85.214.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73774E00DDC
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:33 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id m9so5947648pls.8
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=C8oq9Ku1I8oAuy1+aQP0aI0bASeNz8hVtfymvBFMEZY=;
	b=mq5Ks9dwvVEefq+A2w4okZZd6xrDitOSdFvIDdDGM+zJ077CNTqQWaFdYDjwezfyET
	k1OwF/LmmQPCqatQuCuhADECStCRRWR4wg07O4QD6/VqNtMDCgAIdiqJGI/W4rwgT5I8
	J8dL4Fza2dOAuYoxX7Z7qbcPPxAOYuDktUxiAaW4s9X7wFGL59KU2xfnKNL2otqv6o/O
	Kpnw1G+LRkoayqmjMBlgXM6nFqbGZF+J4N8PsuU+QVCPxy54x3ijyOc6BhakobbR3fKC
	NtHHzC3rMn6GN7teNmtW10xzXCUEN4MvC8arG18GoG+fcqU6Sag5ZVnZ2T6M3x4zYurK
	VNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=C8oq9Ku1I8oAuy1+aQP0aI0bASeNz8hVtfymvBFMEZY=;
	b=KwjN89AT0kM4e739E61zyy1xMogiPThYKF488W34Xqcu4Qn43M9jtaAVZivzv85X61
	o7UKsib34ttNj+myv4LVrOjRjyQut5AgrN36M77O0/KuosTHnH4YTeWTWiddno/zhDKO
	YgCyEbtaQyUGHlP1do34LLQbx8vEcCI8tYlqH+mxnSl7+ajXD6YCGM60abft6RgC6FuR
	jWyBHmUbXWnjFtin9BUBXWw/ZcYqSgzIWqfqAK7do6R1eBCTGhfLM3ppIzvL0wXG7VXp
	6DnV05yXznxrlz4VJRYW5hqNqKuT5jYNU+SLH6VkyqZ12H/UlW2VQnZ4aYYTtkSdw9KH
	tBuA==
X-Gm-Message-State: APjAAAUp8/rO7aIkvUqyiPBEkHr0c4YBpU/LXROu6+R+TuG5i2tl4SwG
	Gh+sRK1ScZwjvq9qtF2MZWcK6IMo
X-Google-Smtp-Source: APXvYqwpCNsBGe4LPLBFAS8TKKyiUAIwRVTrjnlC8wMbPwawN2OTYigpXSfcGrmobRS0cP9M9DluoA==
X-Received: by 2002:a17:902:7c88:: with SMTP id
	y8mr21948733pll.306.1568002592876; 
	Sun, 08 Sep 2019 21:16:32 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.31 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:25 -0700
Message-Id: <20190909041628.7934-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 5/8] tpm2-tss-engine: update to 1.0.1
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-tss-engine_1.0.0.bb => tpm2-tss-engine_1.0.1.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss-engine/{tpm2-tss-engine_1.0.0.bb => tpm2-tss-engine_1.0.1.bb} (95%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
similarity index 95%
rename from meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
index 0a8d54f..8825737 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
@@ -8,7 +8,7 @@ SECTION = "security/tpm"
 
 DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
 
-SRCREV = "a81d44a8610e28e5987af64f8aae16e4a2d09eaa"
+SRCREV = "e1bbabe29377e45282d753a1b103625c420a19cf"
 SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git"
 
 inherit autotools-brokensep pkgconfig systemd
-- 
2.17.1


