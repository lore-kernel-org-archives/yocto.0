Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB96E00D08; Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F284CE00B43
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:30 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id u9so4094910pgo.7
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=l2z5rAjnV8xU+LJ7xAPFBAoS+KmSFR7qb0yeoISGCJE=;
	b=sk1NLbe8BRHfm3zN/VkXDOCLjfAmpmrK3fvJpXY2CKgK+1ugC9FlSr//+kaJaVVVPB
	Iu5prNfjsNoM54G+ciElDKL1sxxh/UMp+I0ffuiYjrHUMyACQVaDDElT9al8cwGgdln9
	++cg5iR5s2SLuXhFELtav/runpdCZveyMY7MPN6PyNIP6fFfryQAdM5IdpN8uCrwotl2
	QYRdbcs9QtZI8nshk1L43pvafehOeXxvhPs9oqBoMOXgA1Az6knH4vuju+jECHu+4XRa
	EaQZ/gBA/tAPxBbhC7qWWC46ukf2GSilzA02kdxN70dJmrrAB7tD+QZRHXYoLbI9HOxc
	jeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=l2z5rAjnV8xU+LJ7xAPFBAoS+KmSFR7qb0yeoISGCJE=;
	b=X6gfHH2JNh2Pm9037ZLpWx6Eu90+KB8Seep4eTuvtAnp+3awPtgbC+xjb1pQ3sYD05
	7KbmnU1whhfhW5hx5HoDfk22y4wf8GEvv//XXEi/3KQHG2UfY0ucbSDJFvseT3Fhkcj/
	o+zawxHq9HxVEyWw/P8Jl8V9gNOVsHyBtnekjMItUr9uLk/NfCUIi8HDWg/npA97bwR1
	xOkulVz3SPM3N9CdtIWyNK2Wps6jxcZ0WyvGSX1HbRw732ZQi8vs2EJGqp5CVwlYuDQ3
	vPVmkg4BixW66qeIGxhFH/4CJ/hhmHrdTl3DGAzmiAaCjM5icQgZrRZjG+d6m5WCw3dI
	mIaw==
X-Gm-Message-State: APjAAAX+xQTTi6lAjUV9zc6cOW70N/Ek//oeVT1uHYKUBp5OJE0b15iN
	fjVrJ4K4rvqMr7Pgv02zmCQI31RC
X-Google-Smtp-Source: APXvYqxI19JkNvjZrfgevRKRdRgFN4DYElc0Hhj4/QFxH92vQ4kOMAFtKWw0VfYYRsciaX7wjslZpw==
X-Received: by 2002:a17:902:d710:: with SMTP id
	w16mr4430902ply.198.1552573770236; 
	Thu, 14 Mar 2019 07:29:30 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:23 -0700
Message-Id: <20190314142928.1458-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/6] tpm2-abrmd: updatet to 2.1.1
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:32 -0000

switch SRC_URI to upstream

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.1.0.bb => tpm2-abrmd_2.1.1.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_2.1.0.bb => tpm2-abrmd_2.1.1.bb} (94%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
similarity index 94%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
index 0120360..13dbf5a 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.1.bb
@@ -14,12 +14,12 @@ DEPENDS = "autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-native \
 
 
 SRC_URI = "\
-    git://github.com/01org/tpm2-abrmd.git \
+    git://github.com/tpm2-software/tpm2-abrmd.git \
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "e2f30eebd79079ed92952e78a6f8ab1c2c6194da"
+SRCREV = "06d9d433ba27159687255406baa37940db15465b"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


