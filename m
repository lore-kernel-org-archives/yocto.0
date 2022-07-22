Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68D5C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 00:26:52 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by mx.groups.io with SMTP id smtpd.web09.2641.1658449610587093887
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:26:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=jYUJjMXk;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.219.201,
 mailfrom:
 3ye7zygqkbswrmjzowwotm.kwugwkbwtqaba.gwkbwxzwrmkb.wzo@flex--jebr.bounces.google.com)
Received: by mail-yb1-f201.google.com with SMTP id
 u15-20020a25ab0f000000b0066e49f6c461so2479431ybi.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=GiwON9R/I9FJMHZHFw7qlhhdaxThajaOv2lXA4k4CBs=;
        b=jYUJjMXkk4/fJBh9Z7MGXKOFPirG8GZHfIttUE3bnPhmEhTJ7Cd7p1ldeQH1xxTyju
         b/xiKR77LwgyAr347Py67Egfm9TWmEGY83nksrGM3A0zrJXqRWe8w9w7oRCPsbHOcGyL
         aJyOMba2umKj7/SYx3TlU+FnFVz3EzJQKsIhDVlVezSE0E9EC1pMqKuLBE0P5bq2JHxk
         kHWRI4T8s2Xa6MFcGkYYbdGNe0kF9/pm3jQLry7i+JzoDEw3ae1Wd3YJm8mkUZN/KmWU
         iTRBFf0Tpba9CELG8oPCuj9rvle12xeG759tqBG32ISBS+i7O/adTmG/RSc9kJ5J+sIr
         t76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=GiwON9R/I9FJMHZHFw7qlhhdaxThajaOv2lXA4k4CBs=;
        b=kaOh6QuxgtZjA8iCBDjuFZjglmaDVozOM1KHxDZF9OKY6/egqegr3nqwT2LkYJwXiV
         zLLmSv7IH1h8vmA9TExVEc6SkgTa8E6VpOipyP7Y12V9cq+UbGk1s1PIPsTqQ8oB+/jp
         jr4jLrVijqUmmcNA+1kLM4QfgUoMGVX7053+imEo1DhBeDKWBD6WmRVXPZdcSFMe+IIl
         5i4kgDI+R1SZldUbAS34LxUAf7OuHy7EUN8z2UBih3kNBMFeraR8KwMNL8gkpLG+Sbe7
         0G/0Hi4B3ESED7vv776rVaiUu0lU5mx7Eycb/1giSvFVHMRt+h3QHreRqf3b0EtIlnQE
         fbOA==
X-Gm-Message-State: AJIora9RJyWcOHYi/Q3BMSWvYj15APffSsQjYDRV5VsVAvLHRkzL9YDo
	PoJxXVJNVzM0jDZX/DPADe7EssW5WhBE5X6NpjNc+iFsNCgjsS6zWhQJ1LKQgNIlH2ZdoQvTbrU
	KCnjuO8NBaxi01rU1d04IL331aTXDz+lFzU6c1MSo/HzK5jA+KsJWfo7iA87yb5B8
X-Google-Smtp-Source: 
 AGRyM1sueqFJvWIfrAFGjsYvRYOORSgjCIPhM7Unte0D8BxrVibFcpdGsJ0sbH0QKbQlOZ7u7QbUiWNW
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:fcbb:752c:c901:94a9])
 (user=jebr job=sendgmr) by 2002:a05:6902:4d:b0:66c:9e74:b9fb with SMTP id
 m13-20020a056902004d00b0066c9e74b9fbmr950369ybh.47.1658449609751; Thu, 21 Jul
 2022 17:26:49 -0700 (PDT)
Date: Thu, 21 Jul 2022 17:26:36 -0700
Message-Id: <20220722002636.2117254-1-jebr@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
Subject: [meta-security][PATCH V2] meta-security: Add recipe for libhoth
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 00:26:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57615

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
index 0000000..33b9aa0
--- /dev/null
+++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Google Hoth USB library"
+DESCRIPTION = "Libraries and example programs for interacting with a \
+               hoth-class root of trust."
+HOME_PAGE = "https://github.com/google/libhoth"
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


