Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2769E00DDC; Sun,  8 Sep 2019 21:16:36 -0700 (PDT)
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
	*      [209.85.214.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2001FE00DAA
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:33 -0700 (PDT)
Received: by mail-pl1-f171.google.com with SMTP id t11so5957375plo.0
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=LSq8PcJb3YA8XYmgNHajZ9wzu65y3AUmp+nk5zvyDCc=;
	b=C57yOVM1IWEgsOrCVfp4aLNoPpE/9i5odksorLgX0uhPUjwR6l6Ai2pWoE8iLdP2Ar
	UKSkaXdwGtDkPLSXmhsQ5q433wigBP1GW0OETDtdJYcYS3cjQaVTGIh3WRwhxBTgoeWw
	R7R7hZFWEDbpYhIIXlNMobSRZQR4UMZ5Zq4O0htOAFcqV89REXynFGj/rf9llbUkAUBm
	j4azCtxpCK5oUjV8lrQL98FUDB/5VpydrsEvHjFBjItqDwH6jE0imrYzTaj/rgCd7ksb
	m62dg+mey/VLAZ07xvlLMDyztncPr6ogFDVOrWEX2Whuvh95Hk/V59H6xZubEtDgnMq0
	pLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=LSq8PcJb3YA8XYmgNHajZ9wzu65y3AUmp+nk5zvyDCc=;
	b=LEPd5BdaU/E68PjPV2bfMbHN83QhGPrmkcyE2k1kPHSB/3OLcXjfSt/UDQ214r1Nxs
	jp4d4CaNVaIKMJhFHw1TywzDGtwOf4NzsiB1jcRLRFDjVyS/QNql3XL2Jw8bPyTZwfoE
	3Ud0u9Iw9WcBOP0PS+6rjKE5J3JkcYL0Gp+rJwi3YCmy8h/AdYUAkW/Av2IQsHmAMw+J
	RYJSgbyVt3/tZz20EYMEMTf2YlaMEDT4ywjhRZVVmhwTUFsrlfv+hn3DktTeexkcQHF2
	OAShcMWeXco/zdPcvUvYncFpVp0sRpR9rk7neUmd9vZ/0Em5thefStEEbyvLI8Ysort0
	GWbA==
X-Gm-Message-State: APjAAAUpBIjmFYIAoD9Fei8ZlABlrnUc8NFZBG7Q9fmB2nuHftq7RYYy
	H2pSDv0rkbaTJPNZg8OGtQcNZnf9
X-Google-Smtp-Source: APXvYqx/jOcpLwTaOd6OgDaTt1ZifBLsVR5MgS9/gekES89ZARkWnVM8qIUrX+IfPwPCYHrOFphkQg==
X-Received: by 2002:a17:902:9a05:: with SMTP id
	v5mr9630205plp.237.1568002593537; 
	Sun, 08 Sep 2019 21:16:33 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.32 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:26 -0700
Message-Id: <20190909041628.7934-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 6/8] tpm2-totp: update to 0.1.2
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
 .../tpm2-totp/{tpm2-totp_0.1.1.bb => tpm2-totp_0.1.2.bb}        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-totp/{tpm2-totp_0.1.1.bb => tpm2-totp_0.1.2.bb} (90%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
similarity index 90%
rename from meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
index d47b756..8a2504d 100644
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.2.bb
@@ -9,7 +9,7 @@ DEPENDS = "autoconf-archive libtss2-dev qrencode"
 
 PE = "1"
 
-SRCREV = "2807a509a9da383e14dc0f759e71fd676db04ab1"
+SRCREV = "15cc8fbc8fe71be9c04c3169ee1f70450d52a51a"
 SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.1.x \
            file://litpm2_totp_build_fix.patch "
 
-- 
2.17.1


