Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04510E00A0C; Wed,  8 Feb 2017 21:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D039E009DA
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:25 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id v184so16925548pgv.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yivF7REQO385aTJG9hYuwauWdo4XlnCBixZfSTH28Ks=;
	b=SeVIQXzNuzwbM14jXNXE+u2ku6wbGEhbKgCZXi3L7SoeGnoG+N62OI0i/M4eEKaYoy
	ay+NdHjPx6yVFRy5J1Wbpmy0/4u1In4xu/pXly5VI7BjXkOsjXzMLBLcfeweesZi05h6
	LZSSKLpViHxoxb/msU2XgfEJOjB4mKFtcYpr6v+eEXY/JKQaJz5mHqHq+z62fkibsBzJ
	gRYek6/XNHwx4fYQe4b+T0VtLQYIohxI2wGvtXcPfRA2gF7QysVylLZkGjyf3COQ/HRk
	vvdQNdVX2d/jfFHbdvk+8RdMlLeSz5w+M8O2ffDytwgDuvzlPuyRiHN6Wpf3PsVT5ODH
	46sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yivF7REQO385aTJG9hYuwauWdo4XlnCBixZfSTH28Ks=;
	b=nudxda3U2XmB3n2cfOD+bZCMOsHm1zoenRl8CLsKq+LhFCHTdU54HZy+uPYYvCATbH
	ufFjJV5efFgstN1YJt1WUIqhgiVbzTEHoa1VgFXWRXsWJgcF7g0HmPJ/g1DchUJU1FbB
	Vb/qN8V7zOk4sqS5V4Xkq1tqHdITxmmo8zCvgjSTPYwIvXn9Q+OoldJkyN3tA3sz8PbB
	eeyR481vMzS2ApC445OQD6loXu/oRPYVajpxkRL0ZDDzvRrrGhC9U4mbPSeU4l84nvfq
	H3F/C9jFwp/JL2Vygfy6CTDDgJGjGNI/QYWCRNAwp+A/hyTWKJJ+bone+1ex8Yhgwdry
	L2eg==
X-Gm-Message-State: AMke39lc+ov9bKX4kfEjCzceHyilO54WTG7hA438jpftwdnRYea2rkmNRpO35yaD9zAg1g==
X-Received: by 10.84.231.139 with SMTP id g11mr1974212plk.110.1486619364855;
	Wed, 08 Feb 2017 21:49:24 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:24 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:48:58 -0800
Message-Id: <20170209054903.31598-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/9] linux-raspberrypi_dev.bb: Add recipe for tracking development tip
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:27 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_dev.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
new file mode 100644
index 0000000..9440d80
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.9.0-rc7"
+
+SRCREV = "10da0c942de1830b48dfbfb5d68ec00af7ca7c43"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+"
+require linux-raspberrypi.inc
-- 
2.11.1


