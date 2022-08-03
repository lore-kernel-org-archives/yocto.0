Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E343AC19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 15:02:33 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web12.9780.1659538945828264216
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HC6Yq4s8;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id r186so15351587pgr.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=gHOB36FC8mY4lbn5V2wJTpuUXDk2zVX01MEUZPcr7og=;
        b=HC6Yq4s8ojASjj/1v9EurPmhshUqgo6aVX7yr+xkelTreTSpr2Z3iymMHuf6oB+MTO
         dhLVstEHvN+ywp8eXQ0ZnzYTlwBvQFN0/L5nU12aHwk0QKlmAtfyQRuscFeQLSB6ccFa
         +c8Dyj13dKsS7OrtBxLUhsfoYHwbcS/j0w/+9vFttXfAfZ2eVN+mGjDa7GlSCj0uRODw
         RdZiAO0VHIc9Tf2ZMKJL6eva41vsRv8Be2FyMEv/QymtRm58VYxb42vxI+NylUz8um6R
         U9rtcyoTtAC+n2/0LogKNWuvVsZ4XMMnH8oOggqMq8g9fEPgXmjNNtLEXRZ6wAQx6Uad
         yNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gHOB36FC8mY4lbn5V2wJTpuUXDk2zVX01MEUZPcr7og=;
        b=opd1aLD8YQmJPVfaW0AVN4wil/nJWnV9384YAXe/skW2djOhlgF85apnbV8aG/S3Sl
         AEheHeXLe2IPt6ZLcQl8jcciTh4KOO57MZ1CNAqCOwB6+uyl2X6BZmWoNFjv0ReONtlT
         rlt4WooYze9SaTF2fFOgIhBSLiFLpT2erZqIFr+ijHWWfv6ZfmP45mbIlPgfT9Yddt4i
         /6YBdqv5grbuKCRHYMiuduEfWckpUhinD4FG8BRgQeCmMaUGz1HKa28orbJ/gNHKATa0
         6quowkhK0a5XqEQp0Z2pw7IWBFxwdAoeXUZPj6aeEosZ/InHysPsp/bwcYWANtonVkHN
         rG+A==
X-Gm-Message-State: AJIora96oGCpY58ODmFkNUIho0nGgzvvrYnj6YQ0ufNoxr8N0MUwMeMy
	ncBtM+w1MN+jrZNwrwqiNd8Z0UqLvaU=
X-Google-Smtp-Source: 
 AGRyM1tVeRQ4D9NFo9SZ62Y7KKJr6+hbd0+Sjbf4AFj6KaT4JfLUGHijNKGS2NWXMO+sOc+p99CXjQ==
X-Received: by 2002:a63:2b84:0:b0:412:5277:99dc with SMTP id
 r126-20020a632b84000000b00412527799dcmr20895717pgr.208.1659538944850;
        Wed, 03 Aug 2022 08:02:24 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 b8-20020a17090a12c800b001f506009036sm1712720pjg.49.2022.08.03.08.02.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 08:02:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] apparmor: update to 3.0.6
Date: Wed,  3 Aug 2022 08:00:20 -0700
Message-Id: <20220803150020.1321926-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803150020.1321926-1-akuster808@gmail.com>
References: <20220803150020.1321926-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 15:02:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57769

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/{apparmor_3.0.5.bb => apparmor_3.0.6.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.5.bb => apparmor_3.0.6.bb} (100%)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.5.bb b/recipes-mac/AppArmor/apparmor_3.0.6.bb
similarity index 100%
rename from recipes-mac/AppArmor/apparmor_3.0.5.bb
rename to recipes-mac/AppArmor/apparmor_3.0.6.bb
-- 
2.25.1


