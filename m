Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5622C433F5
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:48 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.10105.1651847560739085648
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qwha6ZUE;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id n8so7628629plh.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=dhEy3WubqihVCKfGfhVHFNY323tmoUbv9r1+UE6m348=;
        b=qwha6ZUEGcvrTSjyvmk/moiNiVaz5omemK/ySE2QjaiuGK1CQa81gFt05teneQEygn
         dn+xEUKVd2mJ+IsOLqa5O/BpROrQCeJWWhYHx+jKOp0CEBcthJHHJvMihAxLVcq7TKS8
         pwesnRONocK8+/gohTEz3/We7TKdNADBZY0fL1NOyJbPNSs//XxlnpasNo5OLCV8NAMw
         LhV9ucwVtW5CxWi5LAt+OPPVf/LN7teaKWlHxvdBvUsWtxmWTwx1OI0sqlIQEVcWrnM4
         i6OT+6AzDejLZajfn8YxB9vX7W9TLYJ4DDWaRNn7ayfGgIUtE0mtsOdkE/SghMYpprWI
         /fQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dhEy3WubqihVCKfGfhVHFNY323tmoUbv9r1+UE6m348=;
        b=E0bFrNUtMXNIKiHhw/L/sPlU8odvWwkI9mhDtDPR7e7s5dRmx1Ok6b805afbrKt0jg
         d4Abjicwj9JODY/8ZowiOJlyyQSSX64+AYuTdk3NDdwOCCQeMQ3PXwB9Jufjntq9ARFw
         vaUGbCfxjrXWY+aIUzeyXbAqt7AeL6+mDg5GMeI25TsTqLDjIvoG42wyuXjDkfK84jN/
         RjRZC2ZVHwh+uOceubCX1l/1wUjKAV2i0LcGnyc7MqSW4C/8A99R+6PgF8D9kvXHDGRs
         V886qEbAelstUM1eB4xEMjcRxBV4zAp3RNCVpuyDSUvD6NWda8mfLhk1oxdn67DG71PH
         JvNA==
X-Gm-Message-State: AOAM530gwQJTaBI1DfHgifmmES4jsHCDALYI+yPGvjd3J4ad8p29Omzo
	Y5x0s8bihGlBnh2sxVqIt/V8HnhLMbDxlA==
X-Google-Smtp-Source: 
 ABdhPJxgcGxfh7Ps6JgbrawgpZUrtVRYNpyYdmLZyYt43EPug2emL7BPUeAqi4E3pMGp8s9C+rZZWw==
X-Received: by 2002:a17:902:ccc9:b0:15b:c265:b7a0 with SMTP id
 z9-20020a170902ccc900b0015bc265b7a0mr3972431ple.107.1651847559884;
        Fri, 06 May 2022 07:32:39 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/9] suricata: drop nfnetlink from pkg config
Date: Fri,  6 May 2022 07:32:27 -0700
Message-Id: <20220506143229.2141000-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57018

nfnetlink has a layer dependancy to meta-networking.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_6.0.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/suricata_6.0.4.bb b/recipes-ids/suricata/suricata_6.0.4.bb
index 31244f3..968da21 100644
--- a/recipes-ids/suricata/suricata_6.0.4.bb
+++ b/recipes-ids/suricata/suricata_6.0.4.bb
@@ -121,7 +121,8 @@ CARGO_SRC_DIR = "rust"
 
 B = "${S}"
 
-PACKAGECONFIG ??= "jansson file pcre yaml python pcap cap-ng net nfnetlink nss nspr "
+# nfnetlink has a dependancy to meta-networking
+PACKAGECONFIG ??= "jansson file pcre yaml python pcap cap-ng net nss nspr "
 PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'unittests', '', d)}"
 
 PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
-- 
2.25.1


