Return-Path: <alexander.lussier-cullen@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D736FC4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 14:49:59 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.1196.1701442196999772142
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Dec 2023 06:49:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=rksRoFAe;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: alexander.lussier-cullen@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 8D7F39C094E;
	Fri,  1 Dec 2023 09:49:55 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id VpAPcGPUF1Jv; Fri,  1 Dec 2023 09:49:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id BC7739C10F6;
	Fri,  1 Dec 2023 09:49:46 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com BC7739C10F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1701442186; bh=/CZ7fKUpN6OXrcmkTZ1g2sZBH41AbQs1PNwVG7Z7ZWA=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=rksRoFAekzV5iLQeyaKhDcZI/Qdb2luMtblRcg6t+t0vVdAOEsmZFDJd/J57Kompz
	 60H/NQowHdc1vQYIY26oAC1wm2T2wH9EmPp9ttb96SSInD/tdtaUcB72QPP3cDyPLF
	 cryb7DS7l0uH+qfgCninjk7mUDiVxFYKK99JkBmTzAiAtbxPiNUYujaO/YH9JPUpgO
	 9ej8nbY0r0w3TOygz1RrKC99k0oNIHOwtCIbiJGofx1Nm+tap4S9kgeYl8pKlKizQR
	 F184lYxBnpFzlAbuuivUQ0r1YGXqkJ7mYo4GR7l6tAHgcrmKeB2ierAXx4et6Fk8vF
	 6gYuktzw/dXxw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id SxGbx4pONFtG; Fri,  1 Dec 2023 09:49:46 -0500 (EST)
Received: from localhost.localdomain (bras-base-mtrlpq427kw-grc-24-184-147-255-35.dsl.bell.ca [184.147.255.35])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id AA6F89C094E;
	Fri,  1 Dec 2023 09:49:46 -0500 (EST)
From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [yocto-autobuilder-helper v2] scripts/run-toaster-tests.py: run via pytest and fix environment setup
Date: Fri,  1 Dec 2023 09:49:28 -0500
Message-Id: <20231201144928.4191-1-alexander.lussier-cullen@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 14:49:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61789

Strip quotes from directory variables as they caused path errors.
Add environment variable for the toaster artifact directory.
Migrate from tox and django tools to using pytest.
Install python module requirements from the script as this is no
longer handled by tox.

Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirf=
airelinux.com>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-toaster-tests | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index 516965e..b694e37 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -16,13 +16,15 @@ pokydir=3D$(realpath "$2")
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
=20
-tox -c $pokydir/bitbake/lib/toaster/tox.ini
+python3 -m pytest -c $pokydir/bitbake/lib/toaster/pytest.ini $pokydir/bi=
tbake/lib/toaster/tests/
--=20
2.34.1


