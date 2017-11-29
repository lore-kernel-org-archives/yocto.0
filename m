Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DDCDE00D04; Wed, 29 Nov 2017 13:52:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0123E00CC4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 13:52:36 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id t196so5366365iof.0
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 13:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=VBstLRUgEoiJGQEFL3fq0manneAU37lBEnRlwdK9WTo=;
	b=AmhOH+mYLdUhqxnhGribaNdkDu0KtuNzipS8PsOfviWCnR56DOyBfcSj495mhrqyma
	o9PF9MgbogmrO/Q0iSY0S1HtpcqI3Rse+qr4LAq5qGTqShn6Rffv/uNqRcdgr2irckgf
	dceMbvMhxQqrpA1vGPNa25D2ITUoucRUqO4qEjP5jGP3Kg5GidMZsI6nN01OySgkc7LF
	iFaAIEvxs+EiM7b3N1yXFCVfkfRQaV/QJ7xvUaWQJ1cxYeKoZ35aQHGLIzf0CYJWN2JN
	nM1sN53Li/VO3xaGK6x0dnjK9t1qVYxj7ugdmSwItkRAqs8DNCIR7Zaygg2w79II5wjp
	Zb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VBstLRUgEoiJGQEFL3fq0manneAU37lBEnRlwdK9WTo=;
	b=f29iMnGHl9PkDM75BY6mgGIZxLfTeEbwrs19X+MVu0ahvOLEiB6lXJaUc5RVxMCBUN
	Yv4u033C/ZuN4BthBAwjqullSswr6fdbdNQ7hX08FEAuTSK3fQOYxlrCocIZYfKOXnp3
	u5Vp8bFIkLEjK14UcxevDX/4wQ/21gqeREWoOpdlrLMPDGJFXBTUdS6rwp09YV/LKH6C
	AHLaTPAHF3RB22ygQ473Bkvhu85LRa37/qv3zupPTcNdRP87adncV4naSInxFC57KQMH
	Qj/t9+0SDQbhQsujMARKTZ8HA2jOCc0I5R+sWyW66sLxFT4VvCCgYDjPhf/YxntIswkK
	0k5A==
X-Gm-Message-State: AJaThX73JvwsdMfylf3MhxPKZchNUulEqAu6sJV+fQEHzsfo7bY4PKvp
	zP3afM7DwBxHE6iP+ClqTjWIZpvT
X-Google-Smtp-Source: AGs4zMYz5hRnPswTqDesz1J2JR+5l2qUpHNjxkmZ2/Z/f25agHA6EdltJbEgVDuE/Ke469AX89EE6Q==
X-Received: by 10.107.160.145 with SMTP id j139mr4986645ioe.236.1511992355864; 
	Wed, 29 Nov 2017 13:52:35 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	d1sm1487532iti.18.2017.11.29.13.52.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 29 Nov 2017 13:52:35 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Nov 2017 15:52:29 -0600
Message-Id: <20171129215229.2355-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.14.3
Subject: [PATCH] dev-manual: Fix DEFAULTTUNE link
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
X-List-Received-Date: Wed, 29 Nov 2017 21:52:37 -0000

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 2d6bdf5cd94..0f16fb0fbf9 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -6736,7 +6736,7 @@ Some notes from Cal:
             you much of a performance difference across the other systems
             as compared to using a more general tuning across all the builds
             (e.g. setting
-            <ulink url='var-DEFAULTTUNE'><filename>DEFAULTTUNE</filename></ulink>
+            <ulink url='&YOCTO_DOCS_REF_URL;#var-DEFAULTTUNE'><filename>DEFAULTTUNE</filename></ulink>
             specifically for each machine's build).
             Rather than "max out" each build's tunings, you can take steps that
             cause the OpenEmbedded build system to reuse software across the
-- 
2.14.3


