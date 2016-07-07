Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C568DE00E59; Thu,  7 Jul 2016 07:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7286AE00E5E
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 07:44:46 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id l202so2527147ioe.3
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 07:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=1iuSo/7CJ5fXKJg9ZXyFTjiP9uXhnmnNm9Dxp1yrSic=;
	b=qrpAsdLZMxdJf5QA1dVNHVgT9jKDlmfDWc686NveKl9uCpjNyt+GsOKEGiuMkHGhpA
	D4gctTJFMpP8FgHAdK1IIiYT4wG6Xr8AabKHAealYbPtu+ZtKzxHk6YNf3NaXHB6Vt8G
	17hbk4Xpxwie3jzDRJKnw9SlAwizyGcN6RCjsWEEiJ5CfAScmpMj2a6hbVTbm5NRxfpA
	sMUtHBQIkR9fUFhM0/BptAkSsIg90+Woxdz7ya1xKXOuf3ureRcD2VQ0KVwY/XRDStO/
	iNguMQ6a82kxXAqibC85KgYPwhzvpJGcnLL3WgR6VZctoLswcDaLB+vR8JF1roRVix8Y
	JMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=1iuSo/7CJ5fXKJg9ZXyFTjiP9uXhnmnNm9Dxp1yrSic=;
	b=UfWlQGBz8RWRFwxN+Ec8XihsXUZLrsQeFPGkHG6N4ZB4rdxBCVy16vRyfV5XHQ4ufO
	GuTL2T4cwGQDeTE6ZmOoxd23ozkWUkijy7NUOOOsrDGNcByvayaFneGT4g3W58zBb/Lv
	b9qf0AZQsSi7SPu0lGpyrCIGlWkc1k+K4awyOZML5rsIy0VBaoP8iEl724aEMW8j3gA4
	ZGxrW5uaAO8xhl+oC78ZOZgmfwfDvLQpTCgr3ldcH3d6RqoCzrG2/GcjPb60i7T/M2LI
	m6vq0DsMSTQlxhjGJMhbXEpI0dPSYGJIZ/jJx30oNIiOrE/BDDGpYc4tICe8nCgrYfNk
	G/Sw==
X-Gm-Message-State: ALyK8tL4h3j9qlp1q4E3HVQUKcqjW/E0z4fnueMmyfMq3FSzgGklQs3Ij+eaU6OBkrboqQ==
X-Received: by 10.107.46.162 with SMTP id u34mr3338245iou.162.1467902685693;
	Thu, 07 Jul 2016 07:44:45 -0700 (PDT)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id d71sm1762418ith.2.2016.07.07.07.44.44
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Jul 2016 07:44:44 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Jul 2016 10:44:46 -0400
Message-Id: <1467902686-21900-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] refpolicy: remove virtual prefix for runtime providers
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
X-List-Received-Date: Thu, 07 Jul 2016 14:46:33 -0000

In keeping with the approach of only providing a single default policy at
runtime, we were originally using a virtual/refpolicy dependency and
filling it with one of our specific refpolicy implementations.  This works
well enough for some package systems, but fails for others (specifically
deb, possibly more).

Since the intent was to only have one present in the default image anyway,
we'll just throw out the 'virtual/' part of the RPROVIDES and related
dependencies across the board.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

In terms of testing on this change, my primary approach was to compare
before/after manifests and ensure that what lands on the filesystem image
hasn't changed.  It is another subtle change to behaviour that I know
isn't unanimously embraced anyway, so I'm happy to discuss alternative
options.  My objective here was just to enable deb support (and to get my
autobuilder to stop complaining about it).

 recipes-security/packagegroups/packagegroup-core-selinux.bb    | 2 +-
 recipes-security/packagegroups/packagegroup-selinux-minimal.bb | 2 +-
 recipes-security/refpolicy/refpolicy_common.inc                | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index c6d22b7..9c74458 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -25,6 +25,6 @@ RDEPENDS_${PN} = " \
 	selinux-autorelabel \
 	selinux-init \
 	selinux-labeldev \
-	virtual/refpolicy \
+	refpolicy \
 	coreutils \
 	"
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 451ae8b..eac4b94 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -22,5 +22,5 @@ RDEPENDS_${PN} = "\
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
 	selinux-labeldev \
-	virtual/refpolicy \
+	refpolicy \
 "
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 1d3b93f..e1eac50 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 PROVIDES += "virtual/refpolicy"
-RPROVIDES_${PN} += "virtual/refpolicy"
+RPROVIDES_${PN} += "refpolicy"
 
 # Specific config files for Poky
 SRC_URI += "file://customizable_types \
-- 
1.9.1


