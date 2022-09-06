Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76AE9ECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:16:25 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.3842.1662470181141141583
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14A6A139F;
	Tue,  6 Sep 2022 06:16:27 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D37103F7B4;
	Tue,  6 Sep 2022 06:16:19 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/5] CI: Use the matrix to ovleray additional Kas
 files
Date: Tue,  6 Sep 2022 14:16:59 +0100
Message-Id: <20220906131702.310027-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906131702.310027-1-peter.hoyes@arm.com>
References: <20220906131702.310027-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57988

From: Peter Hoyes <Peter.Hoyes@arm.com>

Adopt the jobs-to-kas helper script from meta-arm, which uses Gitlab's
parellel matrix to overlay additional Kas files on top of the base Kas
file (based on $CI_JOB_NAME).

This allows multiple combinations of Kas file overlays to be easily
tested with minimal boilerplate.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .gitlab-ci.yml | 15 ++++++++++++---
 ci/jobs-to-kas | 31 +++++++++++++++++++------------
 2 files changed, 31 insertions(+), 15 deletions(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index addd04c..22a8ef9 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -80,11 +80,17 @@ nrf52840dk-nrf52840:
 qemu-cortex-a53:
   extends: .build
=20
-qemu-cortex-m0/testimage:
+qemu-cortex-m0:
   extends: .build
+  parallel:
+    matrix:
+      - TESTING: testimage
=20
-qemu-cortex-m3/testimage:
+qemu-cortex-m3:
   extends: .build
+  parallel:
+    matrix:
+      - TESTING: testimage
=20
 qemu-cortex-r5:
   extends: .build
@@ -92,8 +98,11 @@ qemu-cortex-r5:
 qemu-nios2:
   extends: .build
=20
-qemu-x86/testimage:
+qemu-x86:
   extends: .build
+  parallel:
+    matrix:
+      - TESTING: testimage
=20
 stm32mp157c-dk2:
   extends: .build
diff --git a/ci/jobs-to-kas b/ci/jobs-to-kas
index 7057970..296bb0d 100755
--- a/ci/jobs-to-kas
+++ b/ci/jobs-to-kas
@@ -1,19 +1,26 @@
 #! /bin/bash
=20
-# Read a GitLab CI job name on $1 and transform it to a
-# list of Kas yaml files
+# This script is expecting an input of machine name, optionally followed=
 by a
+# colon and a list of one or more parameters separated by commas between
+# brackets.  For example, the following are acceptable:
+# qemu-x86
+# qemu-cortex-m3: [testimage]
+# qemu-cortex-a53: [zephyr-toolchain, testimage]
+#
+# Turn this list into a series of yml files separated by colons to pass =
to kas
=20
 set -e -u
=20
-# Read Job namne from $1 and split on /
-IFS=3D/ read -r -a PARTS<<<$1
+FILES=3D"ci/$(echo $1 | cut -d ':' -f 1).yml"
=20
-# Prefix each part with ci/
-PARTS=3D("${PARTS[@]/#/ci/}")
+for i in $(echo $1 | cut -s -d ':' -f 2 | sed 's/[][,]//g'); do
+	# Given that there is no yml file for default, we can simply ignore tho=
se
+	# parameters.  They are necessary to pass in so that matrix can correct=
ly
+	# setup all of the permutations of each individual run.
+	if [[ $i =3D=3D 'default' ]]; then
+		continue
+	fi
+	FILES+=3D":ci/$i.yml"
+done
=20
-# Suffix each part with .yml
-PARTS=3D("${PARTS[@]/%/.yml}")
-
-# Print colon-separated
-IFS=3D":"
-echo "${PARTS[*]}"
+echo $FILES
--=20
2.25.1


