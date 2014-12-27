Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE956E0085E; Fri, 26 Dec 2014 18:48:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EBDE00830
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:26 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id eu11so13939686pac.22
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Nl8S+On5mJsGknWFQLu5nXQaWsGIQ5l1o9H8ym8Stkk=;
	b=WdoOlGS+ymZ0N17hIX1lvjjbueXD96K4iYUykVgiq5ibWDEwasLbyUmICLUL10sifw
	55P7Yt+5KRZKK8QtxFS9Zx28LLlXzh9iWkcu0+je29htd32Fz8D3PcnTe+M4bSBPdin5
	XHEeWxaBJ5cErvWwbiYczhj+Cieo66pTgT3QLIl6FG7/s9ZJP7gYQHxChR7iLWTE4Vyl
	oSsKHJ8awJJcODCyz2O5yhnQneFDU774CUVeq6HcIrgSa7HcLQdQCrFvQYM2d3Nx+HLz
	WKLH5id6zAib0fKafSe3NT8XfSxlOoM1UBsZJrIzxHs6Zg9TA5onwXBiPSSPeoxr0F5/
	a90g==
X-Received: by 10.68.163.196 with SMTP id yk4mr72451166pbb.143.1419648506366; 
	Fri, 26 Dec 2014 18:48:26 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id s3sm26212811pdg.28.2014.12.26.18.48.24
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Dec 2014 18:48:25 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Dec 2014 18:48:17 -0800
Message-Id: <1419648497-10738-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1419648497-10738-1-git-send-email-akuster808@gmail.com>
References: <1419648497-10738-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] nikto: fix depends
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
X-List-Received-Date: Sat, 27 Dec 2014 02:48:28 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nikto/nikto_2.1.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
index 4609717..4708191 100644
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ b/recipes-security/nikto/nikto_2.1.5.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "Nikto is an Open Source (GPL) web server scanner which performs c
 SECTION = "security"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-RDEPENDS_${PN} = "perl libnet-ssleay-perl perl-module-getopt-long perl-module-time-local perl-module-io-socket nikto-doc"
+RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl perl-module-getopt-long perl-module-time-local perl-module-io-socket nikto-doc"
 
 SRC_URI = "http://cirt.net/nikto/${PN}-${PV}.tar.gz \
            file://location.patch"
-- 
1.9.1


