Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB591E00CAA; Fri, 17 May 2019 07:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 504BAE00C7D
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 07:32:04 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id 15so2925327wmg.5
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 07:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=yQfG69hUPsENjar2Y7VyVGN6p/28abWh52kufGHyAnw=;
	b=XQxwZTgAeESFcG4CB7iWV3K8rYT17+1MxUkeAQl5rtAczN97u0fwl8SoWZLflXTTaA
	7EGZbdf0S7KVtsjKoJTQCyEX/dzzUO6J1jdjEq4u4SiyJEj4DQZGM/d8jaN2TvWcdXNS
	2j1OmyPq7FOJSLucRpzZTBVh50wvbFM/UBb3XJH1Wf/8yVq3XCYpHgDf71XiKdgYS/6P
	UXk6uxH55asG0G0VxLS+55nvr0Cw3jxruHLhjUT59wz2lf1z8HsN4rYR1EgoQQnXRQSB
	wJcJ96gHvAewD3I6r40txJ4kZZtGmL8sXbI3/sJ9O2rUTuIYhfCNyqA0bWjTpFYKYn0d
	qwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=yQfG69hUPsENjar2Y7VyVGN6p/28abWh52kufGHyAnw=;
	b=R1BHUFmpNaQGGLDhFplBaWxE1c5+3FuxvB+2gD3g//FJY4oYln/KZL3zIEXXS5szJR
	T2wzx/so/atkKlZvR2E2qqFyo+Remdpa0+BMN/hZQF1Sh4OpsWg/rYYB11Y861bDkSWr
	ortmu/o/4NSn2O34g3RVZTwjWyT7yruBjqS2mE1nqKsWlaYGaOe1da0fIQ5vfCxuBM9P
	dQod/7SgCUPZ/aeqv2NfVapoJ24WX70sqJAszituyvoEu5bLchXKwaN/Q5NfGh0alVjA
	V0wC0B3tsMaCy3oLm/NirsIJF2qynIZEs6S7vQ3LsesrpTx0eryBT/R8BgkYQ4/ZQ3a7
	GQ3g==
X-Gm-Message-State: APjAAAVu00SfmW3PXMeU2xbBNw6n1lBgpdmPxfSUBg87rLiNhnn9EZsq
	y4GHcEUdGXQZMmno/iaXdDjWJyhA
X-Google-Smtp-Source: APXvYqzOyZtztXdxYqL71k50w/t76ykfFvHSAXuInzXbtDjLe935UgdaGsh2zF3Je/OomYL0KFHP4w==
X-Received: by 2002:a1c:385:: with SMTP id 127mr2469885wmd.109.1558103523299; 
	Fri, 17 May 2019 07:32:03 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	x187sm10803606wmb.33.2019.05.17.07.32.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 May 2019 07:32:01 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 May 2019 16:31:54 +0200
Message-Id: <20190517143154.116727-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH][AUH] steps.py: set up AUH workdir before calling bitbake to get env
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
X-List-Received-Date: Fri, 17 May 2019 14:32:05 -0000

Otherwise, if bitbake fails, there will be tracebacks later on.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/steps.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/modules/steps.py b/modules/steps.py
index 2eb4499..87d7584 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -34,9 +34,9 @@ from errors import *
 from buildhistory import BuildHistory
 
 def load_env(devtool, bb, git, opts, pkg_ctx):
-    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
     pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
     os.mkdir(pkg_ctx['workdir'])
+    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
     pkg_ctx['recipe_dir'] = os.path.dirname(pkg_ctx['env']['FILE'])
 
     if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
-- 
2.17.1


