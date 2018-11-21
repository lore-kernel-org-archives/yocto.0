Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C123DE00C10; Wed, 21 Nov 2018 10:04:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 442CAE00566
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 10:04:34 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id 125so6486563wmh.0
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 10:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=JExLLUACtqdgzYzJp1sZ7cOpSdcExft4DIr59coaCQc=;
	b=bWibjcGBYew53rr5Mw0MCFk68VZXumOpQ2Eu3DJesw/a87WVNbaX0wlFmK3eVFgu21
	akM5ySs7UrxXyFtliyLIyajtYKPvD175VpUABl36NxrACkuElD2cCyvpmH+a1lwpI2c+
	AQXvdiyDv9jsUzZiBWHMe8RzkbYnQidIVaEwv8LCRxk0pP1GrSBLv8/vaeXAvHm18sQS
	roeBvynGnhxIc4kLPsd9hs8mTiHnKQuWl+Z9M/DzXWRfAB38FfbDJ485ZE3g1WgR8BWO
	Hl/XB8w7sV7a28HpAlaDg9rPR4Cgp/G6Slirc4JNqQruX6KzwNpM0ncjl6gLi0gS9kt1
	qxCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JExLLUACtqdgzYzJp1sZ7cOpSdcExft4DIr59coaCQc=;
	b=kVq3AQ68NQ0tFKJ5e0He3L5rLa5rQheEezPKMsOKyBsrio6w/t1vr0KNqIbax53ffa
	E0G5pKrcFKZ7syhJ9lhnWHUZRuyoR8l5WArbUVAnyJ2Xcc2vejkHwePBT6tv3sUwSZzl
	EWmy01GaONEYaeE5/UIa6uAXvYYJl29lTwPoyEoeN5V78rns0P142CwsoVfai9qXpwqV
	3dP9sHyWvrUismHEZvFPaGvj7A9gRCWGS5hSaXyUjmtZba03TGjAfbBiivtx3p6lvN9e
	EpXT0Mfo4WZvkPfC/+QkmsWHo/koujC9106qlBmy4eZoOZv99/fKrUxy9C1P0EhsczQs
	sXeQ==
X-Gm-Message-State: AGRZ1gL+tVBHHb/G1lYNOBGvsJNxuSNebXqx1VDPJbQihnVXZKRIeZ5j
	hpaCzVdWvFQJ83e29Z+MumgHpCcn5HE=
X-Google-Smtp-Source: AFSGD/VRquy10zVGK5X9S7VatRkXS6F7jtRohsvqnm6EmOce4hZIWAPcKwiEDbrHemcYQv2hlQ+qOg==
X-Received: by 2002:a1c:c64e:: with SMTP id w75mr7212236wmf.46.1542823472983; 
	Wed, 21 Nov 2018 10:04:32 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	e190sm2726564wmf.0.2018.11.21.10.04.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Nov 2018 10:04:32 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Nov 2018 18:04:27 +0000
Message-Id: <20181121180427.19306-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH meta-mingw] packagegroup-sdk-host: add Make
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
X-List-Received-Date: Wed, 21 Nov 2018 18:04:34 -0000

Make is useful, so add it to the SDK.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index ad69b13..a9a51a6 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 = "\
     nativesdk-pkgconfig \
     nativesdk-libtool \
     nativesdk-qemu \
+    nativesdk-make \
     "
-- 
2.11.0


