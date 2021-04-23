Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.10395.1619187475307699100
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 07:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=BWAiHQjO;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 21B1D38C085A
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 14:17:55 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id c15so39640206wro.13
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lh+TvrzzmHWQUgCqkBkbJuFGXGu5yTsrNB7ikz9Ks7Y=;
        b=BWAiHQjOudfYndKU+o29GnEoDwF9U7GW+LduukRi16LX5Zgr6E12HTQnUImVphAEYu
         EvZeobgJeiVWWYHKhl9vQAYHN4dg4SwymtE3ONdPfQwpM2hCFEnejontOKEQ9fvHtfQl
         inanAabjEINW2+jJMuij48N0bcc7wJGZznRx37TW15QrG1QGfOHux3/YMDPBeKQrvrra
         O9nJ0IdQFXiIprkqSOF7SEU5pZ3sIE0Qo7h7G0Ubvo2XxJ9jdaTgS2MgYn4bP1qEApoI
         5w3RUEJBj/YqzmUtnFHSZMVs3CUZx3T/NsmfPi6NGY20vsXcKxXmcwykHwcKhtgvUHyD
         WwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lh+TvrzzmHWQUgCqkBkbJuFGXGu5yTsrNB7ikz9Ks7Y=;
        b=eiHsBNiptPxZgEONcBymHAOdfocH8Wi360IOXUjfR1uJo3KSxPRDmbY20iKlXroWWU
         rBLBD9GNe0EXONZIfgcLl2TONNvrI6iSkawcksmf+AKIv/5zvAXwj+5deuuZ913G22zO
         0STc5zd+bbqGzGD8hdIMhdnsUKkG/u17RdHiO6K4QntTT1Lz9Mp6SIFO1M0BbXIAlnid
         /bzxjyN56b67rk6oeBvzpJarAHRVlFQKqVJOq1yIHMecqtQa28Euh04FUqgcIRz03CyM
         T8TKu6IjAo7PUhn1isHAWilEaCfxhuM5G9PQv3oMBwHbg0wHUk9ob1/Tn/jByAwuSW9b
         d2Zw==
X-Gm-Message-State: AOAM533Wy5Veg7WfgCJ0HlPfk96rJWrqX2getviyN9ywUkIDiHUdGmN1
	wGH5zJDdsm5/Rch+ysydIO3ESpP2RYWWpg==
X-Google-Smtp-Source: ABdhPJz4rhDCsYHLRhZpjJ+/ZpSYfAuTpfCjVxqW+3QyluYqiAu6EpXaxdjB3dRL+Q2BjvnwtKIX3w==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr5042094wrj.328.1619187473720;
        Fri, 23 Apr 2021 07:17:53 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id t14sm9432928wrz.55.2021.04.23.07.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 07:17:53 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 1/3] NanoPi-M4: let all variants use the same KMACHINE type
Date: Fri, 23 Apr 2021 16:17:11 +0200
Message-Id: <20210423141713.1970329-2-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423141713.1970329-1-yann@blade-group.com>
References: <20210423141713.1970329-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This will allow us to define a single set of kernel BSP for all
variants of the board (which only need to differ in u-boot dts).

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

