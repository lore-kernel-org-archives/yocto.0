Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB52DE00566; Thu, 16 Feb 2017 10:46:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DCD9E0050B
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:54 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id o64so2183682pfb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=uTK1UTg3vFkzoWbWc6uYEIMQnw9hfdfvN15QewVoKYMpQ7ybmTRcixaYFi6liZFZpi
	qTJu0yaCCgdbg2ZtUwpk1uBMCvzTNQIcdeHDwSJ80e5L/f8t2IRMl3p1Swe/qMgkeqqW
	sMX2jg57zaTB5nrqshYv+Dev0rwztKXsUD1D9BCyyHBxQFhyjsbKUpnuev3gxmcRyCA5
	q1HC3M5+uCQpC4PteFvK8xS7rk+85cUWDZa5HTFOFG4ptn/43KG18ACtabExAyF7gVO3
	vTO6d7yMnnCx2AvmWcDU+V1tnetIrohgZ5ImpNxNHJB8pdF+7elh2sz8iN1m5WtCBdtq
	9gsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=Z3KPUIBRZjAnCCgmuIiovYBd82fARhBMB1+h3Pb6QtiIJOY2cNR/hlR6/QNIFw6F/W
	DqzM40fNmZE+ERkeqMCe1y0x0xXD/4TlzJGTvI9B+hS6KebjZZCZBi9c2jych8Dnr1IQ
	Xa0XKBZMuWbUQ2Bu5767KLclHiNLz8MTgaIoo5pyessxLbHNO7CW86AoVw6ulDgIrAmz
	l8UWOkjpSaoIrZ2Ls/8YFruHMMwl26P/aE6iVYLfAgAojSyOZvN326Fc4fQpnj+RCcWI
	ncXjfDTy5330fbMBRCR7yz9CnT3TiaOyW2R4oBtq3FbKWIIdwMgJeMZ8zLLpQIac7BXP
	3CVQ==
X-Gm-Message-State: AMke39kvmcneM7B6gtmKixvMGfPLDzmwVNhTgYNeJZlva95CSYXcLAooz9r8YMuqObOW+g==
X-Received: by 10.99.245.83 with SMTP id e19mr4697290pgk.113.1487270813573;
	Thu, 16 Feb 2017 10:46:53 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:53 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:33 -0800
Message-Id: <20170216184645.6258-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 02/14] rpi-default-providers: Let mesa provide libgbm
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
X-List-Received-Date: Thu, 16 Feb 2017 18:46:56 -0000

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


