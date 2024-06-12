Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D6AC27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 14:27:01 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.12967.1718202420020082097
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 07:27:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=bCje9NP9;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.175, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1f717b3f2d8so7516705ad.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 07:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1718202419; x=1718807219; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eQbIMokbB4lCqD6cIN8lxL1hfNr+uTUHojmETWU5Gvw=;
        b=bCje9NP9cB/VUQuV0vVLA7RLNOI0a/1VCMrvmvsv1u8sv9NJJ5LqqhyRPT9WrEdTEq
         zA2PZbTryY3OhiPB9MwAF1D3IMqhd6eARLW10xpZCaUSuS2L56iq3yyCsbSFvLUNMWHS
         GKeHfuH4/IzsOMERZTrmfIKjU/ZagfCEOu0s5nbxMbQb/uMRb1cMJqj3dR+j7rw5hWN9
         bJ48hx3G1U9M8i32JXH/8sQC1ROnF2nBwdEVixbqOQf24ywqraZgn1w345JyN2qqt17R
         WsQrk7Uwi/wF6hd7beJwJFm4OUXNJsGvINAFdzvmKUsnJBJEoqrlBcYxzBnA+hPdQMYU
         9qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718202419; x=1718807219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eQbIMokbB4lCqD6cIN8lxL1hfNr+uTUHojmETWU5Gvw=;
        b=fpF0AKVaE7kuZL9kkhJExDvfulDkNaFeZhZzFVghSgGdhq7eOgDivH/EznrneXi5Rz
         yKS2q2/oayDDPolCn9TcfUHOns2e/CyJO2ern67Mkb4MIj1QFd7bK4+WV9b+NRO6snrB
         whJ1E2j0ExJ0wLhDPs07hZ4uS9mIPV4MeS4ZH36kf2yxUIqYkJd7qUkBKp/Ej6S8QBIe
         CelscuRp7qRSfEEcJlONpOMVO8VK6Vf0suwW753GeTMm/rH0D4Fk0t8czkWBryiW5y7S
         JTUHb1ACZFSuioZEkI71PVVNhpm66yuUg8c7J/Ht5a3zRE1KIx9PVydFHgtkGcRkeP1M
         hXuA==
X-Gm-Message-State: AOJu0YxE9kpohjh0Fr1kU6IJXWzWykcFyH8jhpAkXUAgpR+MP5jxv+Ey
	SofTz1SFvwYM258n0P13AwAVp0AzjZ3xoz8BEpmcp1ic4+xxPJG4HavhAvgqn9ytf6/ItZsj+gA
	8
X-Google-Smtp-Source: AGHT+IGUAleSSNvFCPWB/J58HJuQQIDme7MGEUOA4TGMEpwBXJh7iAA6rdXLelQrgtn8TsXQCTSw2g==
X-Received: by 2002:a17:902:e750:b0:1f6:ee40:196b with SMTP id d9443c01a7336-1f83ae73c63mr38674125ad.9.1718202419015;
        Wed, 12 Jun 2024 07:26:59 -0700 (PDT)
Received: from hexa.. ([98.142.47.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f709733ee1sm67050935ad.245.2024.06.12.07.26.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 07:26:58 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] config-json: use master branch for meta-agl
Date: Wed, 12 Jun 2024 07:26:53 -0700
Message-Id: <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1718202342.git.steve@sakoman.com>
References: <cover.1718202342.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 14:27:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63331

scarthgap is no longer supported on next branch

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index fbf2e6c..2089fa9 100644
--- a/config.json
+++ b/config.json
@@ -1853,7 +1853,7 @@
         },
         "meta-agl": {
             "url" : "https://git.automotivelinux.org/AGL/meta-agl",
-            "branch" : "next",
+            "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-- 
2.34.1


