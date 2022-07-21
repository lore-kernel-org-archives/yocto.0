Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2163EC433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 22:39:12 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by mx.groups.io with SMTP id smtpd.web08.1605.1658443145530139103
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 15:39:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=KmPcc6tj;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.219.201,
 mailfrom:
 3inxzygqkbbcgbyodlldib.zljvlzqlifpqp.vlzqlmolgbzq.lod@flex--jebr.bounces.google.com)
Received: by mail-yb1-f201.google.com with SMTP id
 a8-20020a25a188000000b0066839c45fe8so2291699ybi.17
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 15:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=RbFDt7W+kDYmjMrcOE8/KW1E3uhd+OSWhmBMFyurh1U=;
        b=KmPcc6tj4LELIhe8NdV/TdSLVWjFFImi0J0b4z89RbvV3ekrGjMKRF8PUYtrtvUIuF
         zCaEhPl14mvTHsd9nuIlHxgnj/FsnPiI0OVZ8L6mq6AZIYV01HTg6OuDX9FY+FUUKpub
         fSxBV7p9sW3yyce/Xq1cHuXiok3DhKiOGpmLqNRug7r/Aan8mQ2ApgIZB/eDRS3aspM2
         Tnb6K39KCHp1yldNRywp4cpMIgbeLPjouUQ2EgAGtFQ6TtX0V12k4uHjCNHCgfJfLn/G
         mCzZVHo7OnRRJT4mB3aNNQFETosBJAqTc+v+6TozJxrj+yS1K+7Z1L0qnsjlthxbEysX
         D9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=RbFDt7W+kDYmjMrcOE8/KW1E3uhd+OSWhmBMFyurh1U=;
        b=7/xvWNOCg950ieJDhxL6RSG6tzCr+oosgnXl+eyJ+hp9mEfe/dQEbjj6FNjvpno8zK
         RDZtpps5RbJE5zeznGCM/DNyDFUjZa1G1muCV/26VLFR3rjlNfBF7FezhYYP1srDWM6b
         Wxywb3lCV13W7NlMFgTkP/1pQDNTCJXlekfyWoSbQ35uHpzHDBcuZy7YRv+8+60huPsw
         Auvmnf4vsPsxL3Td63BCU+nDwFYFWJlREsDFuX9XGlsT9qvkQZ/NSM81Firh7SNiQQms
         d3jjn4khFVhOojP1w69YZnDlTMj3Pptfr/m+ED1Smj0E0Hfsy0vo3RXs+hxSaA4dXGI9
         /cCw==
X-Gm-Message-State: AJIora/R+r5SgtBgOLRI+ovgdMowwCLLWvjY4ZXs1qHyWXjnBD/SuHOy
	f9/vzNeFcG7kiK3Ph3tSYIQKDgFR+pJjpM2+p6TS+oHMGLCq5CMZNm+mclObfeBitaNGIy6HAyU
	CjE/dqSi2+zS/y108eNsyj7U307szrdNGK9hZIzrqkqdbf9ZQZC9eEVfwXkcur3L+
X-Google-Smtp-Source: 
 AGRyM1s6gaDIbxG0+subQsL9HwwLz5TTCYt5iXfVOyNoTvbwIIEZl/XJSXuGawphvztbx6aLq/EcEV4P
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:fcbb:752c:c901:94a9])
 (user=jebr job=sendgmr) by 2002:a0d:d70e:0:b0:31e:7cec:933e with SMTP id
 z14-20020a0dd70e000000b0031e7cec933emr713374ywd.406.1658443144737; Thu, 21
 Jul 2022 15:39:04 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:38:54 -0700
Message-Id: <20220721223854.2093685-1-jebr@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
Subject: [meta-security][PATCH] meta-security: Add recipe for libhoth
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 22:39:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57610

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
index 0000000..59f52ad
--- /dev/null
+++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Google Hoth USB library"
+DESCRIPTION = "Libraries and example programs for interacting with a \
+               hoth-class root of trust."
+HOME_PAGE = https://github.com/google/libhoth
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
+SRCREV = "b31307b7bf525efda0164e461fb1e0a5c302d306"
+
+DEPENDS += "libusb1"
+
+S = "${WORKDIR}/git"
+
+inherit pkgconfig meson
+
-- 
2.37.1.359.gd136c6c3e2-goog


