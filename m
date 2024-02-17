Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44430C48BC3
	for <webhook@archiver.kernel.org>; Sat, 17 Feb 2024 21:21:08 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.6227.1708204857675751953
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Feb 2024 13:20:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=nCgjX0Sm;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4125ea5d913so3112815e9.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 13:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1708204855; x=1708809655; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=94Xh5Va+jV9YbyGXqMKPwQkmCIefsobA2FrD4sSfbXk=;
        b=nCgjX0SmhG3Nqzdy/qvheAgl4u5pFIEuV1BSjp+ylxQwH6eobAlTHIo/NHuorTmXqS
         7nY4LCqpspyNBfpLOSM3DwyLoJ2Yszdsna4+W3ySrdswEKox1mtPazXwSmHbLMD/gPdM
         TK6IEgF2MC2V5iyMb/aWKCOaHPkBM7JCSsHX/8jOqnuerQeDyQ+0HcVupAqF9YJQH0BS
         nGJf5B5S3kKxG/1hMvUFWXgHH3TFWf2m7RfMi1rFyNZfDtqEYSLolzTy/8WmSvvMhvH1
         Hzyi2jJm8DoOuusEz91sOMEX1xx1LOUwonVuvxJFbPwleHL7h2HOTiA8/namm4UwhIR0
         nApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708204855; x=1708809655;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=94Xh5Va+jV9YbyGXqMKPwQkmCIefsobA2FrD4sSfbXk=;
        b=IyuI+ZVL+5tHogOM/pjUl1Aq2pOn1ZhaExslBsD9da7qT/KRcde8BFj6aICCrmGSK4
         4rIbTtBny0kO42/9ydbEp1eg5Ky3+wsPrlXE77gS/l9cHxdHG1hDHionQw50e6OU8RiF
         FJEiUbpnWSIRS5kaMpLhMCK2CNqV8ZaJ6LPiiFmMzBSIsS7t8FrY/kdsYMXJbe/mUtRw
         0Ta8ykM1Ogx7DRnsrvsc7AvKPqYPWFzONksEvYMcR0gIXYNkP6rNP70O70ZRZa4SU+W8
         CAj1SBgTnn1VukOULaHY/+3OJfui5V/Bg2G69j7MUlB5uJQUdvRJzlA+28Gaw6n+jkRU
         Tttg==
X-Gm-Message-State: AOJu0YydfnMuqp7p+/ic32YDOmVeTO64cyBBOcJmS/14jcDkX352CMGX
	zWs8kG4OAkpC3mNRw9TesEvpIT1XaGaHuvMFsn31tX1ZZwSczKpBRYK0ynUdl5hCz9c4Jd8wMtR
	d6BU=
X-Google-Smtp-Source: AGHT+IEgIUi0LIWWyEWsldYubO7G/8AufDUQidtxuxcPwjnViu9lhOeSK20ey2qJXhCbfsusMe2E7g==
X-Received: by 2002:a05:600c:81e:b0:40f:b0d9:113 with SMTP id k30-20020a05600c081e00b0040fb0d90113mr6668487wmp.36.1708204855033;
        Sat, 17 Feb 2024 13:20:55 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.home (2a01cb058e286b009d8a6db98b186dac.ipv6.abo.wanadoo.fr. [2a01:cb05:8e28:6b00:9d8a:6db9:8b18:6dac])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c4fd500b00410ab50f70fsm6229009wmq.15.2024.02.17.13.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 13:20:54 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: meta-oe-repro: exclude python3-pandas* from repro test
Date: Sat, 17 Feb 2024 22:20:28 +0100
Message-Id: <20240217212028.630992-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 21:21:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62529

Exclude python3-pandas{,-src,-dbg} from reproducible tests as these look
non-reproducile for now[0][1].

[0]: https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/12/steps/40/logs/stdio
[1]: https://autobuilder.yocto.io/pub/repro-fail-openembedded/meta-python/oe-reproducible-20240217-j7swf3az/packages/diff-html/

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3032fd7..1596d1e 100644
--- a/config.json
+++ b/config.json
@@ -429,7 +429,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
                     "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'python3-frozenlist python3-frozenlist-dbg python3-kivy-src python3-pycocotools-src python3-pydantic-core'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pyproj python3-pyproj-dbg python3-pyproj-src python3-pyzmq python3-yarl python3-yarl-dbg'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pyproj python3-pyproj-dbg python3-pyproj-src python3-pyzmq python3-yarl python3-yarl-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pandas-dbg python3-pandas-src python3-pandas'"
                 ]
             },
             "step9" : {
-- 
2.39.2


