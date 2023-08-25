Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5877FC88CB9
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 01:42:22 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.4753.1692927732326804370
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 18:42:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CpIC/0kl;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-56c2e840e70so217646a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692927731; x=1693532531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mkmvLIR1PbJccOUGUnwCRs5Mpg8w6dwB+pA6/Vgo2Yc=;
        b=CpIC/0kljBzcO63w2ANwOsHRh02OYrLW2D7ddbznAIJMJu6wXNdL88ZI5HyiU3giix
         oMxuiVCs6AA6+eM1w+Vkg2Rw+FTvjlyI3A/41WIGu7pp8S8JC1oUjwcbNZcVpIAfyLDI
         P+TuSCaosLx0FGacdCDe5fytILhtibBUezbMDbIMGlVOo6UzNc6z6MXE3NXRuTOZBe1r
         iMLNGnvf5Gzi1sG7DKWLepRgqA5THEId9+PLrVYdIHfo3PY4HK/nqWNU4cOu7drv4pWt
         tMpcZzeaV90XlbLpMBM7AdTA2YYlv1VTw90ULZt8hY8C+sStEvG2/hW/fQfpRg++swyc
         pRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692927731; x=1693532531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mkmvLIR1PbJccOUGUnwCRs5Mpg8w6dwB+pA6/Vgo2Yc=;
        b=Iv1lkQk17uBZQ/quZwChWoAgov/sVYfzLwHRWt2G/0MsE9Q9RQZtd1zu2cvolJwm4V
         1x/5bdySM0UNgRxjITwqn5Z/sKj8iOzkid9nn3EoiCODkmr7EHt1lIEXaZOqOuw9u8uz
         ds/nqJjiyyUKR2ibW094nCJfeuX14m4obwD/ESFtPwMkXSA8yQw7jBechal94vNQXO0U
         gnW2hHzu2FAfZifGVrAtaCGkr3jKItvujhWrXEWiYVJrCulIqY+zs13TG71kebs+ysrL
         64QNwwF5otUhIDC8FHtbY/GlIxXNZDmS7pKbOLYmK8qxDgmidGNgDbGTE97aqFeEEE5W
         twDA==
X-Gm-Message-State: AOJu0Yzrm8Hy2CfjC+46i0caSk5big6is0Iu7Gy46W+rkEP0onDJCDSM
	Q/Jf9cZVnaDQMahUso9w4RLbxHvy6fo=
X-Google-Smtp-Source: AGHT+IHMjxG1T49VL5mGPL51pmGsrAr0nn0f+9pXZhz/g3aGiyFvpRjfKMB1Ylr89+6EVM4OwsWjKg==
X-Received: by 2002:a17:90b:364a:b0:26b:be62:c229 with SMTP id nh10-20020a17090b364a00b0026bbe62c229mr16773668pjb.32.1692927731177;
        Thu, 24 Aug 2023 18:42:11 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:e38c:3700:34c7:85e5])
        by smtp.gmail.com with ESMTPSA id jf15-20020a170903268f00b001bb3beb2bc6sm350541plb.65.2023.08.24.18.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 18:42:10 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 1/2] build(deps): bump pillow from 9.2.0 to 9.3.0
Date: Thu, 24 Aug 2023 18:42:02 -0700
Message-Id: <20230825014209.1817874-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 01:42:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60884

From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.com>

Bumps [pillow](https://github.com/python-pillow/Pillow) from 9.2.0 to 9.3.0.
- [Release notes](https://github.com/python-pillow/Pillow/releases)
- [Changelog](https://github.com/python-pillow/Pillow/blob/main/CHANGES.rst)
- [Commits](https://github.com/python-pillow/Pillow/compare/9.2.0...9.3.0)

---
updated-dependencies:
- dependency-name: pillow
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] <support@github.com>
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 1f4975e..85f6520 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -19,7 +19,7 @@ gitdb==4.0.9
 GitPython==3.1.30
 kombu==5.2.3
 mysqlclient==2.1.0
-Pillow==9.2.0
+Pillow==9.3.0
 pytz==2021.3
 six==1.16.0
 smmap==5.0.0
-- 
2.34.1


