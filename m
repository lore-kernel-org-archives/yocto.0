Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB7A8C77B6E
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:39 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.59646.1680279691068205860
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=PJURe2EI;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso14264763wmo.0
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279689; x=1682871689;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdBAitePaRUmciYJrbBDMEFE/eLZHpApb0Xitnnu8+g=;
        b=PJURe2EICUmKG793jDNYIfWB68gYcYvnFODOR6dvlmJkHaGTU69Q5As5YC6yiL17YG
         y/q12mxId/5iyEFvOSDcRgaMgp2O27IbnFPZaOdgvgCh4typfjRFvDdhD1v+iNVH6qDD
         j+5PiQZPUwnJ0c1BWuuFMT7fMRcDM6cJNDI+0lbBr1Da+/EFjQrPv2fAOsLQzZNS6Kqz
         HCaJkHxITyKXMNky1BWiT3H+dtkAOaugSjRGI+xpAACpcIb5S38eD64w42B+Tswwjn3+
         D9nM9JHNL+9iYV2ngax2ViaxPQE0Jql7aXNIR1hXyPVOAQ2U/h5MRpb/hIxqcQSFoq+A
         6IEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279689; x=1682871689;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdBAitePaRUmciYJrbBDMEFE/eLZHpApb0Xitnnu8+g=;
        b=Fh7ZJmeduC3qQPh8nXGKGLsNsIGeAzvPfHtTS/FPxYM2x/x0yuqjrkKgD1xJpiBhxU
         d9U+jz5oqaNBeyUuVMP3ue98n30yDZdrN3+ACP+4wCCY9fdZMqAejWopuXvn60MIe8wd
         o4RsJY9V8fHzj7gq7MlgTRGl8kYRG5sbi4RFsVOm48gEL41f1zed6bh2ht77nAVHdPfc
         3CJi8A20OOzDQMA6B9jeZmT/pHSni8DzB4VLvcHXTpoTehakahFX+cIJJT20o6roRgY9
         S40BnpqIajvDL6aG17J3gc77jLIUjBSWc1yfIO/3zIHWVjyg2IJJaqU50fw2XHgd33tc
         odDA==
X-Gm-Message-State: AO0yUKVXp6zsHNicx1VVui1iZsAc/6MhxweBkw7epc4iHvePy0gIQaXH
	ai9tdbqzNBeYNUWBvNYij6S1v3orqz7r4wkz
X-Google-Smtp-Source: AK7set8yntuINoAjL/DP3n8bJLf5GzOgH/aCsA/N5hIcKvq7vXFb5h7I91l/Yiphi5SxjzUsr9gXwQ==
X-Received: by 2002:a1c:741a:0:b0:3eb:29fe:70ec with SMTP id p26-20020a1c741a000000b003eb29fe70ecmr22710434wmc.27.1680279689384;
        Fri, 31 Mar 2023 09:21:29 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:28 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Peter Marko <peter.marko@siemens.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 13/16] go: use go as CVE product for all golang recipe veriants
Date: Fri, 31 Mar 2023 16:20:39 +0000
Message-Id: <20230331162042.1801766-13-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59582

From: Peter Marko <peter.marko@siemens.com>

All golang vulnerabilities are reported under product 'go'.

By default there is no vulnerability reported for images with
golang components because none of used golang packages
have correct CVE product set:
* go-binary-native
* go-runtime
* go-cross-*

Signed-off-by: Peter Marko <peter.marko@siemens.com>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-devtools/go-1.20/go-binary-native_1.20.1.bb | 2 ++
 recipes-devtools/go-1.20/go-common.inc              | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb b/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
index 3eb80fd..2393345 100644
--- a/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
+++ b/recipes-devtools/go-1.20/go-binary-native_1.20.1.bb
@@ -16,6 +16,8 @@ SRC_URI[go_linux_ppc64le.sha256sum] = "85cfd4b89b48c94030783b6e9e619e35557862358
 UPSTREAM_CHECK_URI = "https://golang.org/dl/"
 UPSTREAM_CHECK_REGEX = "go(?P<pver>\d+(\.\d+)+)\.linux"
 
+CVE_PRODUCT = "go"
+
 S = "${WORKDIR}/go"
 
 inherit goarch native
diff --git a/recipes-devtools/go-1.20/go-common.inc b/recipes-devtools/go-1.20/go-common.inc
index 83f8db7..96e32ee 100644
--- a/recipes-devtools/go-1.20/go-common.inc
+++ b/recipes-devtools/go-1.20/go-common.inc
@@ -19,6 +19,9 @@ S = "${WORKDIR}/go"
 B = "${S}"
 UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)\.src\.tar"
 
+# all recipe variants are created from the same product
+CVE_PRODUCT = "go"
+
 INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 SSTATE_SCAN_CMD = "true"
 
-- 
2.34.1


