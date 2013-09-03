Return-Path: <paul.betafive@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA251E01493
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 05:27:15 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hj3so1838561wib.1
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 05:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=i3abxD+yp2q3f8A4R6B1VrEUHkzJV2SArrmajwjdhEA=;
	b=WZlkI2KsSPrwXNDPaybqoamIOiS8g+HNOnFWyRRgPAxRj9omxdeRmQ3Yo+VQQ9rc0T
	gBtfvoy0E/Z71zQmxJ/x5SixJUi/qrv8I4AlaECd4aB0H0Aea+5rMzykKUOLa++H/AwY
	2C2L1x0kkL6ZNMQ2k4MmcArSeUD8L2laJMk4dWx0L7+Pzv3IQY8GhqeVz73ahoMMdyfo
	Bp5hZNj8WsRaW7w2YkQ7TCabJ2vDhqyOz9I7ctanmIb+mrCcej+FRYbUGCr89ESTXHnA
	tCvnkBQgzQXqHi5bao4aXPPNdA0IVHYcJj20H8ATxlcFCCPTDdvrCiAIEqUOA5L37o/k
	Ei9Q==
X-Received: by 10.180.75.239 with SMTP id f15mr18023670wiw.43.1378211234812;
	Tue, 03 Sep 2013 05:27:14 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83]) by mx.google.com with ESMTPSA id
	fv10sm23338282wic.0.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 05:27:14 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Tue,  3 Sep 2013 13:26:44 +0100
Message-Id: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.4
Subject: [meta-raspberrypi][PATCH] 3.8.y series linux-raspberrypi kernel
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
X-List-Received-Date: Tue, 03 Sep 2013 12:27:21 -0000

Build and boot tested.

Andrei: I'm unsure if you want this to be the new preferred kernel version, I'll
leave that up to you.

Paul Barker (1):
  linux-raspberrypi: Add version 3.8.13

 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb

-- 
1.8.4


