Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA60C433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 13:25:45 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.5401.1636118744844307702
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Juyd3/vJ;
 spf=pass (domain: gmail.com, ip: 209.85.215.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id r28so8409944pga.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2s7IbAtrsg0sLkyp5gySDCoFRl2/swcqAWYLo36BhwM=;
        b=Juyd3/vJr0zcFlz9G3J44Zil08MeWCu6Fa/q7aflCjyEQIGr4mj3UQ79+i1PCdkUb/
         NVJlSGZTmmpvF+C9awJaneqhmknSR//K/ejQ4MB8B7+Xe/M7Q4PCFQMP1ZXYNwRNbgn5
         dJn4Tw0YDX0QINgzp5yUJdw4wMmm37rlB3MkZFkJg6oatV7qKsMmLixEDQoDj1OIU3kj
         RFIAnig5VbVUFEQVXAVonDUB6tUNNUuhVF8SyS6xETCkwDn2UullaO3eC8bOWRLgqJ+m
         daAIk/y/1K1hrzAuomXSmPNknfyyMCIvSCmMdterleSc0Etanwno683zAr0zAflTxiYU
         6Kbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2s7IbAtrsg0sLkyp5gySDCoFRl2/swcqAWYLo36BhwM=;
        b=c9Zqf8CezjqBts1WGdt15rmKeaXoZpQzk3rY5uaS+WlLL7iwNSbaYFXsxfSuIhQNsY
         qdIpEENQU9q/2yimf3cYzbqMxnftK0bazDuOeDG/hJi6rgwX79pllL/+AdkLuabk8ThN
         M02QuA9wz4r6Mb4qJ/1uWkbBmEwcQ7AiCBpOJl92qDLTpxHCYjctMLdKOhYQAnCOXC7u
         cpUXi5Vlz0mq+Z0oqwGRguihcb4CZQKgaUoRrx2HLTdYbRMegV4MDR8xLG5mY8YwCj0Z
         6li7PtVJkGrg7G/JMgOBfPxWWeIq6UF9+lAH9GDZTVugGc3dBydDsRQFHYpLSdrqh5mk
         DK0w==
X-Gm-Message-State: AOAM533VF7piIoUMBHxaTBM4Mce2dz6NJXklaRq1AopCp0MFvJFvQ38J
	bEcJBE+as1uXtZ+RLCAMR+9v6PK5s24=
X-Google-Smtp-Source: 
 ABdhPJzOPuafsgq8SqxZNOs5aKM5FDV1hKgSfe/1S9E8z0InvDEpaBBsx5HYSc5G3W6W74JFM7MGsw==
X-Received: by 2002:a63:7512:: with SMTP id q18mr1813789pgc.418.1636118744059;
        Fri, 05 Nov 2021 06:25:44 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:1036:3e93:cc4e:1fe7])
        by smtp.gmail.com with ESMTPSA id
 s30sm8133126pfg.17.2021.11.05.06.25.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 06:25:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] sssd: Create /var/log/sssd in runtime
Date: Fri,  5 Nov 2021 06:25:40 -0700
Message-Id: <20211105132542.723232-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 13:25:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55247

/var/log is normally a link to /var/volatile/log and /var/volatile is a
tmpfs mount. So anything created in /var/log will not be available when
the tmpfs is mounted.

[Thanks to Peter Kjellerstedt for example]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/sssd_2.5.2.bb | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index ed8af5e..8bc8787 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -86,13 +86,23 @@ do_install () {
     rmdir --ignore-fail-on-non-empty "${D}/${bindir}"
     install -d ${D}/${sysconfdir}/${BPN}
     install -m 600 ${WORKDIR}/${BPN}.conf ${D}/${sysconfdir}/${BPN}
-    install -D -m 644 ${WORKDIR}/volatiles.99_sssd ${D}/${sysconfdir}/default/volatiles/99_sssd
+
+    # /var/log/sssd needs to be created in runtime. Use rmdir to catch if
+    # upstream stops creating /var/log/sssd, or adds something else in
+    # /var/log.
+    rmdir ${D}${localstatedir}/log/${BPN} ${D}${localstatedir}/log
+    rmdir --ignore-fail-on-non-empty ${D}${localstatedir}
 
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${sysconfdir}/tmpfiles.d
         echo "d /var/log/sssd 0750 - - - -" > ${D}${sysconfdir}/tmpfiles.d/sss.conf
     fi
 
+    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'sysvinit', d)}" ]; then
+        install -d ${D}${sysconfdir}/default/volatiles
+        echo "d ${SSSD_UID}:${SSSD_GID} 0755 ${localstatedir}/log/${BPN} none" > ${D}${sysconfdir}/default/volatiles/99_${BPN}
+    fi
+
     # Remove /run as it is created on startup
     rm -rf ${D}/run
 
@@ -106,6 +116,8 @@ fi
     chown ${SSSD_UID}:${SSSD_GID} ${sysconfdir}/${BPN}/${BPN}.conf
 }
 
+FILES:${PN} += "${nonarch_libdir}/tmpfiles.d"
+
 CONFFILES:${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
 
 INITSCRIPT_NAME = "sssd"
-- 
2.25.1


