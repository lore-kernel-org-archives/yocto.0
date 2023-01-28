Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB02C27C76
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 15:18:46 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.15097.1674919119729436475
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 07:18:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mtaOXlux;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id o5so6480176qtr.11
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 07:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ru/kXjNwbXhcLX971NJ5vVQgTwq8uNf5vK1dHuGWFCs=;
        b=mtaOXluxqDIwhRwsiOThs2auNhj9emeMFWlls7cVXzj+bXoEuWyDXs/X0CXRY6HzyB
         aiRz+uv6UElqU/zTZ7AFNeCaPG26EC4fgpA7Oh/O6TDs8Kk1zQMsFc4xZoWih5+PFhjM
         dfhqwM1MQPkRn2PNtZq06c3Bf9io36oPfaPlNWA3kLZbiaruK3GZEGa0oL+OXtCNqnxg
         xUBWZ6oV4ajrXmJxTHMLhAjSJ+jYtkbQeCWTGGvKQ5MK/zslDuxFpPE09xt49ju+NrPr
         4fmu+3mo4NKCd0rtj0lM45KtKEs1ELdHXtcNKeY2Bv6v0by4WGRJWGlBEsLb3MczSeC4
         7l1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ru/kXjNwbXhcLX971NJ5vVQgTwq8uNf5vK1dHuGWFCs=;
        b=1weT5Ch8gnjxYNv736DML+vTmYfu4UNyLDMnOrHLr7t8PM1a71IZiR3USzSpHlRge8
         NWPVLyKfXBMPOJeCidKT6JmAK3Z9Sn/EcYP9bu/2og+B/G12I90ZdZ10zDLQeFpO/iRl
         +/nsXmVN2UFU9i8tB85hGc3huNSezWEztZrFUMXAqvW+QFbO2tliBWT6qGI/B/GQiEUU
         alxa6OC9ByhF+unuYhtMuVhTs5PZGMukNNoUBUgTWFqppDCeUL0IhpvJPyZvCfqaqzbY
         Vq4Usf+bCw3RW+1V4nhr5+KzZ1ZPFylbTI794ggSAn/IJx+ZjxaXZTyRD9g/kNWR+Lss
         05HA==
X-Gm-Message-State: AFqh2kpjT0r2Jry3XGqJF7i091QBYye34mXAaYyeHefiaXWx9BGP91fb
	YD5vcBd1dHETJULleNabwGVaymtqnjY=
X-Google-Smtp-Source: AMrXdXsv/vap/mmuxBHFCc2CvjXXGb6mKk9hLPTa7DkB3tv8gqcP5Hu8H3pX+jBhvPDO4k6VuNFX9g==
X-Received: by 2002:ac8:6053:0:b0:3b6:9b37:e03c with SMTP id k19-20020ac86053000000b003b69b37e03cmr38945702qtm.7.1674919118703;
        Sat, 28 Jan 2023 07:18:38 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f329:fc42:2781:4396])
        by smtp.gmail.com with ESMTPSA id i2-20020ac87642000000b003b6a17e1996sm4687532qtr.83.2023.01.28.07.18.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 07:18:38 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] meta-tpm: bump linux-yocto to 6.x kernel
Date: Sat, 28 Jan 2023 10:18:37 -0500
Message-Id: <20230128151837.376291-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230128151837.376291-1-akuster808@gmail.com>
References: <20230128151837.376291-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:18:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59090

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend}  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/recipes-kernel/linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend} (100%)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend
similarity index 100%
rename from meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
rename to meta-tpm/recipes-kernel/linux/linux-yocto_6.%.bbappend
-- 
2.25.1


