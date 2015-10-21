Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F9FAE00ACE; Wed, 21 Oct 2015 14:12:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 507F0E00A70
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:44 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so109328741wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=IIG+xAub6CjjXzIkQtTU7/Y4J8QiSkGqL4QOfBAwkaM=;
	b=FCnmHz4hOYGN7w2VN1bLARagFt11eIZNoQy/RtaMMHaY7uGd09vX0ZmZQV4Td3jz1i
	bRKLNMDV1s/QOEJBSouVIMpZhYsmPmdRvD4+ZGwnevxI0K6rzwZBIB/MM3AJaDds56AX
	9C1H1wbe1uJC/t8LT2rCiyyWWjOCtmgU27ub8Q6/7oz6mzB2jXcF2Ms4whl4APpamdjA
	WD3G71OeTOvkbpkevy0kWbUf4NwQnZPsZgNwBIyzzYB9xYNjAq6XuAaLO9ORWwGZHiY8
	aGDL4JdgxCdZGzZIdObZST9Uzy1EQcOz/8eM0f2PqsIbl3VJadXjHFVZyFqahVTSUcUT
	gNlQ==
X-Gm-Message-State: ALoCoQk8h3OuO3WRo9+DNdY88dBtM7yDllSCW83+2kGt0SjPH7OS2qTcoE69/AJX530x9qalnnx2
X-Received: by 10.180.93.2 with SMTP id cq2mr12729599wib.33.1445461963896;
	Wed, 21 Oct 2015 14:12:43 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:42 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:02 +0200
Message-Id: <1445461931-18349-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 02/11] linux-raspberrypi: support kernel 4.1.3
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:47 -0000

From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.1.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
new file mode 100644
index 0000000..637c5b2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -0,0 +1,6 @@
+LINUX_VERSION ?= "4.1.3"
+
+SRCREV = "2a2dc4e5e4946e75b98c71eacc3660e913dbd302"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
+
+require linux-raspberrypi.inc
-- 
2.6.0


