Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95B9DE00C78; Sun, 23 Jun 2019 11:15:28 -0700 (PDT)
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
	*      [209.85.214.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E54FE00C6A
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:26 -0700 (PDT)
Received: by mail-pl1-f171.google.com with SMTP id ay6so5535445plb.9
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=WghGu8hlvIfinOMR8rZFAwsRnFzOVH3etdWv9FSOTu8=;
	b=UJgpQcuZUDr37ZCHingUI0qP4rWz7jSMGGksJysgW0T0H7hvXbSxH8xwc4Vri68jYv
	sSZ2OoIaVxcUQvyCMk9wDK7CPMovQqnKJDk/pHIFdiQd59SQ2ZaEs+J8CY/OvVurBuDL
	xWetBCIWvmWJY2dOH+UlB4HNP4PUi26RB2vDJJpKPC6quDp8T8fHFwfGUd26ZsF9YBQw
	PfBDSu+bCuUOjS48ehjsqQqkm4Pxly3TmYx2KAi2UUsKfeJ+KVqvC4sOPmBVkjba1dXp
	+8pqBeuJaalKYtD1JhmNs7YKxXoep0apy9JXDI6lwlKI1fO7gx1C98eMQ8A/j9TNZWrU
	MaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=WghGu8hlvIfinOMR8rZFAwsRnFzOVH3etdWv9FSOTu8=;
	b=szHpSPLIB+DPXnIRM0bRndpRHik0Rk1uTuyIwfb0nhqfzm0GtUEzaKQ+0BuKKHtlep
	zPfdpkURN6nzKcQOzgb8njhr9of83HSQ1SXUKcWj2TR94874O34OaW9HepJbqGNKWIr2
	HGGEZ3/ZHp49VMBhy8xORyMeKUblhiMGBhtWBrRq+U3ty9MVLMVyg5ABCa4JetXNHFs0
	9AGZxIfbJKoJf+YD2sF1csgKU0c2w+i9zhRbiUmlnGujsKhscIeY8o4fngygkuJlKaS5
	y/67KXksNFpWy4oxDRmoWCFpyF90qhn9HZMceUChabl4W57oGUFau5zr7UUabWVhkxmo
	Oqqw==
X-Gm-Message-State: APjAAAUx2nF3h2UymNwonlXrsUjvp+MKRFe9jHIgTk5Iowp0OwifbYf7
	EytpwivmCynQeWDUqjsTRYjwThe2iPE=
X-Google-Smtp-Source: APXvYqzjV0/hlzXdYZgIHFuNajYKy8HJofpfX9VspVl5V/8hlUQX0VA+HNl/ssgfZbFE88gSGnv2bw==
X-Received: by 2002:a17:902:9041:: with SMTP id
	w1mr131048853plz.132.1561313726265; 
	Sun, 23 Jun 2019 11:15:26 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:18 -0700
Message-Id: <20190623181518.19564-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 9/9] tpm2-tss-engine: update to 1.0.0
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:28 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-tss-engine_0.9.9.bb => tpm2-tss-engine_1.0.0.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss-engine/{tpm2-tss-engine_0.9.9.bb => tpm2-tss-engine_1.0.0.bb} (95%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb
similarity index 95%
rename from meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb
index 36530be..0a8d54f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.0.bb
@@ -8,7 +8,7 @@ SECTION = "security/tpm"
 
 DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
 
-SRCREV = "bef89ec79cbb4c99963b0e336d9184827c545782"
+SRCREV = "a81d44a8610e28e5987af64f8aae16e4a2d09eaa"
 SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git"
 
 inherit autotools-brokensep pkgconfig systemd
-- 
2.17.1


