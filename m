Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1044EC433EF
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 20:48:13 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.1797.1652906887317586861
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O+boIQHE;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 l7-20020a17090aaa8700b001dd1a5b9965so3234479pjq.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RPx3vkEtCkgKIp2NonpZO2SU7Jfi0B+Uf3bHWPXsKBc=;
        b=O+boIQHENaJHln/qxPEZSkwHoOcDNlU7efi7Ynz5aHTbWkxYwYkix5/Y/sP8Y52Bgk
         CyOo4vwSgiAENXkUYkuVC5u2QeLURH2sjX/6e8lRTMsnFUiWu8CV1KFTHeIgUjqgD6me
         O5JuSjIH6JV+hhgHY3CcPiVgBhh8/pspzreV1OfVrGnXdFziPpt77rtqgHLpj6ximnf7
         HfgA1fUkzk5gGE/ok+iHx/8HN1X/2fZUsKBRlcpplLXJqY9540MiByMpboosgbuP8EGf
         lnW9TOFsq4gbTDrbudm8wzHk4oSgHYclr3nksslndnRdi2rbeAhNH5cLhMAeNGJXDh4x
         c1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RPx3vkEtCkgKIp2NonpZO2SU7Jfi0B+Uf3bHWPXsKBc=;
        b=LNhRGlOpr07DjlNXNoZ/MY3QmNfwJ862/2IMTxvRkFelx4cfYjvISAaGJmrTYFMljJ
         AAg2nboKKBqrcyhgAlp+OiQesX1V9SvrT3Mr7u86sIT4v8DuGkTvDcYpMLSAhikZ+jhY
         hjd5YhbjBvwENfHcWfadhS2FJIKz1M51Gq6zu/qsuLqsSmRkv5U9lj31Vn4+wgfKMHqb
         tf5futoMey5A/AgZN4so7QXG3VenGoNoJa6y258yupOZhXnlqnjanL9rLgMxBJFFMXl2
         q0HOEZkyt5QxD6mO4XGFAoIhf/YGCc3PEbPaNJq9U0PCIkMKKRfkgqBGuNHnZlCq0l0l
         LSug==
X-Gm-Message-State: AOAM531dc7Jd59NcuZzDVmoGAzD6Bxz4FrNZKkWRVVRfG6CcRkxnqZEx
	Zx8/o0cdQ33pO63XzXOLsaGshMN7FdFHOA==
X-Google-Smtp-Source: 
 ABdhPJzPjCf6FvBBKapHyIfT2WiNsLNMYq0IjtEQ6AopPQ5oHQDGY9Cl78imXq2YDqH4Mr5F4OZ87A==
X-Received: by 2002:a17:902:e94e:b0:154:3a4:c5e8 with SMTP id
 b14-20020a170902e94e00b0015403a4c5e8mr1462832pll.19.1652906886299;
        Wed, 18 May 2022 13:48:06 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:fee:4904:d15c:6dba])
        by smtp.gmail.com with ESMTPSA id
 p62-20020a62d041000000b0050dc762814dsm2415565pfg.39.2022.05.18.13.48.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 13:48:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] aide: Update 01.17.4
Date: Wed, 18 May 2022 13:48:02 -0700
Message-Id: <20220518204804.2840071-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 20:48:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57133

Precalculate buffer size in base64 functions (CVE-2021-45417)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/{aide_0.17.3.bb => aide_0.17.4.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/aide/{aide_0.17.3.bb => aide_0.17.4.bb} (94%)

diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17.4.bb
similarity index 94%
rename from recipes-ids/aide/aide_0.17.3.bb
rename to recipes-ids/aide/aide_0.17.4.bb
index fcab504..6bc2bfe 100644
--- a/recipes-ids/aide/aide_0.17.3.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -8,7 +8,7 @@ DEPENDS = "bison-native libpcre"
 SRC_URI = "https://github.com/aide/aide/releases/download/v${PV}/${BPN}-${PV}.tar.gz \
            file://aide.conf"
 
-SRC_URI[sha256sum] = "a2eb1883cafaad056fbe43ee1e8ae09fd36caa30a0bc8edfea5d47bd67c464f8"
+SRC_URI[sha256sum] = "c81505246f3ffc2e76036d43a77212ae82895b5881d9b9e25c1361b1a9b7a846"
 
 inherit autotools pkgconfig
 
-- 
2.25.1


