Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6226FC433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 20:37:44 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web08.43122.1640723863088719149
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 12:37:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SVnID0iy;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 c9-20020a17090a1d0900b001b2b54bd6c5so977599pjd.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 12:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b7hWAR4gKXDtC6XyJQ49wtz+BIZZIucuy7ff9JVgkpw=;
        b=SVnID0iyFmjjIZmnt1an8WfYH3+X41CR//Yy0mhtjPtJcAatTyzXbdbPcBClHOPZ9y
         a/h+Kl/D1Q8GgmAUVpwzNERZXphEsT6NKdVWVbqfYY6VODsFJTu2z3XZ1XZaxsb5uDyd
         CMiXsa+YRzNyw9oiUtUF65voHyhgDVTdkI9YTJeHmGKaFdDIfZ4hROsWvNMx3byT0bUE
         ONZ3KzcirNQGvmgeG5Htje8AFTJrqTgTETqLO5TdSf3AWJrPrZnxwCa8PplOoBdc4l/I
         6bT7f25Osm1iBpQCEV56r+L6vVGX+JrmjMmAl+4ru7gbnBIemzvX3UC4iZGch1GlG1CT
         2VUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b7hWAR4gKXDtC6XyJQ49wtz+BIZZIucuy7ff9JVgkpw=;
        b=B2B5IdeBAlcusgDAngC8J43c4SURVfVZx8iuCLikKF/8ATjLgHmbGzI7YY9sFXwGzV
         a5/OBzp4FTgwzxk0HajTL1mXMRNRDj8kll015KJetBm4OxKevtt0pF+Jbl78v2yrKzFJ
         /eWzK62nJ/du8UJTU6dfpxM/ZbSkh6xMSnBfdnqSY4Ili39H2RNMV4VVDIdRZrEN472s
         79lgvVJ1E5P4p3OnA/+0G2r4xX0qwat5/warB1IZpVn3ue6pRSKMVunmjC/CbSf4qF5a
         2e53SprSfjes7eHZ0K8131OwzWf642FjNNrBvtsB62FSqawalnxznuI/e2fYpZ3hzAdv
         PVbw==
X-Gm-Message-State: AOAM531NMrq90iL1+e9k3AT7fr5xXn7Caim3MrZ9YUuWuBdUCnkg1VSG
	Ve5Q/9t0mKU37hAE55aPpRiEVf5uD2g=
X-Google-Smtp-Source: 
 ABdhPJzQHQgd65XrRMjGcz9qKE6QukVACbBc5UhbNlEZOYPXV1n/2seyp6i4NIzJniddcTGLbDifPQ==
X-Received: by 2002:a17:90b:4c8d:: with SMTP id
 my13mr28122634pjb.163.1640723862331;
        Tue, 28 Dec 2021 12:37:42 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:ae31:6fc8:90c:39d4])
        by smtp.gmail.com with ESMTPSA id
 e21sm6778806pjr.4.2021.12.28.12.37.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 12:37:42 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] meta-integrity: drop strongswan bbappends
Date: Tue, 28 Dec 2021 12:37:39 -0800
Message-Id: <20211228203740.491299-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 20:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55678

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../strongswan/strongswan-ima.inc             | 61 -------------------
 .../strongswan/strongswan_5.%.bbappend        |  1 -
 2 files changed, 62 deletions(-)
 delete mode 100644 meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
 delete mode 100644 meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend

diff --git a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
deleted file mode 100644
index 807075c..0000000
--- a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
+++ /dev/null
@@ -1,61 +0,0 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-DEPENDS = "libtspi"
-
-SRC_URI:append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
-
-PACKAGECONFIG += " \
-    aikgen \
-    tpm \
-"
-
-PACKAGECONFIG[tpm] = "--enable-tpm,--disable-tpm,,"
-PACKAGECONFIG[aikgen] = "--enable-aikgen,--disable-aikgen,,"
-
-PACKAGECONFIG_ima += "\
-    imc-test \
-    imv-test \
-    imc-scanner \
-    imv-scanner \
-    imc-os \
-    imv-os \
-    imc-attestation \
-    imv-attestation \
-    tnc-ifmap \
-    tnc-imc \
-    tnc-imv \
-    tnc-pdp \
-    tnccs-11 \
-    tnccs-20 \
-    tnccs-dynamic \
-    "
-
-EXTRA_OECONF += "--with-linux-headers=${STAGING_KERNEL_DIR}"
-
-PACKAGECONFIG[imc-test] = "--enable-imc-test,--disable-imc-test,,"
-PACKAGECONFIG[imc-scanner] = "--enable-imc-scanner,--disable-imc-scanner,,"
-PACKAGECONFIG[imc-os] = "--enable-imc-os,--disable-imc-os,,"
-PACKAGECONFIG[imc-attestation] = "--enable-imc-attestation,--disable-imc-attestation,,"
-PACKAGECONFIG[imc-swima] = "--enable-imc-swima, --disable-imc-swima,,"
-PACKAGECONFIG[imc-hcd] = "--enable-imc-hcd, --disable-imc-hcd,,"
-PACKAGECONFIG[tnc-imc] = "--enable-tnc-imc,--disable-tnc-imc,,"
-
-PACKAGECONFIG[imv-test] = "--enable-imv-test,--disable-imv-test,,"
-PACKAGECONFIG[imv-scanner] = "--enable-imv-scanner,--disable-imv-scanner,,"
-PACKAGECONFIG[imv-os] = "--enable-imv-os,--disable-imv-os,,"
-PACKAGECONFIG[imv-attestation] = "--enable-imv-attestation,--disable-imv-attestation,,"
-PACKAGECONFIG[imv-swima] = "--enable-imv-swima, --disable-imv-swima,,"
-PACKAGECONFIG[imv-hcd] = "--enable-imv-hcd, --disable-imv-hcd,,"
-PACKAGECONFIG[tnc-imv] = "--enable-tnc-imv,--disable-tnc-imv,,"
-
-PACKAGECONFIG[tnc-ifmap] = "--enable-tnc-ifmap,--disable-tnc-ifmap,libxml2,"
-PACKAGECONFIG[tnc-pdp] = "--enable-tnc-pdp,--disable-tnc-pdp,,"
-
-PACKAGECONFIG[tnccs-11] = "--enable-tnccs-11,--disable-tnccs-11,libxml2,"
-PACKAGECONFIG[tnccs-20] = "--enable-tnccs-20,--disable-tnccs-20,,"
-PACKAGECONFIG[tnccs-dynamic] = "--enable-tnccs-dynamic,--disable-tnccs-dynamic,,"
-
-#FILES_${PN} += "${libdir}/ipsec/imcvs/*.so ${datadir}/regid.2004-03.org.strongswan"
-#FILES_${PN}-dbg += "${libdir}/ipsec/imcvs/.debug"
-#FILES_${PN}-dev += "${libdir}/ipsec/imcvs/*.la"
-#FILES_${PN}-staticdev += "${libdir}/ipsec/imcvs/*.a"
diff --git a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
deleted file mode 100644
index 4669fd2..0000000
--- a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'imp', 'strongswan-ima.inc', '', d)}
-- 
2.25.1


