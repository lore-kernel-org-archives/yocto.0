Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F99C6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 15:11:47 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.103842.1679670698761588970
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 08:11:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kmBq/m4j;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id x8so1759016qvr.9
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 08:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679670698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyTFydTuU3KIWk4NO00lYyaWy9z4kxmuDSB4RAab+ZY=;
        b=kmBq/m4jdwydO2tr7rLxFvKDYy1gC80Wu9P7u7U4nxjfjkJ3w3KUL09IkzQLKWrTkc
         e9Eab2l3eYpUuGRZ01q1mz0mRpu3xXiBOVdhS2lW1tzsyTrrQcLpSLrUhj4Vob63H3Mg
         yxgXTbzL5KPOqzwLW1vRehlvJVTm5hvMmEYPz2U84iISzmk+68x0tI5rw9BZygTQYDwh
         gJjSDXU2NFR1w/ve5ynd4jpDWNK1Ycjnpd/PaI5SSeGC08HRnyEzlVE/sa4RhRPu6sv7
         8OlOZiSIWLvu9LnkV6iBIob2s/2QhT6Zswm0HM2TvoLDward7sJUno0KIqdArx7W8Fru
         75cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679670698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wyTFydTuU3KIWk4NO00lYyaWy9z4kxmuDSB4RAab+ZY=;
        b=PIuK8whP55EYK0vOSVHUxogWKUWL9gaOvJH89iSUJqdq7nUOLJ6UMfp2G1nV2LKMWZ
         ok2QAstfjc1l8gJ3gO3ZYJgQqzYLmSn1w376vlacw4gwcaZuBTxylK6W3n5G4mUWLDcC
         PB+8buxz2AoQcLN3JbPm+e1dlIsxE6InWUUEdGeGVW0Y494kUWQNBIq932oDw1HUDuTF
         y/33bwFMHEOKr4vVDrvFV0w4jg1SHRu2wlbvMZ0cdsDQfrTenEB9m/pVRqESMAv2qJVq
         7IvQqH79g0jo06SMVFXXAzCNrKriPJPp/Zl5PWu8vFsMeS/3yWYG7Zf+jcFpZogjK/yW
         Hf9g==
X-Gm-Message-State: AAQBX9eJS3I+kOTYVqjs6B2VIZG0vn3WBKvcAMOhYm4jjp/0/h6kUsST
	g+fcQXswVcpOoJzl77piV+UvmM0ZPVx4ZQ==
X-Google-Smtp-Source: AKy350a6og/eReEXs6nt4rIB30kzHcMt1OyRAQvNfFP6a4dUMcYRbVpeQbZuGCdslnjAKq+/HLxF1w==
X-Received: by 2002:ad4:5ca2:0:b0:56e:9ef7:e76d with SMTP id q2-20020ad45ca2000000b0056e9ef7e76dmr5140549qvh.1.1679670697823;
        Fri, 24 Mar 2023 08:11:37 -0700 (PDT)
Received: from build.lan (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id f13-20020ad442cd000000b005dd8b9345b8sm748794qvr.80.2023.03.24.08.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:11:37 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsp/5.15: update to v5.15.103
Date: Fri, 24 Mar 2023 11:11:35 -0400
Message-Id: <20230324151135.1348952-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230324151135.1348952-1-bruce.ashfield@gmail.com>
References: <20230324151135.1348952-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 15:11:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59521

From: Bruce Ashfield <bruce.ashfield@gmail.com>

updating the 5.15 hardware reference BSPs to match the versions of
the oe-core qemu reference platforms.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index a969222442..87aa38a85e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "1275299b4a49c5845378537d2d623dfbe027dcca"
-SRCREV_machine:genericx86-64 ?= "1275299b4a49c5845378537d2d623dfbe027dcca"
-SRCREV_machine:edgerouter ?= "28658152bb865c3e7ffde6ac277fab5dc1940c0a"
-SRCREV_machine:beaglebone-yocto ?= "4f8b81b735ff381cde5ae840552727175393b77a"
+SRCREV_machine:genericx86 ?= "024d08fb706170a9723e9751e505681f9d4c7ab6"
+SRCREV_machine:genericx86-64 ?= "024d08fb706170a9723e9751e505681f9d4c7ab6"
+SRCREV_machine:edgerouter ?= "2ac6461adfceb54f47a756046fbdd142adce4301"
+SRCREV_machine:beaglebone-yocto ?= "26aee42556a000123129552b73de6bf2ac039034"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.80"
-LINUX_VERSION:genericx86-64 = "5.15.80"
-LINUX_VERSION:edgerouter = "5.15.80"
-LINUX_VERSION:beaglebone-yocto = "5.15.80"
+LINUX_VERSION:genericx86 = "5.15.103"
+LINUX_VERSION:genericx86-64 = "5.15.103"
+LINUX_VERSION:edgerouter = "5.15.103"
+LINUX_VERSION:beaglebone-yocto = "5.15.103"
-- 
2.34.1


