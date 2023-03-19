Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 426DEC76196
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 00:40:58 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.9188.1679186448891114536
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 17:40:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mQxenr8V;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id t13so5744337qvn.2
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679186448;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ8RRvl0ahis5L4RnRC3G2xiED98KLqeCLOEX0idoBA=;
        b=mQxenr8Vo5300/MNTl1uuoXsh3UmuCxleyl97e7qijQ8xSAbRfZyUaLA11SGQNuvPc
         tgjyqUP+oCTi1JGSwP1ZB03jmJgYQoI0agcjZcK10nt/RQiz8mYdXnSyi1J3pqqTbZB4
         Y7WyWyFBYKJ6ucf1V75Tckno92ff15WhjXyDvIK76PPkjWxtB38YZJwiRLQ4hde40JCj
         95i92VBX5oWjMKPByJ2ENCILW4iGvRlDnfvpN1rGBN07gfM2NmSGvNA7qthMaYRafe7j
         Vdf5Skf/KtuIbk6+qSknpt7PA3eVtp6xgtpx2It7xzkXOXlnUQcwRuSgwLk2MhYoaCiD
         FmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679186448;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OZ8RRvl0ahis5L4RnRC3G2xiED98KLqeCLOEX0idoBA=;
        b=d9tRpEEs7BEFwg1+MvC17MsSBr65R8HDF56FaA+cVK7rkSsrFO0DsPRQb1I3xZBghc
         r/8vF27eFy+KnmHmA8bcoZyO4uwBQgMWmtMCNujJttvy/bh2yNRPPjeb2+/usxXAERaa
         hDqsHDXRe4bKmDQQyzp8G/L6JDjbWbku/wR4W+jkaI+7tJr48R0MaYvZJndlmoRmntbo
         lh2PK6YpUgCXJXxQn/MN00Efuntj7E1iPGTxQgsuJef/p6alwVgd11kJ2qu5S3LhtUoy
         PEu2aUIRVs4bEbzwpmyrt+HRe7MJTKpiv6xDyN2q+sfFGOYnCSpVcImxsMMeDalyJIku
         6rtw==
X-Gm-Message-State: AO0yUKXklmqqPXG4mial5DYjNc1XgWsG9G556I7FkmP4rHF+dtHO1fXT
	C/rB1xO5VCdYsFmMRPgn3MFzOmq/tv4=
X-Google-Smtp-Source: AK7set+p951aT6H+6FfZk041yAKU/+0gi+YH/36ESg/uiaNjnMmD6Bv7jDeao0yo5U54a9T7yW6kAw==
X-Received: by 2002:ad4:574a:0:b0:56e:b16d:ec93 with SMTP id q10-20020ad4574a000000b0056eb16dec93mr52907302qvx.4.1679186447752;
        Sat, 18 Mar 2023 17:40:47 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id s10-20020a05620a16aa00b0074341cb30d0sm4454600qkj.62.2023.03.18.17.40.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 17:40:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] suricata: update to 6.0.10
Date: Sat, 18 Mar 2023 20:40:43 -0400
Message-Id: <20230319004046.620053-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 00:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59463

fixup another python file to use py3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{suricata_6.0.6.bb => suricata_6.0.10.bb} | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
 rename recipes-ids/suricata/{suricata_6.0.6.bb => suricata_6.0.10.bb} (97%)

diff --git a/recipes-ids/suricata/suricata_6.0.6.bb b/recipes-ids/suricata/suricata_6.0.10.bb
similarity index 97%
rename from recipes-ids/suricata/suricata_6.0.6.bb
rename to recipes-ids/suricata/suricata_6.0.10.bb
index ce9aca8..0422ead 100644
--- a/recipes-ids/suricata/suricata_6.0.6.bb
+++ b/recipes-ids/suricata/suricata_6.0.10.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
-SRC_URI[sha256sum] = "00173634fa76aee636e38a90b1c02616c903e42173107d47b4114960b5fbe839"
+SRC_URI[sha256sum] = "59bfd1bf5d9c1596226fa4815bf76643ce59698866c107a26269c481f125c4d7"
 
 DEPENDS = "lz4 libhtp"
 
@@ -190,6 +190,7 @@ do_install () {
 
     sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${bindir}/suricatasc
     sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${bindir}/suricatactl
+    sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${libdir}/suricata/python/suricata/sc/suricatasc.py
 }
 
 pkg_postinst_ontarget:${PN} () {
-- 
2.25.1


