Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02EB3E00A0A; Sat, 11 Feb 2017 21:27:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750F3E009F3
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:06 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so4957917pfo.3
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=oVJzpxyKAS1xQVjTpXuQdeLs1t9aMhmsO0KFnVrwGEr3i1djxYuA1cb+jf680nQGlq
	Oq0LmyjeVncEZdn6528a7oSbM0uVhxDUyVINeZP8A5A+TYj5TVEy39/aqXcG78CyofJ6
	tfB07PGWPHzHLkJAIz8KrFm8Ns4P5MNSB3YZLlgrDvDSnJFhVR1qgwD0ijUymwh3RQik
	+VPXAtgHn2IcWV4VbgCaGkHaqsZWEu5z589uxYVPFnth6FwU0RbDZDQmYQzjMPwwa5Ao
	bbXsU2oM4RU+NkZ/x6ugJ7YlmvbFBmup5UFvd80pkcXcfNGwRskwZ+hF/+3xPrboClr8
	picw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=NlTPRI4jXJxAkz4S/AlHS0Fj2zNm3aPlcH75P2rdNYUGf0xDwp7Tct0Wu8BnYZW94h
	4o5MGI4gYqRSbGjrR7xWZQiuBRB1OtfDoPUi6/JYNFoct1AIbIRM5cDEte83kZttOxTi
	xu3JtmEvqsC0zO9ZUGWdz+qYU7MwppOzH5lZWZWT9DSnEJ8JFXGGGbg9B9BemDEdPlbd
	OjzqS05LLh0G2LcNrFOcDyVvvW6u2jfAjDVD3Mtu7tkkomBS7bUqx+b6i8y6cQZjxjU8
	zqBcEbMYankdD7cBoL59TCnoYYgPmtKCjL3lwVPRr8ugauEg8Lo3gMkriWMyCu5xCIiT
	sRCA==
X-Gm-Message-State: AMke39nt4QD02BtBANYbNsChxyEx2vvvLGVInImWwXcNKyUssqfRWXqlJ/GPPU3X5NIszw==
X-Received: by 10.98.75.16 with SMTP id y16mr19129893pfa.23.1486877225919;
	Sat, 11 Feb 2017 21:27:05 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:05 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:46 -0800
Message-Id: <20170212052655.12342-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 02/11] rpi-default-providers: Let mesa provide libgbm
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:10 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-providers.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 078e9d6..5b2658b 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -6,4 +6,5 @@ PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4
 PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
 PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
 PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
+PREFERRED_PROVIDER_libgbm ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
 PREFERRED_PROVIDER_jpeg ?= "jpeg"
-- 
2.11.1


