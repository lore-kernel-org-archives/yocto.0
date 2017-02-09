Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE765E009EA; Wed,  8 Feb 2017 21:49:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 112D3E0093F
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:23 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 194so16933378pgd.0
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=jy+DnVk3XIOcgaRRbJ4liv17ZguWnOAdWfZe0NGavyR7fVl19npXztwEWxjoKQCMCY
	zttalC2s+Ons1j5rvL/yO9d7JwKyXS65rAhHdbwRwOsC19zpNVgRBDvGcN4/Ktk0yBLN
	kcrJKnQ+7reByVA+sRIeWdkh3TeW9j5a0XbuszrDPpcTRrgSDQhxwZZRnY+5uzfsHkjF
	f+Th65qKed1eRA5rfalhLKRGLVxpyNPaqGkI2Daa4pafo/8Z/hyY2Mi42Nnu1rWxQthb
	+eGrUthr0bmLpTf1kBzU3BSf/C/gkOrdMzTIuDx7n8yPjLSGeauKyO6XgTVPJSX9CUz2
	+Deg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=gQpkvF1SIJXzrK/AHPBccCh1NrgaAqAqq95TYs6aC/w=;
	b=kySrenIUBHiVN/etZKUgoq+NJJpFH7aiSoBvicUXALh686TGTWjFn0aR2zeA7gqLPv
	IB6GHcWoa/nrhJggsjM3Ce0MnDJxNtklWLfCRVQ08M6bJmhSgYPue98Yn21WuQe9PWw8
	4vbYGYgXtosugpob+5CuNbsvsXRGqDfSphPD8uSSH5dsY8u9wPZbKjKcNmqrnarCTmfs
	LJsUT8xVmWgTkuU2LcwwC9pSNbTh1oBPbennFsx8yMxLVUnS7i6+bdJ8hu0u2Bto4VqQ
	CIdmy5v55EKVRAb6Bv35GOUgqlEkzom/uplf1vF52wXzRY66rSDYIb2S8IhxEw987yjr
	Ss+Q==
X-Gm-Message-State: AMke39klkmrAiPjIgJz6rj8He8EsV/4Dif/+fchep8bYe/jafih4SEtGkupvpA6c64gMMg==
X-Received: by 10.99.50.132 with SMTP id y126mr1893448pgy.8.1486619362886;
	Wed, 08 Feb 2017 21:49:22 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:22 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:48:56 -0800
Message-Id: <20170209054903.31598-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/9] rpi-default-providers: Let mesa provide libgbm
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:25 -0000

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


