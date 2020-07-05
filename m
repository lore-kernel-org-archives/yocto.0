Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.42557.1593975492812172903
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:58:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gViCv+Lr;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id a14so11486861pfi.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=r4EeLWp+b3o7gBMgXurw3VMM0Bc9JN6YNblPQ4CIoKw=;
        b=gViCv+LrntBGShBfu1eaAxiUrRVbBQntXLV3NoR8ERBpiVegZwj/XHT93sU9fF92fc
         75ZrJnvc/40EO1O9gt++ZIVt1Wtq8OQjoN0C6R3EJZ+YkYNlbl88SrHpsXHBWtENJ482
         wLNkl6j8zRkwtivauSHwTwfr77MPwGKPr+ib+zfxVdadQWIBWNaIrmaJTRVt2EQ4imqC
         7qloSJb6yA2OwLqTKxhu6H2qyIPgTPzlqNSIhEQ0AZmDI1j1bxzMvzEc5vCXr8qbPrJn
         ERc22nDdFUCl6awI/rrq7Hd0OLr51WIo6s2/+xW8lcE2RSkIy0VBcSSQU0lst4D1i3H8
         zNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=r4EeLWp+b3o7gBMgXurw3VMM0Bc9JN6YNblPQ4CIoKw=;
        b=UAAocvT3eei9aTBI4Ws7TdaKza9vjDnEDIgr9MK1bBs+ZJ+WVgdmj7P18Nsc0Jo2jq
         QDTcmGVtMBqcCIrxWiMzjOgYo4wYZV9GUOnWZaeLuGZn8IP3t2Kx+eusHjaOh4xZ48I5
         atgy1AxLSc+pch/GIxkKoUiVF7pITmTGuEiyv2WRFxisTqQKhBxAi+C2xXDFOUWJE1Vd
         EapckUYoxHF/0UTej+I1Xi/wC0bKXsX0/dnLWzuc9jJvF1V2hnfS9TZzww1jcwDiqek9
         WE5s3cgZv5svFU6mEUpWCadXUuRLKBk2p86o3d/XGzdCQgPbLPo138XQEL+Bp4HA54vK
         23mQ==
X-Gm-Message-State: AOAM532khPmNuSgdqZLUjxVf962eeGAZ0dQXrxU0bXb0y+2yd9CxTO7k
	vwpPYCXfoJTTznwVIq9aU7wwj2JCJlI=
X-Google-Smtp-Source: ABdhPJwzUgx00/ik3t7/Ynwda/wYL4HUWPDqmt8zkqoTjEcio9erRloU/ofOVF+HTxwRUHxPPtbj4w==
X-Received: by 2002:a63:6643:: with SMTP id a64mr38193046pgc.246.1593975491844;
        Sun, 05 Jul 2020 11:58:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id d5sm15464534pjo.20.2020.07.05.11.58.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:58:11 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] python3-rsa: add recipe
Date: Sun,  5 Jul 2020 11:58:06 -0700
Message-Id: <20200705185808.3912-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200705185808.3912-1-akuster808@gmail.com>
References: <20200705185808.3912-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-python/python/python3-rsa_3.4.2.bb | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 recipes-python/python/python3-rsa_3.4.2.bb

diff --git a/recipes-python/python/python3-rsa_3.4.2.bb b/recipes-python/python/python3-rsa_3.4.2.bb
new file mode 100644
index 0000000..759214f
--- /dev/null
+++ b/recipes-python/python/python3-rsa_3.4.2.bb
@@ -0,0 +1,44 @@
+SUMMARY = "Pure-Python RSA implementation"
+SECTION = "devel/python"
+AUTHOR = "Sybren A. Stuvel"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=c403f6882d4f97a9cd927df987d55634"
+
+SRC_URI[sha256sum] = "25df4e10c263fb88b5ace923dd84bf9aa7f5019687b5e55382ffcdb8bede9db5"
+
+inherit pypi setuptools3 update-alternatives
+
+ALTERNATIVE_${PN} = "\
+    pyrsa-decrypt \
+    pyrsa-decrypt-bigfile \
+    pyrsa-encrypt \
+    pyrsa-encrypt-bigfile \
+    pyrsa-keygen \
+    pyrsa-priv2pub \
+    pyrsa-sign \
+    pyrsa-verify \
+"
+
+ALTERNATIVE_LINK_NAME[pyrsa-decrypt] = "${bindir}/pyrsa-decrypt"
+ALTERNATIVE_LINK_NAME[pyrsa-decrypt-bigfile] = "${bindir}/pyrsa-decrypt-bigfile"
+ALTERNATIVE_LINK_NAME[pyrsa-encrypt] = "${bindir}/pyrsa-encrypt"
+ALTERNATIVE_LINK_NAME[pyrsa-encrypt-bigfile] = "${bindir}/pyrsa-encrypt-bigfile"
+ALTERNATIVE_LINK_NAME[pyrsa-keygen] = "${bindir}/pyrsa-keygen"
+ALTERNATIVE_LINK_NAME[pyrsa-priv2pub] = "${bindir}/pyrsa-priv2pub"
+ALTERNATIVE_LINK_NAME[pyrsa-sign] = "${bindir}/pyrsa-sign"
+ALTERNATIVE_LINK_NAME[pyrsa-verify] = "${bindir}/pyrsa-verify"
+ALTERNATIVE_PRIORITY = "30"
+
+
+RDEPENDS_${PN} += "\
+    ${PYTHON_PN}-compression \
+    ${PYTHON_PN}-crypt \
+    ${PYTHON_PN}-doctest \
+    ${PYTHON_PN}-logging \
+    ${PYTHON_PN}-math \
+    ${PYTHON_PN}-multiprocessing \
+    ${PYTHON_PN}-netclient \
+    ${PYTHON_PN}-pickle \
+"
+
+RDEPENDS_${PN} += "${PYTHON_PN}-pyasn1"
-- 
2.17.1

