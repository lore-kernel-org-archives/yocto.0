Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3FAC77B7C
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 10:34:17 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.16099.1682678048625622914
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 03:34:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=fMRNaf92;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-54f6f0dae19so78058937b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 03:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682678047; x=1685270047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QF/jHqa0IsoiiM2kOyUfiOpQOtvA0cX3xyU8Lo5IJPs=;
        b=fMRNaf92NSoWR/QNge00R/eqwpOvulQ5VfvMfNdjdu06CIkADqwS3GNhoKv/rGhIMy
         yJpiZKunncUrckrjCBDDT7Ec8GzEXpXAAGmVeSsi7ghUjSUr0rIusUiKGIRD4Invd/gZ
         r4sdTWlB25k0IFAEuchdLGvmJQ76SrBoHy2LWLgUVBBg/jwZ5ASFWCA7Dj7y7v1m5LMh
         ILN8BaZeX1PY8ciodWskZHFXsPYMvUwwkufA5QTH61OvWdSPITwKiVxRus1c4rv42Aca
         /PLqpbwD6/iu8WJ3jkF4IZE3INmVIt2cIfg/+OPIRcF0xz4aBqMQHiHjqbw2h8B6zpkv
         KuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682678047; x=1685270047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QF/jHqa0IsoiiM2kOyUfiOpQOtvA0cX3xyU8Lo5IJPs=;
        b=OUW/PPbhTakRcT05a9xxZm8c7hBLLBl16HB5FzQWEL7UOSqUAXK815mYyq2tX9V5Hq
         ZbOLQc4tOLtTdZHn9u02yJz1mem/NrbsZbd97yja1QDRnFdGYqcCN41JoI4gpLabvEfl
         QHsvSTH7sCuuUCB17LzDYGDAu/jzP7tkBrEjAasaK4WJBSH5bJG9mDSofm+GIjcIFpB8
         Xq/B3p3MsNIp/NBFcM+h6wijgp/jhcs4BBw8cRZg4kf5mo8NxYvedHyWa95m2dV8/w2P
         ERRVFx6t62r2g/XglY7tgDZVIzgbuk8e0lH5RBW8WlBhVxyQvCmfsu3EdrQKkFscrjgd
         NKrw==
X-Gm-Message-State: AC+VfDyyQaCGB9SUmWugmKvLG1Q5qcgw9CA8P7uHlnPbYWB2ipVbqeb9
	Iaq60UO/5m4b5v/hui1kSlz6BWmzNgs=
X-Google-Smtp-Source: ACHHUZ4Jkv3Mnel1XrtA2l/R2BTbU/GiphfhC42kmK5Q2r7NOyVzlgNdlFPtHLuGhS7IeTKJip6agw==
X-Received: by 2002:a0d:e857:0:b0:541:8810:8d7b with SMTP id r84-20020a0de857000000b0054188108d7bmr3772946ywe.15.1682678047189;
        Fri, 28 Apr 2023 03:34:07 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:8746:fc43:c0f0:c757])
        by smtp.gmail.com with ESMTPSA id b124-20020a0dd982000000b0054f6f2d291dsm5414129ywe.34.2023.04.28.03.34.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 03:34:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] suricata: update to 6.0.11
Date: Fri, 28 Apr 2023 06:34:01 -0400
Message-Id: <20230428103402.1022697-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230428103402.1022697-1-akuster808@gmail.com>
References: <20230428103402.1022697-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 10:34:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59793

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{suricata_6.0.10.bb => suricata_6.0.11.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/suricata/{suricata_6.0.10.bb => suricata_6.0.11.bb} (98%)

diff --git a/recipes-ids/suricata/suricata_6.0.10.bb b/recipes-ids/suricata/suricata_6.0.11.bb
similarity index 98%
rename from recipes-ids/suricata/suricata_6.0.10.bb
rename to recipes-ids/suricata/suricata_6.0.11.bb
index 9d53356..914278e 100644
--- a/recipes-ids/suricata/suricata_6.0.10.bb
+++ b/recipes-ids/suricata/suricata_6.0.11.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
-SRC_URI[sha256sum] = "59bfd1bf5d9c1596226fa4815bf76643ce59698866c107a26269c481f125c4d7"
+SRC_URI[sha256sum] = "4da5e4e91e49992633a6024ce10afe6441255b2775a8f20f1ef188bd1129ac66"
 
 DEPENDS = "lz4 libhtp"
 
-- 
2.25.1


