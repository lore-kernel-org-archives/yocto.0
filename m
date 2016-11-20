Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2E17E009EB; Sun, 20 Nov 2016 04:04:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D831FE008E3
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:04:30 -0800 (PST)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])
	by msfrf2621.sfr.fr (SMTP Server) with ESMTP id 61BF41C000828
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 13:04:28 +0100 (CET)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2621.sfr.fr (SMTP Server) with ESMTPSA
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 13:04:26 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
Date: Sun, 20 Nov 2016 13:04:17 +0100
Message-ID: <003801d24326$3c2f8090$b48e81b0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQFf1IQYxDJY5eNUZl6goLQmP6eODqHGoy8A
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 20 Nov 2016 12:04:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Please disregard this patch, I will send a - slightly - modified version
(cortexa53hf-32 instead of cortexa53-32)

Herve

-----Original Message-----
From: Herve Jourdain [mailto:herve.jourdain@neuf.fr] 
Sent: samedi 19 novembre 2016 14:04
To: yocto@yoctoproject.org
Cc: Herve Jourdain <herve.jourdain@neuf.fr>
Subject: [yocto][meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and
add raspberrypi3-64.conf

Modify raspberrypi3.conf to use cortexa53 instead of being treated like a
raspberrypi2 Add raspberrypi3-64.conf, to support armv8 / 64 bits on
raspberrypi3

Herve Jourdain (2):
  Modify raspberrypi3.conf to use cortexa53 instead of being treated
    like a raspberrypi2     Add raspberrypi3-64.conf, to support armv8 /
    64 bits on raspberrypi3

 conf/machine/raspberrypi3-64.conf             | 19 +++++++++++++++++++
 conf/machine/raspberrypi3.conf                |  8 ++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)  create mode 100644
conf/machine/raspberrypi3-64.conf

--
2.7.4


