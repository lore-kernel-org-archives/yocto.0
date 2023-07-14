Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AB12EB64DA
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 12:21:13 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.17511.1689337264428091645
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jul 2023 05:21:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=FU2B3VbM;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-579e212668fso25745627b3.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 05:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689337263; x=1691929263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=q13RrhadOZPhbY+sqVQ2tWQ4DlMdcXEojgcEq6R/Xck=;
        b=FU2B3VbMuMPBi726LDjr/VZoidj1w56+dFvvbPzqKWurzfSsAgmG5KYZHbqCx4z3O6
         euIawu3Qqt10ilpnmsLfObSi5TDpEv8C2XB7rvUyKukWBkJYWt04/0NY2N7N6v13kUz/
         S+9B619/iV8NLMbDRznZnxf8LS4+yODrNvsttJsXF4iZB2RSQ7dThRpB/jt29KZoP/3k
         m2gIKhscCOsgpOMCi7KyYA1gMeVXrVceyNoD4EsHu4FZClIzhlKlXT7/5K0z3/Wkjq63
         BzElECsDeHp0s8Wz7l17V+aHrDpyrQcCrzF+x9QR8Cijvedo9B086MFVJjiEsXWRvWK9
         IoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689337263; x=1691929263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q13RrhadOZPhbY+sqVQ2tWQ4DlMdcXEojgcEq6R/Xck=;
        b=cZ1oXeQvPmi3Zy4hlLDBpZeLsER1uzr219YGk9dq+3P6wKllDQxA+5HfZTj9oUhjV1
         8BvWe1rnoE6THA0SyQoQ0Q+6543DPoFQfo5/wbksmEfzRKD1w/YIvwPiTHsuDcIiED78
         KhY1hH30RPqIfSOQQRNQGmYxouycQ1uhom47+d2Srxmu+syS5Z88ISP5zsugB7/f8ZoR
         ZmaL1ih8vNLiuPR4AiusE8xmp4Anr/OtBF42PbMEpzIhU+NTP3/0/LZJn3xRWrsgYBJt
         PnkdTneK6PUI0DXle4/157Nl3PfiT1aNQxtjUfBMR9FLfA9p6inaOsCUq9oRnVK131ln
         Wf3A==
X-Gm-Message-State: ABy/qLZCmImDA4GwiE6eFatXsD69P3jJcROmymYtUZ0JSYbgGTR7ipYm
	hT+PKOAzg5H1PRUbrtDk4a2i+dVE2Ew=
X-Google-Smtp-Source: APBJJlGpRC+Ha485skCSH1yAg+FArsiazAzdPgieCpoEwrVz4Z76faBEpDjnTAXD4Ceh4ke9tDVFLw==
X-Received: by 2002:a81:4915:0:b0:577:186c:2a3c with SMTP id w21-20020a814915000000b00577186c2a3cmr2754613ywa.19.1689337263236;
        Fri, 14 Jul 2023 05:21:03 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:d728:ea97:1c3f:f91])
        by smtp.gmail.com with ESMTPSA id u10-20020a0deb0a000000b005772154dddbsm2258818ywe.24.2023.07.14.05.20.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 05:21:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: enable ptest
Date: Fri, 14 Jul 2023 08:20:49 -0400
Message-Id: <20230714122049.313616-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 12:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60578

This add the basic framework to allow the test suite to run. It takes a very long time
so it my not be practical to run in some cases (days in my case).

The ptest log format has not been verified.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide/files/run-ptest       |  7 +++
 .../scap-security-guide_0.1.67.bb             | 47 ++++++++++++++++++-
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 recipes-compliance/scap-security-guide/files/run-ptest

diff --git a/recipes-compliance/scap-security-guide/files/run-ptest b/recipes-compliance/scap-security-guide/files/run-ptest
new file mode 100644
index 0000000..e8d270f
--- /dev/null
+++ b/recipes-compliance/scap-security-guide/files/run-ptest
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+export PYTHONPATH="/usr/lib/scap-security-guide/ptest/git:$PYTHONPATH"
+
+cd git/build
+
+ctest --output-on-failure -E unique-stigids
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index 6e62f22..988e48b 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -9,6 +9,7 @@ LICENSE = "BSD-3-Clause"
 SRCREV = "3a1012bc9ec2b01b3b71c6feefd3cff0f52bd64d"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
            file://run_eval.sh \
+           file://run-ptest \
            file://0001-scap-security-guide-add-openembedded-distro-support.patch \
            file://0002-scap-security-guide-Add-Poky-support.patch \
            "
@@ -19,7 +20,7 @@ DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-n
 S = "${WORKDIR}/git"
 B = "${S}/build"
 
-inherit cmake pkgconfig python3native python3targetconfig
+inherit cmake pkgconfig python3native python3targetconfig ptest
 
 OECMAKE_GENERATOR = "Unix Makefiles"
 
@@ -37,8 +38,52 @@ do_install:append() {
     install  ${WORKDIR}/run_eval.sh ${D}${datadir}/openscap/.
 }
 
+do_compile_ptest() {
+    cd ${S}/build
+    cmake ../
+    make 
+}
+
+do_install_ptest() {
+
+    # remove host & work dir from tests
+    for x in $(find ${S}/build -type f) ;
+    do
+       sed -e 's#${HOSTTOOLS_DIR}/##g' \
+           -e 's#${RECIPE_SYSROOT_NATIVE}##g' \
+           -e 's#${WORKDIR}#${PTEST_PATH}#g' \
+           -e 's#/.*/xmllint#/usr/bin/xmllint#g' \
+           -e 's#/.*/oscap#/usr/bin/oscap#g' \
+           -e 's#/python3-native##g' \
+           -i ${x}
+    done
+
+    for x in $(find ${S}/build-scripts -type f) ;
+    do
+       sed -i -e '1s|^#!.*|#!/usr/bin/env python3|' ${x}
+    done
+
+    for x in $(find ${S}/tests -type f) ;
+    do
+       sed -i -e '1s|^#!.*|#!/usr/bin/env python3|' ${x}
+    done
+
+    for x in $(find ${S}/utils -type f) ;
+    do
+       sed -i -e '1s|^#!.*|#!/usr/bin/env python3|' ${x}
+    done
+
+    PDIRS="apple_os build controls products shared components applications linux_os ocp-resources tests utils ssg build-scripts"
+    t=${D}/${PTEST_PATH}/git
+    for d in ${PDIRS}; do
+        install -d ${t}/$d
+        cp -fr ${S}/$d/* ${t}/$d/.
+    done
+}
+
 FILES:${PN} += "${datadir}/xml ${datadir}/openscap"
 
 RDEPENDS:${PN} = "openscap"
+RDEPENDS:${PN}-ptest = "cmake grep sed bash git python3 python3-modules python3-mypy python3-pyyaml python3-yamlpath python3-xmldiff python3-json2html python3-pandas python3-openpyxl python3-pytest libxml2-utils libxslt-bin"
 
 COMPATIBLE_HOST:libc-musl = "null"
-- 
2.34.1


