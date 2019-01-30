Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2F67E00D16; Wed, 30 Jan 2019 01:57:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7513E00D11
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 01:57:46 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 43qJh93TZ3z5k
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 10:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1548842265;
	bh=+2yYDkGU+Q9t0OXMJ6bAvyHdnrxM9/g7Jze2E0wweuY=;
	h=From:To:Subject:Date:From;
	b=Pcp9xPcZLKqRny/nhK5e6fj4D/E7WX4zV7WG7UB5/1SdcRMw0dpsdYaJnK2Og+KhB
	TGVcn7e2oqTtAyiYPLjUVDHsYgMYhZmCWCnNf59Nmi5b5sJgQ6IJyWJD/LBgdPYchC
	QLHZ2W1MH5qvpQWfgy5iE3H+4TV+oYcYDskkR276Mw/CEU9rcvwEH2+f58EtZr/0/M
	EQudWLSlDIVKA5xCBFrxF9vwXiM1mrR4rJMrx9SmbZvzSPHCH0BDMM+9myoWJ3K9Bh
	8jGnkfkpCEsuF/pLS44TqjjY/Z7J+mZ3YFuTak8H4PhaTOGXMZ0lFN9Iq7ENFcf4VJ
	e0JbeTUntWdywSBHzuB5imYZLfznyfO92XRdWxlkEioQpR4qf4uXJjyyxXwjdBLxfw
	wMUtzBoxCufmF4/R4ru5uZrIxq/tlPE7bars4CupwYIC4+PIUrqBscBqVr0rJf2oxS
	8/tPBGt39Tt4U1oH4ZpD9GZ1qEvAH/ItvSQM2unsrLgCC0ISAxdX9rjzk//asTaINE
	KOrOa9Rtx3S6f7Ua7cY+X6fyhzAwxuK/Qfod2I7VROpciGcIZaxyMlEIkmVT+gGCAn
	JRZKIePL1IiQRyg2872HoOlnrwZ443Ti8vUD71tVFsYAWttDV1UxILpJdEkJuxEDLW
	vBdePyC3CzjbxNjthCyvbyA4=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2019 11:57:43 +0200
Message-Id: <20190130095743.12467-3-bunk@stusta.de>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH] xmlsec1: upgrade 1.2.26 -> 1.2.27
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
X-List-Received-Date: Wed, 30 Jan 2019 09:57:50 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 recipes-security/xmlsec1/{xmlsec1_1.2.26.bb => xmlsec1_1.2.27.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/xmlsec1/{xmlsec1_1.2.26.bb => xmlsec1_1.2.27.bb} (93%)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
similarity index 93%
rename from recipes-security/xmlsec1/xmlsec1_1.2.26.bb
rename to recipes-security/xmlsec1/xmlsec1_1.2.27.bb
index 4bdf498..0cd06c5 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
@@ -20,8 +20,8 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
     file://run-ptest \
     "
 
-SRC_URI[md5sum] = "9c4aaf9ff615a73921b9e3bf4988d878"
-SRC_URI[sha256sum] = "8d8276c9c720ca42a3b0023df8b7ae41a2d6c5f9aa8d20ed1672d84cc8982d50"
+SRC_URI[md5sum] = "508bee7e4f1b99f2d50aaa7d38ede56e"
+SRC_URI[sha256sum] = "97d756bad8e92588e6997d2227797eaa900d05e34a426829b149f65d87118eb6"
 
 inherit autotools-brokensep ptest pkgconfig
 
-- 
2.11.0


