Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75D8C43334
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 05:20:26 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web12.6572.1655529616472345100
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jun 2022 22:20:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HRFMd5pt;
 spf=pass (domain: gmail.com, ip: 209.85.128.53,
 mailfrom: fede.evol@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id
 m16-20020a7bca50000000b0039c8a224c95so3245680wml.2;
        Fri, 17 Jun 2022 22:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5YSKHF1CEBbWC0HDxnFtpucmlUsDBhf/dWmAo8zQpSM=;
        b=HRFMd5ptWp0/uaN8LK4KkdnC9Aco5laXfH8tzuS2oqmzGzSbpesQlKZuUOpuXzf6m0
         b17Iy2ctYdWwC564I4Du5zUHhqa9y+DBGpTWL1cfwDtPQT/0rG24Dq2elnXNuY10+msu
         sQSuumkaK7kCBVjvbdnhYx72nbnpG39QJy6OOX4aAvuFykz3b04BZMa+UPA4t1jKGmgQ
         bpf5bbHZEyhAg1K3VvxHH6Y8PjkYXyiFyeF6nPnO6v38PQLCNB27mTSWczbyq8MpHCnq
         pqxhAmdIbdkRJ6gCJKIxFymGAspLy418ybcQgTjwkzK8wgGmij8wZF+3DqE6qJSjB/2y
         VJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=5YSKHF1CEBbWC0HDxnFtpucmlUsDBhf/dWmAo8zQpSM=;
        b=qXZR+3Q+G/M/QxDaZSxUgYqiakm0u+dpZjsUwEJb7BHW6TAjn/sfHggVR9oVOPAWe0
         c8iFboEhm80rRzeLGKl5c8Gsha7lV+UiJJQBQkx/6YS21aLBA2XCJigF9X0FTSCqrZPm
         Zw6phM2OD12e9Fld/uEePU6e7rNwh1k97gI/rm9OleIyG0R5utaj6LXOm3K7MVTP11XL
         JLcD/kX+vrM5qjksyeaK/swFGaoz8zAVaWLxWw5ttZhPAFrRQBn2T+9K7ipzQFqLwIfL
         dJjwehcrQAKQDYIxDQA0eQMeW4fH1XJ+wKPNx16vmQex3WOQwmlf6qcXR9S1uf5LLaVg
         2zyQ==
X-Gm-Message-State: AJIora/w00eCsPsj35EqVoLLSs2zLKPf6CwKxoA84flgKQ1lrY+JqvV2
	4MmR637vr7KPny/B6No/0qlzxC3yxrMKtg==
X-Google-Smtp-Source: 
 AGRyM1vCIDp4OOMHqArG0aurfDmvSC/lTtmfMhyyJSDU8bnrzyZWqxB02qo+SIvKTrTYtSCJR8N9fQ==
X-Received: by 2002:a7b:cd84:0:b0:39c:3620:301c with SMTP id
 y4-20020a7bcd84000000b0039c3620301cmr13322599wmj.19.1655529614775;
        Fri, 17 Jun 2022 22:20:14 -0700 (PDT)
Received: from interzone.fritz.box ([2a02:2455:e62:5a00:cd58:9e10:e01f:52a7])
        by smtp.gmail.com with ESMTPSA id
 k24-20020a05600c1c9800b00397122e63b6sm8093741wms.29.2022.06.17.22.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 22:20:14 -0700 (PDT)
Sender: Federico Pellegrin <fede.evol@gmail.com>
From: Federico Pellegrin <fede@evolware.org>
To: poky@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: Federico Pellegrin <fede@evolware.org>
Subject: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from
 specific provider
Date: Sat, 18 Jun 2022 07:20:06 +0200
Message-Id: <20220618052006.304259-1-fede@evolware.org>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 05:20:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57342

Specific provider (ie. RPM or IPK) does "provide" just itself as a
package to the system. This will cause the "-dev" package, which
refers to the generic signing-keys and not the provider specific,
to miss the dependency.

Error case (RPM) when populating sdk:

Error:
 Problem: conflicting requests
  - nothing provides signing-keys = 1.0-r0 needed by signing-keys-dev-1.0-r0.noarch
(try to add '--skip-broken' to skip uninstallable packages)

Examining signing-keys-rpm packages in PROVIDES we have indeed:
signing-keys-rpm = 1.0-r0

But in signing-keys-dev: in REQUIRES:
signing-keys-1.0-r0

This MR will fix the situation bringing the specific provider
PROVIDES to include also the generic package (RPM example):
signing-keys
signing-keys-rpm = 1.0-r0

Likely another way could be also to change the requirement for
dev or just allow empty packages as well.

Signed-off-by: Federico Pellegrin <fede@evolware.org>
---
 meta/recipes-core/meta/signing-keys.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/recipes-core/meta/signing-keys.bb b/meta/recipes-core/meta/signing-keys.bb
index 03463f95f56..d0602cf82af 100644
--- a/meta/recipes-core/meta/signing-keys.bb
+++ b/meta/recipes-core/meta/signing-keys.bb
@@ -18,6 +18,10 @@ FILES:${PN}-rpm = "${sysconfdir}/pki/rpm-gpg"
 FILES:${PN}-ipk = "${sysconfdir}/pki/ipk-gpg"
 FILES:${PN}-packagefeed = "${sysconfdir}/pki/packagefeed-gpg"
 
+RPROVIDES:${PN}-rpm += "${PN}"
+RPROVIDES:${PN}-ipk += "${PN}"
+RPROVIDES:${PN}-packagefeed += "${PN}"
+
 python do_get_public_keys () {
     from oe.gpg_sign import get_signer
 
-- 
2.35.3


