Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8347E00ABE; Wed, 22 Mar 2017 05:46:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C790FE009B2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:50 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id 20so44674660pfk.2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=w99ln+7hdumRsG368mrv3e/0ViWJIxTS4/QypJXmVJw=;
	b=YCdsFaowgcl3Jkv10EmZGsb0J/yw4tb0Mgg4ixR2299X32hYDyxHmFmxHefme93Gdo
	CFhZuap3+CQIJeNQzsUZ9pW1WsGzEAvShd+N9yG+2tDFkLEcFyddKnorCQaECwuJA4vD
	R+Xqp9vyd6Rsz3LMwQhpvXzjuvxp/szFaXuy/RoOJgmwbkYD+cx76OLR680B5e/xVYqb
	FXQieUeECvpfCYxnnHUpDiBPr/UGlku2SYvzTGpbBfYpq4qQTVi4F1eKPX+lQU3uaHPt
	5an4Aisr1nAJwMUAoJXGtas5BR6y7P46yacopx1O36C+JH3UVZYB/knACqgSfwImfIk0
	XjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=w99ln+7hdumRsG368mrv3e/0ViWJIxTS4/QypJXmVJw=;
	b=RIq6F516XndImo9N4o80OxT+NAOZlb4IffdNwl3BKoxTb+V0GRIE6PqyscQu3+XMFC
	UIT52aWJtQdBwPq02Zgab/0YFWb6USRwa8wmdmmSQexCTJEzqrQm7dlbxDcJtz/OkJ++
	zEmonGaEK/8xS8gQ0CGmIFsCkP3gezD/hdjwx4QxSPUYNx/Kq1oS1qOMAYfQiQxMY+RH
	Zu4H22zHvFjxgZztqjPnE1U9QG+exiumrdtQSb0WYdPaubFuwWZs8ZrkUWljG7ZrPOjH
	+I0kK3UbFWKC68kCqkq/ibXflz42KQDsOwYrKBV+qoWflgCnrh9luFpIZTzekamHQ7mK
	kDqQ==
X-Gm-Message-State: AFeK/H2EbjVj5Hyb4pD642e/p5MZkHxrqv+gzVIRPgnPziqnmUSGWLxlCm7LDuyJisZg3g==
X-Received: by 10.84.172.193 with SMTP id n59mr21455927plb.77.1490186810027;
	Wed, 22 Mar 2017 05:46:50 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:44 -0700
Message-Id: <1490186804-22928-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 6/6] build-image: remove ROOTFS_PKGMANAGE_BOOTSTRAP
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:55 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/images/security-build-image.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/images/security-build-image.bb b/recipes-security/images/security-build-image.bb
index 6745338..1a7af86 100644
--- a/recipes-security/images/security-build-image.bb
+++ b/recipes-security/images/security-build-image.bb
@@ -8,7 +8,7 @@ IMAGE_INSTALL = "\
     packagegroup-core-security \
     os-release \
     ${@bb.utils.contains("DISTRO_FEATURES", "x11", "packagegroup-xfce-base", "", d)} \
-    ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}"
+    ${CORE_IMAGE_EXTRA_INSTALL}"
 
 IMAGE_LINGUAS ?= " "
 
-- 
2.7.4


