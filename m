Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7809C433EF
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:48 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.10231.1651847559510214500
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jfMm3fdJ;
 spf=pass (domain: gmail.com, ip: 209.85.216.49,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 j8-20020a17090a060800b001cd4fb60dccso7034941pjj.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=856etXSCf/sps7SS4yj3OGX2UitH+rA3Ov1LuPzGEEg=;
        b=jfMm3fdJbAz9kwa7mtZr9YDZ+lUchAx8ZJWR0XZu7k2Bco6YayZr5ghqzbobZTqi0t
         UtsgYDCKtsRnUAUWhDym7YCAKBAvJvr+9Fs/fcvDPZrmMuEFOyKZRAxitIxSeYATdrij
         84g0yQ8Nvju+GBXrwhmAUegWCitdWEf5kdp0XZoNYwvxmFL0eVWR5uHVI8N4AqWpDNJt
         7UKoM6SrS+54ELzklX7YrjbxRefdPxxRLQ1vfw2yKxPnfFmkL9zuNMUOujIP/GymGI92
         honHnasGi2HyhwJ3jisy2QPp969p+6LzZDGxbNfZOTzdA2RE4YII5XMdacims0BiUCf4
         7YuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=856etXSCf/sps7SS4yj3OGX2UitH+rA3Ov1LuPzGEEg=;
        b=l3igERieIiydkvyjIWuHXonS3Iji5FDcpGGMfjxuJcUtD1mbUn3hi6QYzYFda7XifN
         wCdYqPsb8DYS8s3E5fqMv0Z+d2HtyqC71EJ7KovbfWt7LF4FwpksDFbHmBCmx76kSP21
         jA8DvfuOs1M8GHBYS9h8v9EcpBJ2OaC3jfDKL8oQRcj/RZzTPzUUhXl4PRvi67toF3zA
         JN8cAFmENmJC7meDX3wjPctdi2BcH2Gqh5lYKCryKww+/AeHDOo80PdqOl6RbEfYzJ0I
         Q962tjjVwFeyM7xgZnvZFkpbP4DNhGNNOIBltgBYIfeFgVNSty7kax7yZ73AbM0nTpLU
         kzAg==
X-Gm-Message-State: AOAM530C2V5PB3ydpmVzKid7z7RjX11zVsK76+m2ago80iSsrdp83Mar
	tP1d4XgxTNGmoQrEoeBhUsqpE+ooy6qXAA==
X-Google-Smtp-Source: 
 ABdhPJxXkiawXeY1iOo9wKNyYdeOVtofb3yzZ7Csj06et5AW4mNyYDawXWI7biNGDjHjr+4DcHQuhQ==
X-Received: by 2002:a17:902:8501:b0:15c:ea4b:1398 with SMTP id
 bj1-20020a170902850100b0015cea4b1398mr3987553plb.109.1651847558704;
        Fri, 06 May 2022 07:32:38 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/9] arpwatch: add postfix to pkg config
Date: Fri,  6 May 2022 07:32:26 -0700
Message-Id: <20220506143229.2141000-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57017

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/arpwatch/arpwatch_3.1.bb | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.1.bb b/recipes-scanners/arpwatch/arpwatch_3.1.bb
index c152b8c..c8d31cf 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.1.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.1.bb
@@ -3,7 +3,7 @@ LICENSE = "BSD-4-Clause"
 HOME_PAGE = "http://ee.lbl.gov/"
 LIC_FILES_CHKSUM = "file://configure;md5=74ca964ed34fda7b46c6fe3e50bded9d"
 
-DEPENDS += "libpcap postfix"
+DEPENDS += "libpcap"
 
 SRC_URI = "https://ee.lbl.gov/downloads/arpwatch/${BP}.tar.gz \
            file://arpwatch.conf \
@@ -21,7 +21,11 @@ ARPWATCH_GID ?= "arpwatch"
 APRWATCH_FROM ?= "root "
 ARPWATH_REPLY ?= "${ARPWATCH_UID}"
 
-EXTRA_OECONF = " --srcdir=${S} --with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}"
+PACKAGECONFIG ??= ""
+
+PACKACONFIG[email] = "-with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}, , postfix, postfix postfix-cfg"
+
+EXTRA_OECONF:append = " --srcdir=${S}"
 
 CONFIGUREOPTS = " --build=${BUILD_SYS} \
           --host=${HOST_SYS} \
@@ -76,4 +80,4 @@ CONFFILE_FILES = "${sysconfdir}/${PN}.conf"
 FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
                ${sysconfdir} /var/lib/arpwatch"
 
-RDEPENDS:${PN} = "libpcap postfix postfix-cfg"
+RDEPENDS:${PN} = "libpcap"
-- 
2.25.1


