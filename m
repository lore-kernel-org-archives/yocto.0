Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B51C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 22:04:11 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.104111.1701983321183458595
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 13:08:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=AaKuHNVB;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: marlon.rodriguez-garcia@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 998EE9C0CAC
	for <yocto@lists.yoctoproject.org>; Thu,  7 Dec 2023 16:08:39 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id F9XjyRAh1O1J; Thu,  7 Dec 2023 16:08:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 58EE89C280A;
	Thu,  7 Dec 2023 16:08:39 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 58EE89C280A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1701983319; bh=Hj4BOOnb4YyOVOHqce/Uz8H+HwT/RKTOMDT8FhAnyaI=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=AaKuHNVBfJQYtA2wdRpI37DCy5jdsrLVRdCKrmyb8u296Argng1a27OXPsrbzJo81
	 zdYhD/eCN+hYCj6iLDZdz8DDZMRkBHX9XaafggnTMzfASQkFitSDjdc7eAvoG/PJvt
	 pKUMT+Vo58iDHshkJfTRTjR/shBBhxHVOm2ll+MjCfxOPVHTMC85zAqsI05EfgdJ5K
	 OZnii6bKeu2/sciVYlLh9f3YdAO/YNMbDDwQv2spYYGfwEg0lVpX8AALaZDr4Bstay
	 psS98ZklMTPn08O9q7cT9iJ2lwnrXIihvzVztr+E7zvL/BIclNhvRtaFpcxCU4Am2x
	 tZnkguXkSPQYQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id wQxOC4ulRNaq; Thu,  7 Dec 2023 16:08:39 -0500 (EST)
Received: from savoirfairelinux.ht.home (modemcable141.201-58-74.mc.videotron.ca [74.58.201.141])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 2E6FD9C0CAC;
	Thu,  7 Dec 2023 16:08:39 -0500 (EST)
From: "Marlon Rodriguez Garcia" <marlon.rodriguez-garcia@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Cc: Marlon Rodriguez Garcia <marlon.rodriguez-garcia@savoirfairelinux.com>
Subject: [PATCH yocto-autobuilder-helper] script/run-toaster-test : Added new global variables needed to run test in toaster build folder
Date: Thu,  7 Dec 2023 16:08:34 -0500
Message-Id: <20231207210834.205200-1-marlon.rodriguez-garcia@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 22:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61832

Update run-toaster-test to include BUILDDIR and TOASTER_TEST_USE_SSTATE_M=
IRROR which will be use in the build test in toaster

Signed-off-by: Marlon Rodriguez Garcia <marlon.rodriguez-garcia@savoirfai=
relinux.com>
---
 scripts/run-toaster-tests | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index b694e37..ba1f6db 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -20,6 +20,8 @@ export SSTATE_DIR=3D$(grep '^SSTATE_DIR=3D' bbenv | cut=
 -d "=3D" -f2- | sed -e 's/^"//
 export DL_DIR=3D$(grep '^DL_DIR=3D' bbenv | cut -d "=3D" -f2- | sed -e '=
s/^"//' -e 's/"$//')
 export TOASTER_DJANGO_TMPDIR=3D$builddir
 export TOASTER_DIR=3D$builddir
+export TOASTER_TEST_USE_SSTATE_MIRROR=3DTrue
+export BUILDDIR=3D$builddir/
=20
 mkdir -p toaster_logs
=20
--=20
2.34.1


