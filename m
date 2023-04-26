Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 499DCC7EE25
	for <webhook@archiver.kernel.org>; Wed, 26 Apr 2023 14:18:49 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.9212.1682518726562541000
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Apr 2023 07:18:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=AOJUuycf;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-b95c3b869dcso25629332276.1
        for <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 07:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682518725; x=1685110725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5x7kpWM7TGatN275XtDrHIEF7xd+dN8mgPAaNVVsoc=;
        b=AOJUuycf92fAx5GkxPsQ7KhKk3LpnLMBr2u61EB38i2TQaTdUky5ldwugeyLmL7DtH
         7lZUUYK80mvEt3EMbmTPZQWETlS+z1xhzuLfzY8D1oO0vnv3gSPO18zMA1m4xJ7fuMMB
         t9H+WC7ZdPgmsrJ6SJXRwb6OLRc8nlhT2aMVzbFhx6oYNsqvSxubefvWhVDY7O4q/fv+
         SzS9TkDPTRLnin7fzO7+Q/XTw996PamRQ5Di2CUhkbBaWXalhFyXGOsk3T5Qg9tO602N
         zfuixabgf7AuwdHGdmP+UFx6NDKewQGOw9Fn9t2C9qIRlCDvMAB+ljBlEmFl9hwdWBKd
         a4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682518725; x=1685110725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5x7kpWM7TGatN275XtDrHIEF7xd+dN8mgPAaNVVsoc=;
        b=TjgDbb4ot6RJJAlVkfURNboyR0vbV/I341YzYj5KRe2x8vtkSFjEhOtJ/Vxdn1Ocjx
         x1uWeNrEX9LdKhV89htcR3EWvylSNSW1+dKQoEyK4g6EtsjhNFVsABEoM2fUu9bwCcMG
         vST1mbUKZVKu9d9Cg8jSwntN+lojSPFdcHa8ykivoiRinu10O7KGo8JxkFWxzAzZyb22
         hUZ6ZBST0LFi2U77VDAbT2KIBeltUkILXBDFKMTjigc7I0cz5zBAGd5DKQGOpa2rvQJr
         PIIp4a3qALKGu7sX7hGl540x3F1drPpzIBb+ZTj37yiALFZesgcbzcyuG+NHgDZiXg2x
         Xlmg==
X-Gm-Message-State: AC+VfDwJqzts1FjKKTijU230qOiFEFgX0S4Mngb9DB3GYV6NXFIeA+KX
	OmNdVEXodATOYfncp8HZv9wBOkVo6+E=
X-Google-Smtp-Source: ACHHUZ7xmMkHTYWTbLLsl1PvBJeFRmXAiVoQJZqaFHcExIktjml5TncW+JK5QVFvpNVG2HnhRIF8bw==
X-Received: by 2002:a25:5183:0:b0:b3d:5a52:5c6b with SMTP id f125-20020a255183000000b00b3d5a525c6bmr1864672ybb.21.1682518725239;
        Wed, 26 Apr 2023 07:18:45 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dca5:ab45:75c1:b60d])
        by smtp.gmail.com with ESMTPSA id p71-20020a0de64a000000b00545b9498c1asm4214462ywe.12.2023.04.26.07.18.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:18:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] swtpm: update to 0.8.0
Date: Wed, 26 Apr 2023 10:18:39 -0400
Message-Id: <20230426141840.764144-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230426141840.764144-1-akuster808@gmail.com>
References: <20230426141840.764144-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 14:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59786

includes CVE-2022-23645

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/{swtpm_0.7.3.bb => swtpm_0.8.0.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.7.3.bb => swtpm_0.8.0.bb} (92%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
similarity index 92%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
index 55d83f9..614b07f 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
@@ -6,8 +6,8 @@ SECTION = "apps"
 # expect-native, socat-native, coreutils-native and net-tools-native are reportedly only required for the tests
 DEPENDS = "libtasn1 coreutils-native expect-native socat-native glib-2.0 net-tools-native libtpm json-glib"
 
-SRCREV = "f2268eebb0d1adf89bad83fa4cf91e37b4e3fa53"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.7-next;protocol=https \
+SRCREV = "2ae7b019370760e17f4f2675195a91ca53950eda"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=master;protocol=https \
            "
 PE = "1"
 
-- 
2.25.1


