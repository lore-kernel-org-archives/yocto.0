Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 473B6E0124C; Thu, 11 Aug 2016 18:06:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB92BE01039
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:23 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g202so589088pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=IqEh9U/6oflOLzShRGXHF4wEMwJtxB87Zf84fY/NP9I=;
	b=F8iliTIBdS/PE6nBoY4L1745tIyuN4ysyarnnpcQm5Av2a7jyuMfmNx7h+T4Hp11GM
	B03m0TFxysyQ8qlnPlngc3PnDlPM3ZIFMGwAbps6ZHTs6KXSFghl3zABlMfVBTN/5vOo
	t+vvRhAq9lMaXnCy2WTVaneQvnq36ZDzoGApo7tvZEkRdxsT//EyjcHyt1s7CmDoHu0z
	2wQO9du2NFAXsCrylHab3NRCYQ832X2Tn6e/+4Ob3/Iw1hmJzXmmkKKYVzNqjS4uQLPs
	jtq5SYkNfX/qp8j3ZLBm7t4H/+Au0mK7Iw06cZIF/P0Dq/0vt2lyeF50KzC/NSRRJtbL
	OXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=IqEh9U/6oflOLzShRGXHF4wEMwJtxB87Zf84fY/NP9I=;
	b=OjR+jA0rTce9KMiSeqFs221gElm86e/aPqsTjJt1OOGx6nt6oZ7lASGHjvtJu8BJgX
	Wv4g2skP8OGatfkJErvXz7MiVTvT+uny7wDpBsFq3aX/LnY3G6JZHV/1x6F6asUl8mgf
	jcUZSSEh7KAWygyKPsAM0YILUiu+jCZIxs2CeohCzZ4MrQmHyZP4c2rlwpKVbcnPnzmt
	2gdtlRwvChY6bcXdHkJE/LPxKLqpdXd2Cb71ewofcfy3UwCtmsDh24+kiJCp2V20jz0H
	XpIOm9dvJ4XxzVvr4VN1IVznY15ZlCmanUibdekGKZwlswMrsyMonqw3ocPpLTqwjXh7
	cdDg==
X-Gm-Message-State: AEkoouvTDoJSbtK8rAJwNTIS0GcbdeXpc9qXOr+d4GkDkraXwtBLHU4WGs75FTdudg302w==
X-Received: by 10.98.58.73 with SMTP id h70mr22129619pfa.125.1470963983679;
	Thu, 11 Aug 2016 18:06:23 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:23 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:53 -0700
Message-Id: <20160812010608.31182-8-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 08/23] raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:24 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi0.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index ccf9ae7..0df9121 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -6,3 +6,5 @@ MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
 include conf/machine/raspberrypi.conf
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+VC4_CMA_SIZE ?= "cma-128"
+
-- 
2.9.2


