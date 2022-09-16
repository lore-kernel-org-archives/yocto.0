Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D70EC6FA8B
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 09:03:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.3892.1663319011062402540
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 02:03:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF3C21D34;
	Fri, 16 Sep 2022 02:03:36 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.114])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71FE83F73D;
	Fri, 16 Sep 2022 02:03:29 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 0/4] Add script for version upgrades
Date: Fri, 16 Sep 2022 10:03:14 +0100
Message-Id: <20220916090318.1293922-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:03:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58054

From: Peter Hoyes <Peter.Hoyes@arm.com>

This patch chain has been developed on top of the 2.7.3 upgrade patch.

Add a script, generate-version.py, which can be used to automatically=20
generate configuration for new Zephyr versions. Regenerate
configuration for 2.7.3 and 3.1.0 using this script.

This script includes a constant version-specific declaration of
ZEPHYR_MODULES, so the build-time logic to extract ZEPHYR_MODULES is no
longer required. Remove the do_get_zmods task and the West recipe.

Peter Hoyes (4):
  zephyr-core/scripts: Introduce script to generate new versions
  zephyr-core/zephyr-kernel: Migrate to script-driven version files
  zephyr-core/classes: Remove West-based logic from zephyr.bbclass
  zephyr-core/zephyr-kernel: Update dtc.patch Upstream-Status

 README.txt                                    |  17 ++
 meta-zephyr-core/classes/zephyr.bbclass       |  32 +--
 .../recipes-devtools/west/west_0.12.99.bb     |  22 --
 ...y-generation-issue-in-cross-compila.patch} |   0
 .../zephyr-kernel/files/dtc.patch             |   2 +-
 .../zephyr-kernel/zephyr-kernel-src-2.7.3.inc | 202 +++++++++++++---
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc | 220 +++++++++++++++---
 .../zephyr-kernel/zephyr-kernel-src.inc       |  43 ----
 meta-zephyr-core/scripts/generate-version.py  |  73 ++++++
 .../scripts/zephyr-kernel-src.inc.jinja       |  35 +++
 10 files changed, 474 insertions(+), 172 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/west/west_0.12.99.b=
b
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/files/{0001-x86-fix=
-efi-binary-generation-issue-in-cross-compila.patch =3D> 0001-2.7-x86-fix=
-efi-binary-generation-issue-in-cross-compila.patch} (100%)
 create mode 100755 meta-zephyr-core/scripts/generate-version.py
 create mode 100644 meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja

--=20
2.25.1


