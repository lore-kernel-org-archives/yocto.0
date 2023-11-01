Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96F7C41535
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:15 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.10941.1698797173919194732
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=qGXT2/K8;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4084b0223ccso47892745e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797171; x=1699401971; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yh5nEzraxmSRNNwuQ6uIWkqjMagg6cIr0x2xOWSvQVQ=;
        b=qGXT2/K8W2rwDR5lgHB+5GDX9DoDCzrGMBZNMBYdQ+/FUCmOjBWzVbaMO8W7VlOlXQ
         wiSy0jm4VlG0PwGU2bRs+CApTlUTV26cU8o17tmMw7/qIIybM7cUEX/J+z0y8E+6Yfj2
         coNrKlsBsKWIP8B4YOhC/kwpvKL67yv/SxVLi+PLqiyerU1MvuFbUPBDKtPvn6bVWOJi
         XMUmfajoX+6zyhYtRSPL5BhVDtFLEDCTuebNohKezcPZyjjNsKhEnsvpF0BP/1n2o1kj
         L23C2dfyyzk+AA7nCMqx42Y76B5pjhNgUo6qFyqwWyou/u9gNOYEvHEKDXIkerrV8zDl
         4QTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797171; x=1699401971;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yh5nEzraxmSRNNwuQ6uIWkqjMagg6cIr0x2xOWSvQVQ=;
        b=ZNn9p3zAPsRz3J3mMXrTd8I0dSPsG1n+hoCyoeKM8rIbXmOP4a6otA718HX6aaoB+V
         HXQD1U0phbyVWK/E8xT6G3NDcH6DBLtB8DnpWJBG8BNhOaQsrUIYVQ+XuAD96hwQlK6X
         aB6/Xpf/rQWxrf08axXj+AYULhcL6fqbX5+z5i02qYZ2IfpBVIhLXXB1f8r1FtHMSdOa
         OmE5v5wcQ5ubteeY8vxPMdOGUjn095hWTimLDFCMfUvVaIpoDcfNvRXRJKL/rnVINvto
         NKzC4+azwb6jRLW5AV7zsXAhsmM/5ZiPqd9rrZc8Bv591DHfsPN3Xmp9sUQiuI0BZ/PY
         773A==
X-Gm-Message-State: AOJu0YygerZFuRFcLhNL2q5SHPnO6tsPsxL2sGtOQSAlN/LOUz6whtpi
	XeRs+XAosyzwARpSosP6DjLcngfDMkJCukJlzSc=
X-Google-Smtp-Source: AGHT+IHhNRiBC7RpMP5/mh8sIM7XZTPdBJjhb0yC+0EH5rin4RpxnOIhNU/5TuVdNhhECO2uBwgaHw==
X-Received: by 2002:a05:6000:1569:b0:32f:7bee:f300 with SMTP id 9-20020a056000156900b0032f7beef300mr10778461wrz.4.1698797171451;
        Tue, 31 Oct 2023 17:06:11 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:11 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 1/6] upgrade-helper.py: simplify a condition
Date: Wed,  1 Nov 2023 01:05:29 +0100
Message-Id: <20231101000534.241551-2-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61539

Both branches contained the same code

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 1176a73..57bf59a 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -674,9 +674,7 @@ class UniverseUpdater(Updater):
 
             if status == 'UPDATE' and not no_upgrade_reason:
                 # Always do the upgrade if recipes are specified
-                if self.recipes and pn in self.recipes:
-                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
-                elif self._pkg_upgradable(pn, next_ver, maintainer):
+                if self.recipes and pn in self.recipes or self._pkg_upgradable(pn, next_ver, maintainer):
                     pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
             else:
                 if no_upgrade_reason:
-- 
2.30.2


