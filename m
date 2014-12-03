Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8376E00874; Wed,  3 Dec 2014 03:04:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.216 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C97E0080C
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 03:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1417604668; l=1587;
	s=domk; d=jenslucius.de; h=Date:Subject:Cc:To:From;
	bh=VOo/GKQngnDFF25V15VHI85EtEI=;
	b=rwOHKzNZw/PiRffZR2HmsETAh5LfvOgl4g/uuZwgsrnJWNynmyBIKvp+Fkpk6kKQRRr
	+ORtx4Q+bpPOaNU2Cub6ZESNRYidCQ+hYLtB2drGssPOk7d+Vh768G+xoei6mW7CFdjOC
	uz91C2czvUS4mcFR5jn0BmBsCwX7aucibxk=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmof81zRM/HSUb2Cys3krqm+WJkzjC6Yh+5bo=
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain (p5B0E3657.dip0.t-ipconnect.de
	[91.14.54.87]) by smtp.strato.de (RZmta 36.2 DYNA|AUTH)
	with ESMTPSA id j03559qB3B4S0HL
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate);
	Wed, 3 Dec 2014 12:04:28 +0100 (CET)
From: Jens Lucius <incnews@jenslucius.de>
To: yocto@yoctoproject.org
Date: Wed,  3 Dec 2014 12:03:46 +0100
Message-Id: <1417604626-52166-1-git-send-email-incnews@jenslucius.de>
X-Mailer: git-send-email 1.9.1
Cc: Jens Lucius <info@jenslucius.de>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Replace not working v3.16.1 by v3.16.5
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
X-List-Received-Date: Wed, 03 Dec 2014 11:04:37 -0000

From: Jens Lucius <info@jenslucius.de>

The recipe for 3.16.1 is not working because of a typo in branch
and the revision not being available any more.

Update to latest (and last) 3.16.5.

No Update to a 3.17.x because these get rebased regularly.

Signed-off-by: Jens Lucius <info@jenslucius.de>
---
 recipes-kernel/linux/linux-raspberrypi_3.16.1.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
deleted file mode 100644
index 60aca96..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "82692a293288c334f3da11895e63ea7d066db4f6"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.14.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
new file mode 100644
index 0000000..97947c2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
@@ -0,0 +1,6 @@
+SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.9.1


