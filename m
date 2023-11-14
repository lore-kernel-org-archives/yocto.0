Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06492C4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 16:06:53 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.16492.1699978009467450571
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 08:06:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=gv+Yon2X;
 spf=pass (domain: baylibre.com, ip: 209.85.219.43, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-672f5fb0b39so33015076d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 08:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699978008; x=1700582808; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sv3cRBUGH5pJ31cwIJX+zavd6+L2+F69X2E9MexYDx4=;
        b=gv+Yon2Xa2jUQiUTcPe6TTm5U+OeVhvnUU4uS5OUdH1d+ZP6B9IQlH+plktq6QwT+J
         pwbbW6ZLmqVsSgnbpptaiSMIdDuIjWfVCAC0ptLbHC4+0Ic76m0V0hOssaEtMx94AOhi
         Y73f5wuvlKty05FafDwieJJR8l2q/8ljvQvjBtYcSqjKVSL9U2ZQYtYUn73qvhfAuOcM
         xFtT6CNmIeyJzRDJnwYTc48nFWUjVaWKkHYj/xHufkV44WkJGXKrrijGcy15rZEH5jRd
         RvGmo5xeHUsmbNmUcqgCuzuiE7feVYbs1dn4tfDGO9au3h1FXBTyyg3OM7E3XaVXMQW8
         2grw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699978008; x=1700582808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sv3cRBUGH5pJ31cwIJX+zavd6+L2+F69X2E9MexYDx4=;
        b=WfPcENl3amjjy4+71PELe6yU+nJVX6rqIslOO6K1nmr6V6WA58P++7NFpbFiPA1hWy
         OpFZz9YW8yWUfTnmavIItbvWGUnml1JQWilwrTWG+YNtj8wW9y+31sKp7MhaO/M2eob0
         CWVbHPbKBFGugcR8rzHAQUjszs4j6Jv2i9NMN2QF6WgJVBBssOJD8K+0tHIXMGzCAaYn
         L09teJjS5pEeytdT1wxMHZqU6kJLNqWd4uAN2Hx7HTEV6zqNBj6QnyKnls2mrxtp/pPq
         +hTxZN/1TE9dDUWFmFKJjbs8ikK4BEYDmzFZbRBndumj5wEn0tZv7GAnVW5eVGcjIrMj
         RsbQ==
X-Gm-Message-State: AOJu0YxhUcHQknEs7M2Hg1Fl9vFWhQgit61lc2N2yfb2d2d8OanJKdS/
	ov5w5haE45XS4ZQIiED0eHdaFhvtpCEvqoDNN8JYLw==
X-Google-Smtp-Source: AGHT+IFICF/7G91e3qK2u3dLR10WA6TUqH1LKwcFm2P+F/ftkq+ZQvBMCgfYPz3LN5nSzzbvwf/jzQ==
X-Received: by 2002:a05:6214:dcf:b0:66d:4684:4203 with SMTP id 15-20020a0562140dcf00b0066d46844203mr4135051qvt.28.1699978008329;
        Tue, 14 Nov 2023 08:06:48 -0800 (PST)
Received: from megalith.. (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id u3-20020a0ced23000000b0066d20f29e5fsm3026690qvq.35.2023.11.14.08.06.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 08:06:47 -0800 (PST)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] patchtest: add selftest runner
Date: Tue, 14 Nov 2023 11:06:46 -0500
Message-ID: <20231114160646.20143-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 16:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61682

Add a runner that installs the patchtest dependencies in a Python venv
and then starts patchtest's selftests.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 config.json                    |  7 +++++++
 scripts/run-patchtest-selftest | 18 ++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100755 scripts/run-patchtest-selftest

diff --git a/config.json b/config.json
index 0c581d1..e049a95 100644
--- a/config.json
+++ b/config.json
@@ -1676,6 +1676,13 @@
                 "BBTARGETS" : "core-image-patchtest"
             }
         },
+	"patchtest-selftest" : {
+	    "NEEDREPOS" : ["poky"],
+	    "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchtest-selftest ${HELPERBUILDDIR}/.."],
+	    "ADDLAYER" : [
+	        "${BUILDDIR}/../meta-selftest"
+	    ]
+	},
         "toaster" : {
             "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests ${HELPERBUILDDIR} ${HELPERBUILDDIR}/.."]
         }
diff --git a/scripts/run-patchtest-selftest b/scripts/run-patchtest-selftest
new file mode 100755
index 0000000..58edb0e
--- /dev/null
+++ b/scripts/run-patchtest-selftest
@@ -0,0 +1,18 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Called with $1 as the path to poky
+
+set -e
+set -u
+set -o pipefail
+set -x
+
+pokydir=$(realpath "$1")
+
+python3 -m venv venv --without-pip --system-site-packages
+source venv/bin/activate
+python3 -m pip install -r $pokydir/meta/lib/patchtest/requirements.txt
+
+$pokydir/meta/lib/patchtest/selftest/selftest
-- 
2.41.0


