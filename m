Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 034FBE00D4A; Sat, 14 May 2016 02:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B121FE00D01
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 02:25:31 -0700 (PDT)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])
	by msfrf2630.sfr.fr (SMTP Server) with ESMTP id 01C811C000C35;
	Sat, 14 May 2016 11:25:31 +0200 (CEST)
Received: from localhost.localdomain (111-250-208-151.dynamic.hinet.net
	[111.250.208.151])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2630.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 14 May 2016 11:25:29 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sat, 14 May 2016 17:25:04 +0800
Message-Id: <1463217905-63424-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [PATCH v2 0/1] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Sat, 14 May 2016 09:25:36 -0000

Recent kernels tend to use .dtbo files for device tree overlays, instead of .dtb before.
.dtb are still used, but only for the "real" device trees (not the overlays).

On some platforms (meta-raspberrypi for instance), recent firmware only loads .dtbo files for overlays.

This patch tries to address this issue, while not breaking support for .dtb overlays.
It allows the installation/deployment of both .dtb and .dtbo files, for device trees and overlays.

This is in line with the behavior of kernels 4.4.6+

Herve Jourdain (1):
  Support for .dtbo files for dtb overlays

 meta/recipes-kernel/linux/linux-dtb.inc | 66 +++++++++++++++++----------------
 1 file changed, 35 insertions(+), 31 deletions(-)

-- 
2.7.4


