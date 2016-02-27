Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C86CE00DC7; Sat, 27 Feb 2016 07:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FB1E00C55
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:18 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id d32so30899843qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=Z9IlojW9Qw3gxegey6npoXD8qpc/ur5t8WYXlO1sULc=;
	b=fGEG43Zt3IM7bfMpcej+AfgDLW5KIm+sCQBN9bjR3ZzvvSHoEa7av1fsWkLjlR9ycE
	UTRu/9gZxyCxutoBzPv85jCnO2XovFRvgCtEd04KlfHIHW24ZHwVRE68b2cupTb8a6eR
	7Aas18h9+UW/VoDBG3LbusPf569W4PgehZEySX9qdLL8EjFwYN8rFISKSIUyPPuCZl5d
	+12Qf8GTlhBy0DkzcjXSloQMBbjSMZzOITg9SSzXBNX+ByWh7GUOQBY1vrOB2qIscgrk
	PxyCRcOE8FuAoYvF1N3YtBlujB+eutwMrnD9Z+r1g+RjrDtd+sgqklGtswJGX+OLYFFo
	xAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=Z9IlojW9Qw3gxegey6npoXD8qpc/ur5t8WYXlO1sULc=;
	b=idf779lCJ/YBeXaeeTUc8iXm5J/vvOUu9/pie29UywxRaD0R1A3wrmPTNbLJ9K+UbE
	qG5hh9gi8PyCaMINvxUR8qNdPVZUcf3O5MtZnYpTAhvLpdumnDPaVIZgswaPQ6PIMMVR
	3PUaV4ajzpyJyMB16fgePcnRg1TdjIiouFNCSSLmS04zXUCFXits9pXVxbkaqxDgrTnO
	kIpkzQqpfZVIDgIC8YRRkxf7vigpRAldGTyHvDv5Vhcs8/p8fqMKgVxgcX9L1XSj7F1A
	yV+zqu8uVm9UBRzKCrK6SFeoIQoa8UAGvht722X2901pCAF0vHYWXgW8Bai5rrlGoTAR
	M6gA==
X-Gm-Message-State: AD7BkJK8A0BYSDI5+FWVPYwbobkN2+cvZnHRqlngkLAFyE3aTvHYNj7DUzoCR2UK+SxIvw==
X-Received: by 10.140.88.229 with SMTP id t92mr8937923qgd.8.1456586838499;
	Sat, 27 Feb 2016 07:27:18 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:18 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:56 +0000
Message-Id: <a2d16e5a63d232271d271656833d517258a1731c.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 17/23] linux-raspberrypi: Upgrade 4.1 kernel to 4.1.17
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:29 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index 3a3cf40..d5bfa45 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,6 @@
-LINUX_VERSION ?= "4.1.10"
+LINUX_VERSION ?= "4.1.17"
 
-SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
+SRCREV = "cb2f10196a9b718a2d94bb4ac0887c2ea14988ae"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
 
 require linux-raspberrypi.inc
-- 
1.9.1


