Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B577BC433FE
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:48 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.10107.1651847561937203016
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I5mAN3lJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id x18so7614736plg.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nkakjLGb1YUtn0g7O5XI4xP2XMC4jaBF24fO2OXll6A=;
        b=I5mAN3lJJwfRMNPg9dKvJUmfzv/kf405CSVe7k5A0X50ywO0t1IO4Zl6njIGevYgUF
         /aw7LAiMZbvOSGCgx1h5cUu82WGPF+CFL94wjm1ognVgKjeXy34cr2VscxmFc76EvncB
         n/VUBfrUnp+UMhJV838NdkxDHs2p/8phwXBvnuKUNvSRKtNs+ni7ZoKAIKUGxpa/Vy/Z
         eG8+M6t1nxJhMm5soxZT47XYx2I1KIvLkOBJxEdp7WFdy3EdgPcdZeHjdIq6yGAtYR4r
         laZ0/75wvQv28qGP3TIh0azC0TKDl890mzu1U1JZwuWSzhcjvAahIpEivL5FjxOEmVpk
         +J7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nkakjLGb1YUtn0g7O5XI4xP2XMC4jaBF24fO2OXll6A=;
        b=NlOI7LtKYVVZW6D4rDBIbmAqSYA2tK2xHYwBBpa43oCoXEJwKE283eAziEWBa2KM+E
         Ox69qPcH/o3mrZNmpbcj2gsOG3uSHCuWEi1kspHoTHoh65CfJbbzu6tQywIms4GnmNNb
         9r7vd9ippocvTkmsGE+PwSSFUNudQNHazFeUPxXmEfPO/+Io6IIkzzZn6ZNcCvk+SE4p
         IHBU6DS3/3tvGEhLQ8YvlBhcdmOycVSbQ1Bi5el/rvMP/X8cns4YPfMJg34J2Xim7k9y
         HDiPIMF5kqWW2LDIng/QwV+APWzA50TtKBjRBvZRyATMFNCNfeylKT9sY2WOsJ5uskDX
         D5yA==
X-Gm-Message-State: AOAM530f1va8yM2sGsMyKqijdN5h62vBXq8l87acKf+BTUxVNVIB02Ls
	i03TvIqbdc/TVrYNb2nciElpQbYrSoO9Xw==
X-Google-Smtp-Source: 
 ABdhPJyQ4Q7uKmpC2kCzJgq/tC+mUOoE74QlOhyqoqVYtuqfNUnVpoTe0T/lUWJNDF2Rpm4IT6PXdw==
X-Received: by 2002:a17:902:ce8d:b0:15e:a95d:b4b0 with SMTP id
 f13-20020a170902ce8d00b0015ea95db4b0mr4098338plg.153.1651847561179;
        Fri, 06 May 2022 07:32:41 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 8/9] packagegroup-core-security.bb: fix
 suricata inclusion
Date: Fri,  6 May 2022 07:32:28 -0700
Message-Id: <20220506143229.2141000-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57019

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 87c5b7a..9010054 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -56,7 +56,7 @@ RDEPENDS:packagegroup-security-audit = " \
 SUMMARY:packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS:packagegroup-security-ids = " \
     samhain-standalone \
-    ${@bb.utils.contains("BBLAYERS", "meta-rust", "suricata","", d)} \
+    suricata \
     ossec-hids \
     aide \
     "
-- 
2.25.1


