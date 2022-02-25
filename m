Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1767BC433FE
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 15:48:24 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web08.7775.1645804103250532454
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:48:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aXE1T0HM;
 spf=pass (domain: gmail.com, ip: 209.85.210.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id y5so5027060pfe.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 07:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=pYFPwa6AtL6kVSIV9UMq6YPl7XMzoxnq/tIF9qJgpRk=;
        b=aXE1T0HMbSHoOAhacHPepLNVwo8f9aJrfpwHnxmAjg23vGWzw7PI0mlOqhV61VdTrV
         Kr3JEzUzw9xDsj+jlShw1k6ccELM6VyKjNeOvp6Ga/8afN31tGjgKbJblYVe4nyRphER
         LZvYxlgEYuziDxqBRVczf32KX1wU1TpEztCACuOULKQF1kgI5TU/Y/iZkcKrPa0R+6y3
         RV9NQAAsJos/Ep5A4sByeQJphLQU/2I0AlJRXVsas7Ve336qTpFZZLL4ZflBsM3hxfcb
         wvN44N4xzov4xcNH31tccNJhRgJriwCnSsMcoztuEp6dYv9d0lBA5lwWaNnePI/1Aj/I
         Cr4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pYFPwa6AtL6kVSIV9UMq6YPl7XMzoxnq/tIF9qJgpRk=;
        b=Bbqfjz+mo4XZHj0H9Tc/eYZskszqDW4MvPoVA/c0M8jy+TgJE/9x4wvXxqR+PibOKx
         RFV8ECoiFfBU01RWAZf5p52oz3gSdZafdXm+AIuAUxvosqdKWz9tdNZxecxHc1lBAO2I
         gWUV25SXTjycJjJWs2tq4EGOUHqvtI2ieBDi6A44nkffbsF5Q6CEbuM2kAli40NtEou6
         xd4JyWY2V5f7cVS1EhpErAAcr0gD9niLgkhr/MGn1wyiUc7jJ+fGIfwo8uSClX41kbXG
         k/frWEaX3PwDaEH4fEiKw2BOlxBtow0D+i557N5uiixHnSkPAoDwttQ3a7I+GvQEvIcv
         u3dQ==
X-Gm-Message-State: AOAM532xei/kB4w+ez5hEltcJjN4X07tmPdfbIEHLfZLn5vl6Tw3BNze
	b5HIDnbjKgyhNMO4Fh2Vum4XSG08kis=
X-Google-Smtp-Source: 
 ABdhPJxrWNnBvuDBSAuZ4GVgSEFpuHKwym4NZQWfxJj6+vGNAvZqotEXGXUyexkFFBWidtLX/hSXcA==
X-Received: by 2002:a62:1c47:0:b0:4f1:2735:3219 with SMTP id
 c68-20020a621c47000000b004f127353219mr8276955pfc.70.1645804102482;
        Fri, 25 Feb 2022 07:48:22 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:59da:4980:6faa:1736])
        by smtp.gmail.com with ESMTPSA id
 a38-20020a056a001d2600b004f0f0f852a4sm3796074pfx.77.2022.02.25.07.48.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 07:48:22 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-security-tpm:  Fix QA Error
Date: Fri, 25 Feb 2022 07:48:19 -0800
Message-Id: <20220225154819.2005707-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225154819.2005707-1-akuster808@gmail.com>
References: <20220225154819.2005707-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 15:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56282

ERROR: packagegroup-security-tpm-1.0-r0 do_package_write_rpm: An allarch packagegroup shouldn't depend on packages which are dynamically renamed (libtpm-dbg to libtpms-dbg)
ERROR: packagegroup-security-tpm-1.0-r0 do_package_write_rpm: An allarch packagegroup shouldn't depend on packages which are dynamically renamed (libtpm to libtpms0)
ERROR: packagegroup-security-tpm-1.0-r0 do_package_write_rpm: An allarch packagegroup shouldn't depend on packages which are dynamically renamed (libtpm-dev to libtpms-dev)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index bfe6e3a..7ba5004 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -15,7 +15,6 @@ RDEPENDS:packagegroup-security-tpm = " \
     tpm-quote-tools \
     swtpm \
     openssl-tpm-engine \
-    libtpm \
     ${X86_TPM_MODULES} \
     "
 
-- 
2.25.1


