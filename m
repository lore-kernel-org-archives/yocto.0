Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69470C4829A
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 23:15:22 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.5163.1707347717286562373
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 15:15:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=MEb2rHPl;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4101d096c92so7756795e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 15:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707347714; x=1707952514; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WwvMszmFh0MDsfWApCLqlx63pBAuTcTDTYzSpSOpjtg=;
        b=MEb2rHPlonbRW0JsE3MOUIh3K3/0qxx+YXBtWGyERGDytb3dPi8EYdIFeXtSJ6r+zk
         UO64TUsiD2OnDjc4+cBlAX4MNqUdWyp+69+fznRAZeegsIOZfIYgnTHUWu1fkMj13A6H
         PIb/oi2mC4qOQ3gC1GE/KYzeTNh1KLCRNNEF0xU2yVZMItmuY/rfxvWd3eExMD0NZJxo
         u7Sagg+zvA6CYd559qYiieHu/DfvC2c4Cmq/GuNPFCC00zX4kjnCDllsLBaAL6DIJI4c
         s5Qx1H4mb0KdWjPAcv/datLn3nxYmi7CUFVhT0NGnrt5+EUs4XxqFw4XSiCfSzyH2RUd
         3pww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707347714; x=1707952514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WwvMszmFh0MDsfWApCLqlx63pBAuTcTDTYzSpSOpjtg=;
        b=TPpgfQYanj2EUWV5IPzlSf+RNshio6w+AZGcuG20rhTU9+lNPS//3pzDIRwfAJwSEC
         DiG8+DYY72Xb47mr6QtUOyju2c3HtStAAcMFMSrDYTPDMvpA42zfzaLzy8cM1wjZQcOD
         0qZK9ohkzsb1UiH4dMSOpSI499Z2OtxV/vZrCK3Yp4cilLS04sdW4iZNsXif6OspM/PF
         qpimaA/OxQI5/xFZtR7iC2MdyrBW1P5uqRZ7Ltotz7JBY+e6aHE/c1t7GvCW2ibi7/jD
         i/XaPP3plQyrSDyhNMSAI0mnbg+hV0UbrnA9QTiAzXx1rVJJqeLyhJpsNUO9x3XugmI8
         Qozw==
X-Gm-Message-State: AOJu0YzksJJT0VFux/OH+DUQJf9AbBpsmqhPoMR1L+H1oOQ6AvpP9U3B
	3+4ZWxVM1URh3kDdqIbg5SB8cC4DHOxC0JcPoXciM1xGV+E31h2/f8kRburzoe/FB0EAZA1l3ZS
	0rPckQA==
X-Google-Smtp-Source: AGHT+IFecGD0yQPow8Qozrkgv16Aks4EDB9wm0BGXCm3t3ygxd3+ugUo2wFuRGrlhGBc0h1Dm/GgyQ==
X-Received: by 2002:a05:6000:1b0c:b0:33b:47f9:d95 with SMTP id f12-20020a0560001b0c00b0033b47f90d95mr4780268wrz.24.1707347714545;
        Wed, 07 Feb 2024 15:15:14 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id g9-20020a5d5549000000b0033b41af645asm2407598wrw.108.2024.02.07.15.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 15:15:14 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 2/2] config.json: reproducible-meta-oe: re-include ibus in repro tests
Date: Thu,  8 Feb 2024 00:14:39 +0100
Message-Id: <20240207231439.149332-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240207231439.149332-1-yoann.congal@smile.fr>
References: <20240207231439.149332-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 23:15:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62423

Since [0], ibus should be reproducible. So, re-enable it in
reproducibility tests.

[0]: https://git.openembedded.org/meta-openembedded/commit/?id=0ffbe2a79a5d49b2719c934ca0e73822fa3cbc2e

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 1af8b92..50a07f7 100644
--- a/config.json
+++ b/config.json
@@ -340,7 +340,7 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'geary geary-dbg gegl-dev gimp gimp-dbg gnome-terminal-src grilo-src gtk-vnc-src ibus-doc'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'geary geary-dbg gegl-dev gimp gimp-dbg gnome-terminal-src grilo-src gtk-vnc-src'"
                 ]
             },
             "step3" : {
-- 
2.39.2


