Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4907E00B8A; Fri, 13 Apr 2018 15:47:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66BBAE00B65
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:47:49 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id z9so223752pfe.6
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=86kwQmUY48jjq+L2iz8DuMwOOpEqENpiFm04obZOLPU=;
	b=l4Nz0sFWhT9tqJDl2YVLC8j2FK4R2cE8E8CSQRnetZEjg/VGtBchmr0H8XiEaIDHUN
	p6+HN/oTU5S8Fxd5KudikAMK/JQzGnoxETIazoM7EKU8moZxkK7cCLCSURwXL3ayKq90
	j6pDa6jIos/EmgvPpc9vDi0jzFbW8Jg4u5uqK4LrNQ67QCnEUGp7Q3bB6hRxwdcZXsdj
	zK2PN3bHvcdeW3BNblwG7nJYwNLbaVE3j5Dv7p9+XimXv9gd4knnTTggCf9D6zpNiYmp
	kY9Hm90oglOrfPsmZkUth/TgI6xeouf3MHUVmriSANS1fkY3HZwjTzRdKpuYAJg1cr6G
	vW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=86kwQmUY48jjq+L2iz8DuMwOOpEqENpiFm04obZOLPU=;
	b=aogSAmKs5oEdqJC0sF++eEwMPSjsLRQJbRHPdyV/owvsbKB7HHEqzYOotLzjKeZMOG
	cNAWv2ROTLCg/p40f4ciEM1xbQWZlssS/sh/v8ZfJEuAdM3BIZ/xisJ2WLMXZKdg1ik4
	tfPkOTrIMglvn60cyuHAMx4x5R06nezochlkmbFH3jOXiWGfyAqccFpHti2YvTCizVBs
	4xJYHOpGdzwjBRgbWYC2SE7n2QIVOkxm/qnJ/RRmtCjiI4Y3O0qVnMYX55Dx5e3A16U9
	Oiau7jv6Eq/qzg5Tm7noJg8x803PVYiR7fi0fIMADs1/Gh27ME9UusOVp4gAe9YmKXVf
	rYvw==
X-Gm-Message-State: ALQs6tBi8rtyBFRKE7raLhR8WfGpYOPEe6aPaMZtNOGxa8uG/sbOyDZs
	lRs5N4Sdr+8im/88aYiseFY=
X-Google-Smtp-Source: AIpwx49zjNnPtmrMRzEkS3L2JCbqG9ydJ1aV+CTX9s0a9GZSB6WbXivFR5Kj5AtwnJbiH6z72Bxv0g==
X-Received: by 10.98.141.78 with SMTP id z75mr13136849pfd.174.1523659669240;
	Fri, 13 Apr 2018 15:47:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	w24sm15376262pfl.84.2018.04.13.15.47.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:47:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:47:46 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:47:42 -0700
Message-Id: <1523659662-18201-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523659662-18201-1-git-send-email-akuster@mvista.com>
References: <1523659662-18201-1-git-send-email-akuster@mvista.com>
Subject: [meta-qt3][v2][PATCH 2/2] layer: Change LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Fri, 13 Apr 2018 22:47:49 -0000

[v2]
fix typo in layer name

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0197197..cfcad24 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt3"
 BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
-LAYERSERIES_COMPAT_qt3 = "rocko"
+LAYERSERIES_COMPAT_qt3 = "sumo"
-- 
2.7.4


