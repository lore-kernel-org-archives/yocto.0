Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0766DE00ABE; Sun, 16 Sep 2018 08:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.171 listed in list.dnswl.org]
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E695E00953
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:25 -0700 (PDT)
Received: by mail-pg1-f171.google.com with SMTP id y4-v6so6499807pgp.9
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Bo7zUgFMo/KWFyETPlqnLXWIG3qSreUPEKW5xOKRmg4=;
	b=AXY1RWoKH4WShom5yUxwsstb4j0fMFC2T11yNOdUZ8LFkmQWkd3IDRuImUmc3eCq3n
	fVUHWHFzGleGh8aTEU89HSnZIuI/n7UZBcVnoMumm6jMrHoTFnihWMTjLen0nsMuMJ+0
	rjLTrHIqZRjj1kePHE51aUeqwoeg0/NSqWPjx8Fe/lf+YrUgQPC0Z2FBDRg4qIclJZrh
	wD9izkPnx/TgE7xDo8ayZkyXxkP87M1wEVpW1wPpsH1UP6gjjQWEeRW822gqDrcxysCX
	Lgj9Djc5tHldMLywsC9ys2kTcc5is6x9M+rZ+Q0Vmr8zwoUy4tssAFmCl1RCVPUUD069
	b9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Bo7zUgFMo/KWFyETPlqnLXWIG3qSreUPEKW5xOKRmg4=;
	b=tbU5Bhje3+qvRwf8OrCs/hDnx/edv6cBJx+eYBtV/S7B3drguUHIt5nc0SQV9V1vpn
	OFVKotUQQl6ZUJHypXeesXAKPykHWmxl3TYlYVynZrGjmtjwWWn395wrgvePrAjvw+ka
	ovG7+35HnIvv8Z3HCmCgnKY5St47MSgpD2IXmIeDHJ2KR6x5kkDph8l5NdGi2VndmuTj
	A5jxd2Qhgmc9XfjwHAcT5gFeO4QkowuBH3FR9jv/e7QRpcfcmjG2zXin9+Bjrg9Dek1h
	KW+jE4ymO1H+zBcpgpYeplTK4p5bJ9tFeBaaMge+psuINm2DcheveGOyycqbQZjVCWkq
	vJog==
X-Gm-Message-State: APzg51BeZkwmffw1HG8mQ67PneSBulI6NvRFo+2HFGy2ngmWEQYRvkA9
	d4FSxAyjofVM6w5oY+cTyodCagmS
X-Google-Smtp-Source: ANB0VdYR0XK5XeZ4pZEhGhESQ5Bg8ih8jl23G8yVmSFx0p3sL3vE8s4fHHu3w0yrnzz/N/TqWsmmDA==
X-Received: by 2002:a62:9b46:: with SMTP id
	r67-v6mr21981257pfd.105.1537113444499; 
	Sun, 16 Sep 2018 08:57:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.23
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:56:58 -0700
Message-Id: <20180916155719.9911-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/25] fscryptctl: update to tip
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:28 -0000

fix mkfs.ext4 invocation

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fscryptctl/fscryptctl_0.1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
index 4f0b12c..8847a0f 100644
--- a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
@@ -9,7 +9,7 @@ SECTION = "base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-SRCREV = "e4c4d0984dee2531897e13c32a18d5e54a2a4aa6"
+SRCREV = "142326810eb19d6794793db6d24d0775a15aa8e5"
 SRC_URI = "git://github.com/google/fscryptctl.git"
 
 S = "${WORKDIR}/git"
-- 
2.17.1


