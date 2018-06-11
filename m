Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80492E00CEE; Mon, 11 Jun 2018 06:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8005EE00CEE
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 06:34:45 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id 188-v6so9897627ita.5
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 06:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=A01g6ZrveB0KaO/2QpZZxVHxDj3/bKlgybkeqtgb39A=;
	b=bmxDheMD19oUuib0ABm0YHr8+Ld3szrtdNVhPlJwls74rB1FIWGwatIbrWC+abLaVm
	vdNpiRgNQwN77W/tveHVkZ8sFmZ3Z2K1LyAdhFq9pTRjW8A8zgbPeCrD6sN4Pxjk1U0x
	XAYnVeW71krIxPCQC6nFgq/9o7Jnbe1/9quYUBvjGLjCwRsq/mTZl0/12Q4vmo0nGfxE
	s72gzrxL7eAxFwPYXbDUFg80NSbUqIWGQ5UWlu3QxZivqUTOHgunMC1f8BCN24eVhc05
	FThBYtZ8m/J0l7oO6nMexIqeksFLbKQe59VTIQX3Rdotq+pwuWLXkd0+TEdtxrG/2qkg
	WNxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=A01g6ZrveB0KaO/2QpZZxVHxDj3/bKlgybkeqtgb39A=;
	b=Xl/bk+f7Jh0z5jXIklkprgCVsdl+hSNzABU8PkYjbO1o5Z7yTh1vQl1IQ2W0o7oh/q
	AO/J4SA4cg5p4RPafNzuKNg3iBJV2InpYyu/NOtH94egWegHec97Otn70nWgAAZ0udYe
	NsY2/hi8Dinwq9TwqwCeKdIcmxvMVcIV+XC+alR6hjC8bcUH32gDaJCkHXsBkzk+Pv/0
	JKkXrE6bs8rmcHQZagHN4Tzh0+x7GSOzjlxTIXrzF7eLIs6YNoWSj5SrH2rps8TyN6ky
	4tA9bsQwwu/NuodYOrASBTzk3lHgyYZv8Wc8j0WyuO+0GnCKSYgz/QDCN3yEPY5tAGq9
	eKXQ==
X-Gm-Message-State: APt69E34ZqBwKgtPbHZQZBF1d6nLlXyy47XjTZ61A9WG7Rb8SEvf2evF
	7NfLz08+dOgcXlib5/2EOmrb
X-Google-Smtp-Source: ADUXVKKHmkU7PY9U46PPUiSQZNgAoJetCe+z06jVWB5QqzR/ga7nzqgpIWKYkmJQp7BvfMxRC+TtDg==
X-Received: by 2002:a24:a546:: with SMTP id
	w6-v6mr4050109iti.144.1528724084364; 
	Mon, 11 Jun 2018 06:34:44 -0700 (PDT)
Received: from threadripper.novatech-llc.local ([216.21.169.52])
	by smtp.gmail.com with ESMTPSA id
	g26-v6sm4563037iti.0.2018.06.11.06.34.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 06:34:43 -0700 (PDT)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jun 2018 08:34:21 -0500
Message-Id: <20180611133421.108984-1-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <641d3e7b-d443-9f49-161a-604ea90b9fa7@gmail.com>
References: <641d3e7b-d443-9f49-161a-604ea90b9fa7@gmail.com>
Subject: [PATCH] semodule-utils: clear -dev's RDEPENDS
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
X-List-Received-Date: Mon, 11 Jun 2018 13:34:46 -0000

Set RDEPENDS_${PN}-dev = "" so ${PN}-dev doesn't RDEPEND on ${PN} (which
isn't created because it contains no files).
This recipe places every file under one of it's sub-packages.

This fixes an error encountered when building an SDK:
 nothing provides semodule-utils = 2.7-r0 needed by
 semodule-utils-dev-2.7-r0.core2-32

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 recipes-security/selinux/semodule-utils.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security/selinux/semodule-utils.inc
index 1e92745..2c75c48 100644
--- a/recipes-security/selinux/semodule-utils.inc
+++ b/recipes-security/selinux/semodule-utils.inc
@@ -8,6 +8,8 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol"
 
+RDEPENDS_${PN}-dev = ""
+
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 PACKAGES =+ "\
-- 
2.11.0


