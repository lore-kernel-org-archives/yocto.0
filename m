Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B23C433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 11:31:20 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web12.6249.1645615879402442887
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 03:31:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2B455240005;
	Wed, 23 Feb 2022 11:31:16 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [RFC] [PATCH yocto-autobuilder-helper] scripts: run-docs-build: make
 the script fail hard ASAP when there's an error
Date: Wed, 23 Feb 2022 12:31:06 +0100
Message-Id: <20220223113106.2781516-1-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 11:31:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56261

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

There are some intermittent issues with the script not publishing all
versions. So let's go extreme and fail the script if any error happens:
 - a command returns a non-zero code, even if piped,
 - a variable is used uninitialized,

This also makes the script print each and every command being run so we
have a better idea where the script struggles.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---

RFC:
 - I highly suspect this change to break the building script because
 Sphinx probably throws errors at old doc builds,
 - Also, with Sphinx updates, new warnings might arrise on
 old/unmaintained branches, we probably want to use virtualenv with
 specific Sphinx versions to make sure this is not an issue in the
 future? (and allows to bump Sphinx (or other dependencies) requirement
 for newer doc branches),

 scripts/run-docs-build | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 3bc35b3..b7b5773 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -2,6 +2,12 @@
 # Called with $1 as the build directory
 #             $2 as the path to yocto-docs
 #             $3 as the path to bitbake
+
+set -e
+set -u
+set -o pipefail
+set -x
+
 builddir=$1
 ypdocs=$2/documentation/
 bbdocs=$3/doc/
-- 
2.35.1


