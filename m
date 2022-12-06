Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1694C352A1
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 14:51:32 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.49767.1670338283081736940
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 06:51:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SSbvIiFo;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id v70so8781635oie.3
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 06:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TAf/DyiYSQkvFfu+0QZT8r8qcsSl8up+nMNsGMAcmBo=;
        b=SSbvIiFo3wTiB3oE48FR2Soq8s6FUL6Kw1QZNmi4/kPVLva5qULAp0EWcdRLZ9yZ4i
         QFNKKCLZr80QWCZEAqAHq1hjQkTxumgIAfq2ClPLAodd+lMrOMowLuqNBmk/uwYaCoFl
         IWk78DcdcleCEArUvJTjvQPcO4k2ULde/aDrZlkATjL62Ll00bvoT9K3zuFiUZWFz/yp
         G33ogDUUILkGcFR0+F6P6AooJazR94ZO44b/fjAKCxpE9avsL+zMjpZzXFP9C+T9hr7b
         GObzXmempouKUB03njjeaMUnUhgkvAWmAFUVtHHZCrpgSv+aOq/iXXrKUehYkXZWSyYi
         GcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TAf/DyiYSQkvFfu+0QZT8r8qcsSl8up+nMNsGMAcmBo=;
        b=VbDCndZav1TT+WH4qhm/PnxU+qCfduRgh5JajK2iPHXU8wzilS+Jq4AUDxn1e4ouFg
         E5+774KoZXdIFXYWVLTGw0mXWDlrNaCr4GY+2ES0srSscS6TQAEkpVizbBio1ZMH6Eb3
         QL6lTJ3F7Sj4c8SqDbOc9IvZI5Ejd1WZgkt/Saftwn+lxvmtuKmuNlGbzSyRfBxOpdyk
         PTxbafZwulmFU/UNaOXdh2capeFJVEGAi6NNRnJ3bY0JYFbObNwu9lDNzbPaW7prSow3
         nTv7O88FMQ8O2QZgZrnss2nzPeJkHajSUBnFvj8q0eHnXrFdxcdXNhLr7nqj73TfKHvd
         wvrQ==
X-Gm-Message-State: ANoB5plGIFhtkoeHEjOOiFSoCUHZdn+MULnm40F+S3iqzdhfvQ7UXPTy
	bPjp/Y7orQQE0o5itkOYC5tSGVNUECs=
X-Google-Smtp-Source: AA0mqf55FDsGxJl+ORG9iyK6ypV+w5dvfchsBtOEqNOYH3Wi/ejPDZb3JFCTfftCLTnxCL+1itAxng==
X-Received: by 2002:aca:a884:0:b0:35c:53a0:deae with SMTP id r126-20020acaa884000000b0035c53a0deaemr3232766oie.285.1670338281704;
        Tue, 06 Dec 2022 06:51:21 -0800 (PST)
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id q20-20020a4ad554000000b004a09df5a1dbsm4980767oos.8.2022.12.06.06.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 06:51:21 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: Use buildtools for Ubuntu 18.04
Date: Tue,  6 Dec 2022 08:51:15 -0600
Message-Id: <20221206145115.4065771-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 14:51:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58736

Bitbake is going to upgrade the minimum python to 3.8, so Ubuntu 18.04
needs to use buildtools tarball to remain compatible

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 config.json | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 713afe5..3d89856 100644
--- a/config.json
+++ b/config.json
@@ -1287,6 +1287,7 @@
         "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "ubuntu1604*" : "${BUILDTOOLS_URL}",
+        "ubuntu1804*" : "${BUILDTOOLS_URL}",
         "alma8*"       : "${BUILDTOOLS_MAKE_URL}",
         "centos8*"     : "${BUILDTOOLS_MAKE_URL}",
         "stream8*"     : "${BUILDTOOLS_MAKE_URL}",
@@ -1294,6 +1295,7 @@
         "opensuse154*" : "${BUILDTOOLS_MAKE_URL}",
         "perf-alma8*"  : "${BUILDTOOLS_MAKE_URL}",
         "perf-centos7*" : "${BUILDTOOLS_URL}",
-        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}"
+        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}",
+        "perf-ubuntu1804*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.33.0


