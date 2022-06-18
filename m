Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236CCC43334
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:59 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web08.9335.1655559892822501760
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UFRotr1i;
 spf=pass (domain: gmail.com, ip: 209.85.210.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id k127so1234924pfd.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lAURO6izP7sThKfR+n0KeH3sl6rCCfauhlzMoFHYbOY=;
        b=UFRotr1iGSMXbcJFoKRk7VXUdGUVkew/i3tNGd7zCxLQ9uKMyST0VVBzS46rRjTUsa
         6zTJWpF8d0ktJYJ/EM96KfBAVhJh/2ASEy1v1sD+U5//r0YpX7gsRXZ45pFVi+lFbl+y
         T14mmyCnw9AL2IsOoSXN2rEC2qbus8w2UGqpqfRKUAeHSDHWdNKj/+GrkjT6FjWTfG/O
         51pwQawFBrEpbNXvIfagiw0HRKlO8H8rg2GBhyR1VoPtUBeVCT4nFNqEr14qZpV63qHe
         dDOmEGNSFP5a1MRdZDoQjuADevURCz4J8OIxSIGBErb1b+roXvq63Exq988uJDYT+Bjb
         Aysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAURO6izP7sThKfR+n0KeH3sl6rCCfauhlzMoFHYbOY=;
        b=eP3uNldw5ev0V94ZoLaWpL8usZoWgrMU3jyPPvYJtuVodk3xNWVj1/U5ZR2I9q0uAH
         jZi+/3PbafD4YsB5PX6/IyjbqYaTTu4eUSAhg+N7b/vjhxacZmsA85VKZk1Z+A6GvC2F
         i1xSEe5Z3GGyGSnthKA9pB516e2XBzzstOnSlZY1kyQ0x75Ah4Z2T/q0bCSNoQFhTKNO
         RTVkv+VQqiCmDNhNACCD+w/pjmBxZ7TGH6kbINN8C3gtPGLeluosUVMUGGa3SpzszDGr
         mdfVBOb/Aozg/tbxDC07v8pF5cHW/D6oQOigOzYbHmFi5qTofFpXzcyZExKR6bGocsts
         IbPw==
X-Gm-Message-State: AJIora+4Zccpvnmqs/j7BD6Zo1qw49tiITzLE5snI2CEgIqp4jQJqbHU
	N4MbFlM2KSQkJIZJ6DS2GJoL9aKP05A=
X-Google-Smtp-Source: 
 AGRyM1sJoqgIRFkvsvo40wWVPazyS2BObHzLAR9swQHGVj/z+QodRZp0iWf+TGtoKDM+S0yIrPgNoA==
X-Received: by 2002:a63:ff19:0:b0:403:7c60:ae96 with SMTP id
 k25-20020a63ff19000000b004037c60ae96mr13160133pgi.466.1655559891922;
        Sat, 18 Jun 2022 06:44:51 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 8/9] aide: add native support for build time db
 creation
Date: Sat, 18 Jun 2022 06:44:34 -0700
Message-Id: <20220618134435.2370878-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57350

This will help create a aide db during build that is
then installed on the rootfs for verification at boot time.

This work was inspired by:
Marco Cavallini
Yocto Project Ambassador

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/aide_0.17.4.bb | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/aide/aide_0.17.4.bb b/recipes-ids/aide/aide_0.17.4.bb
index 87b690d..7ce0729 100644
--- a/recipes-ids/aide/aide_0.17.4.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/aide/aide/releases/download/v${PV}/${BPN}-${PV}.ta
 
 SRC_URI[sha256sum] = "c81505246f3ffc2e76036d43a77212ae82895b5881d9b9e25c1361b1a9b7a846"
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig aide-base
 
 PACKAGECONFIG ??=" mhash zlib e2fsattrs posix capabilities curl \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)} \
@@ -27,10 +27,31 @@ PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2
 PACKAGECONFIG[capabilities] = "--with-capabilities, --without-capabilities, libcap, libcap"
 PACKAGECONFIG[posix] = "--with-posix-acl, --without-posix-acl, acl, acl"
 
+
+do_install[nostamp] = "1"
+
 do_install:append () {
     install -d ${D}${libdir}/${PN}/logs   
     install -d ${D}${sysconfdir}   
     install ${WORKDIR}/aide.conf ${D}${sysconfdir}/
+
+    for dir in ${AIDE_INCLUDE_DIRS}; do
+        echo "${dir} NORMAL" >> ${D}${sysconfdir}/aide.conf
+    done
+    for dir in ${AIDE_SKIP_DIRS}; do
+        echo "!${dir}" >> ${D}${sysconfdir}/aide.conf
+    done
+}
+
+do_install:class-native () {
+    install -d ${STAGING_AIDE_DIR}/bin
+    install -d ${STAGING_AIDE_DIR}/lib/logs
+
+    install ${B}/aide ${STAGING_AIDE_DIR}/bin
+    install ${WORKDIR}/aide.conf ${STAGING_AIDE_DIR}/
+
+    sed -i -s "s:\@\@define DBDIR.*:\@\@define DBDIR ${STAGING_AIDE_DIR}/lib:" ${STAGING_AIDE_DIR}/aide.conf
+    sed -i -e "s:\@\@define LOGDIR.*:\@\@define LOGDIR ${STAGING_AIDE_DIR}/lib/logs:" ${STAGING_AIDE_DIR}/aide.conf
 }
 
 CONF_FILE = "${sysconfdir}/aide.conf"
@@ -38,7 +59,14 @@ CONF_FILE = "${sysconfdir}/aide.conf"
 FILES:${PN} += "${libdir}/${PN} ${sysconfdir}/aide.conf"
 
 pkg_postinst_ontarget:${PN} () {
-    /usr/bin/aide -i
+    if [ ${AIDE_SCAN_POSTINIT} ]; then
+        ${bindir}/aide -i
+    fi
+    if [ ${AIDE_RESCAN_POSTINIT}  && -e ${libdir}/aide/aide.db.gz ]; then
+        ${bindir}/aide -C
+    fi
 }
 
 RDEPENDS:${PN} = "bison libpcre"
+
+BBCLASSEXTEND = "native"
-- 
2.25.1


