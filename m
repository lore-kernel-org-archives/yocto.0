Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A243E00734; Thu, 10 Jul 2014 09:10:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1195AE00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:10:44 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id ey11so11195839pad.26
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 09:10:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=gtnO1KldqyRAW6heQ4j/VD6mkPFjv2IVBGQ6iK0ZCy4=;
	b=amRbiwNxneG/5a/60tHTMyxeYwqVoWBt6FYJbPAzUS9NzFKi4z2CdK6EzS4wrr5xGT
	e8vrhtmb0HkyXJgetdcfpZiQpcvoUFjxJREJVeamPGlKjpP3pgZXFCRgNv7NQyH1uag+
	dLdwAabXcNs/M4kVplm5GfdLAoBC0tEQTckztf9M/BzJA2rH8VkYhqbLdyuzZ+hMT1eJ
	GJVEVYbeKeq2p80bAZ5aOgURmI1hRX2DGCzDYobU53vtgA5rZXBa5UmzKy+u/SMNj35F
	jaPUGmESzOWI0JHq9D6Jd0/DS+tWgeY5AY2K+EwWrphDgdzZGsI9ggvuo+tJHbK07O6s
	sDjA==
X-Gm-Message-State: ALoCoQmZpE59k8wee7x10g9ju6kPqUNpNCMRneknhmjl0G6aaQbZwFpou+BbabQsgU1ZTdFHqBNE
X-Received: by 10.69.18.11 with SMTP id gi11mr47869440pbd.36.1405008643320;
	Thu, 10 Jul 2014 09:10:43 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	vk5sm62358066pbc.44.2014.07.10.09.10.41 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 09:10:42 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 09:10:39 -0700
Message-Id: <1405008639-3207-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] V2 packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 16:10:48 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 1acc4a9..25f9f1f 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -3,8 +3,6 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r0"
-
 inherit packagegroup
 
 PACKAGES = "\
-- 
1.9.1


