Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46839C41513
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 12:34:58 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web11.13572.1691066092472555971
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Aug 2023 05:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=cBuqHxpN;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-583f036d50bso10013407b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 05:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691066091; x=1691670891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pLl6B6LN+tCB10KsY2FCeZNFqWYUFlupsU6O3khGV4s=;
        b=cBuqHxpNiJnZy9oMk8fQN1/JZexAkoLKNYE0FGj1vyFaqc2xDFYCAb1NCRexuT5ncj
         ZaCl7kghlHOPqgeq4oRSwT1/oxg0wcq8xt0O04biDZMQuu1/tzvAXofics5UERRXatNE
         u5tq7pVVtfO5GUmx57I+m9HuhE7E0fdzz1qwGHzMsq+HbSd5f5oWppE6EEHhDt2G1V4y
         OX1Lwyhum2fS4pog2Gt/HWC/aAvQO2PoA+dqYjMUt53tyVc93MwL0lfAPiUap4D1C48C
         Vp9QNtIpZdvl/p3L5hfWXt7bnkG1ZeQZ6/EVpuzqotwh2zhkBzGdiW/wXMSk1TkoceVW
         TqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691066091; x=1691670891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pLl6B6LN+tCB10KsY2FCeZNFqWYUFlupsU6O3khGV4s=;
        b=FzFh3uYxWnTddWYEBv/8Nb9NqGUtm7kaHUTCJxg6iBEd4xTL7ogeIfBQoYtrBm1aiE
         +doJ7GuWfHuY5kaELZ7X1sZ3+FJycuyvHl3A4vegWeaZSXbFJozIsX7RA1dFxK/pwtl+
         0yKQaXkzhcqc1VGclxv7wfIKUhM9cXFNAvDmlbGVrPr2BhB0v4vxmrZDb4iSVxwYEYDT
         QlpeQx+NIc+ZrwhjsFhKlkzRWapqjqejHMDtawGHTnm1Z1FgydhwrHp6UW0nRJD3j+qr
         RlYD8F8f64B25QkicIrSoB082G9yacijkD/NsD0n91+xpB5dn3Unc25NxGo5bwdPNDHS
         iKfA==
X-Gm-Message-State: ABy/qLbyDocORtx4ua8Sj8KeglbubmbQgWbx32d9+2ZBmEdq6Totp8GQ
	p7VHUDhUYIzEUFigyDFTzhKLHOm++o4=
X-Google-Smtp-Source: APBJJlE6QRFFO6llvHvvDi6Scdr5IWehFiUE9i64LZubC3GQufelr3bYPgb86HCV6gI/uNVeTg5igA==
X-Received: by 2002:a81:c313:0:b0:576:f0d6:3d68 with SMTP id r19-20020a81c313000000b00576f0d63d68mr21455731ywk.32.1691066091448;
        Thu, 03 Aug 2023 05:34:51 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:5c98:9045:2ee5:13b9])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0057a560a9832sm5328220ywf.1.2023.08.03.05.34.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 05:34:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] layer: add QA_WARNINGS to all layers
Date: Thu,  3 Aug 2023 08:34:50 -0400
Message-Id: <20230803123450.309537-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230803123450.309537-1-akuster808@gmail.com>
References: <20230803123450.309537-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 12:34:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60704

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                | 2 ++
 meta-hardening/conf/layer.conf | 2 ++
 meta-integrity/conf/layer.conf | 2 ++
 meta-parsec/conf/layer.conf    | 2 ++
 meta-tpm/conf/layer.conf       | 2 ++
 5 files changed, 10 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 05f678a..a436f97 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -27,3 +27,5 @@ BBFILES_DYNAMIC += " \
 INHERIT += "sanity-meta-security"
 
 addpylib ${LAYERDIR}/lib oeqa
+
+WARN_QA:append:security = " patch-status missing-metadata"
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 1dbc537..4bc1cac 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -11,3 +11,5 @@ BBFILE_PRIORITY_harden-layer = "6"
 LAYERSERIES_COMPAT_harden-layer = "mickledore"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
+
+WARN_QA:append:harden-layer = " patch-status missing-metadata"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 0622a5f..7a9c1d1 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -35,3 +35,5 @@ networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappe
 "
 
 addpylib ${LAYERDIR}/lib oeqa
+
+WARN_QA:append:integrity = " patch-status missing-metadata"
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 7d272a2..b162289 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -14,3 +14,5 @@ LAYERDEPENDS_parsec-layer = "core clang-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
 
 addpylib ${LAYERDIR}/lib oeqa
+
+WARN_QA:append:parsec-layer = " patch-status missing-metadata"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 3b199f7..1f27031 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -26,3 +26,5 @@ networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappe
 "
 
 addpylib ${LAYERDIR}/lib oeqa
+
+WARN_QA:append:tmp-layer = " patch-status missing-metadata"
-- 
2.34.1


