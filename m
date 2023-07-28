Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B698EC001DE
	for <webhook@archiver.kernel.org>; Fri, 28 Jul 2023 21:54:59 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.43856.1690581296797790893
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jul 2023 14:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=ckq0BGyp;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.214.177, mailfrom: tom.isaacson@teknique.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1bbf3da0ea9so4930725ad.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 14:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1690581296; x=1691186096;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BcTw3q3gGQF65cgV3bTL6xuaSwkWhFHe5sl/OLiYuf0=;
        b=ckq0BGypq13ZjpLYdLIm0dZCU+dYmKi8s6WX2h428vTpwkfUS7n2/n6qOzGrC6f4TG
         1tvB+5j3VyAgOyIGUv2rhPcqfiX5CFI8MClqQUCQbqlO29zQm+oUVPKhg1pZjPebynVm
         gdF8nAvhsLPmFw3S1DpYWe7iz1LCbU7GhbKUDH8iML8Veu750EGSEG8ByUHlqyrZwb4K
         G0YI4591EsG/jHN4X1RUFhHnzIA6bWVt5D0YwksqcHlx1XlqzwT2FGX8lbiJYZRbeBzO
         LhekwxASvzwUiONj9N4PqRI4ZwffyT61DliIv4ZQH7ippb+zx1PkbHgNnK8qHBmjimNV
         4/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690581296; x=1691186096;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcTw3q3gGQF65cgV3bTL6xuaSwkWhFHe5sl/OLiYuf0=;
        b=VHjr30Wvl65BYaQ8orJpxrBheQc3wm0kaxWtsU0f/u+9HzROcvTHY6jsQV35p9l1lk
         uD3UyyTDwheAoEvOHHO410O3NmSZ33LlnoXzH+TmWiVT9qL4ful8rAp3knsqNqb4e/yM
         +wkzm9bQiyAkYj2ZN9TnNpcEsUoTJs0gyM8Zq5KH5/OHI6REUc5A/gGZeRPqtb08Nyo8
         4wUD6tnxSRfM7o9a+F55Lynje7oBajoH6pxVb+cxM3lHG1a5LSUVJoHuk5q5diDGi+I0
         IQb/EMxLlX5oMxV7DF/bJmxuxE8kY/YUUDf1rMDqry7uinVWc99IQ7lAHiOvV4F3bcWS
         KKUQ==
X-Gm-Message-State: ABy/qLYr8nwWPIX4KZArV/+0uaNwU4WzsUGJBdOrUXS+SwgcrznJow5g
	GMMMIZLsZ/uG/TABV4NEdBswbOT/7+h60a1iwa0=
X-Google-Smtp-Source: APBJJlGRak2IR9Uh6V6N6f5juZukfz8HtD8vfWPCnV9+u5rtBzxM/IzRFQuwb1vNRuZJBP0qogoHBQ==
X-Received: by 2002:a17:902:d2d1:b0:1bb:a55d:c6e7 with SMTP id n17-20020a170902d2d100b001bba55dc6e7mr3105839plc.55.1690581295990;
        Fri, 28 Jul 2023 14:54:55 -0700 (PDT)
Received: from localhost.localdomain ([14.1.36.195])
        by smtp.gmail.com with ESMTPSA id ix14-20020a170902f80e00b001b8918da8d1sm4050773plb.80.2023.07.28.14.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 14:54:55 -0700 (PDT)
From: Tom Isaacson <tom.isaacson@teknique.com>
To: yocto@lists.yoctoproject.org
Cc: Tom Isaacson <tom.isaacson@teknique.com>
Subject: [poky] [PATCH 0/1] Upgrade 9.3p1 to 9.3p2 for CVE-2023-38408
Date: Sat, 29 Jul 2023 08:34:04 +1200
Message-Id: <20230728203405.1565852-1-tom.isaacson@teknique.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 21:54:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60675

Tom Isaacson (1):
  Upgrade 9.3p1 to 9.3p2 for CVE-2023-38408

 .../openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb}              | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta/recipes-connectivity/openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb} (98%)

-- 
2.34.1


