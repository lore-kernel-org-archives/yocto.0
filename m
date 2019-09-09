Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0F5BE00DFA; Sun,  8 Sep 2019 21:16:36 -0700 (PDT)
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
	*      [209.85.214.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCAD1E00DAE
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:35 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id x20so332167plm.9
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Huw/sp6cBo7zKpTpPXEo5yId/kVOyGgmZj4nVdw5nlM=;
	b=koyWdU1sFSwuOzhnuyQX0TOi7vypIWNBzuV0lnHSobWER9MVKAoI0t328Br3hXFHKd
	OzIu58kZ15rcLjJKt0kNmBuh7EI1QbHJ70LzFP46HgecrzxQA3rKHtYkmkUQ1mAD+nDP
	697qpo4mlmok82e7F3INfVm05Bt39GiMCJCWggaDQ3w5xQUpzqgfHO6F61zKiAawJh/6
	RzRKHWmtBL5gfkDEniW9Ppf8pIraiuvsi7v976/yFqH0DqOpATueD8Fz3ApTllpf4aqg
	JE0OyE9sy2SqRFgqkfpTKiy1U4aiyXftJKwPPS6mf71UNvX/G/hPbRW41auBjs31Emfd
	97kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Huw/sp6cBo7zKpTpPXEo5yId/kVOyGgmZj4nVdw5nlM=;
	b=LPesNzhg8gA/kf6fSXeQo9EfuCAE9mfzjOWbBg59pWp/Oq+OtNnA6TfkMooDJPWrWa
	41llvJi0PgYv2KFC6/HH/J8l6biCXAXU3ejBXRGdX5A5itB3xdNgs8MlkwDC2URJ5kGy
	+6wCVxaP065su0f2CCoSjuHbWLktJqaaIrpHoquuA0GaQ5ug6WHJT+2jfbsmLx9BweA7
	PN6/1da2BbbiYWl+XIGNZevBGCNK36GVDm+1v90ix6DrzWRSspfmIG+ce8UXIiPM7Ta2
	LF/GkCOVSUgrrLhB+P4zERHrJIaWx+c07Nj+t8GSAqUE3CtxispXHx6yGx9IDKLBa/V7
	X/KQ==
X-Gm-Message-State: APjAAAWL3Gis6b7jEIiBIqSs2A8hC3uOzjCAhZS03Ex0PCJHCntHZC+k
	CX65HacK7+/RckR2q1UoqP5ACkUd
X-Google-Smtp-Source: APXvYqz6atyZrR/xGux5F/I/vFuGUDsVs3lD6BdnUJyjs84vZsgxVlnuwAK6xSV3s3gYW5asIR8D/Q==
X-Received: by 2002:a17:902:bd87:: with SMTP id
	q7mr22559673pls.57.1568002595254; 
	Sun, 08 Sep 2019 21:16:35 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.34 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:28 -0700
Message-Id: <20190909041628.7934-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 8/8] tpm2-pkcs11: update to tip
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
index 222bb6d..2185749 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -10,7 +10,7 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
            file://bootstrap_fixup.patch \
           "
 
-SRCREV = "9eed9df823a960da481327468a73d477241befdb"
+SRCREV = "caf20c04651029626466c59d88b36c05cc6ea20b"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


