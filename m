Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C123C0015E
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 08:07:11 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.129718.1692086821558199007
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Aug 2023 01:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=QcwxCaCn;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-99c1f6f3884so703016266b.0
        for <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 01:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692086820; x=1692691620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9BKe6SwjgbngsvghXZ+xNIbh/mJ2ouhmuX9bg5ltUIE=;
        b=QcwxCaCnB/Fbn8AirC6iRk0xj2eWH6z7A8EdHFJXZApHppZgB1HRP91FHPrySqZ7Ur
         CHBEYAUucu11VveS1MpsOgCkigkyE5IQ7ZwUNQmdeKJ+3Y8fbo2IIn+ytMIKitpi3xNI
         mmnBJ8aAg5P152qsR0tkkpg1Ei32SIs1PlK6fEKrOAJKycOnnYDZw/yUc6Wz2b+ao3hv
         82ab+aNdaGmpqgWBSku4T9CADb+913G0Um80UKhbNSEYPr2c8hyF9euzRPMwxHCicQ8/
         PIOysqK9DaXpaYg0dZjotNP6F9airky4dEDBDNLAjKE+jmBEI/g36WSRh5LpfKYFZhkC
         usYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692086820; x=1692691620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9BKe6SwjgbngsvghXZ+xNIbh/mJ2ouhmuX9bg5ltUIE=;
        b=BiFOlSdDPOYBCmthPVLS8ezaYYd0tudQCKrv9CQldUEtoE8N3cPQzQBqu607Z6vrpY
         ZLD2JytmM4cd4sFhFLbwlHxxHSfC1MsAauor/jtuj/c+bCvn2rA6TbJxK9qDSTVMwsuk
         lURT4IKilETroeNsycs9R8jH0eyvQFKsobYTkkkRRD0Svn9vknDHT4S8AvcLeev5JyMy
         J2s7RPYwDCpOENnf8vwE813fyBJWonlpgJ47U1KmugwoNXxBUDk+OROsGujbDT8N3fPa
         qTmuEaUBI6fXbAmd/3Wj/BtKtZ4ERnUybfbX5wkTu45fHEu49IFBL7E9sOZNGd/YVJv6
         r2+A==
X-Gm-Message-State: AOJu0Yzsqyywu8hq0UjWpWAJrU502d3xbX4wBz6qOOCXKpaithCY2Iq4
	6aFCzMJFGp9tsPz0TFqn+m91peK0PhY=
X-Google-Smtp-Source: AGHT+IF9Zc4/0ec7kj/FfBZmOrgWm5QJMZjuuW2E+xhqtTf/52ChFloG+HCf4uk4Fq9+7cevkQfwhA==
X-Received: by 2002:a17:906:2002:b0:993:d6e8:2389 with SMTP id 2-20020a170906200200b00993d6e82389mr10058096ejo.26.1692086819654;
        Tue, 15 Aug 2023 01:06:59 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:c600:5c43:16ff:3eac:2a77])
        by smtp.gmail.com with ESMTPSA id h24-20020a1709063c1800b0098e78ff1a87sm6692987ejg.120.2023.08.15.01.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 01:06:59 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: systemd now requires usrmerge
Date: Tue, 15 Aug 2023 10:06:53 +0200
Message-ID: <20230815080653.954630-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 08:07:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60798

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index 52e507f..ee7ee2d 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,5 +1,5 @@
 
 INHERIT += "buildhistory"
 LICENSE_FLAGS_ACCEPTED = "commercial"
-DISTRO_FEATURES:append:libc-glibc = ' systemd'
+DISTRO_FEATURES:append:libc-glibc = ' systemd usrmerge'
 DISTRO_FEATURES:append = ' pam'
-- 
2.41.0


