Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A917FC77B7A
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 10:15:14 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.5271.1684923308333195955
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 03:15:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Y7HzoElC;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-30a1fdde3d6so578729f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 03:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684923306; x=1687515306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uGps5ZlXrpTpnSL0xaIUdSI4GloCldHduYdDcYEHBGE=;
        b=Y7HzoElCWL4fZ+4uz8qWhOLbTjeyE4Ao3z1dQ+gcyufUnTN0ZWRwewolPoWysj/6U/
         7j6NC9SwheLHNPorL5Sokq7/736q7ULjdbWhYxUvScarFxQYJE/a8qe5zOXjhvuAKkkh
         O5YbuS9vQnt6mk0VAfhq0xje/2D/AtsWOCv0ea3B5IwFaNSV8/ZdBCQqNu0CmYuzz2kt
         lUb0hvYi15wAmCaK1BqdjZLe0dgKUQzm2ThcjOTb2hn1+HbZu6kkS5bNlY4QknoUizUz
         n0LerndXiXyP6NCAQM7iCHC3IAjTCfHdYbbyX9+6HRAjPsl3VrBsKSJEv5FgdZC/fTWj
         qxhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684923306; x=1687515306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uGps5ZlXrpTpnSL0xaIUdSI4GloCldHduYdDcYEHBGE=;
        b=lwElGT/L2Oh04J1pZSrOW1+kbRCb3M08DEJAR4UIUPzxmsJdRVtskKGvT+AqwvrsON
         ou1WxJgPMmFAlB9J5qI+ntZ8X5yFjt2ulutN+VZtqDom9Y6bG3x0UEt8HZvGg4WbS6c0
         DTBaw7PgHAWMq2vSqIPtzTiIURfmNbNyQdEZpVKOnqGdMkbLGjSSVkebC/meSoNmYK96
         zhwta4xiSb8ljNQ/itJRxITKQvKnNldsCA8JPJvdNWdpGMgYCd3J2mGp+qMDt9EmAqYI
         fEblVk024QTOAfrnrKpzhlfQs5w2JJ37eMSLWoImD9jKb+LDJ5oQP5JW/fhZZVy7m107
         +eAQ==
X-Gm-Message-State: AC+VfDwIFDbhshgGdo6M6bjW+5wuiAClfPNy+mLAH33N9Fv8AHhcJLDq
	pZc1TInrdoQ+XbK9v4Uo/8eyPkUxKd0=
X-Google-Smtp-Source: ACHHUZ4tzW/g835wmgdp1cMysS92pMbw364cy2QZXraxp6Scq6MSRVnUdXBbRcaF8ENQWIN8s9wgyg==
X-Received: by 2002:adf:f5d2:0:b0:306:2db9:cc26 with SMTP id k18-20020adff5d2000000b003062db9cc26mr12900391wrp.25.1684923306094;
        Wed, 24 May 2023 03:15:06 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id e16-20020a5d5950000000b003077a19cf75sm13960743wri.60.2023.05.24.03.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 03:15:05 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH] integrity: linux-yocto: remove extra space in checkvalues
Date: Wed, 24 May 2023 10:14:46 +0000
Message-Id: <20230524101446.2981208-1-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 10:15:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60107

The contains_any can evaluate the checkvalues correctly because it split
the string to a set but the extra space is not need in this case.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend b/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
index be60bfe..705eb30 100644
--- a/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', 'linux_ima.inc', '', d)}
+require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity', 'linux_ima.inc', '', d)}
-- 
2.34.1


