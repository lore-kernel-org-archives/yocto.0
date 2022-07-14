Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38DC1C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 06:41:30 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web08.4709.1657780883647030822
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 23:41:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a1WnNiBG;
 spf=pass (domain: gmail.com, ip: 209.85.208.50,
 mailfrom: alex.kiernan@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id r18so1132994edb.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 23:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2yhYzph6VrM8rfkP1Dlg+HxAckR1oK7Nz45/neYPIsA=;
        b=a1WnNiBGqSl5uA79sxFKmYiY+8kl/nMcU2fdf6O1jhec3PQKBbUUEFYcP6ewIQcFCk
         A03RiIECVtaCIMpD2T3Mz//IKvETMLz142q3aJlPopvOUdabuzQ0dv45OasP4nDKhHwp
         kvRcuQXXzOnynbbEGqex9gQcesBsVSN231QMBP3B4EodeyIHAnExUkVSdmvKAkYPbPdn
         DXopwFg/MUxwk/Kc0oUIy6Q1bAwd0bIr+79pyCYvgB2JEHXSOm5AcuGd2KyIi9S9Wxr1
         dfc3cfsbCfq3HqgVEZEX1yszQnVqRwP3FnGbRjESQbScqRo6avW5O4mqq9OuLtWYXiLe
         pH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2yhYzph6VrM8rfkP1Dlg+HxAckR1oK7Nz45/neYPIsA=;
        b=mvHylt3zmw6uS7Kc6NxpDKaQR//bgDA6h4rmvPqUT5Mqd6fdwSXoE9hWIcDIur0Nir
         fCYEYTKNhKIDRDEuLLayBqe5/SNJCEyjyaTp92pA9zMQK7ek7fMdsg+s3jLbBKPsPCqN
         EmxF110nRgO+aJvdxiD3iCIORbudqDiGgbvzHih3NPQfP+ECJClF5th3BJ9k0LmS3E1s
         xpxa9EPFRDKWApzMtn14EHK96fUr9BSXyaG7TQYXAOU7uq0bhJrnN7HqRofFzicZ2F8h
         HTeQMmOZMlvUG7k6KxrnWCcxOhn2lzYJab/G8UBoXXKAiihnfqLJ2oMoFV5APtUuNpP8
         IUHA==
X-Gm-Message-State: AJIora/BjEW9s1a6GMVvqx6ssjIAZlUMHwRhIuV5P7g6r97ZyzEmDqyJ
	4ize3NjQNLOJMTUwAAN7yx4C/Vy0QGc=
X-Google-Smtp-Source: 
 AGRyM1sSC+SbHQ0baQAI36CXRBERYWzRFI+e6ClVlBis+gcc/6IYiHQkCyqqjSiPclwaF8U7mh1oRg==
X-Received: by 2002:a05:6402:1455:b0:43a:77bb:af0f with SMTP id
 d21-20020a056402145500b0043a77bbaf0fmr10185253edx.301.1657780881687;
        Wed, 13 Jul 2022 23:41:21 -0700 (PDT)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net.
 [91.135.6.246])
        by smtp.gmail.com with ESMTPSA id
 j22-20020a170906051600b0072b36cbcdaasm311361eja.92.2022.07.13.23.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 23:41:21 -0700 (PDT)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alex Kiernan <alex.kiernan@gmail.com>
Subject: [meta-security][PATCH] bubblewrap: Add recipe
Date: Thu, 14 Jul 2022 07:41:11 +0100
Message-Id: <20220714064111.10048-1-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 06:41:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57532

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---
 .../bubblewrap/bubblewrap_0.6.2.bb            | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 recipes-security/bubblewrap/bubblewrap_0.6.2.bb

diff --git a/recipes-security/bubblewrap/bubblewrap_0.6.2.bb b/recipes-security/bubblewrap/bubblewrap_0.6.2.bb
new file mode 100644
index 000000000000..921defda9e9d
--- /dev/null
+++ b/recipes-security/bubblewrap/bubblewrap_0.6.2.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "Unprivileged sandboxing tool"
+HOMEPAGE = "https://github.com/containers/bubblewrap"
+LICENSE = "LGPL-2.0-or-later"
+LIC_FILES_CHKSUM = "file://COPYING;md5=5f30f0716dfdd0d91eb439ebec522ec2"
+
+DEPENDS = "libcap"
+
+SRC_URI = "https://github.com/containers/${BPN}/releases/download/v${PV}/${BP}.tar.xz"
+SRC_URI[sha256sum] = "8a0ec802d1b3e956c5bb0a40a81c9ce0b055a31bf30a8efa547433603b8af20b"
+
+UPSTREAM_CHECK_URI = "https://github.com/containers/bubblewrap/releases"
+UPSTREAM_CHECK_REGEX = "bubblewrap-(?P<pver>\d+(\.\d+)+)\.tar"
+
+inherit autotools bash-completion manpages pkgconfig
+
+PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'selinux', d)}"
+PACKAGECONFIG[manpages] = "--enable-man,--disable-man,libxslt-native docbook-xsl-stylesheets-native xmlto-native"
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
+PACKAGECONFIG[setuid] = "--with-priv-mode=setuid,--with-priv-mode=none"
+
+PACKAGES += "${PN}-zsh-completion"
+
+FILES:${PN}-zsh-completion = "${datadir}/zsh/site-functions"
-- 
2.35.1


