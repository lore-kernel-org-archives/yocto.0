Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E752EE00B9E; Sat, 19 Nov 2016 05:04:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E32E00AB0
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 05:03:59 -0800 (PST)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])
	by msfrf2621.sfr.fr (SMTP Server) with ESMTP id 793BC1C00043B;
	Sat, 19 Nov 2016 14:03:58 +0100 (CET)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2621.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 19 Nov 2016 14:03:56 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sat, 19 Nov 2016 21:03:38 +0800
Message-Id: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sat, 19 Nov 2016 13:04:04 -0000

Modify raspberrypi3.conf to use cortexa53 instead of being treated like a raspberrypi2
Add raspberrypi3-64.conf, to support armv8 / 64 bits on raspberrypi3

Herve Jourdain (2):
  Modify raspberrypi3.conf to use cortexa53 instead of being treated
    like a raspberrypi2     Add raspberrypi3-64.conf, to support armv8 /
    64 bits on raspberrypi3

 conf/machine/raspberrypi3-64.conf             | 19 +++++++++++++++++++
 conf/machine/raspberrypi3.conf                |  8 ++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/raspberrypi3-64.conf

-- 
2.7.4


