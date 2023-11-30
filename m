Return-Path: <alexander.lussier-cullen@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A32C4167B
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 14:00:23 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.72716.1701352816652337948
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 06:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=te+4qEgx;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: alexander.lussier-cullen@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 099719C320B
	for <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 09:00:16 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id ohQBoDRyHlnd; Thu, 30 Nov 2023 09:00:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A6C6F9C33E8;
	Thu, 30 Nov 2023 09:00:15 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com A6C6F9C33E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1701352815; bh=ZzU+ANPJE+RBvBviWHYN5YyEoFCuniSuCnhf4Z0R1Ik=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=te+4qEgxXYj9abwv6GKpnZFWFdk2jT2EoUGLjbUui0tgEP9OEJpqc2e0mE/Fqf46k
	 IFmlX+A7jiztgK3fhkUYyFAhJ+wyTSftDmaky3lHElvaMIescFHWS+T9jNWDG0ijI5
	 qQJ9lkbn3vre1kFODEHcqCM3iYJsiOuaoZnpY5MxYJkR0R2W0TJgP+ajUpJkf6z0dK
	 b7naygjtyBCQRL7Zx3R/oba0SNjoMcubv0mcGxpz95kQ1F/9LsizPJlf0KL4fGqzBK
	 7muJ8afuTC0+vfbgbD3JPq1FbIFX0LES7LsaKdpkL+xEa5iP2hh+GozlGii744oc8r
	 pjs2+hQFn7yUg==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id Kxmp5KgN1Zpz; Thu, 30 Nov 2023 09:00:15 -0500 (EST)
Received: from alex-GA-78LMT-USB3.home (bras-base-mtrlpq427kw-grc-24-184-147-255-35.dsl.bell.ca [184.147.255.35])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 729DD9C320B;
	Thu, 30 Nov 2023 09:00:15 -0500 (EST)
From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>
Subject: [yocto-autobuilder-helper] scripts/run-toaster-tests.py: run via pytest and fix environment setup
Date: Thu, 30 Nov 2023 09:00:02 -0500
Message-Id: <20231130140002.3794-1-alexander.lussier-cullen@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 14:00:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61779

Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirf=
airelinux.com>
---
 scripts/run-toaster-tests | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index 516965e..08528c7 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -16,13 +16,18 @@ pokydir=3D$(realpath "$2")
 cd $builddir
=20
 bitbake -e > bbenv
-export SSTATE_DIR=3D$(grep '^SSTATE_DIR=3D' bbenv | cut -d "=3D" -f2-)
-export DL_DIR=3D$(grep '^DL_DIR=3D' bbenv | cut -d "=3D" -f2-)
+export SSTATE_DIR=3D$(grep '^SSTATE_DIR=3D' bbenv | cut -d "=3D" -f2- | =
sed -e 's/^"//' -e 's/"$//')
+export DL_DIR=3D$(grep '^DL_DIR=3D' bbenv | cut -d "=3D" -f2- | sed -e '=
s/^"//' -e 's/"$//')
 export TOASTER_DJANGO_TMPDIR=3D$builddir
+export TOASTER_DIR=3D$builddir
=20
 mkdir -p toaster_logs
+
 python3 -m venv venv --without-pip --system-site-packages
 source venv/bin/activate
-python3 -m pip install tox
+python3 -m pip install -r $pokydir/bitbake/toaster-requirements.txt -r $=
pokydir/bitbake/lib/toaster/tests/toaster-tests-requirements.txt
+# reactivate venv to make sure packages are all properly initialized
+deactivate && source venv/bin/activate
+
+pytest -c $pokydir/bitbake/lib/toaster/pytest.ini $pokydir/bitbake/lib/t=
oaster/tests/
=20
-tox -c $pokydir/bitbake/lib/toaster/tox.ini
--=20
2.34.1


