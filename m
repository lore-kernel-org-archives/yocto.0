Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6282E0124B; Thu, 11 Aug 2016 18:06:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87719E01246
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:26 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g202so589149pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oHjAGS0aqQ5PUgWeSgsH74dbNi3MyXQlXCYppx0C9tA=;
	b=xN6mXYH/oHP+dmqdzeVkq+PPs1xqRzyhhejuid3MERbcBzevLj60OmOlX33M68Gd/6
	Hx6+olVG2y8E5Q3/A9liZ/u6WlfjsTodiJ4eY4toMBRcg6DBOZelavXgI2KZyPjwh8Qa
	rP2uIfOa8eX3AYyWKyRemuC5y9czk/kJNWtGGn71DxcAUcfRoEGmFDXW5XLr/bJKPh5R
	wTDVOmOVtIppmTmDEZOVNOP8QIBXDLZFj3pXTG92eXHvxssVNt05Qt2mzW7N2NR3Zv0W
	61Gp5MNiOxpuWvKlgDCWt4HN3agA8WDQa3tzdKoTR7V1Av11rTxHC2kVNcQmSQyAkYZJ
	063w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=oHjAGS0aqQ5PUgWeSgsH74dbNi3MyXQlXCYppx0C9tA=;
	b=MmZxIGDc4fpCQFyNv9DufNEPWsHpjdWAy3bnlqMaiFgURz189eRMaEOkgqF1BHZepH
	g7W9kH37Dg+55HHomdCPTk+fCdeIQoXWl4nWmcbM9twOkPZkpKs0+GDh62w9HWQxwGQL
	0L6sxA/bsozBfhihvBS7ZykE21SipAiLCFNyLxMhF7cMn7EbPO30OB9uTsNiAzJldUUB
	WzXXqJppwkSKwvx2ZM7OQ9f/+1gY9oECFgTamYUnCUu/MqTCWNEoAL+cORCuBfWDddWy
	0URyBVP+yIv3XELjm2cfuJVu2l1F+7Q9T7CpttHpCf4nuv5QCQ0p/q4w6c7J4blanJgZ
	Amow==
X-Gm-Message-State: AEkooutDZIxXyvZ7cKh8UEjXr2KRR9UGxm0PD5OJQdwVVr9xbdkia4RL/+dWHGxDG4gWPQ==
X-Received: by 10.98.88.131 with SMTP id m125mr22069876pfb.63.1470963984902;
	Thu, 11 Aug 2016 18:06:24 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:24 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:54 -0700
Message-Id: <20160812010608.31182-9-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 09/23] raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:26 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi2.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index d50ef70..3f13dc0 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -10,3 +10,5 @@ include conf/machine/include/rpi-base.inc
 SERIAL_CONSOLE = "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_2_config"
+VC4_CMA_SIZE ?= "cma-256"
+
-- 
2.9.2


