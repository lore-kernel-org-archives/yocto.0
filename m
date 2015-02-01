Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9696FE00717; Sun,  1 Feb 2015 13:46:41 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F5AE005A9
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 13:46:34 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id eu11so74088266pac.2
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 13:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=MaBfvKIXe91FGNpXavw838tTkcknW5m2svaxLGDA4ts=;
	b=ibJVUp7uBSkLjxVyyodouEHy/dHXi3NnubM9z7JcA+949z7G5HA/QhvQiFEsXyTBV/
	DnKG7/bRZk2GNttOLadU+E8FX7y34394Pdnt5JLxSiE/4PavpZ6CzNY3/itHP6ygJ/Hp
	t/mhvvvb4FimZHvLJDE/PsI3ur7Yz60NU00mrmiF6eMbmB52Cjuti16T8yySwk6lnGzI
	s246Wp5vN1ChpqOfN3vMfHcLpAHDfX0V7DggErJ8SbbCjJyru8xTByHHvsrPZPhc0p8d
	GNjf5F37g7DH4oa8JeIBstnqkGXuVvKNSBpYHWfBx1OQkMO52JO1u0intjHLgPjCkwjo
	F1fg==
X-Received: by 10.66.190.197 with SMTP id gs5mr24369860pac.145.1422827194331; 
	Sun, 01 Feb 2015 13:46:34 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id p2sm4459534pdm.57.2015.02.01.13.46.32
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Feb 2015 13:46:33 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Feb 2015 13:46:25 -0800
Message-Id: <1422827185-28563-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1422827185-28563-1-git-send-email-akuster808@gmail.com>
References: <1422827185-28563-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] packagegroup: remove libseccomp
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
X-List-Received-Date: Sun, 01 Feb 2015 21:46:41 -0000

libseccomp now includes COMPATIBLE_HOST so it will also
negate the packagegroup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index ef8f707..2dae3aa 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -24,7 +24,6 @@ SUMMARY_packagegroup-security-utils = "Security utilities"
 RDEPENDS_packagegroup-security-utils = "\
     checksec \
     nmap \
-    libseccomp \
     pinentry \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
-- 
1.9.1


