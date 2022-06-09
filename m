Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16F0C43334
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 23:44:15 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web08.20838.1654818254017982937
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HUzAR7II;
 spf=pass (domain: gmail.com, ip: 209.85.215.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id q140so8185607pgq.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 16:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NVzj5XZfeBhqGfg6u3JsZb8pXsullgyozO/jI8znoZo=;
        b=HUzAR7IIcqaTPpV5TYWs6jAnz4NiaiMbu6j9RZ6e2AH1k7L8vvxE4mzmfNpNmVWa2O
         UsXgxTFQ5qYaPXHE//nRPY1aZWutIulOeVGSBoccewnTJstdfsX87JdIrSrW5Yxsdlz7
         W5cWmLfYUG2Ygg28VKm3pa5h06NJetq+1pxjXkcb8CbitR8QKbx2wLdKgunPGbP6hs3k
         hfh82Ds9cgvJbYa5kYcpopm7A38dBHoyrm+Wx3OvgJ8TN+Z9dyk1xxLYSa7FBMm2QryW
         BmLCWvPvZJeXyghUS20afkfgmcaE0DyPVA0IX7ef+UtkhNAgbB0gDGZM4wdddNWjii8Y
         MMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NVzj5XZfeBhqGfg6u3JsZb8pXsullgyozO/jI8znoZo=;
        b=dIU/j0n3jsN5fWzBf2yx9v4ymyUlnQpCi1DOiOeMncVdH2Hup4M/I2bWQsMI1vfnSl
         W7r83l5glpaYG4x2t/IBdM8UrzhBN1OL4/0/WqJSxblAiWgO0TsKJqlMPEHbbwwC1JoN
         /CpW3f1V9DcCjHaRx5HEeFp8S1XFEXWLkZTkcCBUIcnb4HCjlRqLme4IMlAOBTWqk3IO
         57sBSC7MJUVBJrQbGu/a2dYCWwezGZEbpr8mOWZgvO+jHTSNsvH+at/tHq8oIN8LSKnC
         mgs6DE2KVG1g8ovQWPVaFs2W7utzv1JO2v98TcSFMm9mK6WZIptJmQBzyQ05Xku/OIkl
         P+yw==
X-Gm-Message-State: AOAM532VdVVgfA7Uk2ujGK45hWFfHpd508M025OBv1I21SSamBPFlc3T
	md7qdcFfUnaXENjlnPeDOGmqht0IpbA=
X-Google-Smtp-Source: 
 ABdhPJycgP+O7SGj8bnRYNarK6d9NyWoeLEafXL6fk8vbEhOJvzlkaxbGi1eNwYLIjxnOodkdBm+fA==
X-Received: by 2002:a05:6a00:1c8c:b0:51c:4b1e:61b3 with SMTP id
 y12-20020a056a001c8c00b0051c4b1e61b3mr14016746pfw.65.1654818252913;
        Thu, 09 Jun 2022 16:44:12 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 l10-20020a17090b078a00b001e31f4cc977sm235135pjz.56.2022.06.09.16.44.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 16:44:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] sssd:move to dynamic networking-layer
Date: Thu,  9 Jun 2022 16:42:06 -0700
Message-Id: <20220609234209.587385-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 23:44:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57313

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security}/sssd/files/CVE-2021-3621.patch              | 0
 .../recipes-security}/sssd/files/drop_ntpdate_chk.patch           | 0
 .../recipes-security}/sssd/files/fix-ldblibdir.patch              | 0
 .../networking-layer/recipes-security}/sssd/files/fix_gid.patch   | 0
 .../recipes-security}/sssd/files/musl_fixup.patch                 | 0
 .../networking-layer/recipes-security}/sssd/files/no_gen.patch    | 0
 .../networking-layer/recipes-security}/sssd/files/sssd.conf       | 0
 .../recipes-security}/sssd/files/volatiles.99_sssd                | 0
 .../networking-layer/recipes-security}/sssd/sssd_2.5.2.bb         | 0
 9 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/CVE-2021-3621.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/drop_ntpdate_chk.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/fix-ldblibdir.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/fix_gid.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/musl_fixup.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/no_gen.patch (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/sssd.conf (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/files/volatiles.99_sssd (100%)
 rename {recipes-security => dynamic-layers/networking-layer/recipes-security}/sssd/sssd_2.5.2.bb (100%)

diff --git a/recipes-security/sssd/files/CVE-2021-3621.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/CVE-2021-3621.patch
similarity index 100%
rename from recipes-security/sssd/files/CVE-2021-3621.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/CVE-2021-3621.patch
diff --git a/recipes-security/sssd/files/drop_ntpdate_chk.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/drop_ntpdate_chk.patch
similarity index 100%
rename from recipes-security/sssd/files/drop_ntpdate_chk.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/drop_ntpdate_chk.patch
diff --git a/recipes-security/sssd/files/fix-ldblibdir.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/fix-ldblibdir.patch
similarity index 100%
rename from recipes-security/sssd/files/fix-ldblibdir.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/fix-ldblibdir.patch
diff --git a/recipes-security/sssd/files/fix_gid.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/fix_gid.patch
similarity index 100%
rename from recipes-security/sssd/files/fix_gid.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/fix_gid.patch
diff --git a/recipes-security/sssd/files/musl_fixup.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/musl_fixup.patch
similarity index 100%
rename from recipes-security/sssd/files/musl_fixup.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/musl_fixup.patch
diff --git a/recipes-security/sssd/files/no_gen.patch b/dynamic-layers/networking-layer/recipes-security/sssd/files/no_gen.patch
similarity index 100%
rename from recipes-security/sssd/files/no_gen.patch
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/no_gen.patch
diff --git a/recipes-security/sssd/files/sssd.conf b/dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf
similarity index 100%
rename from recipes-security/sssd/files/sssd.conf
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf
diff --git a/recipes-security/sssd/files/volatiles.99_sssd b/dynamic-layers/networking-layer/recipes-security/sssd/files/volatiles.99_sssd
similarity index 100%
rename from recipes-security/sssd/files/volatiles.99_sssd
rename to dynamic-layers/networking-layer/recipes-security/sssd/files/volatiles.99_sssd
diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.5.2.bb
similarity index 100%
rename from recipes-security/sssd/sssd_2.5.2.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.5.2.bb
-- 
2.25.1


