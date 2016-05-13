Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E86EE00874; Fri, 13 May 2016 09:32:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA262E00874
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 09:32:41 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id b66so1718748pfb.2
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 09:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=14XT8ZxmL6i540Cv6gqLE9d62nep2u9FJ8eRPX/WVNM=;
	b=hDPLXZ+pRzQJrPSLz+V4XA6Pj2n/CEy99Sfg+UfEwrnWc4+WAib/qcOgomna7bcFGI
	7s6ncID7/gH0tRJ33xtWReT1Ctoe7hXEXWhU/b059zaGRF30kAqbU5flmrTsa9i/MINo
	rIOx/uIvDvhd3eorfzLPVox2gAAw1gm3Zk2UGX7xQokAMBI1UnsFnBxERfpUZsgcWxuO
	XAuGIELjnLj3xLCcGBvvyXysL27/L/gSk+R5OTQYT/t7m17dElEIb8zugm7zY+MghzLk
	J8qaNVb5xesXmfdHKrtzV1vREviQnuO8TG/TXY4EHlPGgoHaJ0hew5o82GFFhsi7mknk
	TtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=14XT8ZxmL6i540Cv6gqLE9d62nep2u9FJ8eRPX/WVNM=;
	b=ErIsiU1GRZraWXSRt1nY9GgQrHNHK11tFnsZ+96pIhhHf4dgoNKG/qa67uD6HUxSJe
	+BQEmTuuXFibdp06wbADE59j8hSXZt1O9ysgMSwrwK2GW7q8rxZWzYPojLB2wP9tjRgW
	k7lSCIE5CpBVPQsZ1YH4xd7+ZR/oSuzY1SmR80qG2L95hne94TsviVaxyCmgWO0N5ilg
	WvmhX9ip288SUQLtCLw/Oxr4mozrZHW+rDXLOCHlAEGYJouXKzQYe0NKCvIwuWu7l91x
	e1fU3pTy37BvbBpj25Rz2+uq/sKq6YlW0/9JrrpnR6HdUTi09OEXL/eolRyLCdVnUMqj
	N3Kg==
X-Gm-Message-State: AOPr4FWrmznCr8xd7fAJoX5UggRjVsXWk3dUNiZQjz3mHaGJm6D4w+0PS51nT8ca1+u44Q==
X-Received: by 10.98.16.150 with SMTP id 22mr24378338pfq.165.1463157161358;
	Fri, 13 May 2016 09:32:41 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	bk8sm28661908pac.3.2016.05.13.09.32.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 May 2016 09:32:40 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 May 2016 09:32:33 -0700
Message-Id: <1463157153-19020-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.2
In-Reply-To: <1463157153-19020-1-git-send-email-raj.khem@gmail.com>
References: <1463157153-19020-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] firmware: Update to "20160512" snapshot
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
X-List-Received-Date: Fri, 13 May 2016 16:32:43 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 8f095b9..bf11e4c 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
-RPIFW_DATE ?= "20160421"
+RPIFW_SRCREV ?= "3816e1ce1e6ebc6d2bf0596dbd52849e16aa7e94"
+RPIFW_DATE ?= "20160512"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.8.2


