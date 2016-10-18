Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCABE00C1D; Mon, 17 Oct 2016 17:02:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD4E6E00C1D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:45 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id r16so13654490pfg.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=euYTi7NTv2e0YCwHIB9G3WC6WHL/boN9mvYXxFKCmns=;
	b=YxTMhIyBa17RCxqZCE035BcGmAlEzkSSuMqrWpOoTYozjvWmmwzu74EMspfvtdVfmN
	GJXS2+9zz0XFNq8WVPvg9fWOhl8uvT2Tl+p8oY7KqC/YuCcrLn+tDAQOLMalX3SAjQTB
	iUZxz2RpGJ2CKpEzjl4Y3v6bBgVTFraSCEWVaUaSLsA8KcoIwI0hz7qUZZKFy6Yszeq9
	tIMGUICreYp6aC62ve2GH4XFVqkwNDiE2OAzbuncPf9xBLYn/1u6Bz39yuLlnXRArrbi
	ynyMNKYRzItPshyyDVy9KBRachegO7HccPRWqlr9pNUQDgJfbQb6SYTg5z0JyWn1Re6M
	zlFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=euYTi7NTv2e0YCwHIB9G3WC6WHL/boN9mvYXxFKCmns=;
	b=X1HBT1FA2kn1OYK9P4yPQxIGN6GOSL3LfZLaNTRjuLRf2RnSopNgRodrrTll1KcrTS
	ONZDxN4pb9GjwVbTryGdVhbWCtzkuMuVGGG2Wfe4CgZY7qSHFLup9lBS/tNvlKAqJ9Li
	WWlcPbriKRb/R0mJR5WaDH5DXue2FBsg0bg6PR6Jwa1GXh37o019jrIWbN+dkd6ibt/d
	FD4X6w+hZRPdg2cbgHrPf1RyOuwaJZKksDQ0YcURTp/4Tp0GTWyi5bOZ7Hpvw9uRIrL+
	W1Lzi5UL1UGG6ukVnC2QFLeXdFDZQZ7ggt6lNg4bH166bbOA48S7eTi7uhtiTwI17thE
	/2Rw==
X-Gm-Message-State: AA6/9RnzYFAfXzjtCjO7YDXjiLDX6F04Yns5zPt7+rPdUvdO3/aNkhAmmy+/qk+yMCXs+g==
X-Received: by 10.98.149.149 with SMTP id c21mr186906pfk.100.1476748965726;
	Mon, 17 Oct 2016 17:02:45 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:26 -0700
Message-Id: <1476748950-21342-13-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 13/17] package-group: fix tpm package list
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:48 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 8639acd..ae856c7 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -63,8 +63,11 @@ RDEPENDS_packagegroup-security-tpm = " \
     tpm-tools \
     trousers \
     tpm2.0-tools \
-    tpm2.0-tss \
+    libtss2 \
+    resourcemgr \
+    libtctidevice \
+    libtctisocket \
+    resourcemgr \
     libtpm \
     swtpm \
-    tpm2simulator-native \
     "
-- 
2.7.4


