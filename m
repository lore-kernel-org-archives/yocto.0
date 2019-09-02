Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 352C3E00D60; Sun,  1 Sep 2019 21:23:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998FDE00C5C
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 21:23:51 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id y72so674845pfb.12
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2019 21:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Q5O/TNNgnxeUKWLvwZvMcfuBwFA0c4WYICCUBWE60uM=;
	b=HtCSeVL6f0pbgXhFH2v261V0g3GoijdU4BT6J9dt4GDDjnp/e7so0xDr5TfZruUjeC
	HCf20W5vZ0NX2mrYekX5HzF2sPTvDSSxA0SFyW3h6Tm9ZcA/GLIfcCRKrahan1fOIftD
	fFb0/UbcwFii89q8ujhPsCPUNUsOVZk9KHEpJ4AhPvPm8tt9jtQf3m7zyrwLNjU0/Yka
	WPtWHZnWZc/rGZufSg/nqlYKdSAyDgAuRGySVbJTEn/J7sdB7vNKz7WNR/YzZWzaqkZq
	P1UkhIkNHXdED/YxJ3EVU1k3csHNXxdiurTyT0NMQxJvi7U67LDD/Mr6T7bTl7IxNtGe
	PW+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Q5O/TNNgnxeUKWLvwZvMcfuBwFA0c4WYICCUBWE60uM=;
	b=Pr1ohMxY+faDHxuRs9HVSkbaXR02MG3MC2eq36/ht+JklrX5M4xvWWWP+Y3+/dcuul
	dVSVuDN+d8j16xklRC5uTk8ChuzNq54xnWy36y8zsqzlKY1zWJSC8Wdg6PhzDa6ar9Z1
	tsCo0GQQw1JlepS3MZFPedhJCvEPumP5b2f6lSCmeaCzkCgvyokP1wDZja/9Y8Rs4nTA
	N8k2F238eGzuKZUPysZb2Ik70qjmR6yHukEBvbZjaZY0sgVhqoUOp16L1I+koELikr3s
	GlrXAoWzcj55W13Hd56JC2xln9vTEBcIWtUqR24zP5e+DlSQWfgYYHxMk4oJXv93xxKo
	QKnw==
X-Gm-Message-State: APjAAAWDHzzZ/KiuvtLS6LGHkMkwTAyVeaxAV8sEog6ww+7af1RPQ0Tp
	MdnFhwoLDRzu20CzDp1WcrMWR7p4
X-Google-Smtp-Source: APXvYqzshFODJLwtEeJXHZDSz1fCtnrUYE8SQB299cq9IZZF+IJqf+2n4uGVev7yvsUZcC85u0OFXg==
X-Received: by 2002:a63:4c46:: with SMTP id m6mr24411248pgl.59.1567398230821; 
	Sun, 01 Sep 2019 21:23:50 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	w21sm5187577pjh.19.2019.09.01.21.23.49 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 21:23:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 21:23:48 -0700
Message-Id: <20190902042348.26810-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: drop lsb RDEPENDS
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
X-List-Received-Date: Mon, 02 Sep 2019 04:23:52 -0000

remove lsb functions from init script

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 2 +-
 recipes-mac/AppArmor/files/apparmor     | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 9322018..8484404 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -160,7 +160,7 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} += "bash lsb"
+RDEPENDS_${PN} += "bash"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
diff --git a/recipes-mac/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
index ac3ab9a..604e48d 100644
--- a/recipes-mac/AppArmor/files/apparmor
+++ b/recipes-mac/AppArmor/files/apparmor
@@ -47,7 +47,6 @@ log_end_msg () {
 }
 
 . /lib/apparmor/functions
-. /lib/lsb/init-functions
 
 usage() {
     echo "Usage: $0 {start|stop|restart|reload|force-reload|status|recache}"
-- 
2.17.1


