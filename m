Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4083.1584582820146644539
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dt8a3Nk9;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07959E01844; Wed, 18 Mar 2020 18:53:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DFBE0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:39 -0700 (PDT)
Received: by mail-pj1-f43.google.com with SMTP id nu11so264981pjb.1
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JPvrZwTkO2z3vqJ60OhzCXS6zdI3Icznu/u1r/9c8sM=;
        b=Dt8a3Nk9NzLCIwZ9dYvuM1iNPqmCbBUe27T9xJP6fS0w3P/EuKouDmpsk/hBkMljhP
         U9lMUSAH/FPO0FjgzxlfYXpfQSjqZhIMCMSiPihVUGV8jSZPJyuoKrii0oGIDgUe1p49
         89maFUpjw40lXtbq/Gu/q5EKa/eE93nv3A5EFJJZzG3aTf25C21d374I2w85JeJOSPZZ
         EMwGPGw4h7IaOoe74H6Sm9YiiEvFAYQutv0qHT+jM9U2MqvtEGm4Ry1ieRYtohQq+KEs
         DwgvIgc+LBNPr8dlDMoVBwxdxkJe3+nFmdfZ59TmOGYWvUdATp9+8yDsXx26bf7iab+h
         Msag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=JPvrZwTkO2z3vqJ60OhzCXS6zdI3Icznu/u1r/9c8sM=;
        b=Uw/uZT0MUBIQ4OAFxwxNwqHIyEDMNGGsZxyiY6kDYbywSX8K+bBDRDWTW4WT6B9eey
         MrMZrhL7I/gNivoAU88CwqgLrIJkL3Im281wC6EJrqklISi+aRWFreXczmI1XOGhxrZI
         SRpq9eOwQ57FAtUofRWjFbJB0axlBi3CxLc1LXb3JiHgxbjZxAYY/fEoUHYYk/rrqP0T
         l9Anp+DBucGkiqGYLRaNR/iFXkboLv73umK+h/LOH5yRfCvHbd/UrK7eE+EVTqkoBUid
         Hi5K02RcBBjOYlxzVqyxVTPNiP7K9eNQaZuPIem9GDLb2dwspVF0hGzzeRvcTs1HfXp0
         9APA==
X-Gm-Message-State: ANhLgQ2nN4xOOJ4AwexF0s5pNInvRp83HyzdIoai34xnbSwwKDhz/3P2
	EKdiFaDJHThpU3nF0HDftmU=
X-Google-Smtp-Source: ADFU+vsAynD4yu3UQ3CIQBBRnMqlInAXtH4n7hTYIRJ7q4ilHQZZnqpotliHggXqK577H5ddQNut3w==
X-Received: by 2002:a17:902:bf07:: with SMTP id bi7mr1109638plb.164.1584582818489;
        Wed, 18 Mar 2020 18:53:38 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id a75sm213384pje.31.2020.03.18.18.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:38 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 0DD772A04DA; Wed, 18 Mar 2020 18:53:36 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 20/20] Move packagegroups to recipes-core for consistancy sake
Date: Wed, 18 Mar 2020 18:53:21 -0700
Message-Id: <20200319015321.15525-20-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/conf/layer.conf                                         | 2 --
 .../{ => recipes-core}/packagegroups/packagegroup-cgl-applications.bb   | 0
 .../{ => recipes-core}/packagegroups/packagegroup-cgl-kernel.bb         | 0
 .../{ => recipes-core}/packagegroups/packagegroup-cgl-middleware.bb     | 0
 .../{ => recipes-core}/packagegroups/packagegroup-cgl-swdevtools.bb     | 0
 meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl.bb    | 0
 6 files changed, 2 deletions(-)
 rename meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl-applications.bb (100%)
 rename meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl-kernel.bb (100%)
 rename meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl-middleware.bb (100%)
 rename meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl-swdevtools.bb (100%)
 rename meta-cgl-common/{ => recipes-core}/packagegroups/packagegroup-cgl.bb (100%)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index de64205..a48f96e 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -3,8 +3,6 @@ BBPATH .= ":${LAYERDIR}"
 
 # We have recipes-* directories, add to BBFILES
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/images/* \
-	${LAYERDIR}/packagegroups/* \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "cgl-common"
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb
similarity index 100%
rename from meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
rename to meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-applications.bb
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb
similarity index 100%
rename from meta-cgl-common/packagegroups/packagegroup-cgl-kernel.bb
rename to meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-kernel.bb
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
similarity index 100%
rename from meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
rename to meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-middleware.bb
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb
similarity index 100%
rename from meta-cgl-common/packagegroups/packagegroup-cgl-swdevtools.bb
rename to meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl-swdevtools.bb
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl.bb b/meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb
similarity index 100%
rename from meta-cgl-common/packagegroups/packagegroup-cgl.bb
rename to meta-cgl-common/recipes-core/packagegroups/packagegroup-cgl.bb
-- 
2.13.3

