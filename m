Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532EAC5475B
	for <webhook@archiver.kernel.org>; Sun,  3 Mar 2024 23:10:55 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.85691.1709507445025050687
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 15:10:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=Tl65yWbV;
 spf=pass (domain: smile.fr, ip: 209.85.208.173, mailfrom: yoann.congal@smile.fr)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d22b8801b9so53224001fa.0
        for <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 15:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1709507442; x=1710112242; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OYunx27nbteMYuUoyKqW7qwGlMGJzLRRQnUukfr+f+0=;
        b=Tl65yWbV5L5h+1FMRMErgKvt474WwiJUZplwUHbSbtoAWBPKYyVUiKhNyCrpkYgzUm
         Rus2zG7vQ0pEY+FRrDqCOCNqWq2Sr1g79eLoN8Ecp7+xYZHsicC2lAKEaTwXPBLUIx06
         2azJJ7btSKm66uwGhIcHm6nfWxcHbPjx3CUjjlxrw0mGkSiTZ8INTnTyoXNc1gWdGpgP
         KRsTVAxSSEmKXG0LEmmzus//gB/wQ8NE5BcDxnOG6pFZC0QIAFi/frkN1rHBjaI55Ec7
         M8LWAO2AAjcU6zv7DzCLAI0sXZveUPUbrcdU7mKZLf+5j6LPbPpLmECW4ieOZ4ylAiDu
         TIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709507442; x=1710112242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OYunx27nbteMYuUoyKqW7qwGlMGJzLRRQnUukfr+f+0=;
        b=EOU57SmGxHjGWMuoGGqIUHNjfq63eO8D0uSJiq43PoblbL5Y/6615hgAz/g1NNT4Lh
         xfu4poV071OP+JPn48fcNBwM77733d8/MsKJYrH8aIhPb2Q/iytPhwxnYdtOVfYckkvI
         dOAMNNcCdaZYuk4374P8C4ZobWetLWuPyl1tsVmnVcch4bpwS2Q5sRvhbKDZNoOsi8rz
         xxI9BrAaof2RxlS6rJGqm2JxLwk/VkcuFHXEHw2/tdB/fmPJlslxtLzR9rWyRG/rgp5F
         Xh6Yw3oBMCXX9TeUK9aa1fP3GjbBB9vvufzxNumitqqc9+ZfGqUS684gc9hIg0F6R2xw
         8MfQ==
X-Gm-Message-State: AOJu0YyO3B2nLADY7Vch7v2QgKJDvbwUNCbSWz+pzxMOiczrCZfpFRi0
	eH/jNVT17nXWLBtjtTQsGCnEn1blFqBAAJviuxLf29HC4oCMXmV2ufGeAA6eewQesBTsdBYAiav
	8oyFGoA==
X-Google-Smtp-Source: AGHT+IFiw13Z3LRCTSvhtrLam54ETCk+l1WiyQWdp45DgOEoi5s0aZcspC74ZyNO4OCF0oQ6qSe3uw==
X-Received: by 2002:a2e:868e:0:b0:2d2:936a:f8b1 with SMTP id l14-20020a2e868e000000b002d2936af8b1mr4759054lji.46.1709507442171;
        Sun, 03 Mar 2024 15:10:42 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b0040fd1629443sm13000496wmq.18.2024.03.03.15.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 15:10:41 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2 2/2] config.json: meta-oe-repro: fix meta-networking -> meta-python dependency
Date: Mon,  4 Mar 2024 00:10:33 +0100
Message-Id: <20240303231033.733840-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240303231033.733840-1-yoann.congal@smile.fr>
References: <20240303231033.733840-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 23:10:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62654

Since [0], meta-networking depends on meta-python. So, add meta-python
layer wherever meta-networking is used.

[0]: https://git.openembedded.org/meta-openembedded/commit/?id=ab7c469bfeb7aba97402d8eab03d9bb18725c6af

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/config.json b/config.json
index ece5422..0c34161 100644
--- a/config.json
+++ b/config.json
@@ -385,10 +385,12 @@
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-networking -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
                     "${BUILDDIR}/../meta-openembedded/meta-networking"
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-- 
2.39.2


