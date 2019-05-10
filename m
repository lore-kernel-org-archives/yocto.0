Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14CDCE00C7D; Fri, 10 May 2019 08:10:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A80B2E0097C
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 08:10:45 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id s15so8291840wra.12
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 08:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=tGi4SMcFfCldHVFkUF4ovE4Z25l/RSCumAP7dvxhUzs=;
	b=Cyz7ZWmdBeajDnL+Oc1l+1KhAsjcpETXQ61MDzIyDMrZPAs12rDV5DNcXZHA0vALFt
	VHpaQAoFPQiukEHOpHqm4zQWaUh5mjiTXs5vtAE8jf2fv89wHigXZawnE19PtFT2RyKE
	mBp97fgyVtLSltyX8TfNbn27CHEUcfFFurj/6zWl9/Q6MZa7m+WGnEcHvyCaqqr5DZhq
	MIH7P2cI2SHuoUhsxgs3XkmVZXmMa0qxkHoIPi2fQ0vQfFTul+1YDG2D4jq1kXJ/uCd/
	Mt+6yjb4nW48vS/1xLJZcvwvlbeN9rSmZg3I311UQV77qMTl3sbHiA+vsmYk27XENeYk
	bjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=tGi4SMcFfCldHVFkUF4ovE4Z25l/RSCumAP7dvxhUzs=;
	b=O2MEROG/HSjAHuO+6Tm7TWZikBNq8z+JE2Ae/2bOgYpxqUmBD2cwGRuI0VkCQVqkg5
	SVm1vHwqBmuX+yG0m+wJKq6CygZLD1JCj3FwCodqR4rjU89BMQ3K46rTBcOmzglQJ2LB
	8gQ/ufZO2Qsgiw4E7T6Q6mvvOgrDxn+YWlkV/BD2DEOQHBBuoy8u9DcAhjdL8ZegTMiC
	dmd919ZtA58N/l3aUVGc1AJEdqA44tYnfMG99IZcaO4AkR9hGWcamBGvX08fe3i/csbS
	l553020GjkhXQ2Vm8aweLqfMYh5gjHOgNtavhsyxX84sDTH4/DTPDqCjmUW3kwnhhyt/
	/2sg==
X-Gm-Message-State: APjAAAU354NJhoQoMdgc0N/RQvrjmvMbS8VWQ0Sfm8sypBxseBVY9rqA
	+0Cb4q7IOAYV23zxxVsxr8DDRmtR
X-Google-Smtp-Source: APXvYqwmsLWZiBGcxLyC3c1JFvMtb8377CctsHrZvgTjCSCAL0DM/jCwRavNCZXhYrFjrLTdYHGgLA==
X-Received: by 2002:adf:a28b:: with SMTP id s11mr8201520wra.16.1557501044592; 
	Fri, 10 May 2019 08:10:44 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	p14sm3893034wrt.53.2019.05.10.08.10.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 May 2019 08:10:36 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2019 17:10:31 +0200
Message-Id: <20190510151031.19038-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: fetch from git
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
X-List-Received-Date: Fri, 10 May 2019 15:10:47 -0000

Tarballs from archive.ubuntu.com can and do disappear (similar to archive.debian.org).

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.2.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.2.bb b/recipes-mac/AppArmor/apparmor_2.13.2.bb
index 62ed611..4eaec00 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.2.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.2.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
 DEPENDS = "bison-native apr gettext-native coreutils-native"
 
 SRC_URI = " \
-	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
+	git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-2.13 \
 	file://disable_perl_h_check.patch \
 	file://crosscompile_perl_bindings.patch \
 	file://apparmor.rc \
@@ -24,8 +24,8 @@ SRC_URI = " \
 	file://run-ptest \
 	"
 
-SRC_URI[md5sum] = "2439b35266b5a3a461b0a2dba6e863c3"
-SRC_URI[sha256sum] = "844def9926dfda5c7858428d06e44afc80573f9706458b6e7282edbb40b11a30"
+SRCREV = "af4808b5f6b58946f5c5a4de4b77df5e0eae6ca0"
+S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
-- 
2.17.1


