Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2804FE00571; Thu, 10 Jul 2014 07:31:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81D79E00571
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:48 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id y10so10968488pdj.33
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=WZ85K1iQ+tfWil3+g4eN+P9JJGcyEOxVLZu4gvfDnh0=;
	b=VgJygr++NqsnENkS0fzLyx/bSd09fFhDb2GbocdINElsmqU14o8CBP3X7OxClZ63oZ
	sC221zjXNzTbIJOu7jJNZU1afFxy3MUKJgw7fYkf3MOGg9huOCLH0/i8XszZKWHfYTdD
	krF1EETBR3//Wl8GeeV1KEZdnlMeruUN4Esv1McLnQ2vbnKeEP0WqSxobv1aZvaLT/9S
	9Moo24ROlPdczu+olVaE7WjPJiGznacCjIY3j0bX9y0WCn+r9HQnbLRGSlOsS72IQt4z
	CccIOv428juvlXErcF8xzSz/3RcqHwBBPLDGmSHGwjczr9wRzvWc5ZonRC3QRMe5ObJC
	/TMA==
X-Gm-Message-State: ALoCoQnFlfhqF+jpCVqYirJuCIwKDfsDUmhwEu8Z+4y+7x1pycGGX+rQT5ipzUeWUnW5g8pa0RUp
X-Received: by 10.68.201.68 with SMTP id jy4mr47461534pbc.64.1405002647679;
	Thu, 10 Jul 2014 07:30:47 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	ek2sm62152507pbd.30.2014.07.10.07.30.46 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 07:30:46 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 07:30:32 -0700
Message-Id: <1405002633-2125-3-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1405002633-2125-1-git-send-email-akuster@mvista.com>
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
Subject: [meta-security][PATCH 2/3] images: Add initial image
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
X-List-Received-Date: Thu, 10 Jul 2014 14:31:01 -0000

this will aid in testing

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/images/core-image-security.bb | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 recipes-security/images/core-image-security.bb

diff --git a/recipes-security/images/core-image-security.bb b/recipes-security/images/core-image-security.bb
new file mode 100644
index 0000000..1781c35
--- /dev/null
+++ b/recipes-security/images/core-image-security.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "Image with Security utilities support" 
+LICENSE = "MIT"
+
+IMAGE_FEATURES += "splash ssh-server-openssh"
+
+IMAGE_LINGUAS = " "
+
+IMAGE_INSTALL = "\
+	${CORE_IMAGE_BASE_INSTALL} \
+	util-linux-agetty \
+	packagegroup-core-full-cmdline \
+	packagegroup-core-security \
+"   
+
+inherit core-image distro_features_check
+
+DISTRO_FEATURES = "pax"
+
+
-- 
1.9.1


