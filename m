Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1087E00CDC; Wed,  1 Aug 2018 01:09:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F479E00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:50 -0700 (PDT)
Received: by mail-ed1-f65.google.com with SMTP id r4-v6so6269581edp.9
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oJob/f4wrNTiLL5UX+eQ1fkn8OstXiHp7F3O3Bh5rfU=;
	b=pfUwOWcW+eSkEZvZI1na/Wku9xuWVCfMZFM3xUoa96plpK+IPdsG6Qtd8UDI4AH5v2
	OiTyAT0O/HZvO/UpumDdB88CI95Ke8bPqTaL+Mmi7XgWSKZcZfHB7tH1NTL4jHfdx56Z
	q+pMk0GtuHgtJHlXJJ7nVOTEbE1jV3lWWfdPh6v7l4VB43dH9qCiVIr4emydK/bw3tsr
	yaRM27cYMJ/dBOdDqzbNNH0wyh2mEcxEn0mXCKImuePNx9FSoxKr3WXle1JU+l6K+7OJ
	I/lPHNcUKUi5GpIznZ2Y5peQeq3BPdWspbwv5GM97mnvK1/+V64F3zjKu2ZeiTx9+yqO
	xS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=oJob/f4wrNTiLL5UX+eQ1fkn8OstXiHp7F3O3Bh5rfU=;
	b=LED1Rh9eiE7AFi0px/RLnk6AzpSRg1PZrpkXk5E+8ptZHtChGut/2T2cMpGBIRUBTP
	TydKHdLLaam50McVkVYs5xemOyxIsmJ7a6UPHoxigRmfB3edbYojtWXUdXvUfCvoKMWk
	J+vV6b0Sj3eAAfpreH4ZjRBb5+yV1SJrUaoWPHSqBUkoFNos13AycAZw455oR+sFixzF
	GpSPK91b5cDe/CC42MiX+tFxE+dqFWrrIm/6b0/Gn/tBioYzKRBD/dlDOwkPaEU0v6sg
	TeKrvVr7yok/csdEDSfOINKi9QwVsXnzbgnnHNZwA/SbR1O22vQ3m9sHA9AYWIk6BZWO
	yr6A==
X-Gm-Message-State: AOUpUlENV72sxA9M75Jl40JGrBErnbEvnbrYAApTaQvVsUFbvXmpmANn
	8fPEwDXENijDDkYm4Y9XUHHe9jbAbU0=
X-Google-Smtp-Source: AAOMgpcK8lc6iOVC2eG8zecZD663eGWS5cFmHIifNFRqLmwLiruCDhLZmZew/RaN7oA6H/8C51X0ng==
X-Received: by 2002:a50:89d3:: with SMTP id
	h19-v6mr2911831edh.140.1533110989232; 
	Wed, 01 Aug 2018 01:09:49 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:48 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:24 +0200
Message-Id: <20180801080927.26522-7-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 07/10] suricata: enable syslog output
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:50 -0000

This fixes the following error preventing startup in daemon mode:

  suricata[20485]: 31/7/2018 -- 13:19:48 - <Error> - [ERRCODE: SC_ERR_MISSING_CONFIG_PARAM(118)] - NO logging compatible with daemon mode selected, suricata won't be able to log. Please update  'logging.outputs'

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/files/suricata.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/suricata/files/suricata.yaml b/recipes-security/suricata/files/suricata.yaml
index 90417b0..8d06a27 100644
--- a/recipes-security/suricata/files/suricata.yaml
+++ b/recipes-security/suricata/files/suricata.yaml
@@ -787,7 +787,7 @@ logging:
       enabled: no
       filename: /var/log/suricata.log
   - syslog:
-      enabled: no
+      enabled: yes
       facility: local5
       format: "[%i] <%d> -- "
 
-- 
2.9.5


