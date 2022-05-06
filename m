Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1805C4332F
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:48 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.10109.1651847564087291027
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jcWGlNun;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id iq10so7205044pjb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JPxH44vYSGEQUi4JLqA7YSS7nLo4vTmUP8LjqvyUaVE=;
        b=jcWGlNunWA3MVczt/hW2tmasR4Yzyc9qchX6s+RAaX8lb0uLfjc9t4fBEGzlk8jydA
         F8gbvgITNljfNsIwx8TsQs4yIYgLU8D9VtuktgYt8M4bEcRRqbhmIwwNbxSkwbSPMfYM
         KG/PZ76MvPqRz5Zzyns6jsNJDIwfxD2dNFyshTQRSynp7dRST+3kTmgXVlLoa8h79HSx
         yWM/G6Y9eUkNdgh/6tdvro5eDmkAhodNCIDM/ETB4tnRpC5g1ec7FFHYNpy8Z4lwNxIu
         HuLsWRlySTVuojrh1Atq8YdAznQ6n87vXllJeSmqx7HFBJ566P63Ycj2gG4bHvSFRw5r
         jtfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JPxH44vYSGEQUi4JLqA7YSS7nLo4vTmUP8LjqvyUaVE=;
        b=cqN9lxVCKkgS4GLunOtHDUdNuWkPhBnNoDVm0OOkIAJzZB1nPGYBEgw3CMP9e80fpQ
         IZSxZ3GGBBEbYZoPCsD6T1D43BJMNwhLh7ZchiHERxhmyO24KqpIrOIo4MwGDqJ8uuzM
         1qLXbFtMf1dAsCwoPArwFm3yLKDCNwdbLleM8t+2Ce2DGK8dcXPvP5WFDdLlgXmb7+PC
         ZbrznUyggdtLFs/pM3dJdKs9zkqgzeKMa/ZeQwR/17A8O8LjCym9gWiWTzyRMr59Ym3F
         DIcjToXrMugL5JFOeVlcisAZFEDZfzL/6Lhb6F+hnL43hj+iL9IHRlQQGaWvOkgGnvJ4
         1Tng==
X-Gm-Message-State: AOAM531F7XDVGdpiGyCAuHEjHkv7nX2VDNjpZHL0K/Fc3NORx3yUcui2
	82E2W/Ivph0+UyJkiFE19sO3PGzYDeh7mA==
X-Google-Smtp-Source: 
 ABdhPJxj66PfRfLoXniMpzo88GcCbKjb0MVrGGLLm8YjlFl1weDjV9C60+rsUT++TPC98OYedWGGow==
X-Received: by 2002:a17:903:1252:b0:154:ca85:59a0 with SMTP id
 u18-20020a170903125200b00154ca8559a0mr3957048plh.169.1651847563130;
        Fri, 06 May 2022 07:32:43 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 9/9] layer.conf: fix up layer dependancies.
Date: Fri,  6 May 2022 07:32:29 -0700
Message-Id: <20220506143229.2141000-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57020

reorg pkgs so the we only need meta-oe

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 21f03d1..210609a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,7 +11,7 @@ BBFILE_PRIORITY_security = "8"
 
 LAYERSERIES_COMPAT_security = "kirkstone"
 
-LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
+LAYERDEPENDS_security = "core openembedded-layer"
 
 # Sanity check for meta-security layer.
 # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
-- 
2.25.1


