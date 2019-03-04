Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9110AE00CE8; Sun,  3 Mar 2019 21:34:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D16EE00994
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2019 21:34:30 -0800 (PST)
Received: by mail-pg1-f193.google.com with SMTP id l11so2216789pgq.10
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2019 21:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=t8j6DMdpttxTKN3GQOef25oy9HWrHyklLCEXPk+M1+I=;
	b=CfO/uWmrur9UP+WcV5Zh03JqeWMbewIV2i4JaB4UELOI7ZN1b2YePn4X18C64aAG0s
	5baKAMLOml8uIfGI1DPZx2MqWcCFKxKRFOyT45gXFVng8Smx5JMU1OndwAl9GWbkALDE
	ALSpFPBiLXGAJQNi9rT07fktkA9Hb9iIRV3k1XkqQEiTexEYL6/suUOrKG0n5tGtkjLe
	eK51n5zw8UU2I+9IIJY3puHRrf53hLJI4yJ/EE4D/WppojW/lOh7iRkbplUEDcii58mU
	VhS/R8VP4gjnZcSJvwyqCNsvUxKO5A21Pthu5Yy5EJ+RVM+8Run8WiQ1pb66irmYtiBd
	DOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=t8j6DMdpttxTKN3GQOef25oy9HWrHyklLCEXPk+M1+I=;
	b=M3b73I/Ozpu/MqT8akgIu//EdCousJLh9Hp31/16M5OWFC6/64YkraD0VeBE4UfyBX
	rLNCk0ZDCcURkvt78exK464i7MVgmqdp3EIhkovcOk/CP0Jz88qhSWkFJt18nF8X5fpn
	afAz1yCWszA1+kJKcAHC+u8GI6xHI0ha8Kn68YdJ/1MxfdfIafwdrM9pD/OFBUE2yOpS
	e25s4j7wRf/H0DKiExd1LCZDYTDLE8GxLL3NyMcM08VmIUx/XrlWxCrNEDSq6N8a7/RN
	FLffjRfsAVPuiNbTjdkuqjWEXJKn14YqYM1euw5SDtPliQ4uXJabiKBFvCMy10a5w8uA
	MYcQ==
X-Gm-Message-State: APjAAAWXYL7XRX9U9Qr5SwP3GtQdKVP/bvK+LqwMHNxmGFaO98BF6gyx
	vNGX7HuMG38OjmXyiOtbFtIR9qzN
X-Google-Smtp-Source: APXvYqwNYjH+nfv0jnlK+NC0eCQTZQ75p4HrQyMwQ6fpCdKSj3TieE4ewcPAiKuXozI66Qmu5qdtNA==
X-Received: by 2002:a17:902:bf01:: with SMTP id
	bi1mr888749plb.252.1551677669876; 
	Sun, 03 Mar 2019 21:34:29 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j14sm6780474pfn.77.2019.03.03.21.34.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Mar 2019 21:34:29 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  3 Mar 2019 21:34:24 -0800
Message-Id: <20190304053425.13810-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190304053425.13810-1-akuster808@gmail.com>
References: <20190304053425.13810-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/4] libmspack: update to 0.9.1
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
X-List-Received-Date: Mon, 04 Mar 2019 05:34:31 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libmspack/{libmspack_0.5.bb => libmspack_0.9.1.bb}    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename recipes-security/libmspack/{libmspack_0.5.bb => libmspack_0.9.1.bb} (71%)

diff --git a/recipes-security/libmspack/libmspack_0.5.bb b/recipes-security/libmspack/libmspack_0.9.1.bb
similarity index 71%
rename from recipes-security/libmspack/libmspack_0.5.bb
rename to recipes-security/libmspack/libmspack_0.9.1.bb
index 80db23c..56a8a07 100644
--- a/recipes-security/libmspack/libmspack_0.5.bb
+++ b/recipes-security/libmspack/libmspack_0.9.1.bb
@@ -6,10 +6,10 @@ DEPENDS = ""
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b3c8a5bb00a72a28dd"
 
-SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz\
-"
-SRC_URI[md5sum] = "3aa3f6b9ef101463270c085478fda1da"
-SRC_URI[sha256sum] = "8967f275525f5067b364cee43b73e44d0433668c39f9376dfff19f653d1c8110"
+SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz"
+
+SRC_URI[md5sum] = "9602ae4a6b0468d9aaef6359c1e90657"
+SRC_URI[sha256sum] = "62a336d9c798638aaf3dceb43843320061544bbf35547c316b075b99112f2e40"
 
 inherit autotools
 
-- 
2.17.1


