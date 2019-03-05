Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AE3CE00CCC; Tue,  5 Mar 2019 08:46:14 -0800 (PST)
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
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF880E00D53
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:13 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id h8so6005807pgp.6
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=iHvrSW33/zfwgByW5HGxnQo4mTCS10S2Lgtfo8YwS04=;
	b=rBsBc8r+7vWTruGnw2qrxYSrWCeNLUoOKcD1/y31wtKqsf9Un830HkrHDUmUOhHNDC
	MOuNNBXRLya7B1tqhDw+f2lHt2ceppXaK3FXaotCkOBwil6Qc33M+EVv7AwnXoWX0tol
	p7m/xbdMw3Fzp1Rlp2FfB0hMQ0kbFPox9+5yPLtTw4nHEePCDJj5KicE5etYxgFIcfzH
	zquxH8CBrABwQiOUcXZmHaUGpSPDuujnnQFyG9yOU/yzLOcNbbmeVQ1Bn1Z6t4CC3u8C
	io8hFZA4S/mVGhCroXvchDcTWcj4BMkT4/cM9ajVT4LBfhy2xs/mtRWv8C6gYP3U5+Gt
	FFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=iHvrSW33/zfwgByW5HGxnQo4mTCS10S2Lgtfo8YwS04=;
	b=jP4SGIWxILVqX7tU3Zfxg8CD6BGr4V7ohfD6Sp7utvy1F19KSxHyGhK54rPpesNI4l
	EtKPKex/WZYw1n10/DSFgDreQpW2tfGx1jblWEdvRQAC37Vx6IdtlKwu6nUWMwrAtJnE
	gO48uQ83T11TthwMinVMZq27MmpquLzRzO4g3bPQTecLdXXFtxwrefFJutc2wy9yVu9X
	oGEPn8dDH2UWvh9kx81VwIgPrYWXAT/HPc2+p2oajYkDigXCKa1ATftbPd2vJbQdWGHq
	d5szaT+dFcpWbIaxmCmn/TYgpcx2mGlyap0uJ4HMM/Vvl3M9A5boPifWkaIB9gutUoL4
	tvYw==
X-Gm-Message-State: APjAAAWD6udV+9eHUuaVX0mZVrsX8bSytmUOhhjsyeYXhWQMb5fd+X3g
	UNyAGKHk7T7RXbECM7rLX4ZQsB6z
X-Google-Smtp-Source: APXvYqwPuQOwNyFKKzR8L5VukA6Z8Xwt+N9C5Zd3k2eDnSxsB1YZ5NvgIX4s4DelNnmf7UsUjfKkeg==
X-Received: by 2002:a62:4743:: with SMTP id u64mr2655169pfa.95.1551804373173; 
	Tue, 05 Mar 2019 08:46:13 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:12 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:06 -0800
Message-Id: <20190305164608.12211-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/7] tpm2-abrmd: update to 2.1.0
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:14 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.0.2.bb => tpm2-abrmd_2.1.0.bb}    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_2.0.2.bb => tpm2-abrmd_2.1.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb
index 6347379..0120360 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.1.0.bb
@@ -18,7 +18,8 @@ SRC_URI = "\
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
-SRCREV = "d0120ace58d97bc9520c0d558657eaca87ae73b1"
+
+SRCREV = "e2f30eebd79079ed92952e78a6f8ab1c2c6194da"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


