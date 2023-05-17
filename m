Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2452DC7EE2A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 17:26:41 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web10.56540.1684344394613972358
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 10:26:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=GreK6Dmm;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-559f1819c5dso12056377b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 10:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684344393; x=1686936393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F9XYYoe23aVEWY+bf0j1ccimaNitJ/Qu6zMFa54K+4E=;
        b=GreK6DmmN9Zf/23eO9afTlljw18YUbnPsNDG6DmcckDDYDts0beYmQe+Y8w5aTcSAh
         myUR4JJP057vORe1agALgaPNpUaOcBZd35wOUzbYPT/8lz2HHBTSEuVvLPOu3c7Q8HnD
         Na5jd9AYHxlX4Vfk5P+fNJNena4WG27VJWS03khBvXAh/ykKbLOY9DcZyL4u3n4ibvxM
         UAF1E1tKYlaiIHn8VAwNEVt0tLjDb8MDb2Kg3m6OZBBjsQksEneen+ooZ1a7QLV3FEN0
         C6QTt8qYSzDKxZb5WzoSXbm8IL0Cb29EdwrxHD2dL++wRwHhF6HY1Nxkiw37CXAk1PK0
         VCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684344393; x=1686936393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F9XYYoe23aVEWY+bf0j1ccimaNitJ/Qu6zMFa54K+4E=;
        b=D03P8seK6ielfmVrqEJWbocVF0GIzEdXOcmT67ZrqaXU5RFZFaukwsfzEMZzbscE5k
         59sC/GhOlD2/3RNPr6yQ7BmcfPvA5uB3DSU0B89AccnnFaabawpi1sCXt86DrQTfr1Kb
         Vckf7Obg3uV84yL4fITPTu9YSKUNnffa+oRpsStNik071FpS5hdNyVbtWT05MTSYq8Dr
         sQyjRHFp+SN3hPpT7TpSEiC3j70YAouqM/uF2m8WsH/t9/tZaCp75rhHM/7cUT6tj87I
         UYv3fQL4HJ3jeYNepJ9cfvWrb6uVe+Fc+XViJfMPn4BBBOQ7Dr0TU1TvXNatp50t3fUF
         zkGg==
X-Gm-Message-State: AC+VfDxefozPsoiM6wkYxr7eX2/8GcRtDeGyNs9XZHozQYEdZE1TYu60
	QhVxJu5eBdbu0qbOBWMVcSDYIXQvWpQ=
X-Google-Smtp-Source: ACHHUZ5eSmjTMB2a4b7SggwCeXWWjWqXb7fGI8O3hZoMj6sex3hwyBSoELyCIdWZVijRWq7/x19tTA==
X-Received: by 2002:a0d:cb01:0:b0:561:a80b:6647 with SMTP id n1-20020a0dcb01000000b00561a80b6647mr4394151ywd.45.1684344392608;
        Wed, 17 May 2023 10:26:32 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:618a:deaa:d52c:9d63])
        by smtp.gmail.com with ESMTPSA id m6-20020a819e06000000b005611de826bdsm784769ywj.86.2023.05.17.10.26.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 10:26:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] layer.conf: Insert addpylib declaration
Date: Wed, 17 May 2023 13:26:30 -0400
Message-Id: <20230517172630.3538600-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230517172630.3538600-1-akuster808@gmail.com>
References: <20230517172630.3538600-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 17:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60044

Yocto mickledore introduced the addpylib directive for explicitly adding
layer paths to the PYTHONPATH.

Standalone OEQA test suite discovery does not require this directive but
it is required to import test cases from other layers, e.g. to extend
and modify the test cases.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 1 +
 meta-integrity/conf/layer.conf           | 2 ++
 meta-security-compliance/conf/layer.conf | 2 ++
 meta-security-isafw/conf/layer.conf      | 2 ++
 meta-tpm/conf/layer.conf                 | 2 ++
 5 files changed, 9 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index b5a74f1..334a945 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -28,3 +28,4 @@ INHERIT += "sanity-meta-security"
 
 QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
 
+addpylib ${LAYERDIR}/lib oeqa
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index b273b5b..0622a5f 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -33,3 +33,5 @@ INHERIT += "sanity-meta-integrity"
 BBFILES_DYNAMIC += " \
 networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
 "
+
+addpylib ${LAYERDIR}/lib oeqa
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 82409a6..cb33c2c 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -13,3 +13,5 @@ LAYERSERIES_COMPAT_scanners-layer = "mickledore"
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
 BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"
+
+addpylib ${LAYERDIR}/lib oeqa
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 550cced..fca5868 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -15,3 +15,5 @@ LAYERVERSION_security-isafw = "1"
 LAYERDEPENDS_security-isafw = "core"
 
 LAYERSERIES_COMPAT_security-isafw = "mickledore"
+
+addpylib ${LAYERDIR}/lib oeqa
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 12bd6b7..3b199f7 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -24,3 +24,5 @@ INHERIT += "sanity-meta-tpm"
 BBFILES_DYNAMIC += " \
 networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
 "
+
+addpylib ${LAYERDIR}/lib oeqa
-- 
2.25.1


