Return-Path: <max.oss.09@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FECDC61DA4
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 12:32:10 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.100825.1674822726336802197
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 04:32:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B4hpJNt4;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: max.oss.09@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id gs13so2585062ejc.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 04:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jP7fJfm23rdrDIvbO51p4w/QlMU2PEGglRL39vp8J+s=;
        b=B4hpJNt4cvkpOG1u3BH4hzZP1y1X+1XdY68NOoE32UgqebaWVE5WUWXr3oAYjVsuPN
         tVAhqV4w9NvTw4hY+VdMg6kwSOEbof9jmgaQ5TyZCEATvayrIlGSkR+rPVJ3Z3hXprz0
         Kk6WEptCcMqrFoK1Mq0wLjbTAJlJrGT3wGpP0Y29luVIMJjXVljlBBvYCJmyjS0waPch
         Wt20WV4jOYcZhhBt/7Ne62ZaHRINs3YEJeSbQho+Z30ELtxbUSN8hiD+dZ3TE2FlioGO
         hpu5oIjoh5khHKo5r1Z1DjJIkr857sXEK4RxtMI0fX+OzTd214+7BdRIm5csTxY5ki6F
         PO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jP7fJfm23rdrDIvbO51p4w/QlMU2PEGglRL39vp8J+s=;
        b=J+ls+pRR2ZWucCTByhLLzmUWnQTQPDPPRGx5ke0bpl3//FETX1B5DF9p53M5Ni8DpM
         /jIYyrph1wQTadODBKlkWgdIMPmdU17Vmstg4fwnb1SHlDhboXvYcj8X+3DH+PFeMX37
         y8scchCe+dgfqgfpYS/7heRcCXJwRV74a7Gju2pfZi4N7fsNWcGX5797GZ6Vh8LJ44O9
         wUfIqoio5X2IXoIAhBsRO15Io/b0zMNQO9jG5Hrnk/9ZG09ZJNHNhQ5VjcjRysIA5tgw
         betyTIG4gv+SvtaB2NmMYEh8uDxgIzNFhfuj4MVvQ9RxKIRKvmUV94ntRNHoTMR5YQs0
         Q4TQ==
X-Gm-Message-State: AFqh2kpIY6w9/bSt3ObCLbo4VnenWmPpACv4oopd5eAYc9AAPIzfBhBf
	FKF0za9G8YhI+ri3QlHg4d6hPQ5a7rE=
X-Google-Smtp-Source: AMrXdXsvEwKU84JTTZVb75uYzun6X0mIFGKGhODS42rKvvRjr6hXHFsiEPdXidKc0E8FSGQmXRm8xw==
X-Received: by 2002:a17:906:5283:b0:84d:4be4:aa2b with SMTP id c3-20020a170906528300b0084d4be4aa2bmr52775821ejm.68.1674822724488;
        Fri, 27 Jan 2023 04:32:04 -0800 (PST)
Received: from linuxdev2.toradex.int (31-10-206-125.static.upc.ch. [31.10.206.125])
        by smtp.gmail.com with ESMTPSA id e24-20020a17090681d800b0087bda70d3efsm656202ejx.118.2023.01.27.04.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 04:32:04 -0800 (PST)
From: Max Krummenacher <max.oss.09@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH] samhain: rework due to changed oe cache handling
Date: Fri, 27 Jan 2023 13:30:46 +0100
Message-Id: <20230127123047.207925-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59080

From: Max Krummenacher <max.krummenacher@toradex.com>

OE-Core changed the cache handling which made the use of ${BPN} fail.

| Parsing recipes...WARNING: .../samhain-standalone.bb: Exception during build_dependencies for do_configure
| WARNING: .../samhain-standalone.bb: Error during finalise of .../samhain-standalone.bb
| ERROR: ExpansionError during parsing .../samhain-standalone.bb
| Traceback (most recent call last):
|   File "Var <MODE_NAME>", line 1, in <module>
| bb.data_smart.ExpansionError: Failure expanding variable MODE_NAME, expression was ${@d.getVar('BPN').split('-')[1]} which triggered exception IndexError: list index out of range
| The variable dependency chain for the failure is: MODE_NAME -> SAMHAIN_MODE -> do_configure

Simplify the setting of MODE_NAME and SAMHAIN_MODE by moving them from
the inc file to the recipe files where we know their values.

Relevant commits to produce the error:
bitbake:
ee89ade5 cache/codeparser: Switch to a new BB_CACHEDIR variable for cache location
oe-core:
7c15e03dd3 bitbake.conf: Add BB_HASH_CODEPARSER_VALS

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---
 recipes-ids/samhain/samhain-client.bb     | 3 +++
 recipes-ids/samhain/samhain-server.bb     | 3 +++
 recipes-ids/samhain/samhain-standalone.bb | 3 +++
 recipes-ids/samhain/samhain.inc           | 8 --------
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/recipes-ids/samhain/samhain-client.bb b/recipes-ids/samhain/samhain-client.bb
index 2b99e20..0de9c34 100644
--- a/recipes-ids/samhain/samhain-client.bb
+++ b/recipes-ids/samhain/samhain-client.bb
@@ -8,5 +8,8 @@ EXTRA_OECONF += " \
         --with-port=${SAMHAIN_PORT} \
         "
 
+MODE_NAME = "client"
+SAMHAIN_MODE = "client"
+
 RDEPENDS:${PN} = "acl zlib attr bash"
 RCONFLICTS:${PN} = "samhain-standalone"
diff --git a/recipes-ids/samhain/samhain-server.bb b/recipes-ids/samhain/samhain-server.bb
index 51bce07..8bae2d2 100644
--- a/recipes-ids/samhain/samhain-server.bb
+++ b/recipes-ids/samhain/samhain-server.bb
@@ -8,6 +8,9 @@ SRC_URI += "file://samhain-server-volatiles \
             file://samhain-server-volatiles.conf \
            "
 
+MODE_NAME = "server"
+SAMHAIN_MODE = "server"
+
 TARGET_CC_ARCH += "${LDFLAGS}"
 
 do_install:append() {
diff --git a/recipes-ids/samhain/samhain-standalone.bb b/recipes-ids/samhain/samhain-standalone.bb
index b832dc8..ae9ed2b 100644
--- a/recipes-ids/samhain/samhain-standalone.bb
+++ b/recipes-ids/samhain/samhain-standalone.bb
@@ -7,6 +7,9 @@ SRC_URI += "file://samhain-not-run-ptest-on-host.patch \
 
 PROVIDES += "samhain"
 
+MODE_NAME = "standalone"
+SAMHAIN_MODE = "no"
+
 SYSTEMD_SERVICE:${PN} = "samhain.service"
 
 inherit ptest
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index eb8592d..8967d72 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -40,14 +40,6 @@ SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE:${PN} = "${INITSCRIPT_NAME}.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-# mode mapping:
-# BPN                MODE_NAME   SAMHAIN_MODE
-# samhain-standalone standalone  no
-# samhain-client     client      client
-# samhain-server     server      server
-MODE_NAME = "${@d.getVar('BPN').split('-')[1]}"
-SAMHAIN_MODE = "${@oe.utils.ifelse(d.getVar('MODE_NAME') == 'standalone', 'no', '${MODE_NAME}')}"
-
 # supports mysql|postgresql|oracle|odbc but postgresql is the only one available
 
 PACKAGECONFIG ??= "postgresql ps \
-- 
2.35.3


