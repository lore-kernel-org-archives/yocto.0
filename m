Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83354E0076F; Wed, 25 Feb 2015 02:55:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D7FE0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 02:55:22 -0800 (PST)
Received: by padfb1 with SMTP id fb1so4397357pad.8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 02:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=mGfZzDToibFSzjqk0Ej9qhUu0gRwfJPIl8YNxOzVA6c=;
	b=xP91BcVvRE3DYDlY5D1YCKAsg25fatRseJgBt/vMtJT/Vs6ceM43pH0CspyHFw4oBR
	BZbRy83m3Tx59agurB/SeMMscwTFo3dnai6OEXPkv2yyrDLJ88Sv1dMDuiEgteIytz/5
	WcGFOU3zmPf+d9Mhts/gcO7B+stnMqGP6aCYr4/rcrgGW8u7t5fWVwRIjKFc0rJIAzwY
	qoqbSVP68CK/nfMReGkWouuU56wjmEkbrvyASX3gvOkQ1C29Iz1L/xKiRPFFlFqmUfFP
	qUha44LWetOAclVOMF/NBhtD61JG7S2c2WCGb1LEEqCDg3t+pe/WbdfzkQxjxqZfzwkB
	ehqg==
X-Received: by 10.68.109.195 with SMTP id hu3mr4548796pbb.84.1424861722019;
	Wed, 25 Feb 2015 02:55:22 -0800 (PST)
Received: from Pahoa2.mvista.com ([192.165.183.201])
	by mx.google.com with ESMTPSA id
	ng17sm20027494pdb.91.2015.02.25.02.55.19 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 Feb 2015 02:55:20 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Feb 2015 02:55:14 -0800
Message-Id: <1424861714-11559-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] tomoyo: fix typos in scc file
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
X-List-Received-Date: Wed, 25 Feb 2015 10:55:23 -0000

thanks to rday for pointing it out.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto/tomoyo.scc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto/tomoyo.scc b/recipes-kernel/linux/linux-yocto/tomoyo.scc
index 9080934..588864c 100644
--- a/recipes-kernel/linux/linux-yocto/tomoyo.scc
+++ b/recipes-kernel/linux/linux-yocto/tomoyo.scc
@@ -1,4 +1,4 @@
-define KFEATURE_DESCRIPTION "Toyomo Kernel Support"
+define KFEATURE_DESCRIPTION "Tomoyo Kernel Support"
 define KFEATURE_COMPATIBILITY arch
 
-kconf non-hardware toyomo.cfg
+kconf non-hardware tomoyo.cfg
-- 
1.9.1


