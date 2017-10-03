Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21DE9E00D04; Tue,  3 Oct 2017 10:42:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1626 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Oct 2017 10:42:57 PDT
Received: from mx28lb.world4you.com (mx28lb.world4you.com [81.19.149.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5EDFE00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 10:42:57 -0700 (PDT)
Received: from [81.19.149.40] (helo=webmail.world4you.com)
	by mx28lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1dzQnO-00024h-J0; Tue, 03 Oct 2017 19:15:50 +0200
MIME-Version: 1.0
Date: Tue, 03 Oct 2017 19:15:50 +0200
From: Eric Schwarz <eas@sw-optimization.com>
To: yocto@yoctoproject.org
Message-ID: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.40
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx28lb.world4you.com);
	SAEximRunCond expanded to false
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Subject: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Tue, 03 Oct 2017 17:42:59 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello,

it seems that even in the most current yocto u-boot recipes from 
openembedded some general and also x86 specific dependencies are 
missing.
The patch below adds them.

 From 0502033c5e555abaadcb5e01faae041293edddd9 Mon Sep 17 00:00:00 2001
 From: Eric Schwarz <eschwarz@arri.de>
Date: Tue, 3 Oct 2017 18:24:51 +0200
Subject: [PATCH] u-boot: u-boot_2017.09.bb: ARRI adaptations.

- Add missing dependencies.

Signed-off-by: Eric Schwarz <eschwarz@arri.de>
---
  recipes-bsp/u-boot/u-boot_2017.09.bb | 2 ++
  1 file changed, 2 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot_2017.09.bb 
b/recipes-bsp/u-boot/u-boot_2017.09.bb
index 37c21dc..a676252 100644
--- a/recipes-bsp/u-boot/u-boot_2017.09.bb
+++ b/recipes-bsp/u-boot/u-boot_2017.09.bb
@@ -2,3 +2,5 @@ require u-boot-common_${PV}.inc
  require u-boot.inc

  DEPENDS += "bc-native dtc-native"
+DEPENDS_append = " python-native"
+DEPENDS_append_x86-64 = " iasl-native swig-native"
--
2.7.4

Cheers
Eric

