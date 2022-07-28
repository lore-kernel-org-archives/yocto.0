Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D637C19F2B
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 21:33:09 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.1053.1659043988523851162
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=L7s+rNn1;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 o5-20020a17090a3d4500b001ef76490983so3457955pjf.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=TlFABjWdg2N1BUseCpwhRdtGd2MkRdZ39zFjK7buLG0=;
        b=L7s+rNn1heWwsFQoGhIloOGemMygCjP3pReoY7FY2eQqRiAm0PFHRQk9vASSrkq4QR
         hf25hR9wZIbOH8JcPC1RIzDVfVfiYg1hiy8SxgBGRXVcj5LwOuOX0XQnlkhjBWSTDA3i
         vwokEO/B+n5yz4Y3YbE/IGrkSi7ut8C2+jcQ7GsS66iRapBenSpBfYjj1ULY40HczvVm
         pIlw0pqA54/a70O1VitBVEnxg1POWc8hCMNxscW7RG4vFxLRz/GKq3SGfQbKPwi3Znhn
         Ldpi0q3slEYZtcvUH8bQUzYkW6JMYItDvzRMZ+0AUQTgrME9JdaDvHQXCpW7tezhLiRT
         yf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TlFABjWdg2N1BUseCpwhRdtGd2MkRdZ39zFjK7buLG0=;
        b=Y6TUlz1CJyZfdlUDpCjUxJmdgPbep7RubJfEUiK5yFoCzVxmwEah6XmPBG/sCUWQfn
         gnRhFiA/mfI4z4BOCOehkqZroOKASSXyrlH52RfU95zCV16IXAtL/2UlDQztrYFSpPYF
         qxxnKADzD6AAXhQuOH/MD9XUseQI3WVHHWxWg6tK1a5j+yGziH52H5i+5JgLQH2PUU+Z
         IenfH4tk6dzKnzjxyo/6k6hqwoGjUngjfUJYZChL3EVxW9Iee6z1YpzWPJ+sO//sorXr
         QKwC4TLa95u7x0HO1WjrfMg+PeMyCs9sAXOY6xjkbv74MHfi5f5+7UqDxAizQIdy4BlR
         72CQ==
X-Gm-Message-State: ACgBeo1Q5dca5r3rPsqXCe97JznkOhTlVZ7ckVYj3idp9gPUBW7Os3SA
	yIgjdxlS0vRPQo7/c2HO6hOlkqvMJtE=
X-Google-Smtp-Source: 
 AA6agR6SELw3WYbuaVdAenWMZSoCm4nWLR7Li7fK6+bp8vPSVCWCvINu5PGR/6noaoEMF8eCFXa1pA==
X-Received: by 2002:a17:902:d48a:b0:16b:f101:b28b with SMTP id
 c10-20020a170902d48a00b0016bf101b28bmr853330plg.148.1659043987599;
        Thu, 28 Jul 2022 14:33:07 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 b62-20020a62cf41000000b005283f9e9b19sm1207328pfg.180.2022.07.28.14.33.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 14:33:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] chipsec: update to 1.8.7
Date: Thu, 28 Jul 2022 14:32:59 -0700
Message-Id: <20220728213301.3138-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728213301.3138-1-akuster808@gmail.com>
References: <20220728213301.3138-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 21:33:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57666

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/chipsec/{chipsec_1.8.5.bb => chipsec_1.8.7.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/chipsec/{chipsec_1.8.5.bb => chipsec_1.8.7.bb} (94%)

diff --git a/recipes-security/chipsec/chipsec_1.8.5.bb b/recipes-security/chipsec/chipsec_1.8.7.bb
similarity index 94%
rename from recipes-security/chipsec/chipsec_1.8.5.bb
rename to recipes-security/chipsec/chipsec_1.8.7.bb
index 48dfe45..60272be 100644
--- a/recipes-security/chipsec/chipsec_1.8.5.bb
+++ b/recipes-security/chipsec/chipsec_1.8.7.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 DEPENDS = "virtual/kernel nasm-native"
 
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
-SRCREV = "07a532aac9f6c3d94b8895cf89336b6a2e60c0d9"
+SRCREV = "7b9cc5cd449f2e1e4b5dad46c0eb14348e54e3f0"
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


