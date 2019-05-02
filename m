Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D6D3E008F2; Wed,  1 May 2019 17:21:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A579FE008F2
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 17:21:13 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id z28so237533pfk.0
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 17:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=5kx6TPW3h70rYL9GfQfpeIAU55pEjN4B9MXyLg8bd0g=;
	b=NI/gDfCiNFfu5uktIXFuyisyaqmL39KdUwf8iCmTXblGL4iiPInYxJxBz09fYqR0pd
	5GoO/iafqrtcrOnmijC3vz5dUhKRs81cKhrTVwqjsshfmJds8rRp0SzTmNBE0apS5B8L
	SnXzqL1EJBEDyBc7WBH1Q9Py92ogqfx5dpk1R9M+SI0ifZujLpbR3Zy91rvfGFVc44TL
	vcvIx56Yd/2I9WCdFVJR8CaobtUGhnpleYnrCdrLySGkddfLsETp2raYWgBkcUj5K166
	ebJYSg2WOg3KVArycpFVYxwYnCesthFEZIAtaEW1v2PW3uM6zahqx4RFETSjmp7mOwcc
	lh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5kx6TPW3h70rYL9GfQfpeIAU55pEjN4B9MXyLg8bd0g=;
	b=PXEWfnoaf0qOZ+oar9j+8EABh4qmypZ5tWdjoS/dzKv6fBP7O+brvDkU/6Sk9+/xzr
	5MTddmBV1BYPWziJNqFFJNLy4lZpWNy66LAN95NoZhLwyqLHPOL7nLEQCflCgrzViLPH
	O11NZybLsEnYElJOeQEfunM1SByzkzQDV2RW78/RxkacqWnFw+mIuLMdCBeYJa2sNA2l
	w2PaSkOOfLfcYJsMPjqkL0lvwUoOn9H8pMJ7rQWnvS94quGf9xqRJm3GMu2laIHqI5Ww
	P1C2mEMnZnPzh8gSBz2m6cQsU3vkxIYZnwSSUk2RS3o2oDwwtGDB1/wns1eBeeCPEMdG
	1K+g==
X-Gm-Message-State: APjAAAUPqY4S5/51RCKn8kvkiYjWEWh+FY13OoKW3+1LHEJjZ7RfP6si
	n6nSO+4TNcVIkQ8S7T+PrCdibRpt
X-Google-Smtp-Source: APXvYqwC5Lg3ggGTUnT9ZaVe3pq5y0V0ctsKcb3rGGKLDE2xqy+vSKaGR8fmWpekl4SJWuzpxR39xw==
X-Received: by 2002:a62:528b:: with SMTP id g133mr842726pfb.246.1556756472747; 
	Wed, 01 May 2019 17:21:12 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:8977:bf2:211e:20be])
	by smtp.gmail.com with ESMTPSA id
	g128sm9938216pfb.131.2019.05.01.17.21.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 May 2019 17:21:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  1 May 2019 17:21:08 -0700
Message-Id: <1556756468-28447-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH] layer.conf: Add LAYERSERIES_COMPAT for warrior
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
X-List-Received-Date: Thu, 02 May 2019 00:21:16 -0000

From: Armin Kuster <akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index bf2c93e..894d6c4 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -13,6 +13,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "thud"
+LAYERSERIES_COMPAT_cgl-common = "warrior"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.7.4


