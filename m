Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E29EEE00C66; Wed, 18 May 2016 01:35:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C88E00C1F
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:35:20 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2627.sfr.fr (SMTP Server) with ESMTP id 534671C000812;
	Wed, 18 May 2016 10:35:19 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2627.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 10:35:17 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 16:34:58 +0800
Message-Id: <1463560499-60284-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [matchbox-keyboard][PATCH v2 0/1] Support of "caps" tag
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
X-List-Received-Date: Wed, 18 May 2016 08:35:25 -0000

This patch allows the support of a "caps" tag, that defines the value of the key when the CAPS action modifier is in effect.
This feature is needed for the french keyboard - at least - in order to handle the uppercase accented letters, that are the ones accessible when caps is on, for some keys.
There is no impact when the tag is not used in the xml description of the layout, therefore there should be no impact on keyboards not using this tag.
Tests have been done using sato.

Herve Jourdain (1):
  Support of "caps" tag

 src/config-parser.c                      |  5 +++++
 src/matchbox-keyboard-key.c              | 11 ++++++++---
 src/matchbox-keyboard-ui-cairo-backend.c | 10 +++++++---
 src/matchbox-keyboard-ui-xft-backend.c   | 10 +++++++---
 src/matchbox-keyboard.c                  |  3 +++
 src/matchbox-keyboard.h                  |  1 +
 6 files changed, 31 insertions(+), 9 deletions(-)

-- 
2.7.4


