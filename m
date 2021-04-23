Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.220.1619197137612911337
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=NpKu2fPt;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7C9D338C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:57 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id p6so42370606wrn.9
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=NpKu2fPtDyIrHeqvh7ItTFBI7qTYUTISg4BzE59Mb507HLMxJZoIGQrk3E7fX8RM5/
         brbLP4rXAZmnsPdzku2GoBBF5Q+5CNya/13Qbh83BfDilScQdm+RJwhBmFSyg1g+7+2+
         cPU437fF91VnXZcyNZlZCqAAg/AS7s7mKuwFgESfuVrJZrLcRmnhDnpdH1+ndxupceJh
         wyxplo33f3NCOcU2g4nmuJyFaViXF8du1DnwEZobdQHcddC4m9rRQ2sB8KN8Iy4aZagU
         7750WNFRweaFexY7O27bFj3aI4i0lvefPen/fPpIaNS7QLxJaJ1yISfJpe8EOL0la8Ks
         teHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xMmVR9Frzk4q8Q/JHETMM8H2c8XVBy3wnbfm8GkooAQ=;
        b=DpujyUxbFWWXY1/k3gd80mj/InqZZmLpb7GKRcW9Qag2ozYLLI2tNolc/M0kqvkHq/
         lelzwv7FGZac36tq2OssghM0ZeEiIo9m6WSDBC/PsbkBYBJxt5Wl2j7dGPNAMwLQL+kF
         qSM231pkwOY679CtuHFEcyCwa/lPSPESiLk5xaR5zScXqUBR+vFV5J5/Vds7maeKtV1q
         N7If7lEQ3995N4vUG04vpxys0Ze4tFdcxPZfu0hYS2N+VC8od3xBXGGIc5CnGLx1MPq+
         dHT2tfpV69HSOIJ9tQ4+bZDQ8SZoLc/Hb/6D0PALal3I1cmOB/aOBdV7J9SkfuXyVDjZ
         MA1A==
X-Gm-Message-State: AOAM53056uttXmHvg+xMxImLhuVvUe3CsNUY5/G+k3WJKyjX/5XJoPC/
	xoY4MaqE+wRYmKGZXbgn+/ik9shrrOxuVw==
X-Google-Smtp-Source: ABdhPJx+PYvo70+lU3RlKwu2N8mCkWsKcoPIScXmc83XxwFA9xR9LSCO7q0LC9u8MvXAkjc0+Zt1NQ==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr5829289wrm.32.1619197136209;
        Fri, 23 Apr 2021 09:58:56 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:55 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 7/7] WIP kernel config feature for OP-TEE activation
Date: Fri, 23 Apr 2021 18:58:26 +0200
Message-Id: <20210423165826.2229787-8-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
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

