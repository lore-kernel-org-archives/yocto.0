Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 250FFE00E1E; Tue, 17 May 2016 22:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A03E00E18
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 22:34:07 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id 4F6F01C000835;
	Wed, 18 May 2016 07:34:03 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 07:34:00 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 13:33:44 +0800
Message-Id: <1463549625-58594-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [matchbox-keyboard][PATCH 0/1] Addition of french keyboard
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
X-List-Received-Date: Wed, 18 May 2016 05:34:11 -0000

The layout added is the one for French (France).
The behaviour for the CAPS keys is the same as Ubuntu (which is different from the behaviour in Windows).
This layout uses the "caps" tag, that sets the value of the key when the CAPS action modifier is in effect.
Tests have been done using sato.

Herve Jourdain (1):
  Addition of french keyboard

 layouts/Makefile.am     |   2 +-
 layouts/keyboard-fr.xml | 343 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 344 insertions(+), 1 deletion(-)
 create mode 100644 layouts/keyboard-fr.xml

-- 
2.7.4


