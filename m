Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA5C5E00843; Mon,  1 Sep 2014 19:51:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C470E0082A
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 19:51:12 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id y13so7380880pdi.30
	for <yocto@yoctoproject.org>; Mon, 01 Sep 2014 19:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=p2UYVXu1fr4WcI+a4vYIKOGrEW1A2bL8eYBkS4Xyp+I=;
	b=CynWdstEO1MW8y2XJyIfJqw3uYMLGS8k3gDsyRFMf7sjnOh9nfQNtfUqw9vqqJ/czD
	oCz/eegbM8qB2O93aUoSeT0KprlXFg6Y5HYSTTewrHwdRW61JgV9XkmjcfMREV0tuho3
	BDt2qV8J/key3w8FjOWR9NmhLM/VWZt+ON2U6H5x98ohDLeccbwtT6DIM6oxXRkLj/I8
	AKXI+ipLVzLjxzSdCBanPBmQ7LbuH+3udiIFqksSzGDk6mD28uac+i6yPTY48j0iyUUy
	rT4EHO1aDH3RPXUADWZY3aHpUTNsQPsQDVuus7byxFEIaxhxB601g8+R9zQTpR9RfQc+
	axiA==
X-Received: by 10.66.227.98 with SMTP id rz2mr43326618pac.92.1409626272039;
	Mon, 01 Sep 2014 19:51:12 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id ah2sm7334695pad.10.2014.09.01.19.51.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 01 Sep 2014 19:51:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Sep 2014 19:51:02 -0700
Message-Id: <1409626263-14379-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1409626263-14379-1-git-send-email-akuster808@gmail.com>
References: <1409626263-14379-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] layer.conf: add layer depends.
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
X-List-Received-Date: Tue, 02 Sep 2014 02:51:15 -0000

added layerdepends check for  perl-layer and opemembedded-layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 063268d..c5a717b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,5 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
+
+LAYERDEPENDS_security = "openembedded-layer perl-layer"
-- 
1.9.1


