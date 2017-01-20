Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11208E003DB; Fri, 20 Jan 2017 11:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED22E003E4
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:37 -0800 (PST)
Received: by mail-yb0-f193.google.com with SMTP id w194so8849719ybe.1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=gpqvTYJ2HnEtPgbYBuNvnrqelLOEF6pWG9v+ubrc0QM=;
	b=CgiKy9+uEnU8J1WSyPTPwc1lawIMDThGsckqtnW/CqkOt6117lXpxfTXFtm/IfoaGT
	wVf5f6XAYvNcff0SunDymaxWx3OCpFa9wtMx6/jzKN72uhE51ufBlhL0kzFIiMhffyfJ
	dmZ8OWA0EBocPDFxDENm0Bh0YfGt7o7rFJWM9LSIH6gdnXiuMDh93guIZI7sIgnLIdeh
	tzuC4+Vs0zZo+LYEsEhmRzj5PKKn7uX74MRDSUKjQHio776c1U2AIvUbOu4NbcqLgsxZ
	uO3/ngBWSszhsp67zyduyYrOPCfb6au+hc9jD9s9Oizeg2JbqxQaS3NxrtwuXI2RfmYb
	p2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gpqvTYJ2HnEtPgbYBuNvnrqelLOEF6pWG9v+ubrc0QM=;
	b=oJgyHv9Th6Pxmwe8pcrPUq1CW0ydTnkSYpRAI5lkueK53xvKa2V8opw1Kjh45zRlQo
	JCkwvgHgadX+lbKcTToZN+L++7ecc9tDUjgrAF3FJzdyIqeJXQ/teGg96wU1aZS7LOuF
	D2cO+bwKkX+N+Y1Yy+zcU3TaVETE7l0poTO1E/MA4tibzDeGvP8Oq/RZ0MVmkB0i3Rop
	tNAuOVD0TzvkTJlalANMlY/UYifU6iNeRQOsyu80wgEm2B5nT9eSvWl4XMAwGEWnrZUH
	3YzS2AX/POrGKUJ935Q7HwYr9AZuJquP5SxOhzZvnSygerlqVpxUKrkx9mIgB3zMHjiX
	yoXg==
X-Gm-Message-State: AIkVDXIX5tk0k2NoMPJgqyMyXXnhbYW9pwxeJZ3ztKAwvuUDRrtGnh7CpWsZhSO+9IAGvg==
X-Received: by 10.200.51.100 with SMTP id u33mr13505707qta.110.1484939796732; 
	Fri, 20 Jan 2017 11:16:36 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e3sm6673488qtg.7.2017.01.20.11.16.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Jan 2017 11:16:36 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2017 20:16:05 +0100
Message-Id: <1484939765-30566-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
References: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] README: Mention CM1 and CM3 support
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
X-List-Received-Date: Fri, 20 Jan 2017 19:16:39 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/README b/README
index a784890..65a1e5f 100644
--- a/README
+++ b/README
@@ -79,6 +79,8 @@ c. Set MACHINE in local.conf to one of the supported boards:
     - raspberrypi0
     - raspberrypi2
     - raspberrypi3
+    - raspberrypi-cm (dummy alias for raspberrypi)
+    - raspberrypi-cm3 (dummy alias for raspberrypi2)
 d. bitbake rpi-hwup-image
 e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
 f. Boot your RPI.
-- 
2.7.4


