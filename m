Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A21BE013B0
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 15:36:51 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id C946BB6A008;
	Wed, 11 Sep 2013 00:36:49 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.fritz.box (ppp-188-174-75-98.dynamic.mnet-online.de
	[188.174.75.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 4DF05B6A002; 
	Wed, 11 Sep 2013 00:36:49 +0200 (CEST)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 00:36:30 +0200
Message-Id: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.1.4
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 0/4] Refactor kernel recipes
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
X-List-Received-Date: Tue, 10 Sep 2013 22:36:52 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Hi,

as follow-up to the discussion in 
[yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
I've refactored the kernel recipes a bit and included all discussed
kernel versions. The default is now 3.6.

I've left linux.inc as-is, as this seems to be copied from meta-oe. Should
we include this directly instead of copying it here?

Philipp

Philipp Wagner (4):
  Refactor kernel recipes to reduce code duplication
  Remove tabs from recipe
  Make Linux 3.6 the default for Raspberry Pi
  Add kernel 3.8 and 3.11 for Raspberry Pi

 conf/machine/include/rpi-default-providers.inc   |   3 +
 recipes-kernel/linux/linux-raspberrypi.inc       |  34 +++++
 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb |   6 +
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |  33 +----
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |  33 +----
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb |   6 +
 recipes-kernel/linux/linux.inc                   | 174 +++++++++++------------
 7 files changed, 140 insertions(+), 149 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb

-- 
1.8.1.4

