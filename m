Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F242E0092E; Sat, 31 Jan 2015 18:05:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62FBAE003D4
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 18:05:34 -0800 (PST)
Received: by mail-la0-f46.google.com with SMTP id s18so31621583lam.5
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 18:05:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bMzHDGcP87EmDNSstLGSOzA7qoAkeG2MGPVE8OVqDns=;
	b=Sy5JFmvrrfni17IKiJrmlinNLVhFXsyacUqzKp+7dmSIEfbQcXGCZu9CRRecEEHQ8T
	GmI95hYXj0cXf6BKHRLI1rZd757qKQ7wnaL6zkwqJxY0jjd2RA+zuifTGROX1P4EvmNZ
	+TxtW7dqjnmuThcJDr26Ns49hDUgRfmhk1O3dEVMCLSmAsMj2LAulNDRFzWPxOxXtJkz
	1lfist5HRy8pnnljSjbz75WpC3EK/R0MT6zYXivekWAN+AyLX0wLfjs5CFQe2MZZwgst
	6mlHp4QQYtHpzskSKAaL0VnL+YyiBKg3xh09y5H7621HQFSDmq7lSsZMpA9FDYDGHbWk
	DvnA==
X-Gm-Message-State: ALoCoQmIfGU07/b7jHw4H9pjDxmdP7Ew9Mk1sKW56ATML7j1dCUH7b/xynTJv3Z4B29gO227LC5+
X-Received: by 10.152.7.229 with SMTP id m5mr13284178laa.80.1422756332740;
	Sat, 31 Jan 2015 18:05:32 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	l4sm2109306lbc.16.2015.01.31.18.05.32 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 31 Jan 2015 18:05:32 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  1 Feb 2015 04:03:53 +0200
Message-Id: <1422756233-15588-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1422756233-15588-1-git-send-email-andrei@gherzan.ro>
References: <1422756233-15588-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: Remove old v3.2.27
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
X-List-Received-Date: Sun, 01 Feb 2015 02:05:40 -0000

Change-Id: If5e0a88acdfe67903d1a11133849f35f453904ac
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
deleted file mode 100644
index b10589e..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-require linux-raspberrypi.inc
-
-SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
-KBRANCH = "rpi-3.2.27"
-- 
2.1.0


