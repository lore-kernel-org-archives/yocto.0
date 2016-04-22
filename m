Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23AF7E00F6B; Fri, 22 Apr 2016 07:46:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF3DE00AD8
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:23 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id v188so23890296wme.1
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=h+xwUeazNAOTRAj0jQtOB1Zr7UrbyLiJ/abbTljUGWY=;
	b=LPzU6LFqx45GB34tqvRF/1SPoybq8dio4fH6Qwcya2SQ6Q6UlJtcI1FuWeP40/4Izz
	uAtqPApzGnu0a8LYeMl3UNE8J/VVbvFNjXc6uELZbfF6PsaD5PNxFAoz79htA6iqQv6N
	TDHqZHiSDYrEEKxeQPqr4Ujzk9f7mxVLRgRbURU6IDBfUHwAjqUciKDdpha4hawxbPMG
	Zkl1Pz62PfLQbakbcpLGvzBM76ZQm6x3Qa1QUnAPZhZAS4yFsMUOpHqflWJkOsXo56u0
	aw20d0Fk0YKCddaN4YBROWKdQ0j+IM/LMH2ngz0g4nA+8KDXoriw5WRT6oQulFQRceO4
	Yuog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=h+xwUeazNAOTRAj0jQtOB1Zr7UrbyLiJ/abbTljUGWY=;
	b=craFcBe7xd6LG0bU4Q0qHE7KsgdqzDqvjzKnJd2VGerlDU3gDtL2qMRovDAyg1mYCp
	7muITe0bh3S2rIybV+YcH1g6zBUrkMhyK0O6yHCffQHAfanwuVlUnRd5S/PBHoUshcm3
	7Mg6zozRboqFy9LbAbiNiDOsiDBGcbk6533pzJnrYKj2Qmt7RdjnU2EIh9AJiMPOfNnd
	Xcvwsy4MVm58K3CBzIxhMSRfQ1/YqxmKSvAlwIDf7vRuERrcPZAdQIk1hNzG6DjT58wZ
	t8gY92JlS30/6ISiUM9I8l/3E8P4Le/xuZ7oGfzuBHLhQcXKmqSbDxxsYdI0m0ch3nqm
	P/hg==
X-Gm-Message-State: AOPr4FVHUn+j2qRnlzZkJX7U80s/Lgo7enDkrh9aCZCT9URUDtimlQGt2z2Qu1Cq8KBkIw==
X-Received: by 10.28.177.132 with SMTP id a126mr4136130wmf.86.1461336382462;
	Fri, 22 Apr 2016 07:46:22 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id m14sm3750574wmc.4.2016.04.22.07.46.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 Apr 2016 07:46:21 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 22 Apr 2016 16:46:11 +0200
Message-Id: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
Subject: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Bump to v4.4.7
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
X-List-Received-Date: Fri, 22 Apr 2016 14:46:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 8e4530f..9cb8aae 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.6"
+LINUX_VERSION ?= "4.4.7"
 
-SRCREV = "2faaa2ccef9e4c595bd26f14285c225ceea6097e"
+SRCREV = "3de232825c9ba5989522b8691eb6ac5df6619458"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-dts-add-overlay-for-pitft22.patch \
 "
-- 
2.8.0


