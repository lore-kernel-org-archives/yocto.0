Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E665CC433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Dec 2021 18:23:38 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web08.29492.1640629417594722567
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Dec 2021 10:23:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=frt1iO6Y;
 spf=pass (domain: gmail.com, ip: 209.85.214.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id i6so5886094pla.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Dec 2021 10:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YoXHGOSKiZbJbq5OOW5U14YWGqOYluu1a1usR3XxEHA=;
        b=frt1iO6YYFN6jr1EQ8yKAtSL92rxhKfBbhZF28kvy8HK2DWqij+8Zy2MD0osZecMYJ
         Sk+iDfAZrmS81jb6DfmsadhkVaH4QK+lc/5FqKfuOhNe9GBaqXNl+7sbQvers4mi9V6m
         XEd3lLnRiZaUTOm1Wiex9qMMS11LzAT/8pUIe3fjY7Gw0AXeSXFSr2mcIQAcklERJoPw
         uag2esC3MkI/zWvWVRf6Kb9nsuxlBOt+ESz7rE6DVJdD0dkbCC6RFugTeJIMiyz2BwhR
         jHS39UJUhbSn/EixKYQlZoD0zLlFWmv6/AcAMNPiBPl8j9nd/InjZCkqv4khd1NOtVGv
         NNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YoXHGOSKiZbJbq5OOW5U14YWGqOYluu1a1usR3XxEHA=;
        b=3pmB7uQhT7JfAKG/g+WpAsz4kmSSLZ+gN8imiudbWeAMKNnHh0yDLLBVjaJrkO9pd3
         QEhjoFrUmD5+xifWWOX7s6E6nmrMAPGUpelZP2RKEtVqETfv8tMFFc/UrnbYg16WEh/9
         CXb0ewvBuRCD8tad+dwQPvBdD3sl1paZncmlS5PuEaopktFA154dHj+RHiWPOH/KTsEO
         pKcXR97I4NZHcGTUMFXZl//3bF//ZW4QMyvlPXQ3w47P9WQ/VBRluJytqvcaJJLUZUaG
         OBkbIZj3/2KLEm+XIj0bTHh2KOZqZQCKzBXji+FsWpKpyJLQGjIvRs6eA+mmTSK9+3C2
         ADaA==
X-Gm-Message-State: AOAM532/N8/d/zJghN7q2lGuam6Pw2xfxwZHmqoEpK9e8J9FuUksJXq1
	oVAffv50Ch3N+PQlLgYXl+0fe2E5NSA=
X-Google-Smtp-Source: 
 ABdhPJwWeCVZsJDN1xQ/benk9bge7p0tOjC0lq8RyoSDDwzVlX2IKLP+viPcDAZtCwM8nWv015XC8w==
X-Received: by 2002:a17:902:7294:b0:149:64f4:bdba with SMTP id
 d20-20020a170902729400b0014964f4bdbamr13630149pll.48.1640629416821;
        Mon, 27 Dec 2021 10:23:36 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:67e3:bc71:b585:c820])
        by smtp.gmail.com with ESMTPSA id
 m14sm19091424pfk.3.2021.12.27.10.23.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:23:36 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-security-tpm2: drop ibmswtpm2
Date: Mon, 27 Dec 2021 10:23:33 -0800
Message-Id: <20211227182333.412533-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211227182333.412533-1-akuster808@gmail.com>
References: <20211227182333.412533-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Dec 2021 18:23:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55664

ibmswtpm2 has not been ported to openssl 3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 764b2e5..b8324e5 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -18,5 +18,4 @@ RDEPENDS:packagegroup-security-tpm2 = " \
     libtss2-tcti-mssim \
     tpm2-abrmd \
     tpm2-pkcs11 \
-    ibmswtpm2 \
     "
-- 
2.25.1


