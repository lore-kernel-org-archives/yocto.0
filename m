Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 834AEE006C7; Mon,  4 Apr 2016 10:54:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D979E00522
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 10:54:21 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id r187so12343406pfr.2
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 10:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=jaj+HBSbxozYvIKX0UBfmNU+/x4phfMVUDmcPutOl1A=;
	b=p+EY2V773m4C68sUpxcoNe9WYbMKh6xWGUaTZw4nPTasvD9MBbFZacHk0wJJJXlHpJ
	QAY+Am5iSVQ3j661WMNWbAome12MGgILuesnzukWlS6BDCO2LufgUGA2BWZvqel9mO7P
	vGEd9skvldkQRXgvhfDU6eyovompYdnFUS+/ohuNQEJmogbSCmdKNsuiRYe/OOsGlfLQ
	0t3KDgjctxdWoA4BeQ9CjXzpYx00GSMWV1amLSTlqq6/C5g3XkH36fJh7y6Gx4Gn3yTS
	uzd775a6i73/PVzq+SqnRAEC9MmnX5lao4moYs206qIXsIKkgV5MAkuwzIYMhKSFhpC7
	75hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=jaj+HBSbxozYvIKX0UBfmNU+/x4phfMVUDmcPutOl1A=;
	b=ldihgM/YXokDkPm8WCoTQSqz/0cpCk/bOUtd8pTtXVN2xXwtZcMJmuoMF9mYcb3+Oo
	unkiZfZ1m0x/N9NPXCJfzqvq+/nkYt7yDtdZ74QXg+Yxi5hbgPcxz+zZk7NLMPWazdTU
	nSudQIa+BdeDMlUhIpEmb/m9cvoEx3HD7bD4nfqw1+Xx2ZBaKmYMyc6Q7eEEip2UzB+o
	daVJuxSjDr1j1rLfiCbgTtGtCnZyt0n7GBZVmLByAVdguz7xfzpsECGp6AEEKsRVCB4B
	+DXOybw7Xne0PBJ8a5Vq66kvqU77EewR6P83Ao17aQ95ykIXP4rfQbS+mlUo8z19RFzX
	Tj8g==
X-Gm-Message-State: AD7BkJJlNe33CYlqJOlmKy826mu7WB85Vdd0dYu8jCF7FVHg2VX4kZxc0vydyDPimTHMJg==
X-Received: by 10.98.14.67 with SMTP id w64mr22648439pfi.154.1459792461429;
	Mon, 04 Apr 2016 10:54:21 -0700 (PDT)
Received: from resin.localdomain ([209.65.105.100])
	by smtp.gmail.com with ESMTPSA id
	x64sm41011333pfa.72.2016.04.04.10.54.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 04 Apr 2016 10:54:19 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 19:54:12 +0200
Message-Id: <1459792452-2692-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 1/1] README: Mention all the supported machines
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
X-List-Received-Date: Mon, 04 Apr 2016 17:54:25 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 536926b..542b135 100644
--- a/README
+++ b/README
@@ -73,7 +73,10 @@ revision: HEAD
 a. source poky/oe-init-build-env rpi-build
 b. Add needed layer to bblayers.conf:
     - meta-raspberrypi
-c. Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf
+c. Set MACHINE in local.conf to one of the supported boards:
+    - raspberrypi
+    - raspberrypi2
+    - raspberrypi3
 d. bitbake rpi-hwup-image
 e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
 f. Boot your RPI.
-- 
2.7.4


