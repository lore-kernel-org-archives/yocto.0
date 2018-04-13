Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 875EDE00948; Fri, 13 Apr 2018 16:14:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E82B7E00857
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 16:14:03 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id o16so7071879pfk.9
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 16:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=yKgAjQVZZ1b04hh0lQ40MjaRxLSLz3AIoVQZg5ZdZec=;
	b=I6Eiw8mn4mjLC2P5/XvlhnjTh/OfRJ+XOnvFLjJkWBYvv2BFpn/LltLw54B87lB92m
	GFX4DftMAGHSGOUTIsKLe4xGsA2rn2+y9rKvdm5lSuxf2BlToMuopbiVluFoKFsgYMd7
	HFUe12i6HL/GBpVe6BFDaYsy1C/yucltOQBI27Gg+qXz5D60TMy/tDs71vXLo8xkHATW
	jZupXc6dq4qiY/mk8FsKLm+ESdNZq9lg00XSlfixzP2o/ecLd+lYhAd16MdCVh/GyT3W
	R5BbEnOspggGC31T2vrZnWRmwfWHqGiiDG1ow1aG7OnBD3kJVyfFs40jl9ci+ogzZDUZ
	P7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=yKgAjQVZZ1b04hh0lQ40MjaRxLSLz3AIoVQZg5ZdZec=;
	b=CS2VaxO+aUf4B/ti9jD0W2XvijIe7HmlNiGIWvn7e/HW8NKRVJ9J3T/zgjKNukmIYW
	NNBZ3ML9VY7pLmvAf/CzJohSwAaaofRJ4GmMD0YWnUAjBdKmHg9FT7RXKd05TliYhv21
	3JLDa/NuqYm9LubuzZKnG74T49dKtTIGCiW2P0m5F1TaaXZagQsKsDTZi9Fz+y8r8VHe
	E28TmRoLnVJaO/bMjbEL+RR9b8LzHZEdfo9pQ2PT+A/95QvF9ps/uoH77u0uD02F5B/0
	zFusE8s6hoZN55gocSqSCBZJEvE0twl1nG8fEEh3Z2byNxdaIIdW08jsme14qkUpncGh
	SifA==
X-Gm-Message-State: ALQs6tCG/zCoSYHQe2hfQQVR7/Rs2PnPGsq3SUA4s5kIkunVnR9MaFPx
	bChLGVfO6SgYsVrHsdPeDkA=
X-Google-Smtp-Source: AIpwx4/vwLbWJ4BK9I1z4PVe0iW3WIMh3WFhgcvsl91YXh+f0fKKCEmCFizuf5FBAfArmU4U5dNdGg==
X-Received: by 10.101.72.203 with SMTP id o11mr5655792pgs.130.1523661243756;
	Fri, 13 Apr 2018 16:14:03 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	m10sm14702783pgd.32.2018.04.13.16.14.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 16:14:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 16:14:01 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 16:13:59 -0700
Message-Id: <1523661239-18682-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-selinux][PATCH] layer: add LAYERSERIES_COMPAT for sumo
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
X-List-Received-Date: Fri, 13 Apr 2018 23:14:04 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index b13633a..0f9ea41 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,6 +18,8 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
+LAYERSERIES_COMPAT_selinux = "sumo"
+
 LAYERDEPENDS_selinux = " \
     core \
     meta-python \
-- 
2.7.4


