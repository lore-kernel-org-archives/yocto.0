Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D44CD37A7
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:23 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4007.1778203576150770058
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=oQpAcfw0;
 spf=pass (domain: konsulko.com, ip: 209.85.214.181, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2b9fcf7c91bso13976085ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203575; x=1778808375; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ek0wk7Jhu8BEqFxB1TRIiJokVIKU2hYC5xqez6fDbs0=;
        b=oQpAcfw0sLdalHOv8ztVmdBWHhPEDKzoD/SFdQzuLRinuAm/usIiKsMt6jVRZmR1Xq
         GIOM8UnFbCy7v+YWrtR+PbesdXA5WngxsLyWF8j5rB3YbayagYfGKjt0stj3/OU80ZJ3
         SGLqwnxDN9eETAGmM77n3zAYxoisWG9DL7Jdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203575; x=1778808375;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ek0wk7Jhu8BEqFxB1TRIiJokVIKU2hYC5xqez6fDbs0=;
        b=HTSIHQKf+MYlx3HEs0becWRWBYZ9an25xY8MD+uKq2l5qO7jRdK1MS7ZgtJzfDRi00
         +h/B2DmdqSU0xxlJmPVqxa6Xqbm8tTCHud8s/4o7+DgyGgtLXK+Vvb3sl6v+ZMVLBKxz
         gR0ohausEEu9AHhkYq0kg8DgUbeNJN4QAX4Vo9xfvetzCzubJNLvihhXeJusghijOfm+
         xr2mUKqkE2zLDue4NcyD8BtaYM7X27JhBXEzI6JcUY8KQsxW0LQnXMLIEXABGK7W6Tnv
         rHqKAv9tDciSDbz7zm1lhv/MPDfh/Dt7xijSvMDkjMR/PmXOr9FOtVde4go2CPeKZ2HX
         gSaA==
X-Forwarded-Encrypted: i=1; AFNElJ8UoPthEuHw24b1CINxlzzBCqftpCvth/WB6+FUfZKS50tYyQyok8J7royI/NgNzPE2Z+JuEA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyqSXWPxFjd1JwNBSDc2ky6E6zvpoR4tq7tSX18OhvyfG2xYhVG
	BrkO7iM1yvpw752tJgzdmwjGlUvNmyzfz48bIV6MxHAbqKDlvM3ioI16oJ7RD7BUeZIVFmCqyMp
	+7Hck
X-Gm-Gg: Acq92OEKmo7JjwaZc6uwXxzC7F66BW4NTlquyAiKyFBHPBMN1SxnXzcOo1KB0JJYOKN
	2oQco0zcSVSaa+/c2sPrdwdDeEI790rwLXiFrlKNPbqvP+E4weyBN7rN3Bbe2kEDE2cexoRfJAo
	f+3Yt0Hw/LD4skBvj7wwCInV1ZQvz5NSmh4b6JAg5evQ40DPi6o3NrZB5Nu2t0qTItRGIrd+j9t
	LkITIzG+Njf0Tfnrx86kxNZxS+6UL+PhVAO06a+I/v5cFgSoW1fSsatPhx5105dX5N/83L7hqRp
	zaDUo3ne/Nzg8CTf0GuQOYziGIw8IFKQz1WK4MlkYKKcOd7CixgEJbJEQjnwtgWmURdVDc1Y+Do
	ifs9aTWurMs0YZh3n5rGxCk1ZcUPOtuhs3AAejBqIrY5kfDX+QNeSacKa8u9PRa4haSJGfUWCvl
	pMdD4a8XnL7jvV/WopJV2rBVoXwxTfxmrtE9q5WYbRiDU24Zx+oXjMikg/kBUhz4Q=
X-Received: by 2002:a17:903:24f:b0:2b9:41b4:76f2 with SMTP id d9443c01a7336-2ba79c2318fmr109803035ad.22.1778203575550;
        Thu, 07 May 2026 18:26:15 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d40597sm1286105ad.22.2026.05.07.18.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:15 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 09/11] config.json: add vcontainer-tests, vdkr-tests, vpdmn-tests jobs
Date: Thu,  7 May 2026 18:25:38 -0700
Message-ID: <fedb9a114f294f1d1dc80d1df086a41e3419b490.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66510

From: Tim Orling <tim.orling@konsulko.com>

Add three pytest job overrides that run the meta-virtualization test
suites against the vcontainer standalone SDK published by the
vcontainer-tarball builder.

Each job runs the new scripts/run-vcontainer-tests helper via
EXTRACMDS (we need BUILDDIR variable so EXTRAPLAINCMDS is not
sufficient) with both NOBUILDTOOLS and NOVCONTAINER set, so the
workers don't spend time setting up either tarball: the test runner
gets the published SDK installer through VCONTAINER_SDK and manages
its own pytest venv.

vcontainer-tests covers the broader bbclass/tooling tests (and so
brings in meta-openembedded layers it transitively exercises);
vdkr-tests and vpdmn-tests cover their respective CLI harnesses.

AI-Generated: Claude Cowork Opus 4.7
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 config.json                  | 42 +++++++++++++++++++++++++++++++++++-
 scripts/run-vcontainer-tests |  7 +++---
 2 files changed, 44 insertions(+), 5 deletions(-)

diff --git a/config.json b/config.json
index 86c1ffb..dda5b12 100644
--- a/config.json
+++ b/config.json
@@ -1891,7 +1891,7 @@
             },
             "step2" : {
                 "shortname" : "Publish vcontainer SDK for test reuse",
-                "EXTRAPLAINCMDS" : [
+                "EXTRACMDS" : [
                     "install -d ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest && install -m 0755 ${BUILDDIR}/tmp/deploy/sdk/vcontainer-standalone.sh ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new && mv -f ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh.new ${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh"
                 ]
             }
@@ -1938,6 +1938,46 @@
                 "shortname" : "Build 'python' container",
                 "BBTARGETS" : "app-container-python"
             }
+        },
+        "vcontainer-tests": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                "${BUILDDIR}/../meta-virtualization"
+            ],
+            "step1" : {
+                "shortname" : "Run vcontainer pytest suite",
+                "NOBUILDTOOLS" : 1,
+                "NOVCONTAINER" : 1,
+                "EXTRACMDS" : [
+                    "VCONTAINER_SDK=${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh RESULTS_DIR=${HELPERRESULTSDIR} ${SCRIPTSDIR}/run-vcontainer-tests vcontainer ${BUILDDIR} ${BUILDDIR}/../meta-virtualization"
+                ]
+            }
+        },
+        "vdkr-tests": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization"],
+            "step1" : {
+                "shortname" : "Run vdkr pytest suite",
+                "NOBUILDTOOLS" : 1,
+                "NOVCONTAINER" : 1,
+                "EXTRACMDS" : [
+                    "VCONTAINER_SDK=${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh RESULTS_DIR=${HELPERRESULTSDIR} ${SCRIPTSDIR}/run-vcontainer-tests vdkr ${BUILDDIR} ${BUILDDIR}/../meta-virtualization"
+                ]
+            }
+        },
+        "vpdmn-tests": {
+            "NEEDREPOS" : ["bitbake", "meta-openembedded", "meta-virtualization"],
+            "step1" : {
+                "shortname" : "Run vpdmn pytest suite",
+                "NOBUILDTOOLS" : 1,
+                "NOVCONTAINER" : 1,
+                "EXTRACMDS" : [
+                    "VCONTAINER_SDK=${BASE_SHAREDDIR}/pub/vcontainer-tarball-latest/vcontainer-standalone.sh RESULTS_DIR=${HELPERRESULTSDIR} ${SCRIPTSDIR}/run-vcontainer-tests vpdmn ${BUILDDIR} ${BUILDDIR}/../meta-virtualization"
+                ]
+            }
         }
     },
     "repo-defaults" : {
diff --git a/scripts/run-vcontainer-tests b/scripts/run-vcontainer-tests
index cbb5544..1394c7c 100755
--- a/scripts/run-vcontainer-tests
+++ b/scripts/run-vcontainer-tests
@@ -3,7 +3,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 #
 # Run meta-virtualization pytest test suites against the vcontainer
-# standalone SDK (vdkr/vpdmn) that was built by the previous bitbake
+# standalone SDK (vdkr/vpdmn) that was built in a previous bitbake
 # step.
 #
 # Arguments:
@@ -21,9 +21,8 @@
 #
 # The script is intentionally conservative: any pytest tests that cannot run
 # in the CI environment (those marked "slow", "network", "boot") are skipped
-# are skipped so that the autobuilder step completes without needing network
-# access. Those can be re-enabled by exporting META_VIRT_PYTEST_MARKERS
-# before invocation.
+# so that the autobuilder step completes without needing network access. Those
+# can be re-enabled by exporting META_VIRT_PYTEST_MARKERS before invocation.
 #
 # It is assumed that /dev/kvm is writable by the CI user running the tests,
 # since the performance is significantly faster with 'memres'.
-- 
2.43.0


