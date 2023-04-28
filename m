Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39A66C7EE26
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:49 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.19764.1682688759285098373
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=G/au3JVs;
 spf=pass (domain: baylibre.com, ip: 209.85.219.54, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-5ef8af5d211so75636786d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688758; x=1685280758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vsV189Vz6H1nHyKP/lFhB0fRjtvVu7yfIRnum+WPg7g=;
        b=G/au3JVsGBKNJBPKzPFLjahg513GQGTJC2b4EwNTh3PUYkHHR9tzbNNlnf1VDxTA2n
         rQsX37QP7HW/r5BlfDlEuWKO7rZzIO+5SY2Xe24wITYtx8oMaZUFZ+l03Ac5306+OJKO
         mAywhW1RhW6pqVVolZX8KKIlNRfxI2jsmY4ouyhcvS9lU9uvGMMMJ7lSvYx9meJbuxEJ
         p8qf712hPsdo98puCpHhTxwOQTIeOwjLE/mo5ugyiZ5cxKmnZzDS3iKvhPSfEoZ1oJg8
         pPWkAazGAJgCcMFMnxrraUMiAskKyXxMgR8VRSkQM7wrUxpXM0pUNxS5d2dCLMG1Ljf/
         yepg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688758; x=1685280758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vsV189Vz6H1nHyKP/lFhB0fRjtvVu7yfIRnum+WPg7g=;
        b=URsJf4R1Id7/aynCie4KOqBeBaO8sTYgs63L92hydIc3Xry/yrI7UC9IcNMsiLzUdH
         Thxa5qj/mfLRnmiKYvurQ5XoG3RntuN8a5c4bgac9EPn66eoAU844LIDKRrCX0L/nWLb
         Al7DqaWSNNHWNciIHHL0VjnvElQRXdgKjGEtYidduqGkeGHCrwGenP5kVszUDnI4e8wr
         9le/RaIjSf1YP2qq7d4tZz0ltyd2GNWkz7L5aAjxbr3nvGi7I3QanpULrsjHqCOfpIE/
         mE/A+LCvpqh1BiCtC5+RbiH3Lu3UsmsnlmTG9A5pA58DTP2OwgqY+2wBAEiRz6n9ecO9
         zHxw==
X-Gm-Message-State: AC+VfDyFqj6IWmzYpvl/A4525w5rpwM1u5bsKCzL1+1ChyJILfJdh2XV
	3eWWjkYj4+7Q+ySouwXZ7oKbAQk6GR5yjN/Y0cQ=
X-Google-Smtp-Source: ACHHUZ4EVBmRlLKfL0VtbjPE+mycvekVF2+tdP2S9NE1y/ZdjRVJ1RBSBO0h+ia0QfrNBoNicibVIA==
X-Received: by 2002:a05:6214:5093:b0:616:3ebc:cb1f with SMTP id kk19-20020a056214509300b006163ebccb1fmr7383917qvb.12.1682688758196;
        Fri, 28 Apr 2023 06:32:38 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:37 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 5/7] linux-yocto: update version, fix override syntax
Date: Fri, 28 Apr 2023 09:32:31 -0400
Message-Id: <20230428133233.1155096-6-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59813

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend | 2 --
 meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)
 delete mode 100644 meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
 create mode 100644 meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend

diff --git a/meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
deleted file mode 100644
index 7a718f6..0000000
--- a/meta-patchtest/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-SRC_URI += "file://virtio.cfg"
diff --git a/meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend b/meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend
new file mode 100644
index 0000000..3a69acb
--- /dev/null
+++ b/meta-patchtest/recipes-kernel/linux/linux-yocto_6.%.bbappend
@@ -0,0 +1,2 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
+SRC_URI += "file://virtio.cfg"
-- 
2.40.0


