Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35D9EB64D7
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 12:56:17 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.15420.1687956973135235883
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jun 2023 05:56:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=D3KknbyJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-57712d00cc1so3588687b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687956972; x=1690548972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=qGMiUd9gRimwpHkdjBjqhTpNv23PfXNVoLQL31OVtSU=;
        b=D3KknbyJHr4HbY66fBBgUdVk+1Jx7y2Y6n2fsfjSwvKSWsj8RlRmo2spHNdyYkXuXE
         06Lff/NU12SruJmnvqWc3+Sa2O4QYr6436jQWLFmSUPwgM3FKEaU4k9qUbRpT/D+DbZQ
         7pMU9aJprzVgVd7oOlaAnFG5KIl1OXbtr1l6/sR+gzLwN8yDedy4ed5nrsME6L+Oeyo8
         yq8Ph+h0jg4Ub/jE8gkusRv7ra9HjACP0vI0UDTzP72sw/Ksw9MXWcHsAgDc/61H2/fF
         yB1oJdkrLEyicd6iAwKSUhATW8u7bAZP/oNcbLZyRgNT7HKQEdZAwG/qlqp5pVBCJm1E
         7pKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687956972; x=1690548972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qGMiUd9gRimwpHkdjBjqhTpNv23PfXNVoLQL31OVtSU=;
        b=ASg0wEc2kNscBS+eYGCESISSwMNo2W8he0KGxNjdpyDuiNcoZd1zD2BGDrATks9vVK
         FoxfCQ7XINojjvRAI5UTXvn1OuTfHBnHm9Q/RwgFCevXnXD2+lRgA421d1C3oOczvJ0t
         VNVULqcNdK4dyVJbxcMDoli6Q2UHUh2SCQuPy88yING1h8tXudtK56gKmbdHlpV0qsIv
         dZ16WoaWxJ/W5f3BM+zpi8ESGfnn4whJnyELKaloY8exomFIICrhwVV/+lbMLhc+ceLC
         +8NgXdPkJDNP/zDZqKOVAZ3I9EvVBUS4KLRSBtAGh5exUv7+WtpJaPLdiUoQYphzO/g+
         Yzgg==
X-Gm-Message-State: ABy/qLYV+KvBVaPHEUvbuvSwYn7wdtHMOfkxUnthZTOS909hgSj9LZVA
	IvmSw01yuERx0SZ9Tt5yOEDMyYX9cQ8=
X-Google-Smtp-Source: APBJJlGnPCPqDeP5kXA9oqV1djlN4RQ16hMUQBrJR0/FC1sj7UE2CpOe5oaagg26KgurP5KbAuPFzQ==
X-Received: by 2002:a0d:cad2:0:b0:577:10cc:da96 with SMTP id m201-20020a0dcad2000000b0057710ccda96mr1353161ywd.41.1687956971969;
        Wed, 28 Jun 2023 05:56:11 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:1313:e2a5:a596:c99])
        by smtp.gmail.com with ESMTPSA id r143-20020a0de895000000b0055a382ae26fsm2334049ywe.49.2023.06.28.05.56.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 05:56:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] layer: add more memory for Qemu machines
Date: Wed, 28 Jun 2023 08:56:09 -0400
Message-Id: <20230628125609.1327477-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 12:56:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60463

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 334a945..5f289cb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -28,4 +28,7 @@ INHERIT += "sanity-meta-security"
 
 QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
 
+# We need more mem to run many apps in this layer
+QB_MEM="-m 2048"
+
 addpylib ${LAYERDIR}/lib oeqa
-- 
2.34.1


