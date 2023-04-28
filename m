Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 041D0C77B7C
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 10:34:08 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.16131.1682678046641901110
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 03:34:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=sCSIR1Lq;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-b99f0a0052fso7220130276.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 03:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682678045; x=1685270045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/6WNz/7YgfHsLb/OxtHMJMwTTGi2R0ts/tPkhz0+Kk=;
        b=sCSIR1LqDTWc9TLFMhcOHOFch+cEb916GUGbu721LwnNcDmCnprVHk/Yu8KUIWYpyd
         tC7Ua+97xFluuqrUBC/V4McrNh2m7+cYifvl8Wm4fanvbwJxPP0sSsnPH4du+PW7nl+/
         qeq4nZ+YgfgMdbQfFiQaltwV65lpkz4H+vzygM6AqVCaxQYMzodGHlxC2bkW0M4sRkqy
         tzF2N6RTuxHsU8ArJ9wYzdNPMsLgxSHvCt4juEwOfbMsbT3ontUtFY6rWt62DxZ6cl8t
         sp2rY81ORcfNLJUyif/b1FKfx41sLlVGsLygvlJ/v2dMPEULOJsC3bFP/Meo6T8IcLpd
         LJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682678045; x=1685270045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/6WNz/7YgfHsLb/OxtHMJMwTTGi2R0ts/tPkhz0+Kk=;
        b=eL7p+O6/7A6Rjyd9qGggKyu5sqIla6I3MCUB/QcKBKiW8/Veh/Rbsb/pij85VN/ptI
         r0j2qIiDEi2/v4QOhuW0K0sQKic/eigWzaGzrm09Iircp0tCAuBPDcVrG8+SXmmLcqhl
         bbFlnTnrfbNxEUKz3tuLqkQl/FVNWUL2F2L+/zc+39uKOz/J8JkLXzxyii4bb3lTBwEU
         fC/k2kJe0nd5gDMHyHiYqZOoH/kgGWiFimAxvOMLnP6pzoZnNXQOzyR9XdDrouTC8AHV
         Vaxh98uUcAUvidJvIKFlRQmajKTpo+Gz/Gs621f7pHryXKUuP5AuB1yLs/wD2uCRrkvQ
         HkWg==
X-Gm-Message-State: AC+VfDx9WhKbAqpGBz5t4SQnNQO6bDyMRihCVCQ1Wnoqv4/wR2GFzctO
	ucTJQoUgOvUz49pDF3dAUr0jh4zcOoQ=
X-Google-Smtp-Source: ACHHUZ5RGEzRVTXZ22xd3UcJG4rIhgfXNpg0VRj8HKFz0thgwdK/xA8VnPc2+99KFt22VDLZ3AsMIg==
X-Received: by 2002:a25:ad03:0:b0:b9a:6c5c:82f7 with SMTP id y3-20020a25ad03000000b00b9a6c5c82f7mr3890375ybi.18.1682678045614;
        Fri, 28 Apr 2023 03:34:05 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:8746:fc43:c0f0:c757])
        by smtp.gmail.com with ESMTPSA id b124-20020a0dd982000000b0054f6f2d291dsm5414129ywe.34.2023.04.28.03.34.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 03:34:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] libhtp: update to 0.5.43
Date: Fri, 28 Apr 2023 06:34:00 -0400
Message-Id: <20230428103402.1022697-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230428103402.1022697-1-akuster808@gmail.com>
References: <20230428103402.1022697-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 10:34:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59792

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.42.bb => libhtp_0.5.43.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/suricata/{libhtp_0.5.42.bb => libhtp_0.5.43.bb} (91%)

diff --git a/recipes-ids/suricata/libhtp_0.5.42.bb b/recipes-ids/suricata/libhtp_0.5.43.bb
similarity index 91%
rename from recipes-ids/suricata/libhtp_0.5.42.bb
rename to recipes-ids/suricata/libhtp_0.5.43.bb
index e2866c8..5825419 100644
--- a/recipes-ids/suricata/libhtp_0.5.42.bb
+++ b/recipes-ids/suricata/libhtp_0.5.43.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=596ab7963a1a0e5198e5a1c4aa621843"
 
 SRC_URI = "git://github.com/OISF/libhtp.git;protocol=https;branch=0.5.x"
-SRCREV = "b14f81bfddbc7206ea713177fcf1e1090257dcd2"
+SRCREV = "be0063a6138f795fc1af76cc5340bcb11d3b0b87"
 
 DEPENDS = "zlib"
 
-- 
2.25.1


