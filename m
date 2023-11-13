Return-Path: <alexander.lussier-cullen@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38CB0C4332F
	for <webhook@archiver.kernel.org>; Mon, 13 Nov 2023 18:21:31 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.2868.1699899683716556533
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 10:21:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=P9gwWRSz;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: alexander.lussier-cullen@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 09F6C9C319F;
	Mon, 13 Nov 2023 13:21:23 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id mAHpSg5fVjnP; Mon, 13 Nov 2023 13:21:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 959909C31BC;
	Mon, 13 Nov 2023 13:21:22 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 959909C31BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1699899682; bh=OHSPYlSoeQIgkvWIejixzvhqXt3nrpUW8xxlTapVNy8=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=P9gwWRSz8leULgWtkTzH7LBoq1mhiSxOyyTzAQJlMSeZaOgjs3pdQddf5pVoW3RWT
	 wsC9ApcrcdTHV0hw5DmjVvFlDC+yodZiW1gOQTM0ohdjMoluer8Y4GTq2+iccvxDfl
	 QR+g2fZ/aJ12q7byQFKN0u9tJP0DCnHBtH6daYkhm3aGHEjqQBAFljkGaMxF8XOTsN
	 hmGrSf5Mkfsca7zhIjaEtOvuEm6P+hnxJuWVIwDhZAfpQYJZoJ8P06+McM+2B4SFmx
	 5OLTMMRmMJZkNE9QgPTrYJiuk9561k2RoIJs3qm7rmfefp1qPMIPHFhOEBcyCEEF5M
	 wejb6oKhB6ZTA==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id LjKZ-z_f65S4; Mon, 13 Nov 2023 13:21:22 -0500 (EST)
Received: from localhost.localdomain (bras-base-mtrlpq427kw-grc-26-70-30-120-174.dsl.bell.ca [70.30.120.174])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 820FF9C319F;
	Mon, 13 Nov 2023 13:21:22 -0500 (EST)
From: alexander.lussier-cullen@savoirfairelinux.com
To: yocto@lists.yoctoproject.org
Cc: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>,
	richard.purdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper] Add toaster test builder
Date: Mon, 13 Nov 2023 13:21:16 -0500
Message-Id: <20231113182116.25586-1-alexander.lussier-cullen@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 18:21:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61669

From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux=
.com>

Add a toaster test builder that runs the tox test suite using a new
run-toaster-tests script.

Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirf=
airelinux.com>
CC: richard.purdie@linuxfoundation.org
---
 config.json               |  3 +++
 scripts/run-toaster-tests | 22 ++++++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 scripts/run-toaster-tests

diff --git a/config.json b/config.json
index d10a3a8..0c581d1 100644
--- a/config.json
+++ b/config.json
@@ -1675,6 +1675,9 @@
             "step1" : {
                 "BBTARGETS" : "core-image-patchtest"
             }
+        },
+        "toaster" : {
+            "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests ${HELPERBUIL=
DDIR} ${HELPERBUILDDIR}/.."]
         }
     },
     "repo-defaults" : {
diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
new file mode 100644
index 0000000..a785c36
--- /dev/null
+++ b/scripts/run-toaster-tests
@@ -0,0 +1,22 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Called with $1 as the build directory
+#             $2 as the path to poky
+
+set -e
+set -u
+set -o pipefail
+set -x
+
+builddir=3D$(realpath "$1")
+pokydir=3D$(realpath "$2")
+
+cd $builddir
+mkdir -p toaster_logs
+python3 -m venv venv --without-pip --system-site-packages
+source venv/bin/activate
+python3 -m pip install tox
+
+tox -c $pokydir/bitbake/lib/toaster/tox.ini
--=20
2.34.1


