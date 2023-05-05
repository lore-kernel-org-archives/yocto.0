Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D0AC77B7C
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 18:31:00 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.2420.1683311457497918512
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 11:30:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=3kpmIVh0;
 spf=pass (domain: baylibre.com, ip: 209.85.219.48, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-5eefa0a5561so19129016d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 11:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1683311456; x=1685903456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NUozCVxXqXymdHXE0mT7csGOerSx3QxLhWYvsRqY+40=;
        b=3kpmIVh09ck8Geu8MwF3nkUlyS7cEdGqr5fUD79RfbF+ZnaNWnqPYv/6IYxU31qCXx
         4Q/n0SQbWfJt8bODJ39PYm6TErwDTSkafFQIRbycwm6H1iW+7BgAJTfbKkHzch0c0Lmh
         wkh7tC/LSPEPaWfVo+F6UKWXukikI9a3rb7XNyEZMoHJZx8NhSRi4bWbsMJybmwdFMUY
         bd2KEws37SchXhwBK6vrWWQecUebUpvU2cxiefZ/hBgMTqzYiS2K7yBbF9OLuv03zUIw
         sQ1/+tNIVIC+MBi2zTR4s5Tw+oe7Zu+7f78TpsZMNEL5ezW2/YdrvKgAbWRWGrb9FSb1
         haew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683311456; x=1685903456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUozCVxXqXymdHXE0mT7csGOerSx3QxLhWYvsRqY+40=;
        b=e2nAW2tNpEDLYfv7s36Su7MS5kALVvtfrOhMYDG283GW7w8OAbrK5NsrC3d7+ATcpm
         NUWR+xVpqX6Z4T0ya5tX6x98f0Ls8fm1VKqQ6VoxFEVKWhSkjKHhpnL9GT6yQTvrE2B5
         hmoigb6q+NOSNIPVTwOh//I9dW+UyoyrJfLbINONGr9f1oTrtO13mA0iWpUiZMxtxwPq
         WJXgWV0Xo+ZkxzUN2ZAOMID8B0UTOhScPHSqvdMM8jUOC36KD/YKTCGOgdQpAhHsYv3Z
         btKTgK/6mnQ3feCycFuHYbbpVwBEtn6uBtcnEsJgZcfQx2bTF7GJijrqIrYxVCAudVkS
         Imwg==
X-Gm-Message-State: AC+VfDxZhK6HgNEXHRHsLFB+ggB2Pb0Ki5ibZCUeUMpODwPVYI8yVIwX
	LTj9EnrFxaDMPXw1VKe0tdtosJX4nZmSCqMaXC8z8g==
X-Google-Smtp-Source: ACHHUZ7GuAmSyYlJjpHrw6iszNa/GJA2aT/wJ5CfTkBAq1J4ZML2Mj0feDAmUl0jLAxh0NDlTgvs+Q==
X-Received: by 2002:ad4:596a:0:b0:61a:ee15:4a93 with SMTP id eq10-20020ad4596a000000b0061aee154a93mr2720957qvb.28.1683311455960;
        Fri, 05 May 2023 11:30:55 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id d19-20020a05620a159300b0074b5219b63esm755353qkk.121.2023.05.05.11.30.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 11:30:55 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 2/2] packagegroup-self-hosted.bbappend: fix RDEPENDS syntax
Date: Fri,  5 May 2023 14:30:54 -0400
Message-Id: <20230505183054.2038867-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230505183054.2038867-1-tgamblin@baylibre.com>
References: <20230505183054.2038867-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 18:31:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59891

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../packagegroups/packagegroup-self-hosted.bbappend           | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-patchtest/recipes-core/packagegroups/packagegroup-self-hosted.bbappend b/meta-patchtest/recipes-core/packagegroups/packagegroup-self-hosted.bbappend
index 409d24d..e22948d 100644
--- a/meta-patchtest/recipes-core/packagegroups/packagegroup-self-hosted.bbappend
+++ b/meta-patchtest/recipes-core/packagegroups/packagegroup-self-hosted.bbappend
@@ -1,5 +1,5 @@
-RDEPENDS_packagegroup-self-hosted-extended += "\
+RDEPENDS:packagegroup-self-hosted-extended += "\
     openssh-scp \
     openssh-ssh \
     perl-misc \
-"
\ No newline at end of file
+"
-- 
2.40.0


