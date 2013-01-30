Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 369FDE006C2
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 13:52:10 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id A9FA0B6A085;
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.6 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from philipp.lis.ei.tum.de (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 89117B6A063; 
	Wed, 30 Jan 2013 22:52:07 +0100 (CET)
From: Philipp Wagner <lists@philipp-wagner.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 22:51:36 +0100
Message-Id: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.7.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [meta-raspberrypi][PATCH 0/2] Binary graphics library fixes
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

Hi,

I'm working on an application that needs the graphics libraries. Right now
I'm still using the binary libraries (which are still default in 
meta-raspberrypi). Unfortunately, the current default configuration has
two problems:
a) It chooses the wrong ABI version (hardfp instead of softfp). To reduce
   the possibility for error here I changed the recipe to automatically
   select the right version.
b) Many applications dlopen the OpenGL libraries. For that to work, they
   need to be listed in the RPROVIDES list. The second patch does that.

I'm aware of the fact that those binary graphics libraries will be 
replaced with the new "userland" libraries, but until this is all ready
I'd be grat if those patches could be accepted to have a working-by-default
configuration in the meta-raspberrypi tree.

Philipp

Philipp Wagner (2):
  Choose correct ABI version of graphics binaries
  Add RPROVIDES for OpenGL libraries

 conf/machine/include/rpi-default-providers.inc |   10 +++++++---
 recipes-bcm/vc-graphics/vc-graphics.inc        |    1 +
 2 files changed, 8 insertions(+), 3 deletions(-)

-- 
1.7.9.5

