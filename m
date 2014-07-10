Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 006E7E0076A; Wed,  9 Jul 2014 18:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE22CE002AA
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 18:34:21 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id y13so9963481pdi.13
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 18:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=wsB2D0J6EBdoDLun8XkzOECgh5sZZvVt7ajWfPDdLmc=;
	b=Kifoj/bQuqGuc6QfQgO9SaGaqN5apnwxQ9tx4KH7DB9FK+QtMpqj2NJh+Cnm96lREu
	xcw65s0nWtVyy1GlRnCwEC99q2KWmrptglejGVUV+Ump9dysndpxrlQlujz77FbvFmjt
	wvQimBD9Kx9AnI8jsGaveAC7pOSLK8/MXtomPuQe8YzcoUBssTV0UEQOt6sHKJgORrQL
	S+wqnbQhD30+M01hFid9P9ZwHALqNptMZpJXhrpg5U5Yt0llSOAYS/FlV1jl5wQOWq8U
	XhSCwUiQDXilS7A1I1ERFHJS5Iq392+eQ9mLwquUSeQrnPRJdtcV8eUQeeiOqJ9tFai4
	qrBw==
X-Gm-Message-State: ALoCoQmqLvv0+ZqSqW2ZOH/McSYA+iIIOitv800jBQbccj39zCKxj8wa00MJzaFk88AaMLnGBbaV
X-Received: by 10.66.252.10 with SMTP id zo10mr43228824pac.7.1404956061534;
	Wed, 09 Jul 2014 18:34:21 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	qm11sm30216614pdb.85.2014.07.09.18.34.20 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Jul 2014 18:34:20 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Jul 2014 18:34:18 -0700
Message-Id: <1404956058-13458-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] pinentry: Fix do_package_qa issue
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
X-List-Received-Date: Thu, 10 Jul 2014 01:34:37 -0000

This fixes;
ERROR: QA Issue: pinentry: The compile log indicates that host include and/or library paths were used.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/pinentry/pinentry_0.8.3.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/pinentry/pinentry_0.8.3.bb b/recipes-security/pinentry/pinentry_0.8.3.bb
index 0043c23..3209e53 100644
--- a/recipes-security/pinentry/pinentry_0.8.3.bb
+++ b/recipes-security/pinentry/pinentry_0.8.3.bb
@@ -11,4 +11,5 @@ SRC_URI[sha256sum] = "568b0b09b50b2388a4f94d704d5bcb28718ecd4654ed1acc43ab1f97d9
 
 inherit autotools
 
-EXTRA_OECONF +="--disable-pinentry-gtk2 --disable-pinentry-qt --disable-pinentry-qt4 --without-x --enable-ncurses"
+EXTRA_OECONF +="--disable-pinentry-gtk2 --disable-pinentry-qt --disable-pinentry-qt4 --without-x --enable-ncurses \
+    --with-ncurses-include-dir=${STAGING_INCDIR} "
-- 
1.9.1


