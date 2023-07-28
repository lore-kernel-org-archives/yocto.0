Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E18EB64DD
	for <webhook@archiver.kernel.org>; Fri, 28 Jul 2023 21:55:09 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.43859.1690581300588823810
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jul 2023 14:55:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=KAgip5or;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.214.180, mailfrom: tom.isaacson@teknique.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1bb8e45185bso16854615ad.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 14:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1690581300; x=1691186100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EcFgzV7NypjZN2dH2rg87wKae6F6mQ3djKekE+S2nOM=;
        b=KAgip5orCOg5gAcFOjhRiLcGPsfCWDiCubDv1vVbxqqaWLWhHhL31Ls8V1bNT8i0yM
         dA9VK2SbYWJXHv3/VjHXn0XudhXJ2sezZ6qcvAjHTLSVhhhCSn8LOvZ8tv/XRHkLQLbu
         3ZAGMWc9+pVB++35UDUPsDClCI7zsYFIaPncifTVHeKIH3RW9O2jkQRdPwtBiuUyRYuU
         QCw+y2kUE/rlOtW1g1VCBDxzAXCzY1WW6dTrrjtEjcZIqrjGY8MJuAGKvqDd+ss37e49
         2QGTHX6gNqo3CKpBp0lx58BxxldTJrpz6Q2R8eQ69NyVIvUimvh4jf7bU2giZbV6qqxQ
         Qijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690581300; x=1691186100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EcFgzV7NypjZN2dH2rg87wKae6F6mQ3djKekE+S2nOM=;
        b=NJewB/4Q75YW625YtF91cWcO0Zs3b/nG3s86nBWvgJ3FHH0ZgY9cgZ6m0nQnCRHDLh
         6YoIChWNQUpECHCmwLCF5i75GzSommBA0A7YLVq5fjGPGlMl6Np5uJoofgtA9vXdKmr9
         yzilYLDfHfgnR9uofibdZupE2nseFSWq8iZYmD88IHRCC1at5fCmZrs+EGreg4ODsPXF
         piiAS4dK35yBDs3quR5C1DZPz9C6sRwnt94jSXk8HJlsj+7WGruiChQ57khx8xo7UwD/
         F+Utts5TYkgykg6AHYLOA5E1oUlE4NOHBghaffA4z7/cGCgUD7nL5Swnn6wJlZW99DeC
         MWHQ==
X-Gm-Message-State: ABy/qLZ6Fbx9qAOCWJNFS01z8KP0vKhB/E51tG1+pvtxh5JDsSGPuHkU
	OlEQZbSrCAco7dasOHQfpXauq0gEM4UhAARcZeQ=
X-Google-Smtp-Source: APBJJlErA3CXcLpuy2vYoaa1nXV8QK0gvke/6E37qoQMegkrFVgJmUyWupCWM7fdlbpuX53SDo9v6Q==
X-Received: by 2002:a17:902:ec90:b0:1bb:de7f:a4ad with SMTP id x16-20020a170902ec9000b001bbde7fa4admr2771729plg.49.1690581299870;
        Fri, 28 Jul 2023 14:54:59 -0700 (PDT)
Received: from localhost.localdomain ([14.1.36.195])
        by smtp.gmail.com with ESMTPSA id ix14-20020a170902f80e00b001b8918da8d1sm4050773plb.80.2023.07.28.14.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 14:54:59 -0700 (PDT)
From: Tom Isaacson <tom.isaacson@teknique.com>
To: yocto@lists.yoctoproject.org
Cc: Tom Isaacson <tom.isaacson@teknique.com>
Subject: [PATCH 1/1] Upgrade 9.3p1 to 9.3p2 for CVE-2023-38408
Date: Sat, 29 Jul 2023 08:34:05 +1200
Message-Id: <20230728203405.1565852-2-tom.isaacson@teknique.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230728203405.1565852-1-tom.isaacson@teknique.com>
References: <20230728203405.1565852-1-tom.isaacson@teknique.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 21:55:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60676

---
 .../openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb}              | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta/recipes-connectivity/openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb} (98%)

diff --git a/meta/recipes-connectivity/openssh/openssh_9.3p1.bb b/meta/recipes-connectivity/openssh/openssh_9.3p2.bb
similarity index 98%
rename from meta/recipes-connectivity/openssh/openssh_9.3p1.bb
rename to meta/recipes-connectivity/openssh/openssh_9.3p2.bb
index 3edc123b9a..5fb2dccdfc 100644
--- a/meta/recipes-connectivity/openssh/openssh_9.3p1.bb
+++ b/meta/recipes-connectivity/openssh/openssh_9.3p2.bb
@@ -26,7 +26,7 @@ SRC_URI = "http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar
            file://add-test-support-for-busybox.patch \
            file://7280401bdd77ca54be6867a154cc01e0d72612e0.patch \
            "
-SRC_URI[sha256sum] = "e9baba7701a76a51f3d85a62c383a3c9dcd97fa900b859bc7db114c1868af8a8"
+SRC_URI[sha256sum] = "200ebe147f6cb3f101fd0cdf9e02442af7ddca298dffd9f456878e7ccac676e8"
 
 CVE_STATUS[CVE-2007-2768] = "not-applicable-config: This CVE is specific to OpenSSH with the pam opie which we don't build/use here."
 
-- 
2.34.1


