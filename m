Return-Path: <jerome.forissier@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 341D4ECAAD2
	for <webhook@archiver.kernel.org>; Mon, 29 Aug 2022 14:05:06 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.70634.1661781901775304909
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 07:05:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=NYnobYih;
 spf=pass (domain: linaro.org, ip: 209.85.221.51,
 mailfrom: jerome.forissier@linaro.org)
Received: by mail-wr1-f51.google.com with SMTP id v16so7606033wrm.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 07:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=o3jV/1oHO3AWOLHyZS9ONHVd2rW5xwfe8qkB2cvkGFY=;
        b=NYnobYihJ155+6e7RoriJsCWsG0b2GsUCD6EnBN2IneulIVQP+0P8Gy5ibAaUljGty
         CaKFfmr6f2pu1GLTS3SdVz+FpH2MjHdxPG5Ae+8leRgmCwvypzfRq+AiIu7hMl69YjbV
         9hOEjJHFYk0G7pgPKP0mLydP/FAPs0eykHpoNgsFyEKna0N77BEyWdiNfYYQnOBKzwQZ
         puUsojPe+f2yPSub1umbGMT/T61BIl+GMp9ltSVARwBZWCzNpk52xKNrDxmVMJhQ3XDv
         Zbw2pOxfKsNczNyuTz21bVUXn02rsTCbWkjXU7iACJmTiK7qPFaI4oKKJPGQZGmVSDC1
         cpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=o3jV/1oHO3AWOLHyZS9ONHVd2rW5xwfe8qkB2cvkGFY=;
        b=QHFiVCEXdJCtIMNN1lLlALS/4VHN1yCYkiw5hQIF+rnjQEH+ecEKWhl/fpQqBJP/as
         XsyJhD/6FNCLrnMybIcJcAnox09G0FmaH7BvC4/w1ruzOwipUBrq2Egs6JTeIeDmeZ9x
         cphSYYmBxB1taBwVNtaHqyok1/xEpDnfBH55FHHw+qiMH7n39n+qx5xr+ICpc7Irsni8
         Tgekaleu/aCus415vGkHHg8v2DkntJZKM9ZVSumfVdHuLDiwbu9Uouq7TqvSyT/VUcBp
         h1j0U2tvYia75DMCRJNm2slOx39WqfATgK++yrZf0m2Y9g6DnL9VWYhSuckaWWR09hEO
         OK8g==
X-Gm-Message-State: ACgBeo2jYhRtSc3huYot25OYCSYp2hvyRXlELBGD8Ib9MhTg4Pa4hv6S
	hUKKqtmXKv3n4aSO6ZuDSmS/vPQh4stSykIE
X-Google-Smtp-Source: 
 AA6agR733si/9iv9xA0rUXDEMUY59RXY3UgdJLR1RFX8EjNwCUWEAX51pxm1b42sM1wkRAJW4FZYKw==
X-Received: by 2002:a5d:678c:0:b0:226:de76:be99 with SMTP id
 v12-20020a5d678c000000b00226de76be99mr1618729wru.428.1661781899875;
        Mon, 29 Aug 2022 07:04:59 -0700 (PDT)
Received: from ava.localdomain (82-64-249-211.subs.proxad.net.
 [82.64.249.211])
        by smtp.gmail.com with ESMTPSA id
 w5-20020a5d4b45000000b00226db764fb5sm3064306wrs.47.2022.08.29.07.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 07:04:59 -0700 (PDT)
From: Jerome Forissier <jerome.forissier@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Jerome Forissier <jerome.forissier@linaro.org>
Subject: [meta-security][PATCH resend] Parsec-service: add parsec user to
 teeclnt group when optee is present
Date: Mon, 29 Aug 2022 14:04:32 +0000
Message-Id: <20220829140432.3169225-1-jerome.forissier@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 14:05:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57934

The optee-client package provides a PKCS#11 interface that may be used by
Parsec with the below configuration. For this to work, the parsec user
needs to be a member of the teeclnt group. Therefore, add it when 'optee'
is present in MACHINE_FEATURES.

 # Provider configuration in /etc/parsec/config.toml
 [[provider]]
 name = "pkcs11-optee"
 provider_type = "Pkcs11"
 key_info_manager = "sqlite-manager"
 library_path = "/usr/lib/libckteec.so.0"

Signed-off-by: Jerome Forissier <jerome.forissier@linaro.org>
---
 .../recipes-parsec/parsec-service/parsec-service_1.0.0.bb        | 1 +
 1 file changed, 1 insertion(+)

This is a resend because a few hours after my initial post I still can't
find it at https://lists.yoctoproject.org/g/yocto/messages. I am now
subscribed to the list so hopefully it will help (although
https://git.yoctoproject.org/meta-security/tree/README doesn't mention
subscription).

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
index ad7e560..ea2b0c9 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
@@ -68,6 +68,7 @@ USERADD_PACKAGES = "${PN}"
 USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
 GROUPADD_PARAM:${PN} = "-r parsec"
 GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'tpm-provider', '-a parsec -g tss', '', d)}"
+GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('MACHINE_FEATURES', 'optee', '-a parsec -g teeclnt', '', d)}"
 
 FILES:${PN} += " \
     ${sysconfdir}/parsec/config.toml \
-- 
2.34.1


