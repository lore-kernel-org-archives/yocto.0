Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EFF7E0086B; Fri, 10 Aug 2018 14:59:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A40E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 14:59:07 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id y5-v6so4986753pgv.1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 14:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=lcIMG8YtiJaersZDAi7j96jJdI830Qayz/ScvOvm1cU=;
	b=RBPjJwHw+9YYqw68ar4FKq9AhdjItR1YbMGOtxsW4jA+kvX2f7OZhRKXVFn6q6g/ff
	MNkteLKkT/hkyxXOiyPwkXYyFyU1qE4Ju228BvuKIcsx0Ixj9aSZKIoaL2JxKuhuIICE
	x2OHF8Y0B/6PnJ/FkCyR0k8AzQeF/gaRRybI8hII9Cx9SGi5fSwMgEy94npqmGuYDV5V
	dWgurU5Rt6sRGQrdW1a55oV+0lhJEwoyG+XqMVHnGDY3LppS9+/uDif8X9jOWWAEWheB
	2I+ArSvHfB1IARGl8H5K8XZraD7OI8h1Y+iJoRu4fghG7HVPHNxoMmyrPmAF8NsDQMul
	B03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lcIMG8YtiJaersZDAi7j96jJdI830Qayz/ScvOvm1cU=;
	b=NAIN+uKvGNNolc3DI6iMIWJwEfAjRSSrRbnQswqWXdxE4pUVme86UDrFBCLh4msK6g
	r9KRmV7LLLutf30r4R73/JFnnuB3jv+VMRdf7IdcJE4d4XTfflKNla55Nm6jENxFzEaC
	9VrqWIomPrz+BOa+qddtq0MH0N5xc4vqtIuhe1Q6EIzruzg67FJcge9uqvIXmBoVj1TM
	NcGMIaU7zdQ9YJoAUv4cnnWrSbIqx2xWpFkeB0yacXZHjBAOIqA3Ev6iKxAffpTq/bUk
	MLG5LWIaSUI2oMbnVxougntKd3wnlgvBK4VPwLQnslbEjkuogYxuIeNt5nj2tIsv5mwN
	UV8Q==
X-Gm-Message-State: AOUpUlFxN6jiET1lyVwWAnOvkwZFv/EkP24AuTBZMeH2tkaPMr6Lv0mh
	5mBwOXq3HlbheKbOtTVrrsbvdNcD
X-Google-Smtp-Source: AA+uWPzEEYsxEnufP8KHENfvi6cJI5WQ5K1HBh4xKbp2roR61E+zvX8Qn9HASFQvWmog77pHggPc+Q==
X-Received: by 2002:a63:40c7:: with SMTP id
	n190-v6mr7975626pga.116.1533938346890; 
	Fri, 10 Aug 2018 14:59:06 -0700 (PDT)
Received: from localhost.localdomain (47-40-108-60.dhcp.knwc.wa.charter.com.
	[47.40.108.60]) by smtp.googlemail.com with ESMTPSA id
	75-v6sm20841210pfr.115.2018.08.10.14.59.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 10 Aug 2018 14:59:06 -0700 (PDT)
From: Scott Rifenbark <srifenbark@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2018 14:58:55 -0700
Message-Id: <1533938335-15535-1-git-send-email-srifenbark@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: timothy.t.orling@intel.com
Subject: [crops][PATCH] docker-win-mac-docs.wiki: Updated link for referencing Yocto docs
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
X-List-Received-Date: Fri, 10 Aug 2018 21:59:08 -0000

The link was going to a retired Quick Start.  I changed the link
to the appropriate section of the YP Development Tasks Manual.

Signed-off-by: Scott Rifenbark <srifenbark@gmail.com>
---
 Windows-Instructions-(Docker-Toolbox).md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Windows-Instructions-(Docker-Toolbox).md b/Windows-Instructions-(Docker-Toolbox).md
index 31432bd..f33bc66 100644
--- a/Windows-Instructions-(Docker-Toolbox).md
+++ b/Windows-Instructions-(Docker-Toolbox).md
@@ -74,7 +74,7 @@ You will see a prompt that looks like
 
 `pokyuser@892e5d2574d6:/workdir$`
 
-Although this is called the poky container, it does not include the bitbake meta-data for the Yocto Project poky distro, instead it is a Linux environment with all dependencies already installed. See the [Yocto Quick Start Guide](http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html#releases) to get started with with Yocto project.
+Although this is called the poky container, it does not include the bitbake meta-data for the Yocto Project poky distro, instead it is a Linux environment with all dependencies already installed. See the [Yocto Project Development Tasks Manual](https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#cloning-and-checking-out-branchs) to get started with with Yocto project.
 
 ## Troubleshooting
 ### Cannot connect to docker
-- 
2.7.4


