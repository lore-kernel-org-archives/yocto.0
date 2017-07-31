Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB1B7E00C2E; Mon, 31 Jul 2017 08:06:25 -0700 (PDT)
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
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A29EE00C2B
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 08:06:25 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id l64so870337pge.2
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 08:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=wcsVex4hMwFX/W+WlSgelm3iJG7Jl2+jtb0WwgolTdk=;
	b=qU5UbVFJ5iE7IvhnbGhPDQActD6dntzcyPq4hw1m31m7tfH+G9+bvsvCDCDqlFNYHk
	nhHCYg1wd99g+6VfYyQkdqDyd8cDHWFhcYPDATp+6BCo8t3fk3zBkRbe09vxXitHwL1s
	9xRC5bd9V6FpMWDZWF0Whd7FwyCinesreWETej4xnZCVbI4mNnp9BZsId98mFP9/4Tpa
	8I0CTl8tcuc8qWHuxuYW8YYZBMnqKkVabyB340vb3QyTHroskfsQVy5ap80tPO65iS1G
	tWK/iEcFv24aMW0Ns8Vxr55addatn78mwEVj3Rb3dh9IyfhfknQ2yV0W7Syx9PAChTXx
	F+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wcsVex4hMwFX/W+WlSgelm3iJG7Jl2+jtb0WwgolTdk=;
	b=G8fUlW12TJ4cvgHPm9t1mkItpJX643IHNUqe5UOGCM4tlBYQ4fiQuiyUYb3Gya7Rge
	zm9tZ/7J/2ry/9FyrzemKDb2fUFuBy3J/ExhrSH6i8Mt747EE56KDNnqV5vuZ6J8O/gP
	+hFCGWc+0Ld5vO/3h/XQetJ/bbZIIHg21HycQj5+HhZG3GomTWe2dP5bJ66gHiGnu6Nw
	KAmbup+hw060sTh9nD3MC+R/M/jacG7kZlNxxWEwCtLeLcOknYpu3c+8fvvdRSC5knRi
	hJBBtCfS5llItrnO28Sxg/z50NmJm0TWy/7hRMUraxwM7myk22EBUo6WG9WhveP3ZcNc
	lGGw==
X-Gm-Message-State: AIVw111w7naPNlGHw6z4fT7qeruj/ZDECqFwChCSEw0Ad8AtOiXd2M/U
	O1jAxUqQasuSEg==
X-Received: by 10.84.230.134 with SMTP id e6mr18260391plk.2.1501513584937;
	Mon, 31 Jul 2017 08:06:24 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:b92e:2c89:e1d7:5c28])
	by smtp.gmail.com with ESMTPSA id
	a6sm54095083pfj.136.2017.07.31.08.06.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Jul 2017 08:06:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Jul 2017 08:06:23 -0700
Message-Id: <1501513583-13585-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] layer: remove TPM layer depends and other dynamic ones.
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
X-List-Received-Date: Mon, 31 Jul 2017 15:06:26 -0000

include meta-python for AppArmor changes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0e524a1..0b066fd 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,8 +9,4 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
 
-LAYERDEPENDS_security = "core openembedded-layer perl-layer"
-LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
+LAYERDEPENDS_security = "core openembedded-layer perl-layer meta-python"
-- 
2.7.4


