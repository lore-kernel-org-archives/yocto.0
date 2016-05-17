Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E7C5E00D4C; Tue, 17 May 2016 02:43:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95209E00CC2
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 02:43:51 -0700 (PDT)
Received: from localhost.localdomain (111-250-202-28.dynamic.hinet.net
	[111.250.202.28])
	by msfrf2629.sfr.fr (SMTP Server) with ESMTP id 44D341C00141C;
	Tue, 17 May 2016 11:43:49 +0200 (CEST)
Received: from localhost.localdomain (111-250-202-28.dynamic.hinet.net
	[111.250.202.28])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2629.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 17 May 2016 11:43:47 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 17 May 2016 17:43:28 +0800
Message-Id: <1463478209-57439-1-git-send-email-herve.jourdain@neuf.fr>
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
X-List-Received-Date: Tue, 17 May 2016 09:43:54 -0000

The layout added is the one for French (France).
The behaviour for the CAPS keys is the same as Ubuntu (which is different from the behaviour in Windows).
In addition to the layout, a patch has been necessary to support a "caps" tag, that sets the value of the key when the CAPS action modifier is in effect.
There is no impact when the tag is not used in the xml description of the layout, therefore there should be no impact on previously existing keyboards.
This feature is needed for the french keyboard - at least - in order to handle the uppercase accented letters, that are the ones accessible when caps is on, for some keys.
Test has been done using sato.

Herve Jourdain (1):
  Addition of french keyboard

 .../files/0002-add-french-keyboard.patch           | 477 +++++++++++++++++++++
 .../matchbox-keyboard/matchbox-keyboard_git.bb     |   1 +
 2 files changed, 478 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patch

-- 
2.7.4


