Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11493E00DFE; Thu,  1 Aug 2019 11:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F354E009FA
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:39:27 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id s145so52837490qke.7
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=F1CQI33LRrXelah1olRMYoT0SndQDnHku2udh9/I0WQ=;
	b=sbFqXRzh7TOLgMBL/FH8YOI+0b1+NLSG0gFvGE4PgQtWOHn7yuD0BG3pcmWSti/afQ
	N1loJoFqj3BfhSTRibvkHpjpD9eCwYEy1BC48TgICLienTKTON918JoRRk4O6HdFHmoL
	OxlKIeE91W6FnhEg5YvDYANK3yB3zcVfnRR6fgMYlvB4UaxJ/fhCw+wirxc6a3uVXVoU
	JEtcNc3biu1F4WSmGBJkZiOPLAwMG4t4MgRA4e11+RHmWFHCoduy968TrRrzpy1bXD4a
	eRsqNhMLa1BeznKjIITRzK+ZT+oENEV1OF/YJOEPWjD1EYTSA4dGKevjfBNKqp18lq6d
	qyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=F1CQI33LRrXelah1olRMYoT0SndQDnHku2udh9/I0WQ=;
	b=Ca7yrxM44L5louM71uS6GKllouVsC8Wzd2oOsk4RKgjum7A2Y79uxSkeIkHhqCnfEo
	/NlMwrO+h1UhrSZka+JuQhuId3KDD9itXEGXdpeo4Fcx6JjVfTt2knnisuY4GOMs7g59
	7XrDb7UEpLI+ysQqIixtBavWyi/aqymVZqeu30OuYVEmmRwGQ/wkcVuPPNzisWsQiu/F
	hiH6BwzyxhNwAdxanJ5yl5Wm+EqT5Vgw5kVwnXbZb4VB/E/i1MHSt0EIGg59wdIqQBvl
	BHnvte+ffZ279GmmW8hly2HUFKlaYvCIEFwPZXF0J0G8YdDaKo6gcbEzn2CHcsrwyMu6
	t+5A==
X-Gm-Message-State: APjAAAXRzdGIF4GzKzRHcP3/fwoY+aRZRYkr90VZsTQmzqVqxnzeCQKH
	EsgvO+bwB3ibUBOqLqYBhXCGZlOS7kw=
X-Google-Smtp-Source: APXvYqx+salOKVkJi/lA9jVQVJW4cyZdNfNyNUi1/4oZCaWaPjsFts2wJ6jUoxW7KYgo3qIEZrc0Wg==
X-Received: by 2002:a37:7083:: with SMTP id l125mr83275328qkc.71.1564684766649;
	Thu, 01 Aug 2019 11:39:26 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	n5sm39606433qta.29.2019.08.01.11.39.26
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 11:39:26 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Aug 2019 14:39:15 -0400
Message-Id: <20190801183915.9714-1-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-autobuilder2][PATCH] builders.py: fix for AB helper repo branch being ignored.
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
X-List-Received-Date: Thu, 01 Aug 2019 18:39:28 -0000

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 builders.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/builders.py b/builders.py
index 16c1344..b57bed7 100644
--- a/builders.py
+++ b/builders.py
@@ -169,6 +169,7 @@ def create_builder_factory():
         name="Clobber build dir"))
     f.addStep(steps.Git(
         repourl=config.repos["yocto-autobuilder-helper"][0],
+        branch=config.repos["yocto-autobuilder-helper"][1],
         workdir=util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper"),
         mode='incremental',
         haltOnFailure=True,
@@ -238,6 +239,7 @@ def create_parent_builder_factory(buildername, waitname):
     # check out the source
     factory.addStep(steps.Git(
         repourl=config.repos["yocto-autobuilder-helper"][0],
+        branch=config.repos["yocto-autobuilder-helper"][1],
         workdir=util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper"),
         mode='incremental',
         haltOnFailure=True,
-- 
2.17.1


