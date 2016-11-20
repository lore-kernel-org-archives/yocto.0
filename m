Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3B9E00D03; Sun, 20 Nov 2016 04:07:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56BF9E00C72
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:07:34 -0800 (PST)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])
	by msfrf2624.sfr.fr (SMTP Server) with ESMTP id AECE91C000819;
	Sun, 20 Nov 2016 13:07:33 +0100 (CET)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2624.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:07:32 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sun, 20 Nov 2016 20:07:12 +0800
Message-Id: <1479643633-62226-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 20 Nov 2016 12:07:35 -0000

Modify raspberrypi3.conf to use cortexa53 instead of being treated like a raspberrypi2
Add raspberrypi3-64.conf, to support armv8 / 64 bits on raspberrypi3

Herve Jourdain (1):
  Modify raspberrypi3.conf to use cortexa53 instead of being treated
    like a raspberrypi2     Add raspberrypi3-64.conf, to support armv8 /
    64 bits on raspberrypi3

 conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
 conf/machine/raspberrypi3.conf    |  8 ++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/raspberrypi3-64.conf

-- 
2.7.4


