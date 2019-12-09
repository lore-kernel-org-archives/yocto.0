Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13497.1575909823588618643
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 08:43:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sa20OBwB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 324DCE011BA; Mon,  9 Dec 2019 08:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF532E011B5
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2019 08:43:40 -0800 (PST)
Received: by mail-pf1-f196.google.com with SMTP id y14so7495465pfm.13
        for <yocto@yoctoproject.org>; Mon, 09 Dec 2019 08:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=1lCM5uIqzQSR75H8IjqV48aRzUxhCoHKNeXupA4qpRU=;
        b=sa20OBwBqxnfv4+xFW7Kxx24xZi0cYSGZFAvT8Z9JB8nTVe+kSkQit1wepaisVfYFJ
         wVhNRlnTa4+J/91DHzR8+CIW2bUNth5zdpwCZ5xPEFMdTaHgA0eWG53M1cXZBegFGfry
         1LRS5LQ8+ZdcEKmh1Z6ShPGsk/kkrQpJrieTUAAlVF9zCFx0pdNYdL8IJG3TOpnDbSVp
         G4JKGbPV83y7LqwJJA/mxUpk/HfrGPxFWiysBdz3RR89rTni4ZMgCro4BYmez7Ie6KY5
         R9eO9Si35xoUn1CGsWxxXomyfN8zUElmnMlWzk6evXxyMDTlB1QDasKS7IlSe9E2E2vU
         2UKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=1lCM5uIqzQSR75H8IjqV48aRzUxhCoHKNeXupA4qpRU=;
        b=Btjmh1HZuVfDNBhXz+9f8bmRFNK7RY0773cj1MNnsIr8MjesBFoyVXDSpqIV6FLpxe
         JEo2lW00JeWM/el3ORcwviiT+C4aGyT3PrVCoSFW5qo1ejdtIyR8Ptz042moihnxqj4a
         RrXp31hAw9I8lTPK4qZ84UtfN1NfGm3YoG4AtMG6hdb9/INCra8p3kVEgKn7YViWIzWd
         F+FAlB2mZG81C3jlFHAiu4ocJsmLr33V69lQxQ1ixjXIFJFtPDzDXT8LGne1FWQTvPVP
         eI+Todif3NJZEezWrP5kMIP9wEmv8GSY4EjDoP0urmavgjy/zgEOuDaDFOfrs+9j0yGc
         18Xw==
X-Gm-Message-State: APjAAAXH7WAZ2YAnqlvBOa/1moeCPL02ePHUeN59ZKKjcEXOm6fOBEA7
	0m67l+NGQQJzGO1u/CatY6uENqUKkv0=
X-Google-Smtp-Source: APXvYqxEsdnhXDJX9s9ong958FrbMOdvFitIRBkNW1Mr7qhvsDtGUg/FuiHVo3FkE/QTg52GCkw0kQ==
X-Received: by 2002:a63:1418:: with SMTP id u24mr18959829pgl.279.1575909820186;
        Mon, 09 Dec 2019 08:43:40 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:1527:dedf:f05:266c])
        by smtp.gmail.com with ESMTPSA id q8sm63788pgg.92.2019.12.09.08.43.39
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Dec 2019 08:43:39 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security-compliance][PATCH] meta-security-compliance/conf/layer.conf: fix typo
Date: Mon,  9 Dec 2019 08:43:38 -0800
Message-Id: <1575909818-14205-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index e346bf3..8572a1f 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -12,4 +12,4 @@ LAYERSERIES_COMPAT_scanners-layer = "zeus"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
-BBLAYERS_LAYERINDEX_NAME_integrity = "meta-security-compliance"
+BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"
-- 
2.7.4

