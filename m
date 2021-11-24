Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA60FC433EF
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 21:47:28 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.4414.1637790447479637635
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Nov 2021 13:47:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E675A1FB
	for <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 13:47:25 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 896B23F73B
	for <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 13:47:25 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] schedulers: add deploy_artefacts to all
 builders
Date: Wed, 24 Nov 2021 21:47:21 +0000
Message-Id: <20211124214721.1012328-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 21:47:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55414

Instead of having a limited set of builders which can deploy artefacts,
let every builder have the ability to deploy. This makes it easier to
experiment with deploy steps.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 schedulers.py | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 86fc6e4..bfd0e60 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -241,12 +241,11 @@ def props_for_builder(builder):
         default=3Dswat_default))
     if builder =3D=3D 'build-appliance':
         props.append(buildappsrcrev_param())
-    if builder in ['build-appliance', 'buildtools', 'eclipse-plugin-neon=
', 'eclipse-plugin-oxygen']:
-        props.append(util.BooleanParameter(
-            name=3D"deploy_artefacts",
-            label=3D"Do we want to deploy artefacts? ",
-            default=3DFalse
-        ))
+    props.append(util.BooleanParameter(
+        name=3D"deploy_artefacts",
+        label=3D"Do we want to deploy artefacts?",
+        default=3DFalse
+    ))
     props =3D props + repos_for_builder(builder)
     worker_list =3D config.builder_to_workers.get(builder, config.builde=
r_to_workers['default'])
     props.append(util.ChoiceStringParameter(name=3D"worker",
--=20
2.25.1


