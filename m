Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E93DC6FD1D
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 12:16:48 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.17613.1679055401131488867
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 05:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=K3jxyhOe;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-544787916d9so89866737b3.13
        for <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 05:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679055400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WtnWIIslpfGAn3MQv9QPfyfPxgrFYcZcFl+Vs6cf2oQ=;
        b=K3jxyhOeh+J020wIW+uOPtqhvpY6jW/YLa8Sc1rJIacxAvRet2YOoGmLRabNUzvFSZ
         B/lcaB4NvbrmPlmQj6Lk7uCEG661sg0S67XcOf1Y0oMQ8ksIM3ReYBP4cUVIow7AWgzm
         tO1jK8gEhCO7qS8adz+lX8pbyj+MzgnuYjIdmWCH3mFVEfiId3sF9QN8nfgBKhA9gkPs
         +xd8byLTzj9Qmf2cyZ0u3cAYoHr6iDjY21YeiW3NSvnHFBqJ0lo+71PIN9yZioNvCr5C
         5nJ/sTHcSijuOJn0F/ccXFPgiJZKyF0ULudG0JkA+zb9GAkFXGNYtAm9u4EyJkzO81dX
         RS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679055400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WtnWIIslpfGAn3MQv9QPfyfPxgrFYcZcFl+Vs6cf2oQ=;
        b=jKDbNvQjsMwVg/8jAiFS6Fd+mm/wfQlH7PlsRdXLzLASApPPrWESHLpfuL9VzRdLtc
         WM0QawbptXv4l7ryV4EnK/W93oZWQ+9zNG5iigl17rzY0fgj4rvUmsBD3NuKHWWv1+yP
         IO2IlAy06inimub6R0MHJtTuiELwfPziU2sP0uzqNkuFSYbiu07GZNPMoUNGaFUfkHHk
         AiZ+VQ4G573Zr3H4Zjq7B77msQ/2CILGpYeGQNddMYjJRGwFX5qWd7FLjFjSlQxa6hl7
         K8RHHnsLaTX03zaRt+O+ldKgdEcqtB4yeR/SV+cBho/hquur10Cj1PTNpxQq1bDZ65Nt
         Ki0g==
X-Gm-Message-State: AO0yUKVN1/KEp4u2ZASrsWfOc/MNAou4ilx+XMD/E7918UJ3LzEtAc0N
	DTH/4PoZQu5hPKmbsEqlkxazmOhMRys=
X-Google-Smtp-Source: AK7set/IFuyVM94pBeONSCoI4T29rCuyny9bDsptHDbCUImINZR6n9gRzxHbJU5fFR0Dc+8YMkwe9w==
X-Received: by 2002:a0d:fc45:0:b0:538:5e83:e4f2 with SMTP id m66-20020a0dfc45000000b005385e83e4f2mr5859733ywf.46.1679055400101;
        Fri, 17 Mar 2023 05:16:40 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:c2ac:5617:3b35:df38])
        by smtp.gmail.com with ESMTPSA id t72-20020a37464b000000b00725d8d6983asm1543028qka.61.2023.03.17.05.16.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 05:16:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-compliance][PATCH 2/2] openscap git: add DEFAULT_PREFERENCE
Date: Fri, 17 Mar 2023 08:16:38 -0400
Message-Id: <20230317121638.635610-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230317121638.635610-1-akuster808@gmail.com>
References: <20230317121638.635610-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 12:16:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59446

This recipe is not maintained and will be dropped by the next LTS if nothing changes.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-openscap/openscap/openscap_git.bb                   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
index a18cbd1..3543e11 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
@@ -10,3 +10,5 @@ SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3;protocol=https \
 "
 
 PV = "1.3.3+git${SRCPV}"
+
+DEFAULT_PREFERENCE = "-1"
-- 
2.25.1


