Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D10E6C43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 18:34:23 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web12.681.1657737262795600987
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:34:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GcrKkiwh;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id o1so419095qkg.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 11:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EPbICpEVqCVTBiuj5T9+2fIzNY68mhXqZTeY5gNBhR0=;
        b=GcrKkiwhk+PycmqUZz3DRzP4A6cWIIxhSLgUwVe1g1mgQLDaU2HaCDhp4jCyC3X2CR
         lvFdw9DcTEQuzWQ9gn9ktbcc3FgmBtezIgl978d4c2i3k7rGs0KwKprP1GlYPdzyCVa9
         q+q3IlaKPQQykeTvV+r8oFG23uHvsjiU6eN5LgkcrB7UtA7SYt/iRJV7cRce5rmf/4hr
         Hjpn1xqi9dFWUE+tJXRXI1N2INk1+/B0bC1iDrrPxiySlRrNyYG4mOm9jp6/xIdbgpOR
         O4OXGmiJhwNmRi7ADJmGitNNsew5d5uZYAIdEuu10/jM4zw5lSdm63IlXo08EZfB3lFa
         sQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EPbICpEVqCVTBiuj5T9+2fIzNY68mhXqZTeY5gNBhR0=;
        b=jXPvvIiGEsB1FE8GyEaIhVztQGvzN1oSIB5NXLw98F/wqxY0T/Qn7MG4xUCv1Kzu2j
         eGKD5GJVzyxLh8dd7hG/eAS3JCl4bjcpisnF+P5NA2u/ZD0OZtW3Cu3P/nkYwGWUCP2p
         OJVPeLVbBlvurJBdDwJqv1ofpBgMNe88J/pKISBynftUaXCaq8K3hB5XuykGoNrztA2w
         yqaaDi6yWAbDqg/BlocvqC1rWcCDxqR2IzvO0IfG8SPZgc4z9ba7i8Ow3yf50r0dHAxr
         R5Jvl3Pt9wKMNErnGrwFoiBoVohTw3XGobdmmVQYImDj+7KzwRO9uNQmrfnJw7y5Oi4h
         iLqg==
X-Gm-Message-State: AJIora/K/+YNS3lf4zk74TbBUvn2WkXpbnk5qPnMFsOAdsMrrEAJ3fPH
	nA0Wxv7lEMz7fEIorSwUKI4=
X-Google-Smtp-Source: 
 AGRyM1t7ck4mWFsmmR9akUndSKY/WELmgF++ejgGRhmUc1LDFuI2MjDM1rO7OQeHAVSpkDCy5nt8IA==
X-Received: by 2002:a05:620a:3c3:b0:6af:9933:7cb3 with SMTP id
 r3-20020a05620a03c300b006af99337cb3mr3397591qkm.508.1657737261777;
        Wed, 13 Jul 2022 11:34:21 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 c7-20020ac87dc7000000b003172da668desm10758673qte.50.2022.07.13.11.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 11:34:20 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
Date: Wed, 13 Jul 2022 14:34:18 -0400
Message-Id: <20220713183419.24851-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 18:34:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57527

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    80f5207b5abd tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 975d6c6565..bfb36e173a 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:genericx86-64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:edgerouter ?= "58eb61187e8c78dc0241b2b85cb7d2c958f0e1fd"
-SRCREV_machine:beaglebone-yocto ?= "aab4d3436476d643c68ac2efccb887a4386a35bb"
+SRCREV_machine:genericx86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:genericx86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:edgerouter ?= "43a7a15cfe433584b6065c2492b2a7f9be7954c5"
+SRCREV_machine:beaglebone-yocto ?= "3651cd48f159c3b2a3a60d645baccc9d34baed54"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.19.1


