Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4986.1617267158975383629
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 01:52:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=kKWiU/Jf;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B3F6A38C110B
	for <yocto@yoctoproject.org>; Thu,  1 Apr 2021 08:52:38 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo485547wmq.4
        for <yocto@yoctoproject.org>; Thu, 01 Apr 2021 01:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZzdNnn1sWArXar3jI5u6e8nqV2QG0vOhWdgU3PNZW4w=;
        b=kKWiU/Jf9WRjNJkHsSj/81nHhoGbSnQcyVYoKAwbTi4AcQd2v+3Q3if6vMjHSNEFPO
         Wg8hoFZ7bTBT2Gd/qwg3IaMN880VFKXM+h7Kfo0bJMWGuqC1JoFhBm0a+dcyplFdYlpT
         USIDQWvlNcm6eNQrN9nEExdTFu1zO2bV6CFjtRjAr9EKPziSsYp5RQPPJqE9fY84gKwJ
         ST7c+P4YXhr9+LzOHUL+U6IBC+1TGP6a6jt0gp5SA6Zhf6vLW5TBto+CxzIOuyLu9cEl
         csNE/b9I4DftKOIvopXYHTZ+5Ku2ENZEBMF0t/sbwIrUORhOT20OVvKN05oDtQWTuu+x
         ldWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZzdNnn1sWArXar3jI5u6e8nqV2QG0vOhWdgU3PNZW4w=;
        b=twH0gMrx2d92aTFL7453/1Anue4vIRsxjgjI4zpm4C3zDBK2cjsrU5sVvYWYYM5irP
         nNC3eWLbMG2W9cOmzV0LFA7ABPVNhpVIbovyyKjLrEmsdq1LCUS8DyUUbPBprxWeHQlq
         ENHHDx/sFBfRzPKledX91QAAJUL2q6RjBTjqA2qPkmXQjdbbsZ3Ir6Ba/84YZk7MQV53
         WusnYprfJzHq4rxbYE0PZq9hKAgu9mUMT9fzTbOcN2PVm/y5RKKDip9w5LsA3Ho54UV/
         Oh/wqJAhLyKnh2F7jFDkIXivwWvnvxGp5JyjtG/ZirMWPBo4SDNmt2BjcvXadu+Vf93G
         uhow==
X-Gm-Message-State: AOAM530o71AoNWWg/69/sUyYE0h+UkyGQOh3R9qQRrm98xWB2JpSmVok
	UpZ0KJRbJm5gV4SuQnda2nLfGjIXYrAV1g==
X-Google-Smtp-Source: ABdhPJwFUpgPCyGWWYboF2EkSNVxoFiL4zyBLc9b+knH8KbvouD121Xk1W0d1360IRmbovOLLWbAQQ==
X-Received: by 2002:a05:600c:4d95:: with SMTP id v21mr6869092wmp.20.1617267156940;
        Thu, 01 Apr 2021 01:52:36 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id 9sm7143467wmf.13.2021.04.01.01.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 01:52:36 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 3/4] NanoPi-M4: let all variants use the same KMACHINE type
Date: Thu,  1 Apr 2021 10:52:12 +0200
Message-Id: <20210401085213.1209080-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210401085213.1209080-1-yann@blade-group.com>
References: <20210401085213.1209080-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 conf/machine/include/nanopi-m4.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
index 74cdae8..603160f 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -3,6 +3,7 @@
=20
 require rk3399.inc
=20
+KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
=20
 RK_BOOT_DEVICE =3D "mmcblk1"
--=20
2.30.2

