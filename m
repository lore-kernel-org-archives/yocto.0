Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.4842.1594959007739186634
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f/8/Bktx;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id s26so4755142pfm.4
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=GBUHN+YaBsG+1/S0FkG1zdwugBTmKSly45lPh4ZNO4E=;
        b=f/8/BktxSvw/obnjOrr+/Cd0XdpxttgY4H+vgbXXcjnkpWoWkEYjO/ciHf3OnORPID
         lbIE6JJ0R6QrVeujAk8seqYCDDFQslVyQphrueed0fSB0cRdLiuffobDKNdp3Xsris+X
         JM+3YA9EW/2XHJN4Z8rq7uZHDXUef1grmMifGHhGIaO1J96Fz+w4wX98crfeNoR0iIUa
         n9zwCPfuUQIFNYzE1Fc6Tlo6/REAtq+dfsp0p9BioJuU6/zKx7Twn/chQ4IrKCBOom2b
         bnxrmh2PZIArRYAK3dgLavgSaFbQy+XiCoNvzfM/6Z87z2prZsQloQGnDTDBI+kA/XAj
         31Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=GBUHN+YaBsG+1/S0FkG1zdwugBTmKSly45lPh4ZNO4E=;
        b=cB1buT7dwmZoeJCKZ8vClhCITJmVZnAVIJIaKi8gDmgYcWjWA3v2bJiPP/zhuD2ZWX
         e7x8OylXS3U6baI6fj/CVfQlvqZyofYADPTKNIUsrQM6XE+fOdZynYWb9YvtFsk1NA+R
         7F2y8QTP8iv8kmQI2Y7P4WucPzGD1PAj4qvR0FHj9+VIfTmke3rB8GM+dfIF4xlT7k7M
         ePHm1yu0yz+LYVvv8ITNmPY3iv1kuP/p10r7WdLok9Qj6LtCX76nzdc9a4ww87zS2+LB
         jlPhQ/kbT+U3BuU1A8Lzzfm3ZwMe6rS2LyLJOlJZG+L61YRRuxqF01qc7nS1rAKJxmqO
         UxAA==
X-Gm-Message-State: AOAM531NHwMtriBEgX1JASISE/Nac0fYNSFrMCJJWM+g3bdHMnLWQpBI
	fz3RnXl1EY0GU5qnbJqfUbzs2DdrTxg=
X-Google-Smtp-Source: ABdhPJxPs1/nxgbZ6qcRRuet1CkXZJvYxg0USBmVEZ0BJx8fW9fHjMwNs0hYKzfJhTNhkfjcYuKvWg==
X-Received: by 2002:a63:5fcc:: with SMTP id t195mr6894021pgb.56.1594959007080;
        Thu, 16 Jul 2020 21:10:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:06 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] strongswan: Add bbappends for ima changes
Date: Fri, 17 Jul 2020 04:10:00 +0000
Message-Id: <20200717041001.17312-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6
In-Reply-To: <20200717041001.17312-1-akuster808@gmail.com>
References: <20200717041001.17312-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-support/strongswan/strongswan-ima.inc  | 61 ++++++++++++++++++++++
 .../strongswan/strongswan_5.%.bbappend             |  1 +
 2 files changed, 62 insertions(+)
 create mode 100644 meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
 create mode 100644 meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend

diff --git a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
new file mode 100644
index 0000000..a45182e
--- /dev/null
+++ b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
@@ -0,0 +1,61 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+DEPENDS = "libtspi"
+
+SRC_URI_append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
+
+PACKAGECONFIG += " \
+    aikgen \
+    tpm \
+"
+
+PACKAGECONFIG[tpm] = "--enable-tpm,--disable-tpm,,"
+PACKAGECONFIG[aikgen] = "--enable-aikgen,--disable-aikgen,,"
+
+PACKAGECONFIG_ima += "\
+    imc-test \
+    imv-test \
+    imc-scanner \
+    imv-scanner \
+    imc-os \
+    imv-os \
+    imc-attestation \
+    imv-attestation \
+    tnc-ifmap \
+    tnc-imc \
+    tnc-imv \
+    tnc-pdp \
+    tnccs-11 \
+    tnccs-20 \
+    tnccs-dynamic \
+    "
+
+EXTRA_OECONF += "--with-linux-headers=${STAGING_KERNEL_DIR}"
+
+PACKAGECONFIG[imc-test] = "--enable-imc-test,--disable-imc-test,,"
+PACKAGECONFIG[imc-scanner] = "--enable-imc-scanner,--disable-imc-scanner,,"
+PACKAGECONFIG[imc-os] = "--enable-imc-os,--disable-imc-os,,"
+PACKAGECONFIG[imc-attestation] = "--enable-imc-attestation,--disable-imc-attestation,,"
+PACKAGECONFIG[imc-swima] = "--enable-imc-swima, --disable-imc-swima,,"
+PACKAGECONFIG[imc-hcd] = "--enable-imc-hcd, --disable-imc-hcd,,"
+PACKAGECONFIG[tnc-imc] = "--enable-tnc-imc,--disable-tnc-imc,,"
+
+PACKAGECONFIG[imv-test] = "--enable-imv-test,--disable-imv-test,,"
+PACKAGECONFIG[imv-scanner] = "--enable-imv-scanner,--disable-imv-scanner,,"
+PACKAGECONFIG[imv-os] = "--enable-imv-os,--disable-imv-os,,"
+PACKAGECONFIG[imv-attestation] = "--enable-imv-attestation,--disable-imv-attestation,,"
+PACKAGECONFIG[imv-swima] = "--enable-imv-swima, --disable-imv-swima,,"
+PACKAGECONFIG[imv-hcd] = "--enable-imv-hcd, --disable-imv-hcd,,"
+PACKAGECONFIG[tnc-imv] = "--enable-tnc-imv,--disable-tnc-imv,,"
+
+PACKAGECONFIG[tnc-ifmap] = "--enable-tnc-ifmap,--disable-tnc-ifmap,libxml2,"
+PACKAGECONFIG[tnc-pdp] = "--enable-tnc-pdp,--disable-tnc-pdp,,"
+
+PACKAGECONFIG[tnccs-11] = "--enable-tnccs-11,--disable-tnccs-11,libxml2,"
+PACKAGECONFIG[tnccs-20] = "--enable-tnccs-20,--disable-tnccs-20,,"
+PACKAGECONFIG[tnccs-dynamic] = "--enable-tnccs-dynamic,--disable-tnccs-dynamic,,"
+
+#FILES_${PN} += "${libdir}/ipsec/imcvs/*.so ${datadir}/regid.2004-03.org.strongswan"
+#FILES_${PN}-dbg += "${libdir}/ipsec/imcvs/.debug"
+#FILES_${PN}-dev += "${libdir}/ipsec/imcvs/*.la"
+#FILES_${PN}-staticdev += "${libdir}/ipsec/imcvs/*.a"
diff --git a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
new file mode 100644
index 0000000..4669fd2
--- /dev/null
+++ b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan_5.%.bbappend
@@ -0,0 +1 @@
+require ${@bb.utils.contains('DISTRO_FEATURES', 'imp', 'strongswan-ima.inc', '', d)}
-- 
2.8.6

