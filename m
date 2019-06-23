Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA392E00BAD; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
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
	*      [209.85.214.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F78E00B8D
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id g4so5549803plb.5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=nTS812ibyR75OqsDMjAkKLQTa671nS6K7Z/JA6GvWBk=;
	b=bOQrPgIbgvxPs4X98IrVRujLBTf4F2HEV960pztS13pAOJZrc8DOEBVXb80o2bPzsP
	bldZejSn6XfqXO6KkqhBftvnEis0TjBRWh0gL7gjlE1o0M3ij7MDGGcwmO8A+muEN+oD
	Hup3CNrpl/LH1Ek2wwhaFHWDmkZILsCfzePzkXiwjZwzC+7XFXjVx/6TQ7NEpXTAcpxM
	3Yxf5IkewzdIEO6U8IAZKhT+2koAK2spgnbj2aoR5ZOHq2jc1DI6hnCTWtCCaSTCe/j1
	4GqbCbMBgZg0lc4IdOE88AIuAaiMcAXzddXOHfXjYyGuMpDvf5vE34wflecRqPWUaMQ6
	gGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=nTS812ibyR75OqsDMjAkKLQTa671nS6K7Z/JA6GvWBk=;
	b=pM2UG3TTMEerN4whkOXfBk4lOGiWJSlDBhX6Je2nuTH6Jhs+5LBClFLkRm1/C2fWjF
	Mqs0Jq2UGT3EqNxqelKIwJyop8nk491sd9I0Dgu35bu+eqApx2eN9PSA7BfaQgpxffzW
	UxfySBrsIEguTbToBZ6+ppWk6SQMhNT2hvbBI31JtVaIv5kRMsXN4PjkJywve0iyeITF
	PMVs0NdbRfMIHR7vKxuOzNasmcDgrBFxO1aLPAyMYh8IIf5IxVq0t8IJxp2SdYgSCnlx
	PtPSdXEsoG5gQIZdf770gO1pP3cB65FlOpj1hsnjx1Wr0/RzprOz1L5/vH6cRLTmWnrZ
	Knlg==
X-Gm-Message-State: APjAAAXrJRB9eo2IO+v+o6ca0XFJt638Ig83ZD2QyA3+6gluoSGLIJXd
	tZlBKQE7LDWpE9WUWux/1nxnWqUGlIc=
X-Google-Smtp-Source: APXvYqzwXv9iNStpeVO4v9AnpkSvBuGubtRAtkoOB2VcLZc6OaScvJrjGZ8UTR4WmkyZrbm3afYo6Q==
X-Received: by 2002:a17:902:7443:: with SMTP id
	e3mr7039502plt.176.1561313723588; 
	Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.22
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:15 -0700
Message-Id: <20190623181518.19564-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 6/9] tpm2-tools: update to 3.2.0
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tools/{tpm2-tools_3.1.3.bb => tpm2-tools_3.2.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_3.1.3.bb => tpm2-tools_3.2.0.bb} (86%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
similarity index 86%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
index 1f1f5c6..b6f1be0 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
@@ -6,7 +6,7 @@ SECTION = "tpm"
 
 DEPENDS = "pkgconfig tpm2-tss openssl curl autoconf-archive"
 
-SRCREV = "74ba065e5914bc5d713ca3709d62a5751b097369"
+SRCREV = "a17daa948fc67685651bf3b7a589ed341080ddd3"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
 
-- 
2.17.1


