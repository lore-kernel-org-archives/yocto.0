Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 391A2E00721
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 13:52:10 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id E074FB6A094;
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.7 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from philipp.lis.ei.tum.de (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id C062BB6A002; 
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
From: Philipp Wagner <lists@philipp-wagner.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 22:51:38 +0100
Message-Id: <1359582698-24226-3-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 2/2] Add RPROVIDES for OpenGL libraries
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Jan 2013 21:52:11 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Often the OpenGL libraries are dlopen'ed rather than linked against,
which makes it necessary to add OpenGL libraries to RDEPENDS of the
package. This of course requires that they are RPROVIDE'd somewhere.

I've seen a bug report about this at
https://github.com/djwillis/meta-raspberrypi/issues/55
but I don't know enough to judge how/why virtual/libgl is required,
so I'm leaving it in for now and only adding the runtime library
provider.

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 recipes-bcm/vc-graphics/vc-graphics.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-bcm/vc-graphics/vc-graphics.inc
index 915b7c1..36cbdf9 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.inc
+++ b/recipes-bcm/vc-graphics/vc-graphics.inc
@@ -4,6 +4,7 @@ LICENSE = "Proprietary"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=86e53f5f5909ee66900418028de11780"
 
 PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
+RPROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
 include ../common/firmware.inc
-- 
1.7.9.5

