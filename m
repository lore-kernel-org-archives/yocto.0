Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45D17C433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 16:09:58 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.8632.1648570197177768998
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 09:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E57E623A
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 09:09:55 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A24A3F73B
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 09:09:55 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: no need to explicitly
 exclude the NPM tests
Date: Tue, 29 Mar 2022 17:09:49 +0100
Message-Id: <20220329160949.3535018-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 16:09:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56579

These tests now skip themselves automatically[1] if meta-oe isn't
present, so there is no need to explicitly skip them.

[1] oe-core d22ed015d8f38241acb783e1a468fb15d4317670

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 6a77ca8..2ac151d 100644
--- a/config.json
+++ b/config.json
@@ -190,7 +190,7 @@
             },
             "step2" : {
                 "shortname" : "OE Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=3D:1 oe-selftest =
--skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirro=
ring.test_yocto_source_mirror devtool.DevtoolAddTests.test_devtool_add_np=
m recipetool.RecipetoolTests.test_recipetool_create_npm reproducible -T m=
achine -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_S=
AVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=3D:1 oe-selftest =
--skip-tests distrodata.Distrodata.test_checkpkg buildoptions.SourceMirro=
ring.test_yocto_source_mirror reproducible -T machine -T toolchain-user -=
T toolchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             },
             "step3" : {
@@ -407,7 +407,7 @@
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK =3D '1'"
                 ],
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=3D:1 oe-=
selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.So=
urceMirroring.test_yocto_source_mirror devtool.DevtoolAddTests.test_devto=
ol_add_npm recipetool.RecipetoolTests.test_recipetool_create_npm -T machi=
ne -T toolchain-user -T toolchain-system -j 15"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=3D:1 oe-=
selftest --skip-tests distrodata.Distrodata.test_checkpkg buildoptions.So=
urceMirroring.test_yocto_source_mirror -T machine -T toolchain-user -T to=
olchain-system -j 15"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
--=20
2.25.1


