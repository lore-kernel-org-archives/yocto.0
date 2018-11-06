Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690ABE00AB9; Tue,  6 Nov 2018 13:56:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D9DE00A0C
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 13:56:34 -0800 (PST)
Received: by mail-pl1-f193.google.com with SMTP id q19-v6so3843807pll.7
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 13:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=/e9IER12noyJTdMkShTjh1fZ40lj/KYa6nMZG6JbvYc=;
	b=XyrYbEh/Zof1FETtglodzkHarBCIGIyAMWO7critJqsQTbikHL3H+Mnjy8HNZ9G2rb
	yBYL+kguT8ViP4AF4Jk8sdHOOCzvvxAL3kFM5f8tnIoUA3f8BQZoouZ/KfTpxnFRhfr7
	PFCS1QlBHFFJdtn9caXumoAmBbpqtEdo4PuaAL1gQ1Z37+vSh+49lRsG4p1XV/a+SJ5L
	IPU0pzHDkVOp8c/uQkrwpJruvTsP7+uwYU+OUm4SOqc9w5vOXepzjkdXPt0wXLrRaXCO
	g/pq+3uOtqiBS2C7/knGANpQvqJPONzU1sktGuZOABYHI1uCxyU8OuWHg+BMOxR0+Pxl
	1zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/e9IER12noyJTdMkShTjh1fZ40lj/KYa6nMZG6JbvYc=;
	b=kTtHEHOvVkIURQbPeyp/VunIG9phcF+seBS8ITceqbuYaHttys0ixCtgNcBgT+owVM
	dh69HTcyK52pr1690JWSKF+DGP6qjj8/RrwlfuE/AxPX1MEWa9EwohWtmAv6s+SN6ZCY
	fGEziX2GRP2rJSr3QdaBxnL8sndw/IiV08+atylZC3G8YblSSMG4yzMhPZcPqdkoRD4Z
	wECGosU9A3pMrvRVWWi/2hjxyvSB1E/Z3/kd4+zyLy3NVQPeFSheezZkb1fj9bmQC1P2
	ud6vJxtJwnew9Pnb+wJXXMvTAUVOMd5FRfHhcVfV5mZVgvT9miZ9JEbWJEsbCbwkf/7C
	inrA==
X-Gm-Message-State: AGRZ1gIToSNEyIVt2QspekV3GXAaJhO/jH5cS76ujIX2KlDzWkyfcl72
	f6EAi5ZEVZ9PWlZLt4Hqdml7JvT8
X-Google-Smtp-Source: AJdET5fpWlS6pqL56G2ByKs/G8uSTi0fJdV27lycsjQKYDiTPyn2GgA4haFdjoNRl+wjMxNE1B5kFw==
X-Received: by 2002:a17:902:8e81:: with SMTP id
	bg1-v6mr9685874plb.192.1541541393383; 
	Tue, 06 Nov 2018 13:56:33 -0800 (PST)
Received: from akuster-ThinkPad-T460s ([2601:202:4180:c33:bd6f:ce:d9fb:a281])
	by smtp.gmail.com with ESMTPSA id
	f13-v6sm53681820pfa.109.2018.11.06.13.56.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 13:56:32 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Tue, 06 Nov 2018 13:56:30 -0800
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  6 Nov 2018 13:56:29 -0800
Message-Id: <1541541389-21595-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-kernel-cache][v4.4][PATCH] kver: bump to v4.4.147
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
X-List-Received-Date: Tue, 06 Nov 2018 21:56:37 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 kver | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kver b/kver
index 7b008cd..5ccc572 100644
--- a/kver
+++ b/kver
@@ -1 +1 @@
-v4.4.141
+v4.4.147
-- 
2.7.4


