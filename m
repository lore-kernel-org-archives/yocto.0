Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9064BE0124B; Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A9C3E0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y134so582706pfg.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=8WJe3KWzgAqCpmdPgIPfUi5l3pUFxL8Olqlw018wW5s=;
	b=sBf7MIMNyOxt8Cp4+AGlAnlWMlJOdIKKBh8Z6U2VwAPC8R26myVSUMhynw/wtoCYJ0
	U6P0YpDNSS1HDt055lO5ib2kiAN55BlnaclJXkhZJ9nYF+lAatpy9AsTVXGdfJcQttPj
	dPAd86pW1bK+rZk3QpofhcMerYpkl1LEEkykrTU9KN6zAfnNPPxrwRP8sV/3zuwZxKLN
	ouluNF9pzDeIaSYinFJIUt+omGqAVdbI2oMKH0+AI3tszJ2BSoZuS5KhquVuXM6/bLQi
	I00SEDTOCfv2QiAqhwOvTtd/vYmO2ajEv8exnZLhIl7CKXhAgQRdbsKGegf6+JPu7hwP
	J2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=8WJe3KWzgAqCpmdPgIPfUi5l3pUFxL8Olqlw018wW5s=;
	b=Q+6KRSnmdnA0WK+IrNgiev8SKFC8tNlIHVvFsngh3Q25V370gRq+CCTb3fo9BIumNx
	84iOgvSxyJRc2/QPZTxEXnIR+WK+kc8yW1vvh/Ej3IxhWD8c3Ju2lI+qnWJ6aSvJCi/+
	I6dSkX6thlbSiEt/EyfGNXaJfu+plFUVPrqg71IbEEA1rUoO3RBV81pIGsom9/8Tzl3R
	LOiW8n/aKlgC51ACaIsy3KrnIdr3b6TlsEq1xuAPqAYAZFKBMOgm2WMLNncgjQ9DTvcm
	T9+dN5uyogdwJIuIC1wcJSGtvvdZZvxpFrBRPBuzt0goYlgUJekG/Rn+N7P6Wgz/P2JT
	lV1Q==
X-Gm-Message-State: AEkooutxHUZhqzrkXISJhvLsc2RtcZAGgrgaV4gVWZ55VqesJCyrZtua0yWqh//02wFo3g==
X-Received: by 10.98.135.13 with SMTP id i13mr22470934pfe.44.1470963987120;
	Thu, 11 Aug 2016 18:06:27 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:26 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:55 -0700
Message-Id: <20160812010608.31182-10-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 10/23] raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:27 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index cb6056e..438c6e6 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -9,3 +9,5 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 include conf/machine/raspberrypi2.conf
 
 SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
-- 
2.9.2


