Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web12.2849.1616185238349826638
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 13:20:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sn7cpbgq;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id o2so3476755plg.1
        for <yocto@lists.yoctoproject.org>; Fri, 19 Mar 2021 13:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=LRQYcPjx2np/kiSMxUUSaJsUmp2UjC2EEbpMnCSox1o=;
        b=sn7cpbgqOnEXSCYro8yiq4V3odY5O1dgZFoHX+VjpPelzpmAqjKMmaAJQ0TcYJiTO/
         TxT5YyjxNi4AMOKMQpMkqACMLo3/B2K1tbYfRxAgKcsN/eHGS+YjtGlEx9r3tF+l9yuU
         zzqibTJG+t2q7LE8pX4u+9WtNfqlpzbs84HuKSKd4Bzot4q0aA12sZOB760vfu1TBnzM
         K5M7UcoJCv/bbIESRwLAQmMt/pRgRKGg1pRDA1eQuqRBduZgYTn3z59OgBuXMcyvSWBQ
         /K2IfeTrOks/eEourHnJIZ6J972AaEM42ngDJOqsmV0nN7E/ZZrLfotQ8Le8FXxjMZns
         8KUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LRQYcPjx2np/kiSMxUUSaJsUmp2UjC2EEbpMnCSox1o=;
        b=mSUCMzlSiHW+3fT7fNfmaWkQpCNitzjyaLRmkLsh6kpZD/R1QddY+HgPDV3/cwyExJ
         iWocewa7BjBPzEv38zdMRuw/ZoYm7ZgFva2UD0+NAVpuRBWqyqG/XBUDMD886tpuWViq
         f7BOaVLxy2voryMuR7RAsPRNDWq/EYAVoGv/j2ExuNt+/p32J2MUky6LhLe5p6joRozF
         6eM5fNtP15NvU+6q3x8VLpgbe3dOcoIn8WgbFw2zLndlOp2DGtPfMl1Nl1wfkg869muW
         vvQuXyiyLizqwK5b5wus8IF/mmzGpEO3eSsK++zWvOEWIvFcTfNJ4Y7mnfVCgqiSTxud
         gcKg==
X-Gm-Message-State: AOAM533O81fmt5e8QE+hLMgPw7uPAEOrxlMmiigH8ks3g0T5s3V/7NCE
	mr/JFrqYN91N6HCHm7QVtHOO3tmOlio=
X-Google-Smtp-Source: ABdhPJyhRBlaVFO/85k8pKcX8avsGja5ZEZBCY1Gt2QdLE5Uf5W/c9RFRzwgME3prx7G6yWnS+SDNw==
X-Received: by 2002:a17:902:bd0b:b029:e5:f913:8c95 with SMTP id p11-20020a170902bd0bb02900e5f9138c95mr15761590pls.84.1616185237548;
        Fri, 19 Mar 2021 13:20:37 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w189sm6116371pfw.86.2021.03.19.13.20.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 13:20:37 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] swtpm: update to 0.5.2
Date: Fri, 19 Mar 2021 20:20:34 +0000
Message-Id: <20210319202034.3375427-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210319202034.3375427-1-akuster808@gmail.com>
References: <20210319202034.3375427-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add python package

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../swtpm/{swtpm_0.2.0.bb => swtpm_0.5.2.bb}    | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.2.0.bb => swtpm_0.5.2.bb} (78%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
similarity index 78%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
index 35c77c8..b7ff2ad 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
@@ -3,22 +3,21 @@ LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
-DEPENDS = "libtasn1 expect socat glib-2.0 net-tools-native libtpm libtpm-native"
+DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm libtpm-native"
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
 DEPENDS += "tpm-tools-native expect-native socat-native"
 
-SRCREV = "39673a0139b0ee14a0109aba50a0635592c672c4"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-${PV} \
-           file://fix_fcntl_h.patch \
+SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
            file://ioctl_h.patch \
            "
 PE = "1"
 
 S = "${WORKDIR}/git"
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig python3-dir
 PARALLEL_MAKE = ""
 
 TSS_USER="tss"
@@ -35,18 +34,20 @@ PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
-export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
-
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
 USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
+
+PACKAGES =+ "${PN}-python"
+FILES_${PN}-python = "${nonarch_libdir}/${PYTHON_PN}/dist-packages/* "
+
 PACKAGE_BEFORE_PN = "${PN}-cuse"
 FILES_${PN}-cuse = "${bindir}/swtpm_cuse"
 
 INSANE_SKIP_${PN}   += "dev-so"
 
-RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools"
+RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools python3 python3-cryptography python3-twisted"
 
 BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1

