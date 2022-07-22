Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6AAC433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 16:35:37 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by mx.groups.io with SMTP id smtpd.web09.10024.1658507727041305859
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 09:35:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=UjE0MISd;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.219.201,
 mailfrom:
 3zthaygqkbfkkfcshpphmf.dpnzpdupmjtut.zpdupqspkfdu.psh@flex--jebr.bounces.google.com)
Received: by mail-yb1-f201.google.com with SMTP id
 l6-20020a25bf86000000b00668c915a3f2so3981912ybk.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 09:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=rSVGjduCItaDhrAcmqxVsJA6DutjyDaKhG2RhZnbMy8=;
        b=UjE0MISd58D2EJ4KPYaUjdpe7eQcCIZa1GsE91ecrKmZl+2QTmdXsDYTExZlYk6CMo
         MWAsnJVvRYXkfLBrF2JcByVNT5tufSKJROcc5HaJ9TAyc2P5JIwTmfQioQhZ1FFFJaGF
         +huI75CupY/1efYrFcYiwwzTIEG0tZROAECWm+6MwnHlx0Yom+GeOxSlgCCqKAqqBga8
         knVX/6+x9epdjuDMjzjDdr+CPa4N2Fdm0LC0+/wotnnktpOaNM94BQQ4yvJ3kpy/LNtx
         Dzr5zfkd2wKdulJ/Dl5UpOhRowvNXzKhwE8uPZt1MyIZdT770eatWwDctB7TxD6SJ7x5
         7uLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=rSVGjduCItaDhrAcmqxVsJA6DutjyDaKhG2RhZnbMy8=;
        b=AlGamdu2EqYAVYIfv3pxBkVtPSOxg/PCNbKL9QVKXyiZR88Jxxl3Do483jRdLFicD3
         aZ8rHSvMVwj2gEnmWimqsNSJRWnISGZS+z2JU94KgOOrHwrxyLUyvQJCEhA+89WC2kf9
         tdJZy/pVP0tkssgWdvUaFPaw5blSAiBp1nXOXkP/G1A6Ve55ezUuzC6QJXVTG7kZQuqP
         TPQkUx6vpx3qgHSjNTFsT5wReNKJnMfhcgNuITpEQDCDN99IbSGwAZcuGzmkUC1pbjU9
         371etZEAdd9KO2/fL3C60vc2gzC4TGfsejTJIrlQ7UGaa5mgrtbu90XqEddj/pPrZNOy
         jjrg==
X-Gm-Message-State: AJIora8Sav1QfbpXwexPlswDQEF4DfgtX3NuScIMNqSlQKfOZ/JCFyhe
	oG/wIKdINb4w4FbQ+MQtj0BhNYcIXDK3DTw2R9BJlLz4AkGhdjbtBrkWYNpgULA0ZeRUpu5kS7/
	+BoFtvvjkpN1vFwl85fx2P7cqeuQxqFEdJWDjigWPAHMl2XBkjrHMTf58YMW3TitM
X-Google-Smtp-Source: 
 AGRyM1sc9DPEoBZdBVrjMGKp3YPnnQXR2r9VIwLDavd1kfV6S+R8RJDKEDk+LeZDMa0NfTqI5VHnRFsv
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:fcbb:752c:c901:94a9])
 (user=jebr job=sendgmr) by 2002:a05:6902:4d:b0:66c:9e74:b9fb with SMTP id
 m13-20020a056902004d00b0066c9e74b9fbmr719552ybh.47.1658507726203; Fri, 22 Jul
 2022 09:35:26 -0700 (PDT)
Date: Fri, 22 Jul 2022 09:35:10 -0700
Message-Id: <20220722163510.2229149-1-jebr@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
Subject: [meta-security][PATCH V3] meta-security: Add recipe for libhoth
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 16:35:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57624

From: John Edward Broadbent <jebr@google.com>

Libhoth is usb protocol implementation which is required for hoth class
devices

Signed-off-by: John Edward Broadbent <jebr@google.com>
---
 meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb

diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
new file mode 100644
index 0000000..a3ebce7
--- /dev/null
+++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Google Hoth USB library"
+DESCRIPTION = "Libraries and example programs for interacting with a \
+               hoth-class root of trust."
+HOMEPAGE = "https://github.com/google/libhoth"
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
+SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"
+
+DEPENDS += "libusb1"
+
+S = "${WORKDIR}/git"
+
+inherit pkgconfig meson
+
-- 
2.37.1.359.gd136c6c3e2-goog


