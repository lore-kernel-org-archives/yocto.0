Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 201A8E009E6; Fri, 22 May 2015 14:08:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666F1E009E5
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 14:08:07 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so22076157qkg.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 14:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=9Vwh2pTP2x7JHyobRvSL5s58Djv0WkIFF6qQhvqmrX4=;
	b=uj+Kbp5jT9kKWzNFdeRhbuxD1sJOxvAPIxOO7G1fO4WEuPlUt1eSU/3tJx+KRZhcBr
	WLK1fMK36Rv62ShkQYHTRK2tykEjhkfb5hAFwLoTkzBWU3ADyhPmZrOiWPcwT+4V71yx
	xt2sO7Dkihn4qKhXN2pJ4tsWBaL9khB5AuTpeiIium5GsB6EV3MRc8raQ1Oa4+zIxqcE
	OfcTDcto6NERSubAonReInJiOO7syFuwMo6Qo1uz5umHOWh5j0/wyi6Thc5sSbdh9yD9
	pxegVnaN96NAEn//3/j4K7CE/nEKNTYwWHhFtPNg2By3xB1iBEg1rOipNPsMDim+0x3U
	kwJQ==
X-Received: by 10.140.98.36 with SMTP id n33mr2156676qge.62.1432328887340;
	Fri, 22 May 2015 14:08:07 -0700 (PDT)
Received: from centrium.lab.ossystems.com.br ([177.100.224.72])
	by mx.google.com with ESMTPSA id i92sm2082466qkh.5.2015.05.22.14.08.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 May 2015 14:08:07 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Fri, 22 May 2015 18:09:42 -0300
Message-Id: <1432328982-919-2-git-send-email-mario@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1432328982-919-1-git-send-email-mario@ossystems.com.br>
References: <1432328982-919-1-git-send-email-mario@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Cc: Mario Domenech Goulart <mario@ossystems.com.br>
Subject: [meta-oracle-java][PATCH 2/2] oracle-jse: provide java2-vm
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
X-List-Received-Date: Fri, 22 May 2015 21:08:10 -0000

This is mostly to make meta-oracle-java compatible with what the
counterparts in meta-java provide.

Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
---
 recipes-devtools/oracle-java/oracle-jse.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 7781421..d5cd765 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -29,5 +29,5 @@ INSANE_SKIP_${PN} = "${ERROR_QA} ${WARN_QA}"
 INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 FILES_${PN} = "/usr/"
-RPROVIDES_${PN} = "java2-runtime"
+RPROVIDES_${PN} = "java2-runtime java2-vm"
 PROVIDES += "virtual/java"
-- 
2.1.4


