Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4985.1617267158355273384
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 01:52:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=LaCvcWd8;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A4F7538C093C
	for <yocto@yoctoproject.org>; Thu,  1 Apr 2021 08:52:37 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id 12so645247wmf.5
        for <yocto@yoctoproject.org>; Thu, 01 Apr 2021 01:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qlaVcWOuR0xzbTEoBL8UY2lU3wrwzBByJiQH0p/LRT4=;
        b=LaCvcWd8RYKhLEjhojcjrBGouQxSX1LnpuyFzobDRkOhrcvo0OjxsrgyjCjDEp/L9r
         BgiQ1tbF8nQPjVZlLqT2ekp0DVCGNy5qy+Vdvx9UaWz45oMVNo7CJj+pDg3FyiFDtGkY
         e/laLgW++Xj1mxwMD4y1f8HRuMn1Sy/KbilS4D9oIEjL4PRJTqgIbsjSSxV+t5uii1T2
         ZcIzafzaw53VDs8jgwQrJiBnpOH9Y3p/xJCnXmQ2eEfvDbntJvv/jyqwi31+ykCW6aVY
         OXYdxcTjat9S3o0nWlHzFUk01oO1GWULnWHk6Juuz+2+x6NNq45Jn4iwY/5sBJcEnd8b
         fLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qlaVcWOuR0xzbTEoBL8UY2lU3wrwzBByJiQH0p/LRT4=;
        b=QtMIhoECa8vostfIy286jJxbtB+r5Bhdbv3E6K+4r9rpASeN5OQ426d3RoxlESe1k+
         /KlZUVU0yhix4xM9mBiOEO5ppU7G8Fg7bOcBIrP87cCNl0UnpACyD0eVfBqF/JNVSQq2
         J2qfrrF0Q+fdudeg5NSYiI7Mm5hfwi8cVhuzeYrowdp5S1f4AqmT4dsMe44OhvWjszA+
         7LTjGShvPWgYNAEBTw4pgd72sZhhvjwrBOBWAPJbQEL8BemJrxvRZ/GxTGJp2b/3IKV7
         egthcqizLlRVmVvP/1AWip5Z2AmGRT6lObu+UbRVHJNBXrh/9WAQjO9MV0zjxwjPcB5q
         lGYQ==
X-Gm-Message-State: AOAM5328BKk69NS3rWSxPkBaAQ8vl9iPGTcoOSde8Bx8c6+Fe1Sukv4P
	0gJXMMQvFHJzo/VXUDfw6mK/0UGSZwyunQ==
X-Google-Smtp-Source: ABdhPJxCvVC1ld7yTB0kM+Bo1CEOSsyeo8fIL6YsiK+lF2+6AvliZ+DrmHe9AEtLEQxU8pLsplpUvw==
X-Received: by 2002:a1c:7ed4:: with SMTP id z203mr6656371wmc.89.1617267156223;
        Thu, 01 Apr 2021 01:52:36 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id 9sm7143467wmf.13.2021.04.01.01.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 01:52:35 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 2/4] rockchip-defaults: don't force KCONFIG_MODE to alldefconfig
Date: Thu,  1 Apr 2021 10:52:11 +0200
Message-Id: <20210401085213.1209080-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210401085213.1209080-1-yann@blade-group.com>
References: <20210401085213.1209080-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

When using in-kernel defconfig this is already the default, but
linux-yocto defaults to "allnoconfig" mode when a defconfig is
specified in SRC_URI, and there is no reason to override this
globally.
---
 conf/machine/include/rockchip-defaults.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/in=
clude/rockchip-defaults.inc
index a4e2a2c..17d1d0b 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -2,7 +2,6 @@
=20
 # kernel
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-KCONFIG_MODE ?=3D "alldefconfig"
 LINUX_VERSION_EXTENSION ?=3D "-rockchip"
=20
 # xserver
--=20
2.30.2

