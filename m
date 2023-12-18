Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACDBC3DA6E
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 00:57:51 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.31687.1702861062288056003
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 16:57:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RVTWszm4;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: akuster808@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-77f42ee9370so230790285a.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 16:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702861061; x=1703465861; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sJbHiVvWFbaXOWmp6FytIDents68OdgR5U+PM8T5vs8=;
        b=RVTWszm4s7y8M494KOGOLz3bTy3Kiq5avFU0rpc8jyNDL1crxt/TfmkUMZR8WIKlqM
         z9SiJnjxOZUlOSl/6gRUdnHJOP6WoyHMgtBj7eni6p0q2wqKcv0QKvOKOaKE+VJxpyIX
         G1n0Fa20FksKcTPWCXsLy7a1CK03OOAOT4Nem0knEHIJCTv0pKsRMSsObePnSOYmeewy
         P/ep4ck1r35x3xay/ExZZMWqGFWa0tkYCpdNOSRjKM2MuJnIjn9ukGAy3WBtIScD62q0
         GqU+zf55wn4FLEyi2TT9YcJ1nouVS2Y9sFS8k2MIYNMHQA4A9XNrbrzkgbJtZCDkR0++
         VUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702861061; x=1703465861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJbHiVvWFbaXOWmp6FytIDents68OdgR5U+PM8T5vs8=;
        b=CQ/bti6jr0v3FZN4tFsVHJPrtTeKPeZ6+yZmCSwNTOuUCvy//8Dd710cXngFjqZwVu
         z31qCnhKb+QzTZEvAwhVCLW5ydRaKw8q/9z2eHryS+DUvmscDVYaCEIqOc8Eixbz7tlf
         JHeF1xBtgB7A262JBIINlJTFOhZAdnuZ9Fxz0mztkS3XvKHAV60jj6sBR0R8mwl8yHnh
         9jEk6lS6KTPvQVUa9fne4NbvZW+0wOp7nIETefzOD7qFAMICDdacKSh+8oMvV8IdzU9Y
         VrmGino1xC7uebvzFG67mwxByq3XH6weWTiVOJl+OHLthQmOa5lxRdTtjdx39ecT3Brc
         beLg==
X-Gm-Message-State: AOJu0YzbUVSjPfSmKNfJRJ5zhf0WYX2/xjXs795eOAdk7UMk/3qdH63j
	H5hXa6Xr3vNi1y6R17xxHxGI5D23W+4Srg==
X-Google-Smtp-Source: AGHT+IGBfZmbhRE9MYf8WWriYb9t9CFTehAPRoF0nqjnWPxvlK4bO0sUuS21rxp+Nwr/C0vaaEA0aQ==
X-Received: by 2002:a05:620a:562f:b0:77f:3b08:ea64 with SMTP id vv15-20020a05620a562f00b0077f3b08ea64mr17646849qkn.121.1702861061065;
        Sun, 17 Dec 2023 16:57:41 -0800 (PST)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:e601:af37:f032:c87d])
        by smtp.gmail.com with ESMTPSA id l28-20020a81ad5c000000b005e4f2da4d79sm2014182ywk.103.2023.12.17.16.57.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 16:57:40 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] arpwatch: adjust CONFIGURE params to allow to build again.
Date: Sun, 17 Dec 2023 19:57:39 -0500
Message-Id: <20231218005739.2980686-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 00:57:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61950

drop EXTRA_OECONF

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/arpwatch/arpwatch_3.3.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.3.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
index 4b4d476..7a0a776 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.3.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -25,8 +25,6 @@ PACKAGECONFIG ??= ""
 
 PACKACONFIG[email] = "-with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}, , postfix, postfix postfix-cfg"
 
-EXTRA_OECONF:append = " --srcdir=${S}"
-
 CONFIGUREOPTS = " --build=${BUILD_SYS} \
           --host=${HOST_SYS} \
           --target=${TARGET_SYS} \
@@ -41,13 +39,13 @@ CONFIGUREOPTS = " --build=${BUILD_SYS} \
           --localstatedir=${localstatedir} \
           --libdir=${libdir} \
           --includedir=${includedir} \
-          --oldincludedir=${oldincludedir} \
           --infodir=${infodir} \
           --mandir=${mandir} \
+          --srcdir=${S} \
           "
 
 do_configure () {
-    ${S}/configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+    ${S}/configure ${CONFIGUREOPTS}
 }
 
 do_install () {
-- 
2.34.1


