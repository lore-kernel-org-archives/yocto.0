Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D75C5E00BFD; Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7255FE00C15
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id x6-v6so2736154pln.0
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=YDJGWtP/9mqN4VHOCormlqRXHtFQSxO654LajoBxDuw=;
	b=YCjwpj7R86Uk7TxHYh0YoM3w7r9Vix0xdN/8nt1NkQQ9d4dyY3kWQwWg3o0o1EJr7R
	46TVT7utXN9vpByHQHmstIKEouRdlorMhrB6i4fQBoVHugMbcpPPfGYFsQH59EV/Y0Yu
	/0aCpls/6Wb6nS5cFSYNn7BuY7FRp3STbBxL1VqWuBTvnPn7euxku44GGyC36/nm9FqI
	ZctXb1dDgQhctmmt6T1rOSov/yCarR6F0Dict3n63xGpARhaowT/ZHMGaosb25A45DVx
	ivv7WgtpVi5Mqr67FP2JuyCTj0t2UmeZwHyzxdp9DGVwhOm/TCr7gSs0ai0f9DrUmpn0
	LiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=YDJGWtP/9mqN4VHOCormlqRXHtFQSxO654LajoBxDuw=;
	b=pldiJqnol4TOG4YmpFmv8Ppr2xeHbslmfqZwf/55O+P1VA+5+lt4Eb0oqi2B2S/GW2
	3xq3zHzGf4i8KfTj2aGV5z5wiBl7wVga6pPmY7BveAmwqtGY6IiusAKye8N2dPhzSr6i
	8lOgRlliYU6zT22OI4WXpJTRS8xGR/2V8DmaNXVgZ5t8/Hl/yPiHHs47gEJ+pqqhUEHd
	3+i17UCqZpiAqHY7GizSWRIOTAKr3EkCrXn20EJHzjGMTJwk2oofPQ2cz/UY9C2Ip0jt
	SwLuvtyIDlEmcEVgf189H/ySZ50IshDk1IlvLi6KVJt3IubSDlnXOP6MyLUDUrB5RzCL
	GsKA==
X-Gm-Message-State: AGRZ1gJYZ6Uk8cONjYQZhQU4K+0T2OL5rvkrTmXiS31LO+Lyo/n3h9iW
	LbkCIZ+nkshwklgpNi2bRkxnzX7F
X-Google-Smtp-Source: AJdET5e8xiLZ4wJtT/rpIhDwWy/zAsObStebrMgxSJbjeL7lOvnYhJ/VvUYFJyK25HvCGegifz49UQ==
X-Received: by 2002:a17:902:e00a:: with SMTP id
	ca10-v6mr11235842plb.166.1540752633933; 
	Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.33
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:20 +0000
Message-Id: <1540752628-10832-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/13] packagegroup-core-security: add few more ptest packages
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 653d87b..9cf233f 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -65,7 +65,7 @@ RDEPENDS_packagegroup-security-ids = " \
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
-    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
 
@@ -76,5 +76,7 @@ RDEPENDS_packagegroup-security-ptest = " \
     keyutils-ptest \
     libseccomp-ptest \
     python-scapy-ptest \
+    ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
+    ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     ptest-runner \
     "
-- 
2.7.4


