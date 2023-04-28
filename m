Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 268A6C7EE24
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:49 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.19763.1682688758877919209
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=DwyU6HFd;
 spf=pass (domain: baylibre.com, ip: 209.85.160.170, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-3ef112cac17so45483011cf.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688758; x=1685280758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YH7E6ChOnluJ2x03uzSoF9XixEphnJTzVpIO3KT3tpo=;
        b=DwyU6HFduE7zCzf5Rm6ga3P5l5Mxw1jlozUeBHjU9ERVXSkx7SHVJga/lsuSVXsXxu
         wotJLMNTvxx5Kl29Ub5GxAiP7txBGwPmlRCGx3pQzQej53NCXCEyEf3upqLOu042vJlb
         Gn/0MAfuEAY6Rzw0rP8hFCwgPUPseT/cVvvzQNGxWKWR4U/mOlLdhZtDx69HLYBUCpwE
         AH//QV5mMwRiCQeANdYDYA+uN9xDKtoA82bWOk894MNFPk7RY3Tk4IWFJm+oOms6YeTX
         xPbkIYkAoFcWQaegk77ySnFo7+xtNcnUSCxLUF/hU/QnoTBEJPU/JNJ/h1in8vYDz4FX
         DCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688758; x=1685280758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YH7E6ChOnluJ2x03uzSoF9XixEphnJTzVpIO3KT3tpo=;
        b=coDtSEPtRcK6Jaa5znQwUj1EM/u7O/d/CcsI5uqGA0po0VQUSIrZI6YZEzpxttvrC0
         zZlf02zNQve6KL3GrF2t+w0tIMPI0EoCSpP30BJV/qoYU2Z2FLxn0Y5IX8OPvRLSU0WH
         OdMce2hN295226EmZyq7IfOVsB3DZGwNBJDo/MRic4FoaxxtoZOiCdVXkQMGr2qaheDA
         VkhCWGPDVrElNilztHZUxp0fx4H1Dcl3dQX7a+zvp5b8cqYew777GnL+9v0vbMKxwE47
         lkeR9agyD9Lea5FbBsiXYSygPwYwDJMjWJLhtVb01LvWh3m+KaDpOBZOPXQcfkNqemgT
         MePA==
X-Gm-Message-State: AC+VfDxHAh2ajNUVwx57+M3DUFyK4EvDOQKG5VVbO9aoVLRGz5WkbBOz
	5K+rJWuy3lpethIc3bj/OyrqWXxZvTI+U0Hx9Gs=
X-Google-Smtp-Source: ACHHUZ5SchIM7ykAKj4/0QSBTAiqlrlYo/8oJhmyDlxuvSODRt/1gG67UU7rnSBMej07xUCOfnhFZg==
X-Received: by 2002:ac8:580f:0:b0:3ef:27d0:b155 with SMTP id g15-20020ac8580f000000b003ef27d0b155mr7510068qtg.64.1682688757655;
        Fri, 28 Apr 2023 06:32:37 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:37 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 4/7] initscripts: use mkdir before mv with patchtest initscript
Date: Fri, 28 Apr 2023 09:32:30 -0400
Message-Id: <20230428133233.1155096-5-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59812

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 meta-patchtest/recipes-core/initscripts/initscripts/patchtest | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-patchtest/recipes-core/initscripts/initscripts/patchtest b/meta-patchtest/recipes-core/initscripts/initscripts/patchtest
index 3b075af..1dc434f 100755
--- a/meta-patchtest/recipes-core/initscripts/initscripts/patchtest
+++ b/meta-patchtest/recipes-core/initscripts/initscripts/patchtest
@@ -53,6 +53,7 @@ if [ -d $REPO ]; then
 fi
 
 # Move results dir to MP as root
+mkdir -p $RESULTS
 mv $RESULTS $MP/results
 
 # Poweroff machine
-- 
2.40.0


