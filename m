Return-Path: <ste.lendl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10340E00A1A; Thu, 15 Nov 2018 06:39:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ste.lendl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53CD3E00971
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:39:07 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id p2-v6so18130252wmc.2
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 06:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=9P92Adi/BtIq2xjHT8cT3EJC+R1XPPuW4ccnGkHIfVA=;
	b=nZTEavvo8X8aVzrOMkSMU3fF+QcUWlD2LuoGCMQ37M4xApuJ4GL12GWAOmr/97J+b2
	Dxn98Th6FvzikTS6XB1nU+uBJsGhUlNshT95hgHwxQkra/VfVEov2sBKRcMGxp1jsYp2
	Nu7FftRtV7/aimJ7ZGmgAQv/Kv0/CdutJD5tFg1QvAZZPyLrJ8AZDoM/T3KCtFQFXoG+
	7HwMu0RHsC1mbyhIDypOo4xzeeenz2+DjtXMbeJRahp867pRHLFVi6+eVtGB2iVO7U9H
	f2E2cBoEl5gTe5ezfG9av5kVuCu8UzM5RyzUU/gHB71irFoa2SGb05B4FUYzDVf508PS
	mgTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9P92Adi/BtIq2xjHT8cT3EJC+R1XPPuW4ccnGkHIfVA=;
	b=lqn3rQulAjpfuQf8USrcVBkg+DU0BIGfCqlzAILfieSO+1xrM2xxq+jc6Bz/Zd+/7R
	1t/gfn+2WvmO5hzk+72JToTua8+1xPtg4ot9jJtEVYZ/zvDldUFgATyuUFEgZhNDQJ40
	uzk97fvBOmC1XDdmVQ7YGsRVeFb8hUMgWvel8kSwrlStTbRyV5MRQM0uTiSgG/N2F47S
	NTRg3ZefSuAM+5kB77P0fATrzwL93qHgvH40PI4RxAsDmeiLAQ2OxEEN/5nD23Lv2XFn
	C8dSU5+Oex6EFy0qgMCCWAiWLmmGnHJYJaTKhCrhrgNpkrzfTM155Vw9gpXpIuWgq1Fa
	OjcA==
X-Gm-Message-State: AGRZ1gIP7xP+e/mWtUXlzKQIpUtu2ZXhpWGjPIBjZD04mBHw7uVP88u3
	CBcLtgfac2xCyOJOZncXfiONos4xH2g=
X-Google-Smtp-Source: AJdET5fKizUEcHdn0YLlMwoN9mmyzlEC2c3gneFOpAGZaz7LkinA5fmdF0QawCLByi3fLJaalTfGzw==
X-Received: by 2002:a1c:3a06:: with SMTP id
	h6-v6mr5560946wma.114.1542292745140; 
	Thu, 15 Nov 2018 06:39:05 -0800 (PST)
Received: from localhost ([212.69.186.40]) by smtp.gmail.com with ESMTPSA id
	i13sm11897638wrw.32.2018.11.15.06.39.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Nov 2018 06:39:03 -0800 (PST)
From: Stefan Lendl <ste.lendl@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 15:39:01 +0100
Message-Id: <20181115143901.7279-1-ste.lendl@gmail.com>
X-Mailer: git-send-email 2.14.5
Cc: Stefan Lendl <ste.lendl@gmail.com>
Subject: [PATCH] Use lynis download link from github releases
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
X-List-Received-Date: Thu, 15 Nov 2018 14:39:08 -0000

Unlike the official download page, it also works for older releases

Signed-off-by: Stefan Lendl <ste.lendl@gmail.com>
---
 meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
index c25b804..1ee71ef 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.5.1.bb
@@ -6,12 +6,12 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://github.com/CISOfy/lynis/archive/${PV}.tar.gz"
 
-SRC_URI[md5sum] = "5b9da89c616344bbc73cbc5688a4a0bd"
-SRC_URI[sha256sum] = "7a09c6fc71c65d572ca702df7b4394d71f9037484062ef71b76f59a2c498b029"
+SRC_URI[md5sum] = "f91840acc0801b77844363fc55c5d688"
+SRC_URI[sha256sum] = "e143eaefec3222f98a0f74dd6dcb3818aa348dea3d0379bd3a45455911b6ee2a"
 
-S = "${WORKDIR}/${BPN}"
+S = "${WORKDIR}/${BPN}-${PV}"
 
 inherit autotools-brokensep
 
-- 
2.14.5


