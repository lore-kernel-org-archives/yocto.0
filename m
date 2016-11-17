Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BB59E00CD2; Thu, 17 Nov 2016 05:23:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
X-Greylist: delayed 529 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Nov 2016 05:23:14 PST
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 194BCE00A48
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 05:23:14 -0800 (PST)
Received: from localhost.localdomain (118-169-187-55.dynamic.hinet.net
	[118.169.187.55])
	by msfrf2603.sfr.fr (SMTP Server) with ESMTP id 9BB551C00100C;
	Thu, 17 Nov 2016 14:14:22 +0100 (CET)
Received: from localhost.localdomain (118-169-187-55.dynamic.hinet.net
	[118.169.187.55])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2603.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 17 Nov 2016 14:14:19 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 17 Nov 2016 21:13:52 +0800
Message-Id: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] linux-raspberrypi_4.7.bb: upgrade to latest good version
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
X-List-Received-Date: Thu, 17 Nov 2016 13:23:18 -0000

There seems to be a lot of rebasing these days on the raspberrypi linux repository for 4.7, with previously well-known revisions not existing anymore in the tree.
Also, some files have mysteriously disappeared from the tree when they were available 2 months ago, and just re-appeared 3 weeks ago...
This attempts to upgrade to the latest "good" version for 4.7, with all the files that should be there being present.
It does compile, as of today - until when depends highly on what's going on in the raspberrypi tree.

Herve Jourdain (1):
  linux-raspberrypi_4.7.bb: upgrade to latest good version

 recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.7.4


