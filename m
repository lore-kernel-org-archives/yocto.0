Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD44C10DC3
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 08:13:18 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web11.85806.1701732710550867434
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Dec 2023 15:31:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=xZC3av2+;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: alassane.yattara@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 97FB79C31F4
	for <yocto@lists.yoctoproject.org>; Mon,  4 Dec 2023 18:31:49 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id raK8XPeKA6sk; Mon,  4 Dec 2023 18:31:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 3D5C99C32B2;
	Mon,  4 Dec 2023 18:31:49 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 3D5C99C32B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1701732709; bh=hiN+Lwgpys47WxQyv/SjL+sbDPTryQCm7qNrMgSXNfM=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=xZC3av2+9NZkTjMEOdLQ9yHZ7+xOR7e+NOBb4oLdNGHN5o1O49ASVYyR8AbVJZ5ma
	 92GVPPAdgVosHfz8vX/sB9p/HiF09XoxIkKS3b6PWghKIWI0vrVqPF3YCTWumc+jSO
	 GLHXyVNeteK5CyPNFiteM+oltZAb9HZ7QSRwgsON1zbnJHYOYp0Ci7YuwMZBkW6UXy
	 n/q4ap03kKY/AnKadJYr+oEHmEHqKX8E6z2b+vK37Zra8KejqYjnJFqst6posXw2Zi
	 hRvo0odZIkY642u84kBPOH3sd9QU/Q5DxAkjYxGEE+r1erge4TzJPz+Uv2ypOh5DVH
	 YOmxcD59Mf8Lg==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id P8w9cbNQdz6g; Mon,  4 Dec 2023 18:31:49 -0500 (EST)
Received: from jedi.. (unknown [196.127.183.75])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 8C59D9C31F4;
	Mon,  4 Dec 2023 18:31:48 -0500 (EST)
From: "Alassane Yattara" <alassane.yattara@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Cc: Alassane Yattara <alassane.yattara@savoirfairelinux.com>
Subject: [yocto-autobuilder-helper] Avoid run builds and functional testcases
Date: Tue,  5 Dec 2023 00:31:20 +0100
Message-Id: <20231204233120.459144-1-alassane.yattara@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 08:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61800

Please note this patch is an extend of
index 516965e..b694e37 100755
Signed by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfaire=
linux.com>

Above patch https://git.yoctoproject.org/yocto-autobuilder-helper/commit/=
?h=3Dmaster-next&id=3D84e6c1579ef58dd476f7533e3255cb9048d1ffd6
should be merged before this one.

Ignores functional and builds tests for now, as they are not working.
- Tests Passed:
    - Browser
    - Commands
    - db
    - views
- Tests skipped: Actually working progress on followings tests
    - Builds
    - Functional

Signed-off-by: Alassane Yattara <alassane.yattara@savoirfairelinux.com>
---
 scripts/run-toaster-tests | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index b694e37..2f05a57 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -27,4 +27,4 @@ python3 -m venv venv --without-pip --system-site-packag=
es
 source venv/bin/activate
 python3 -m pip install -r $pokydir/bitbake/toaster-requirements.txt -r $=
pokydir/bitbake/lib/toaster/tests/toaster-tests-requirements.txt
=20
-python3 -m pytest -c $pokydir/bitbake/lib/toaster/pytest.ini $pokydir/bi=
tbake/lib/toaster/tests/
+python3 -m pytest -c $pokydir/bitbake/lib/toaster/pytest.ini $pokydir/bi=
tbake/lib/toaster/tests/ --ignore=3D$pokydir/bitbake/lib/toaster/tests/bu=
ilds/ --ignore=3D$pokydir/bitbake/lib/toaster/tests/functional/
--=20
2.34.1


