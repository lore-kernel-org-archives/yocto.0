Return-Path: <max.oss.09@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FE81C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 12:32:10 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.100782.1674822727008192196
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 04:32:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bIArfK9X;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: max.oss.09@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id mg12so13315219ejc.5
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 04:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/vQgK11mcljGT66VOaN9NQqdUprCptDjj1fhGxLSjxw=;
        b=bIArfK9X0QEzXk9q6Jq1n97OG5i/+qD5di3cJd8G5LP2Pl130YG34yb1eXGuXCv9uk
         0knpYQDLLsh/pO2WcGQ6eWg8OlMvKZtE2k5JGiN6LXs0KSozAl4EtqNEm2NpSV5p633Y
         lhupwX6Sp4YZF3C0WUG4+Ox+G0y3ka9aZeJz5FtOHWckHSzxlGUyMEqG0nx7bXyOy6zE
         z8qeM8Rrg+s5gYa+xI0A8DRGuQGA7aSINC3uKtpRKIHRLo+6tndo+urKFnSYm36bM+Us
         dv+qt3TO93veMzKHauFyD+TvcnUn47PZYFcLRG7QSOwYlgRd9BXDFEgqibY/OTLUQ5hZ
         Lxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/vQgK11mcljGT66VOaN9NQqdUprCptDjj1fhGxLSjxw=;
        b=dD3+D/4MRNgD16AdEqsHZKluSE0HybnF2AQAClRs2ok7P2w9Otf8m10blOuoXNjKkt
         arC33+1gJS37fw/Ljcs0w8N3lCsMYgQnznzk6dKAZXFo9nAIQEw07fQxYE2rKhv+jvRz
         1nUB9n8YRhyJFCn9iWkkOtB5NH/wMHjfYRc+i3JgBSqawGtqNVherPkpU6ctkqVRqTzB
         e6Depxw1GpyE1CeMppWfojuFzIKRvP4RFe/Otvv6GtYcmWKEXCej3ema2julGHBKDHnb
         bF/WnYxi6Qcj6yklclUz/CMHBinQhEexZF5G3ohFYrnNKtQrYPSrIbXeWgf9fQlG8W5k
         VtSg==
X-Gm-Message-State: AO0yUKWPpl+faxR1/pTdnxijBiEgrXQ62rmxdVw5V2g1oB+YWfWwELET
	ThYOl38v4OJN8jsv70iL55QBzzZ87dE=
X-Google-Smtp-Source: AK7set8yaEP1CYLhxgwPhwWiKWnYJiwLjxqovqGQgxfkOcx0If7M7eFgA2nUKsYDDKMfZK78fyX7wg==
X-Received: by 2002:a17:906:eca1:b0:87e:a34b:9e2b with SMTP id qh1-20020a170906eca100b0087ea34b9e2bmr789ejb.28.1674822725289;
        Fri, 27 Jan 2023 04:32:05 -0800 (PST)
Received: from linuxdev2.toradex.int (31-10-206-125.static.upc.ch. [31.10.206.125])
        by smtp.gmail.com with ESMTPSA id e24-20020a17090681d800b0087bda70d3efsm656202ejx.118.2023.01.27.04.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 04:32:04 -0800 (PST)
From: Max Krummenacher <max.oss.09@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [meta-security][PATCH] samhain: rework due to changed cache handling
Date: Fri, 27 Jan 2023 13:30:47 +0100
Message-Id: <20230127123047.207925-2-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230127123047.207925-1-max.oss.09@gmail.com>
References: <20230127123047.207925-1-max.oss.09@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59081

From: Max Krummenacher <max.krummenacher@toradex.com>

OE-Core changed the cache handling which made the use of ${BPN} no fail.

| Parsing recipes...WARNING: .../samhain-standalone.bb: Exception during build_dependencies for do_configure
| WARNING: .../samhain-standalone.bb: Error during finalise of .../samhain-standalone.bb
| ERROR: ExpansionError during parsing .../samhain-standalone.bb
| Traceback (most recent call last):
|   File "Var <MODE_NAME>", line 1, in <module>
| bb.data_smart.ExpansionError: Failure expanding variable MODE_NAME, expression was ${@d.getVar('BPN').split('-')[1]} which triggered exception IndexError: list index out of range
| The variable dependency chain for the failure is: MODE_NAME -> SAMHAIN_MODE -> do_configure

Simplify the setting of MODE_NAME and SAMHAIN_MODE by setting them
in the recipe files where we know their values.

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


