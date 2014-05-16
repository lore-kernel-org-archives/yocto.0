Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0180E00BB7; Thu, 15 May 2014 18:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f54.google.com (unknown [209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D07CBE00BAF
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:22 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id bj1so1827877pad.27
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=UOHZbVqugXU6/BTXOR9z38EHDy3fKDMqUcoyJl23nd0=;
	b=qslOcHSim45a7bxwJFHXppxZCgd4xT6OU2MvjvngnPm+AmIeANSUy4YV3hTuCK8nvj
	amj0k+R8EH96AevGLAqc0h/05Ecl7vDntfPcLHylzmOsKprXSNxxjAnxlDEtj89F+jA0
	WseD1Ll8OHIXLVBrqYG1oRFc3qb6d/4OOxGwR0kFQqi1W2wJpXZRoZXTzEKdSsKNj4i5
	Gcor3u+008JY5rsdPPZ4OPk7VlsfHS5Y4liJ1KaDnFiV7FBRj/Kxh6QtpsaApkcph6qF
	lrkY/Q5Obmv0jvo7J+ZPGy50qJWLHS7p+GYR+1sIZs+PdAI2Oz4UZpKP1gJ89CYLTXmK
	2rtA==
X-Received: by 10.67.24.1 with SMTP id ie1mr16616767pad.133.1400203942263;
	Thu, 15 May 2014 18:32:22 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.20 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:31 -0700
Message-Id: <1400203891-30912-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 9/9] Use wildcard in glib-2.0 bbappend name
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
X-List-Received-Date: Fri, 16 May 2014 01:32:23 -0000

glib-2.0: Update to match version in Poky

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/glib-2.0/glib-2.0_2.%.bbappend    | 1 +
 recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.%.bbappend
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend

diff --git a/recipes-core/glib-2.0/glib-2.0_2.%.bbappend b/recipes-core/glib-2.0/glib-2.0_2.%.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-core/glib-2.0/glib-2.0_2.%.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/recipes-core/glib-2.0/glib-2.0_2.38.2.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
-- 
1.9.1


