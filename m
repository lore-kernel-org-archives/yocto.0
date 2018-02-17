Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7C57E0106F; Sat, 17 Feb 2018 09:45:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5A2E00F0D
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:56 -0800 (PST)
Received: by mail-pl0-f68.google.com with SMTP id v3so3413777plg.3
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=6JdV/zXzsQUdXXcthTPzj7quHTJ98JgDzAgOyhFCnCM=;
	b=COvZlKFH+FsoqXniqz7WYZDAH4AqAOKvkVZlM6P8gDZKon8Ux065gNwEHvVZCuoqsE
	dO/unXrLTZkqUZVoSTUpp+hkowbkTSDdLRkBgSMH6NNe1XuJx46khIG6P/2WyKc4bcFH
	u0DAwSfmWCdNeBCFfUqDkULEeA63x1eT9c67bTTbvrFusCu53l5Itkd+47cuaXX/pE4V
	AbAjlNpuX4sXngKiyKEWZLWcJCB+cYZlNx/gWd6KQnvi+yOrz993nTzCp/pedWO6hbfJ
	0MgAtcZZoH7sBa0LXDY/Ru2Y9PnMvjYPoa02AjcENeT8Z6MoJYFTD494rhnAY9KdkNye
	05ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6JdV/zXzsQUdXXcthTPzj7quHTJ98JgDzAgOyhFCnCM=;
	b=etL4u1uIxuB64PzXgzH1S9vf0xYb0+OOuKIr2YDV1Ctl0j4ojvt0sqmiZ+rO+rGZQj
	LBG+VCvejOyZGGsBLSxP28dbEpihd2GzqgrLJDDL4TjZLpVhnEoO7ycQ12fzoyBiHUqH
	d6O8dJE9zwGPzQnpGRIQSdUOhfT7UVUfpHF02SOLhBCPSaksok+5C45bYjNYC6VYxwbC
	27ywf1joKjHGcnylgTWddNbgVwHDPGu8XpkiQLt5XTvgYQYgSoPSMAlEKX2MXmSVhu+k
	U89mUvex0GQv37EC7GCpsUIjpwJc1K9fFSxeK3qfHNEKRr8e9kjUetpG3kNQKAdZMBmx
	nwHQ==
X-Gm-Message-State: APf1xPD8XvA5PUHDIJA+tlt0eN6Yw1b5iBFTcoJpDCNCu/Xq9NgNAf6T
	W1WCXGTvMA/zqbX1zNRUIio=
X-Google-Smtp-Source: AH8x226fn/BcHV/MjmA0fOKOwwQU17cr2lXrS+E0Q1eDcGzxEbrAotDukJ3zviCnwB7rI3esM5Vedg==
X-Received: by 2002:a17:902:5482:: with SMTP id
	e2-v6mr9273989pli.65.1518889556363; 
	Sat, 17 Feb 2018 09:45:56 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:1886:ab70:59d6:9e86])
	by smtp.gmail.com with ESMTPSA id
	z90sm60105451pfd.78.2018.02.17.09.45.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Feb 2018 09:45:55 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 17 Feb 2018 09:45:50 -0800
Message-Id: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/5] yocto-linux/4.9: fix typo in filepath
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
X-List-Received-Date: Sat, 17 Feb 2018 17:45:57 -0000

fix idea submitted but Derek Betker <derek.betker@ge.com>

[Yocto 12134]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto_4.9.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto_4.9.bbappend b/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 9702dd4..adda041 100644
--- a/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.8:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 # TPM kernel support
 KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
-- 
2.7.4


