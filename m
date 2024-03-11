Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35B1C54E58
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 16:01:52 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.66974.1710172910349586170
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 09:01:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=fAtatCRi;
 spf=pass (domain: mvista.com, ip: 209.85.214.176, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1dd81aee2b4so19180165ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 09:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1710172909; x=1710777709; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nPu/vEsmWl7ElVKempheE/zjVt6J3WGwpkeruOuglVs=;
        b=fAtatCRin/k3NBp96kRpWys81La6B020HvvmCX8rHHgkhpTN5vxVs9oJgk0QCPktfA
         KgRXidqw+j+48sA4A3FBkPpe9MZkI9umJGUicXKRo2Uq8bd7ywK+mfXYlt9z9OOJAKt9
         pMy7AlR5PhPm+UcfMOJ6K0Z332oOlbt6jI4mQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710172909; x=1710777709;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nPu/vEsmWl7ElVKempheE/zjVt6J3WGwpkeruOuglVs=;
        b=dThYTGAOYD8sD3w6yxNVDVOrYRphB6X0Wbxo4s8T7IgEZ+TecQugbFyo+WgRjljkWp
         s4KcRmfqjkynmeffdK+LVdb/aS21C43YSseAMEcZo6GK2R6Bxr4GFYiiNtz1djCfT/M/
         cyVub8vECnQTIxUUxPgcR4CvEZNTtlWequ60HQx4YdO8Aj8Ft7Lf/5D3ar3a46PFePtk
         gmnm3qQJcRh8bcVvmAU2v400CHdESv5ZuR3ei6YhMFMk7wMD8eY+NXbstAAF4I4lVBNG
         O5f95z7tFA/BHry3CrVQq3VJ8MfbJiIzheeijrHWMY5zFeDKc+/tkyTyOcKSdxis9tcf
         pspg==
X-Gm-Message-State: AOJu0Yzl+76c2c68SUS25oaj1ueVJ6xggAUoA/rV/NJrjFEw3aGLwBxp
	J6cLXNshWFxB9q4D0XhMWbWlMvJ6ukPPDSBcbWqj8KZutTIb1ovV8P8Q57hUilj7ec1No32Gf/4
	w
X-Google-Smtp-Source: AGHT+IG70Pejsv++iC+OEx0A4UKvv4eXT7qQkqIED3UKECySlJ8c6N/b3pepTYpTtZibEx5jT0cIzA==
X-Received: by 2002:a17:902:f683:b0:1dd:918d:33ae with SMTP id l3-20020a170902f68300b001dd918d33aemr5224577plg.60.1710172908428;
        Mon, 11 Mar 2024 09:01:48 -0700 (PDT)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id lg13-20020a170902fb8d00b001dd6ef01492sm4881176plb.208.2024.03.11.09.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 09:01:47 -0700 (PDT)
Received: by brown (sSMTP sendmail emulation); Mon, 11 Mar 2024 09:01:40 -0700
From: jpuhlman@mvista.com
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] arpwatch: install man8 dir
Date: Mon, 11 Mar 2024 09:01:39 -0700
Message-Id: <20240311160139.2228924-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 16:01:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62725

From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>

The install expects man8 directory to already exists. If not created
the man page gets installed as "man8", which causes conflicts with
other packages, that expect it to be a directory.

'arpsnmp' -> '/build/project/tmp/work/corei7-64-poky-linux/arpwatch/3.3/image/usr/sbin/arpsnmp'
'./arpwatch.8' -> '/build/project/tmp/work/corei7-64-poky-linux/arpwatch/3.3/image/usr/share/man/man8'
removed '/build/project/tmp/work/corei7-64-poky-linux/arpwatch/3.3/image/usr/share/man/man8'
'./arpsnmp.8' -> '/build/project/tmp/work/corei7-64-poky-linux/arpwatch/3.3/image/usr/share/man/man8'

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-scanners/arpwatch/arpwatch_3.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.3.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
index 8e9a268..e547938 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.3.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -52,7 +52,7 @@ do_configure () {
 do_install () {
     install -d ${D}${bindir}
     install -d ${D}${sbindir}
-    install -d ${D}${mandir}
+    install -d ${D}${mandir}/man8
     install -d ${D}${sysconfdir}
     install -d ${D}${sysconfdir}/default
     install -d ${D}${sysconfdir}/init.d
-- 
2.31.1


