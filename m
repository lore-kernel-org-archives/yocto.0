Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F7F0E00AAA; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
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
	*      [209.85.210.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56064E00950
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:33 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id u24-v6so6391738pfn.13
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Ua28JD07jJAwy83qT6TwUgHts5nBFkU3y8AjT6qoWNo=;
	b=tPO9pD4t8iykXYLli/coBZLneaIOA2EtNWyaHugsakbct9Gfz8cMRBv9RQ8o+TqCut
	yOQ5bhIKZQI5/6AXcfHRQd67WBVq5EcB4p2aXjMm27cwjO2JTzeIbav5bxuVDNAK6KRU
	l4Xi9581JmUqpVDm0bu8hwjKZ//63Hzxr++q3oLabfnaxyWM/RzWuahZ79QSzsrbvXB9
	/G+dbMffvl7OeiDFfWkTNAGNY1VaHprbPUeJUF//LzUQpgAjOm03IWxvPGUjGbMKJvD2
	1xm1sD41sQcn66+pPQpsRoqUS3ZTPvHyu3geg1nqKP9Tq2rzw6dfS3QmSjeuzNmavsHG
	c8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Ua28JD07jJAwy83qT6TwUgHts5nBFkU3y8AjT6qoWNo=;
	b=GTXFoStJd7GwmXDv6rnvE6jvRn8M3LmroNKJH2KOMGPxGYbrCbqyWOxhdS+k0X48xf
	lioAa3A899xWs+8wyY/VXiEwHxhZpIktHQ/UVQh6MmszbVAyfI2muh/EvD1yUd3t5iwC
	6+vY48SXi9Slp6e9h8Eu1KXwrODSP3FDEW6QRJpGpsu1mVYLLjd0TZKkc4v9bw9kfWI0
	n6byVxTV8PF6QQdSQHL+Lg9MG3cgiHBgM5bqKp+ogFW3ysUbmdz5WXY4ndgVPB51qljT
	6rD4BcPgySnrVrLtZj/ehP485JO8CgPBjZydHZTVwoh976NTkGnWs7esosH1OyMt3qoX
	io0g==
X-Gm-Message-State: APzg51CYg4/5dby/bvGPyZFDlM1rQCpAirQbeaKUVQ9BA4zVdKoxz+FS
	YuJuKIA3YHWrwRyvQhQAQc9zRaAH
X-Google-Smtp-Source: ANB0VdZt+Gmi3xtGDww0b2suT0KFzxpZ2cVltdEeKC8wy8yoDC+lubeaYnoGlD3rwVEVlLqBZvp38Q==
X-Received: by 2002:a63:cc4f:: with SMTP id
	q15-v6mr20122080pgi.217.1537113452728; 
	Sun, 16 Sep 2018 08:57:32 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.31
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:06 -0700
Message-Id: <20180916155719.9911-12-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 12/25] meta-tpm: bump layer priority
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:34 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 6f57e2e..55bbe98 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_tpm-layer = "6"
+BBFILE_PRIORITY_tpm-layer = "10"
 
 LAYERSERIES_COMPAT_tpm-layer = "sumo"
 
-- 
2.17.1


