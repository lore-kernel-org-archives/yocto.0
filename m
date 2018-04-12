Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4C3E00C54; Thu, 12 Apr 2018 07:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1129DE00B58
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:59 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id j73so6125033qke.6
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 07:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=3KB2Ltl+Y4hn5y6zhwvUS8rXxdr+zdjeMb7Vl5dyvAc=;
	b=Ou72DcjjCghRl73gjujExky/hucKUDkQdFpDKX6/G3kR1NrLhdLzG9XTSEzypMymmC
	MF/I2njVEQy4+9vFKUftufp3sPSFh32T7SaGdW1V4EvygH72jgiCvUECv6SMy2jaDz32
	nF3541FadQ9lSXBUBNefXA206wJhnZa0tTUt+Sa1T8n9tm4mhfLTvUiVxmM+PEeLIAm0
	pUfaiE7y0AdBfpsXRApNjAToVsyamWebDBhRchXW19RCN0GulGDAbvWVpTZSOq7sKw38
	dk3CuINYY3EwsDQxvbXFutdXltaBYgAWRpWDCax1YMp4TKxtS2zveu4nw417nZGNnY9U
	pY2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=3KB2Ltl+Y4hn5y6zhwvUS8rXxdr+zdjeMb7Vl5dyvAc=;
	b=dr9rP4OGTAhyWSQEA2KNuHlPL6YAqkcK2f0I3pwdAUXig7RSOT8uvT+0zkw1PhpFbQ
	mDscTVMciBs2cXxZoSkh1ZfSqnmQI3VKFiCokhQCnex+Ik+fx7Ktuiw3ZGD3TQrWK8LP
	AD3hl9eaTEmvDrsVVFy+VJEk0xJYUHZC7nhF1YcA3LS8joT6sPT9Tf/+R5tt9EAVvTIY
	urt0mRJY0Ex0V+KCMUziLw4zdXwq1fKEf/MyIzws0OQ3TbRvXCtu1yLsJ6GhKyH4eRp2
	kGkMYTbmokl/A0YVmxyiQp631ma2bXiuNmJsC6QkQF+q7duNv0/CMuekUqgZ6W3++V/l
	PY3g==
X-Gm-Message-State: ALQs6tAW4mvcsy/uHnYNaZDUYwd84dVsXN+2RGaPXhXOh5aTxirxEzIf
	oZJ3Wq/3Uf81o9ph9idPcLyRPg==
X-Google-Smtp-Source: AIpwx492DVVqD/un3RoKQws3YoLjrCmhaxb/ykB7k1nCZ6y/eUDoS6FoiDvKrzuYBeciPZBnpDd0iQ==
X-Received: by 10.55.161.69 with SMTP id k66mr1416480qke.55.1523542078663;
	Thu, 12 Apr 2018 07:07:58 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:a021:aca9:5eab:bc4b])
	by smtp.gmail.com with ESMTPSA id
	b12sm3145006qtb.62.2018.04.12.07.07.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 Apr 2018 07:07:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 07:07:43 -0700
Message-Id: <1523542063-20994-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523542063-20994-1-git-send-email-akuster808@gmail.com>
References: <1523542063-20994-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] meta-security: remove depened on other security layers
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
X-List-Received-Date: Thu, 12 Apr 2018 14:08:00 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 04605a1..efc426e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,6 +12,3 @@ BBFILE_PRIORITY_security = "6"
 LAYERSERIES_COMPAT_security = "sumo"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
-LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
-- 
2.7.4


