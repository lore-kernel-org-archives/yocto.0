Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 804AEE00AA6; Tue, 11 Aug 2015 05:31:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A1B3E00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 05:31:53 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so66831950wic.1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 05:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=gNEYCU5KjDFehBPC5TjxeaR9S8WU5Bdr+8+i2DxPLsw=;
	b=0F3+lkw05MW+yo7KWT3MIkQvG3kR6A2GU5dcaI8HHkfZIFXW91sIlAMmSaU5oqqlWZ
	n+rzM1k3QU4ft6RR2/nhF4gDeKQy4vbjrXYIP0AEqrJOC1vZYZrC1OYtwhBgHjwgKXrY
	Rm/6ezBs1SUFlI4n9ff7jRxNfAFIQiji2Vm539zaNXIyvZ2o5xmyraDUCW2dCR43/BkD
	BrhKwcJClLplhNfvfovjzlOH5KnpxZwQ0VxTofBIGN+Ni9FNFI822djzPI2zbeZogBi0
	q4XiI5BaWIuIZGL0g9ZD14cVVnwcEzpHlfqYkVYDPxRXNsL2OinR8Jo/ml+AhaRveOQc
	UnYg==
X-Received: by 10.194.203.138 with SMTP id kq10mr59282672wjc.124.1439296310733;
	Tue, 11 Aug 2015 05:31:50 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id wx9sm2829613wjb.6.2015.08.11.05.31.48
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Aug 2015 05:31:50 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 11 Aug 2015 13:30:23 +0100
Message-Id: <1439296223-31422-2-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439296223-31422-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439296223-31422-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH v2 2/2] linux-raspberrypi: support kernel 4.1.3
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
X-List-Received-Date: Tue, 11 Aug 2015 12:31:58 -0000

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
1.9.1


