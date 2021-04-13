Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.478.1618328630391165045
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=khD3hR3D;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 44F4338C06B9
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:49 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso8990575wmq.4
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=khD3hR3DWfJvUtEVnRD4EuD1RYYr/wVz9eccgFIKAYj0yLHzE3nAMxa3EvMP87+ciC
         j7xrXb89wNMAFNfmPOeqvHIFNWBLDJervbPbrAsV53pRiSc26l3qqLyyaK80y4/DQ2Ac
         OP3SHoCtAhmq6YRTNR6I5QtcDRJRehBpqJRwTQzexm+7qXt7fSVCDWXFAoZYWZ4tJ3a9
         Mrzg4gjCw2tUoFIeCIOq4M6hIl7ZYeGuJ5YiYjz3B9zQl49ZgV55FeuMLliR6XyzRAXK
         XYZNyppb0PQTe0+hYoopJtFMLqZ9FCLkVGOojlAmaGoiPt1rIKIyFi3LDTW/e7y3hJto
         9m9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=IDRYYggGCd80CW3XHzCxENmKRJzK/qCHMU048gNS2E90rAh4uvLd+/WSFRIPWGDzeo
         xJLQbRvEg+o7OuvVlMH1BTGw2NF45e0+v5Bjm43ovyYFe+fDjcKS0WomhNKorjCNVvej
         BnTvmOIerpOhk/9nZsyWyZ6swEHRpEvPk/9dxVzI2KoWpDTcAmsmj4iYgiOdCFDxIxYX
         1RnBgkhfKxpNvUOfyTqrYfuyDDZkBTBxFrEf5/VgV3vluwakC2oooEmmDGaRjacgNSSo
         vhUpyBqfzhrDYcZvhNewsoN7Mgyd0KbQaFAigbGSRxBKeyI3HCGMNmT/fIC+v7XEJoch
         XOpw==
X-Gm-Message-State: AOAM5305PTVpGCEKHPrK2IrPiS0uDYuaD/CF62wkTHQGynG57N2WUc/Z
	Pm9NZ/6BRMA/62IXucN/m8Jj3NXmXNIfsg==
X-Google-Smtp-Source: ABdhPJxzALzs/tioNvhc2UxG/moSJzKzCpc2qJUd46n8Un8xZjPMscmfwwJp8KcgQdDbZr2U5hwDog==
X-Received: by 2002:a1c:6241:: with SMTP id w62mr594387wmb.79.1618328627917;
        Tue, 13 Apr 2021 08:43:47 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:47 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 6/6] WIP kernel config feature for OP-TEE activation
Date: Tue, 13 Apr 2021 17:43:16 +0200
Message-Id: <20210413154316.3666881-7-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413154316.3666881-1-yann@blade-group.com>
References: <20210413154316.3666881-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

FIXME:
- provide an .scc with proper information
- maybe bundle with dts overlay
- select a more suitable path in config namespace
---
 recipes-kernel/linux/files/bsp/tee.cfg | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-kernel/linux/files/bsp/tee.cfg

diff --git a/recipes-kernel/linux/files/bsp/tee.cfg b/recipes-kernel/linu=
x/files/bsp/tee.cfg
new file mode 100644
index 0000000..82213a5
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/tee.cfg
@@ -0,0 +1,2 @@
+CONFIG_TEE=3Dm
+CONFIG_OPTEE=3Dm
--=20
2.30.2

