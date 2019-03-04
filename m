Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1319CE00CB9; Sun,  3 Mar 2019 21:34:30 -0800 (PST)
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
	*      [209.85.215.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 917DCE00CAB
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2019 21:34:29 -0800 (PST)
Received: by mail-pg1-f179.google.com with SMTP id q206so2225286pgq.4
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2019 21:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=qfnEO6Uwc25bDiRFfEsusWw9LItWcvl2sYAn0jOKYZA=;
	b=HbICQUANEC3C4mH+tgCG/z/GRmScGrGGZS7FK7PmuMQUJ4aLzj/DcchHi3zV8T5pCB
	nbdFjhDUILx1Awujl21jqbPSNMKY/hGb+O6HQPRzzrm5fn265Up3qufFk7tXdEbPX7AW
	zOqdE3iesWxZdLmLhA1Wkx4A0rjr12xJRLkms9cjkGbGCRL8+yLWzeaz5kU8qNe+Nbni
	w1sJ9BGERcIV7GGjtSndKY/D127TE41d3ZBeSboVBhBJWpYjo9DBDtUIm16FDiS0mtCm
	5XkRmQ/lzFxKUlZvBvaizKI7Aq8yht4Vp9khlNZWhfShv8iCCLj1LlovWUnEjjWJMzEV
	RSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=qfnEO6Uwc25bDiRFfEsusWw9LItWcvl2sYAn0jOKYZA=;
	b=aRbAAqDxwq8KeiVu9KiHOE9ASVTbE+hPAFc94lj7IhMGmlOyy9Qj4RNSaGQxmV/GUm
	XthHNn/EtNmm7RVhsMnuLFQRpjCbhv2mvIGgxVfviu7FzdRQW6oHAg7TBtegsZnBrzkZ
	7Snz7Z7LmwxDBxw2jbhWxD7HdzNIGtZJ2SpSG0KSALvC+7+dC2A7WrAFE+9wRGOh5rEg
	SRisZ/AD5LlOYUafGPZzvberXN5voX2djSQjMUckQ+xdhLosz8SvLYWmOdKRMLAX5Nk8
	2iZiR5kEKVg3i60utBdf5G1gngjftY6pgKcGfSKIN4iI7dyMWkaoq4wRYhbwPiRdshJw
	+a9g==
X-Gm-Message-State: APjAAAXA4+JxJdHKVKFTxt2Y2y1np2fELYClv0f6MJWetr2c6MCxmRtH
	NThc8Hr1JnUgmbnhFmRu17EW5rv6
X-Google-Smtp-Source: AHgI3IZPOa+8ly8VlZnphRgJcJIT6Qsx7DG19Tn8jnmGU1vlAo9XrkQtWV/1xifvsU0c3GpGyTnqCQ==
X-Received: by 2002:a62:e716:: with SMTP id s22mr18137087pfh.35.1551677669023; 
	Sun, 03 Mar 2019 21:34:29 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j14sm6780474pfn.77.2019.03.03.21.34.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Mar 2019 21:34:28 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  3 Mar 2019 21:34:23 -0800
Message-Id: <20190304053425.13810-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190304053425.13810-1-akuster808@gmail.com>
References: <20190304053425.13810-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/4] tripwire: update to 2.4.3.7
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
X-List-Received-Date: Mon, 04 Mar 2019 05:34:30 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tripwire/{tripwire_2.4.3.6.bb => tripwire_2.4.3.7.bb}       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/tripwire/{tripwire_2.4.3.6.bb => tripwire_2.4.3.7.bb} (98%)

diff --git a/recipes-security/tripwire/tripwire_2.4.3.6.bb b/recipes-security/tripwire/tripwire_2.4.3.7.bb
similarity index 98%
rename from recipes-security/tripwire/tripwire_2.4.3.6.bb
rename to recipes-security/tripwire/tripwire_2.4.3.7.bb
index 59d1f35..ed0974c 100644
--- a/recipes-security/tripwire/tripwire_2.4.3.6.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.7.bb
@@ -6,7 +6,7 @@ SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1c069be8dbbe48e89b580ab4ed86c127"
 
-SRCREV = "80db91b4c1ca4be9efafd2286e3b2ad32ba4c34c"
+SRCREV = "6e64a9e5b70a909ec439bc5a099e3fcf38c614b0"
 
 SRC_URI = "\
 	git://github.com/Tripwire/tripwire-open-source.git \
-- 
2.17.1


