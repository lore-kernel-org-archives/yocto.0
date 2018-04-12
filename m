Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D50A3E00B9E; Wed, 11 Apr 2018 17:03:41 -0700 (PDT)
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
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF8CEE00529
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 17:03:40 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id s2so4245710qti.2
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 17:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=vjdgtes8J0g/S/6DZQcoXOxEqW8x/6GQ1Q87taQsw54=;
	b=ohie2KVkCc/PimXYO9uCP59LZRht282XGYmUBRdXQb6HITfLaz2aMzkI2d+9aav13z
	1RsmMrAGJXaZYr/geaLjDTvcUhdfq6JeVHMusFNOzmrwED7/kZXYgKr4+OauaCOQzBXk
	C+DaHuMa85oaZR4RhfDk6AzUhPs29H+02mulHashlXkXLGHyZQQdILn+kntvQ5xA66G8
	9MUBQto88MrPHIsrhvrLAoWnYpT7Bj1Dd78ZgCV7OMVMitwbefClZSctspA/wBcobBsf
	BlAtC656hBsX4FDjPdg0xpRSGR38g+Mhz2T2UyEgYNqQAeoa9hSqFmELi04jPtxTvFtK
	gPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=vjdgtes8J0g/S/6DZQcoXOxEqW8x/6GQ1Q87taQsw54=;
	b=MqAly40wtrM00ZKxlH0gWvVxB7myAbm2O4HhOFd/2vPLFrdNrEgXgPMAhE1T9NCfHm
	mVp1gpx+HdLtgAyMoazFHN9YIn2sMCkiXWVZtsqnPBetSQDJTPXEsgT7l5yjUK/d19Cj
	LDJCTLTfyFxO3/vWS8RSv3zJzHV8ojn+BqqUq+xZLu28e8qH/2g0ZGoS1g912hUIMuyT
	aAtSe2BcMVhCCJ5EUrCNEGKzsnDyB/CxQCLgQlwU2FdsYK9fBWX27WmWMJ7oI1xOuwfU
	X1RYP7wZQ4aTXUI6pS3OX62fOqJFulM3ZkGh1OWXfBNEEFUT2LinUWb/aI7X9nhw/hoa
	VKVA==
X-Gm-Message-State: ALQs6tAW8Xehas7zHrzvgWa5IX/O9Sb+N1RXciTySNOKQtyXh4Dh8LVA
	pDwtIvxMJn5MQ8f+PXFbcSM=
X-Google-Smtp-Source: AIpwx4+Hjvq6+i+NCwr4HtycMeoZTVpIUgghoLbhwdMCEtitPFXWyrliHV8yNYgF3n/xU379fNnknA==
X-Received: by 10.200.82.86 with SMTP id y22mr10554986qtn.167.1523491419919;
	Wed, 11 Apr 2018 17:03:39 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:a021:aca9:5eab:bc4b])
	by smtp.gmail.com with ESMTPSA id n4sm1722895qkf.29.2018.04.11.17.03.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 11 Apr 2018 17:03:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 11 Apr 2018 17:03:37 -0700
Message-Id: <1523491417-32509-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] meta-*: add LAYERSERIES_COMPAT to layer.conf files
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
X-List-Received-Date: Thu, 12 Apr 2018 00:03:41 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 ++
 meta-security-compliance/conf/layer.conf | 2 ++
 meta-tpm/conf/layer.conf                 | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 7218560..04605a1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,8 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
 
+LAYERSERIES_COMPAT_security = "sumo"
+
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 68d5528..31716d6 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,6 +8,8 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "6"
 
+LAYERSERIES_COMPAT_scanners-layer = "sumo"
+
 LAYERDEPENDS_scanners-layer = " \
     core \
 "
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 36486d1..a2f0cab 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,6 +8,8 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "6"
 
+LAYERSERIES_COMPAT_tpm-layer = "sumo"
+
 LAYERDEPENDS_tpm-layer = " \
     core \
 "
-- 
2.7.4


