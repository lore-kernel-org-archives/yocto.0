Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D6AFE009E7; Tue, 20 May 2014 08:34:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-wg0-f47.google.com (unknown [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D09DE0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 08:34:47 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id x12so682326wgg.6
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 08:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=oX3yGeJkv6AMlFKzkV5UgzO7ewzka0bdjT9bbgrasHM=;
	b=O9Dhg9zqRMe3OcZ3kfQdK1fI3byrvEaR/T920fKmGsgLQ92sBLgrxxxxjBoyoDyPIB
	87FdR5IqgP3vSo3MVBqLBTMzw6XZVVR7p86XZjl8TIAA8TyPMUik8P3VVdFqIm8t66YZ
	I6jWQHXkW/xRQ6Ug/6SXIg7mG5dB+YAX+s624DJw6OnWAFqjGXw6tFlDFXkDKYYcahlD
	WcrTBhIwI4lq2+ShU9NIw7jQS6VdKBV2RgsSnUKI+Wq6h1AM7oAWDw8UG0ctuHfTchQ5
	2TQwaddJcqO7hB3n92lNDtmDv70pHAHvKJYZ0m9a5xpZGGYIlYBLGA6unzFGhhc49er3
	Xdrw==
X-Received: by 10.194.88.106 with SMTP id bf10mr38038061wjb.26.1400596880208; 
	Tue, 20 May 2014 07:41:20 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id bj5sm21110647wib.3.2014.05.20.07.41.19
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 May 2014 07:41:19 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 15:40:59 +0100
Message-Id: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.3
Subject: [meta-raspberrypi][PATCH 0/1] pi-blaster: Add recipe
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
X-List-Received-Date: Tue, 20 May 2014 15:34:50 -0000

Please see following patch for details.

The following changes since commit f3a8693f08f99893453fd1fe282515b2f222c080:

  omxplayer: Update to remote's HEAD (2014-05-09 14:56:59 +0300)

are available in the git repository at:

  git://github.com/DynamicDevices/meta-raspberrypi ajl/pi-blaster
  https://github.com/DynamicDevices/meta-raspberrypi/tree/master

Alex J Lennon (1):
  pi-blaster: Added recipe

 recipes-devtools/pi-blaster/files/initscript.patch | 71 ++++++++++++++++++++++
 recipes-devtools/pi-blaster/pi-blaster.inc         | 36 +++++++++++
 recipes-devtools/pi-blaster/pi-blaster_git.bb      |  3 +
 3 files changed, 110 insertions(+)
 create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch
 create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc
 create mode 100644 recipes-devtools/pi-blaster/pi-blaster_git.bb

-- 
1.9.3


