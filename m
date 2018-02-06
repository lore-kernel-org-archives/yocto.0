Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB8EE00E05; Tue,  6 Feb 2018 07:44:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
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
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F3F1E00E05
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:44:02 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id l18so1237971pgc.5
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=+XYw0/TqBZ+GgB5TJ7ICdj9tAwBqMhTGsk5eY9LOEe8=;
	b=ep3UTqNxafURMO6xYoqSkFtH8Ly5ZMzMCWLFsi5in4OS2osZBjg5/AGf/VBTlYtk3G
	p8t+TqPetQ623txOy6BLwj+9Z69k33vI/4wkU7d4NAGZH9iE++CzXnwBLR2sRxkBTnUi
	tHN8Layoz56E6h67srP/TUlxhItl2VSakGpg6tkkeyAiQYxpsfXjqgs2HvMHKDSDANSy
	SgZU6cwI6/ZQ3uwn5lHprKwoy6rJR7Bskc3ubji5AZPoJn1RDj3KypgJx5f1vjxh4lNL
	lC4vAO+ZegVWXQKyyRwkjvacQsi+p4Vf4pCtVCJWfyM6GOSam3DKowedek9YI5DQKXj7
	yVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=+XYw0/TqBZ+GgB5TJ7ICdj9tAwBqMhTGsk5eY9LOEe8=;
	b=X4n2czXiD7PHpw0J98MMBJCACWlpYBUkn5k/4+Qz2Zp816qjPtzENXd4c0wKIUS2CJ
	1LinNDGY+xIHjcIJ4QY7S3D0Cd5eWAer3znIXNsnx0DQ5IbUxIucksYHedZRw+e9U+7f
	udQ2TGlmexLxwEttgaBvoK2QtlDkn/GVt2ZWcDWSYrRyIv5MWSFVq6V1ZcQmLM88gdJs
	vS0qQqIkpnmcD5KEDQTTdd/DVGmh6h+1lbLMkj4ftmFO2iNVh2fuerPmVz8TEoXiVvaV
	eFXJlM6J5FRm60L1vsL0Eq9XAYki23wEQ09FuKkK5WZ956+91m5PqwT9tPNWOxc84Fwl
	oQTw==
X-Gm-Message-State: APf1xPCQeC4zjSBTOxiij94WqhwoJakrAA9d/3XhmCy7WbR3DGwQ9Rxh
	1IZ9hVwIgqufyjKyJudFzeQPOw==
X-Google-Smtp-Source: AH8x227EoSplP3TXYTzRXqDUbEqhZ0CZupdjAi3cIYyzL5Z0y1rXHpqzrAdsmM4iq0lT8Q44uQtMpw==
X-Received: by 10.99.60.86 with SMTP id i22mr2246867pgn.399.1517931841844;
	Tue, 06 Feb 2018 07:44:01 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.44.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:44:01 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:32 +0530
Message-Id: <1517931813-13010-11-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 11/12] tpm2-abrmd: update to 1.2.0
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
X-List-Received-Date: Tue, 06 Feb 2018 15:44:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/tpm2-abrmd/{tpm2-abrmd_1.1.1.bb => tpm2-abrmd_1.2.0.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_1.1.1.bb => tpm2-abrmd_1.2.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb
index 27e2408..a5d6843 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.2.0.bb
@@ -16,7 +16,7 @@ SRC_URI = "\
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
-SRCREV = "c2ccda956bf15165770682dd5c578c58ee5fa6e2"
+SRCREV = "59ce1008e5fa3bd5a143437b0f7390851fd25bd8"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


