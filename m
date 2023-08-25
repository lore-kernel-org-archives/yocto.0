Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CE4C88CB2
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 01:42:22 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.4757.1692927738904304379
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 18:42:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=SrL+loXB;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-56a55c0f8b1so232335a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692927738; x=1693532538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VBGMwl8SJmNbzEdftSGmXiUk9T1b+1hjIr3ak7/dVLI=;
        b=SrL+loXBLwY27751hdFsNFbEXLkKFJn021qWs8CArWQsuyzFgAwASBF+wYfuH9LHr1
         56nC7TNZSWZ8G72MFWo7t//SAl3g1NnN8LJ9qxAaas68lFGv5XzwyqRkf69pbckkC2eR
         DtlPnjuPe8W/n4AtumDzZ4gbwnhr+9rRdBrCqtearzP1H32SwQRfUz68yl4XUMSwr8dM
         iJGKqc5WzYAl1MZqWJTQwj63BVhlJ/5S8jqb2zzz7WqJ5Cw5D/wrgqEQ8eiPtQxj5vjD
         cmtrGefXsvCDa7aTBXzqzEE+8vVrFJz3He884egHVZm0bPUSiE4xlWxja8aIAeeF1/L8
         7kUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692927738; x=1693532538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VBGMwl8SJmNbzEdftSGmXiUk9T1b+1hjIr3ak7/dVLI=;
        b=VqKyQQrqftYL36CSd7Ia3mwQRPEAExujmPGGxTxpSxNZPixrwZBvt7bprkSZPT+jv8
         THAUZCx+ba+nu1Ykl72VijduqxjEzr2UNWeneM6XCW0e4RR0LZM+hG/n6EgVCEx1T/vf
         dMZ08V6QOykvBRPQNZIiQbX8FDlEVvBGX+x1MeCLmlFhjTg2Yz7DS+Bm1KYOc6dgAsyU
         KioEcC3D2EN1C5wT7rN9M8c1pEnVx0dmQWW9FCrJwIRS5UX1lpo6y7akPRvA/pTrWTCr
         okriJnSiSBj3YT/0cTbFrEdJ3y0WVVNZy/S1zMCnxdPeXzzKfw71DTWegBC+ZoaKUatR
         5Hzw==
X-Gm-Message-State: AOJu0YyEQlU2g86Us15cYH3UNtxxGweXbAOOuKS//OfV1mjKXDkZh8Z2
	GIiobxOrO8Nkv697LnmfYLejA3yy/sM=
X-Google-Smtp-Source: AGHT+IF35/xJFREvZondKTK1pJhz9KX/KJugbJDAgx4PjYSznYO2G0IvFV5sDN+/Br3+sSAqRvPpwg==
X-Received: by 2002:a05:6a20:12d1:b0:148:2f62:c47f with SMTP id v17-20020a056a2012d100b001482f62c47fmr17348569pzg.41.1692927738068;
        Thu, 24 Aug 2023 18:42:18 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:e38c:3700:34c7:85e5])
        by smtp.gmail.com with ESMTPSA id jf15-20020a170903268f00b001bb3beb2bc6sm350541plb.65.2023.08.24.18.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 18:42:17 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 2/2] build(deps): bump gitpython from 3.1.30 to 3.1.32
Date: Thu, 24 Aug 2023 18:42:03 -0700
Message-Id: <20230825014209.1817874-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230825014209.1817874-1-tim.orling@konsulko.com>
References: <20230825014209.1817874-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 01:42:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60885

From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.com>

Bumps [gitpython](https://github.com/gitpython-developers/GitPython) from 3.1.30 to 3.1.32.
- [Release notes](https://github.com/gitpython-developers/GitPython/releases)
- [Changelog](https://github.com/gitpython-developers/GitPython/blob/main/CHANGES)
- [Commits](https://github.com/gitpython-developers/GitPython/compare/3.1.30...3.1.32)

---
updated-dependencies:
- dependency-name: gitpython
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] <support@github.com>
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 85f6520..b86ac6e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -16,7 +16,7 @@ django-reversion-compare==0.14.1
 django-simple-captcha==0.5.14
 djangorestframework==3.13.1
 gitdb==4.0.9
-GitPython==3.1.30
+GitPython==3.1.32
 kombu==5.2.3
 mysqlclient==2.1.0
 Pillow==9.3.0
-- 
2.34.1


