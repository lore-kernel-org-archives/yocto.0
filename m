Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45D9C77B7F
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 18:31:00 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.2433.1683311456602101121
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 11:30:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=M+8t4CKV;
 spf=pass (domain: baylibre.com, ip: 209.85.222.174, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7515631b965so1084752785a.0
        for <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 11:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1683311455; x=1685903455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7cezPrw19pkITGlPdaZKxildNCUc6FTkfnTl/ONFWNg=;
        b=M+8t4CKV5cYrwt77SPoPwYHfGHl211iLqEo1TjMO6xiwZGPHV4jn2s81tqfjCl/TmW
         Tm9ElkOdR9Tm+XR8pnjCIqOdTnUnFR6u71ThlU2/zTu0CYeWBssUKNEY0bAcU9PfZl5T
         dxw5bjwfRXO28pJHp0rEXKb/omRtSP0NGVh1o68G+qGxS45+rFxD+IKfvQ1Lp2Y5Z3DX
         jMNQvupWay7od1fPUroaKV7BMWyOwfrii4nB/49pZD0w+yMvse4XVU6I5A6KxFLFCUld
         osmQBl6BsSoTYkl72Wr1/Mqdg9Xv35WUVgrHxJx/qWJ5JzfIYta6qWtmu56HLK/CeGZ+
         x66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683311455; x=1685903455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7cezPrw19pkITGlPdaZKxildNCUc6FTkfnTl/ONFWNg=;
        b=luL0cQmDTTJPIQG1xTLskKDkMJfTbUpGOj3cpX6vBXxBmvC12ISZ1fjZkB+oJJjp8w
         ffqj1amHIY3AJt3W5lijf9zWfebx8V47bWAmp/wTE79t0y4sND0oMnPsyCgtrw8Ypojn
         4TWcbiSkqSPmUbgJsrTzkUd7jhRzyhZQMQhzDTkfSbd7ujd2DvVe2sQYZBYm3woGG673
         D2mMlOAiWjhotFk6+pSQh5oxcGOmLg+jV3W1440YpD4PIhBNhQbTL3fL0LccGBOqq6f0
         4cguAy4e9IWOWodUInKi4MeRZZU+5U7RqhcBY8kAhybgIrFRR3vOav1+sWDB9D9ZzW8l
         KC+w==
X-Gm-Message-State: AC+VfDx/Fol6NJi2iYi8+wpllLYFhtQZv9ToT3pKQo8z9PxoG3FLw9hD
	38uovQcGoz0DAcb6LfqGmTTb4zmBIp+maqAc+OcpbA==
X-Google-Smtp-Source: ACHHUZ4SYgGQzCyCvAbMMbI+LUe9LwbBt3O5oIwoCoUJ26jSGCxCPLvMFp1J6r9FWRWM3FTshL8qSg==
X-Received: by 2002:a05:622a:510:b0:3ef:2eab:3451 with SMTP id l16-20020a05622a051000b003ef2eab3451mr13200666qtx.20.1683311455360;
        Fri, 05 May 2023 11:30:55 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id d19-20020a05620a159300b0074b5219b63esm755353qkk.121.2023.05.05.11.30.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 11:30:55 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 1/2] packagegroup-patchtest-oe.bb: fix RDEPENDS syntax
Date: Fri,  5 May 2023 14:30:53 -0400
Message-Id: <20230505183054.2038867-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 18:31:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59890

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../recipes-core/packagegroups/packagegroup-patchtest-oe.bb     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-patchtest/recipes-core/packagegroups/packagegroup-patchtest-oe.bb b/meta-patchtest/recipes-core/packagegroups/packagegroup-patchtest-oe.bb
index 3dd97bd..35758c5 100644
--- a/meta-patchtest/recipes-core/packagegroups/packagegroup-patchtest-oe.bb
+++ b/meta-patchtest/recipes-core/packagegroups/packagegroup-patchtest-oe.bb
@@ -6,7 +6,7 @@ DESCRIPTION = "Packages required to run patchtest-oe test cases using patchtest"
 
 inherit packagegroup
 
-RDEPENDS_${PN} = "\
+RDEPENDS:${PN} = "\
     python3-pyparsing \
     python3-unidiff \
     python3-pylint \
-- 
2.40.0


