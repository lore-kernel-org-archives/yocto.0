Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9200E00AAA; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7157EE00950
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id u24-v6so6391746pfn.13
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=WI5lw2EjLJB9dnu7Rpt2YJX1PZPiXpoB+ReHDSK7EYg=;
	b=bClpsA84TbbLdFWqJdixIcylliBf3D8En+V+cDlLNflUo5aBZciHgNqfTnD3ULCvr1
	oLATuv1NyKlk4PWWHsAOdYDsH2N9ex3TuqWUcR6o4ST78G1YgHrqExkUv4mycEX1/JjC
	gbLkS6dJ5Vuviz/r/J2uUUmDYNADh0Uv0tk5NWr1SUImu0nyjYKKbrdcsIhh621zWiFi
	/VKfnmpHYpk3hLpb+42ZHtSGvyT+7R1o9snZdBxhN5DGYl1+CVa6bU3Cp3d/m0A4gwhv
	pahds7b8SltotHnrNyeCgFZR6f1yImG3jriYFlb7Q4IafYYeQ3yWQceRN6lFdzNxC8ED
	u3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=WI5lw2EjLJB9dnu7Rpt2YJX1PZPiXpoB+ReHDSK7EYg=;
	b=ftT42tb9cG55hLA3YOuXkFrGAoHIEUM2H9olZKtFfANE7X4A9gRa+X4gSxyv2JgK/5
	OX5uWeS7Y7nrwST/PjQlaLhkpI6xw1tK1sHXZCpf3e0FbxlnmUL5AQaX8uqXIs2w/wBJ
	SYdwgqzYrNawfsmuxVkX9clWcGcTE4++VZUN8m5xW0bVM9gmDgh1QtteAWDUStLbJjGU
	cIPS1Xqiw6iwQq+r+hYtMil2seFiqConxTKXgIJAa6vnD09EikQPTkee2zOBHp+gcNsi
	cfZhmP409V7K8B0BFK+ELFpy/1J07qqtiNS84xJBWcWW7opJiZgV8B1a9ndD2lDrCmVv
	ia3w==
X-Gm-Message-State: APzg51A/hyC5hlgocj9M9fcA9UoidS/eV8KziLz2+w+JiJj4IpF0A95j
	DSOXNrdvDgiMwCAIrAJzsKHAs4eG
X-Google-Smtp-Source: ANB0VdZwBbGxmvHKLhixBEfTetWduIlDd2vj/RoOj44RLtXrw6lRZxE6jFMcTPxg3r06CMRgxZ73OQ==
X-Received: by 2002:a63:a319:: with SMTP id
	s25-v6mr19616409pge.199.1537113453766; 
	Sun, 16 Sep 2018 08:57:33 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:07 -0700
Message-Id: <20180916155719.9911-13-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 13/25] meta-security-compliance: bump layer priority
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:35 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 6068990..c8d5357 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_scanners-layer = "6"
+BBFILE_PRIORITY_scanners-layer = "10"
 
 LAYERSERIES_COMPAT_scanners-layer = "sumo"
 
-- 
2.17.1


