Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C279E00C40; Mon, 17 Oct 2016 17:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890BCE00C15
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:41 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so13641007pfj.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Gi2sH+zEjfxGFMhxReghQS/Ma4NFFkF6a3Xo/sEn7BE=;
	b=QlTKOZxOqOFI5kXgv9z07hYGp1MJUnHYQVlQ9myiqdZAUDJPCg+1Ww11MJ+OPre6hR
	tc00JKpFn2YDtk7drcGltgEA0FkYi+qIXHYTQbK8bTbs/c6jKfrGSefWnmIBeFsoetvG
	R/IzPBQFdCKf6n9M9G01NuJ3qvlcRP50E++jPHoIkhz7IFOuK/DG/BQskyeli5t8p/3Y
	DBWPSJCjqX31m7ZCzCifFN9cduJC02ljR623YzWfar68ptD2HPsQ4+2LJC5VrI5q2tq1
	EgO51Xvmk0VOs1PU4IZ2AyoorZwfcTydJTGkvOgUSYcKa+rv+IZSERAsRFC50pIhW6DJ
	SfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Gi2sH+zEjfxGFMhxReghQS/Ma4NFFkF6a3Xo/sEn7BE=;
	b=NVGIiRxfXWffocty31yeIfEVeOrVxiySyBP7XnEH6RA3troLYba4+gS2AEiYoOO3sh
	QrGu7wSGj+2i8/R728JYav2g/lQzxqmlKavHShBuOE5jmxaIfIR7tU6iqIjK6cdbt5/p
	GuT+lnVs38ZYqk7o1nqCZlLASkZMEzA25+tJAbf2tqZVDulBZtYZoDaQ21ILQ7+oDY84
	jveKrZIuG3V9mfPuOb8oiDP21EWpn1KPsAxmFebN9vKZQ6WtrQqAxxhuYsufV9XpIY1d
	bWanyler3SuUtABQrp7hmkg6GUTEfEEjbIQIMPLkcQOG8awUwJeLMpX5St1Eze3/wz39
	zCtw==
X-Gm-Message-State: AA6/9RklTt3LfKHLfbrROaMjVQ6sC2IJUOukV+nNWTBzZN+jELESS1p275NZ+ReOrTJnng==
X-Received: by 10.98.107.70 with SMTP id g67mr157197pfc.17.1476748961001;
	Mon, 17 Oct 2016 17:02:41 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:22 -0700
Message-Id: <1476748950-21342-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/17] package-group: Add tpm packages
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 2dae3aa..8639acd 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -11,6 +11,7 @@ PACKAGES = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    ${@bb.utils.contains("DISTRO_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 RDEPENDS_packagegroup-core-security = "\
@@ -18,6 +19,7 @@ RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
+    ${@bb.utils.contains("DISTRO_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
@@ -55,3 +57,14 @@ SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
 RDEPENDS_packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
     "
+
+SUMMARY_packagegroup-security-tpm = "Security TPM support"
+RDEPENDS_packagegroup-security-tpm = " \
+    tpm-tools \
+    trousers \
+    tpm2.0-tools \
+    tpm2.0-tss \
+    libtpm \
+    swtpm \
+    tpm2simulator-native \
+    "
-- 
2.7.4


