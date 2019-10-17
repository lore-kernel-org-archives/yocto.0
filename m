Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9505AE0098A; Thu, 17 Oct 2019 13:29:24 -0700 (PDT)
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
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F65CE0098A
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:29:24 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id w3so2005061pgt.5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 13:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=dAVbf7hFkbtdMSmPwXm/nXQwR569/S5sLYg6B5VjaF4=;
	b=pMU36OZAovKEiRvhz3S5hRx8QwZIB9B3BGnWf5jHxTiqwwIrU09P2034P8SRGrA80D
	eaNhVSIyNESkBB1f0bJ0W5ZUCxOFNMww8sQwg+p8DNK8nH58cSyLvCIvztjTx+58B2qW
	/yeUtHFCSMK31UTDsNIz1LPRFrl58/PrDldlnt3VnWWxLFjhHVXI40vYc9DFhtR7iwbz
	mHO/j+pTJJYDgThpdtoXxxgD3hGn5xJAdB4l8Hom3MoNIdzvTnimjT8dpPO9ggYUx36j
	UhzWl529eRKWMQCKdjBQkXb5Vg2jiZvi3I3CKsKfaKlazjo8KQ6tOCta0pFhbTDYeVdf
	NHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=dAVbf7hFkbtdMSmPwXm/nXQwR569/S5sLYg6B5VjaF4=;
	b=nFu2p390LJuAvPScVMWxRhAxK3/ZcTF+5DYB/ja5RKQ4TvwuwKtiqu7wyGSS3Y8NSH
	KBCd1M6zKW9ljEy476h/NZ7tTZoVLG25Y7Tn9wVKpZu2ibwgC3oBW2kfqWkHQ+vdBp1Z
	mWWk3myidgS6jesyWxzLLs087/ccmjjBwN32jXNUp8E+KsaYKfnbQKVWMjrtfs2ptUah
	b7b7m4cxH8kRLBXvK8ToyKBwlLKvBzbQ8VD1j5CqPIWH+1izuPfmGwkba8y194qqzl06
	Q7pDGx38GXn1nuScDjWhz9n/F6wFrh6k1HyR7XZLGJkW5eZXO8fjbPgrCeSoA3kBzfSj
	6wKw==
X-Gm-Message-State: APjAAAWQxBMXYP8hfYP3Ninz1VI0AhCzOzlYzPg4w7VLHI1HBzYshmM9
	ylkNeHdrxjLsEoAcdBBnhG9SPOLy
X-Google-Smtp-Source: APXvYqw/WYO/zep9ylEA4u4kVwlcy/UdWsVBMDvWKGPKkVwrYMPiHsOf9KZUUdiYhWkI0phUTbuMwQ==
X-Received: by 2002:a17:90a:bf09:: with SMTP id c9mr6705277pjs.9.1571344163582;
	Thu, 17 Oct 2019 13:29:23 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	a20sm2899419pjs.30.2019.10.17.13.29.22 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 17 Oct 2019 13:29:22 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2019 13:29:21 -0700
Message-Id: <20191017202921.25665-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v3][PATCH] apparmor: ptest fail to build on arm
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
X-List-Received-Date: Thu, 17 Oct 2019 20:29:24 -0000

exclude arm and aarch64 ptest tasks

[v2&3]

Sent before committing.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index d434fd3..60d5e68 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -123,6 +123,15 @@ do_install () {
 	fi
 }
 
+#Building ptest on arm fails.
+do_compile_ptest_aarch64 () {
+  :
+}
+
+do_compile_ptest_arm () {
+  :
+}
+
 do_compile_ptest () {
         oe_runmake -C ${B}/tests/regression/apparmor
         oe_runmake -C ${B}/parser/tst
@@ -150,6 +159,15 @@ do_install_ptest () {
 	cp -rf ${B}/binutils ${t}
 }
 
+#Building ptest on arm fails.
+do_install_ptest_aarch64 () {
+  :
+}
+
+do_install_ptest_arm() {
+  :
+}
+
 pkg_postinst_ontarget_${PN} () {
 if [ ! -d /etc/apparmor.d/cache ] ; then
     mkdir /etc/apparmor.d/cache
-- 
2.17.1


