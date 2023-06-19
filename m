Return-Path: <stephan.wurm@a-eberle.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC980EB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 06:57:41 +0000 (UTC)
Received: from mail.a-eberle.de (mail.a-eberle.de [213.95.140.213])
 by mx.groups.io with SMTP id smtpd.web11.2360.1687157856750263659
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jun 2023 23:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: a-eberle.de, ip: 213.95.140.213, mailfrom: stephan.wurm@a-eberle.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.a-eberle.de (Postfix) with ESMTP id 63EF4380126
	for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 08:57:34 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aeberle-mx.softwerk.noris.de
Received: from mail.a-eberle.de ([127.0.0.1])
	by localhost (ebl-mx-02.a-eberle.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKlw69-7zlVN for <yocto@lists.yoctoproject.org>;
	Mon, 19 Jun 2023 08:57:33 +0200 (CEST)
Received: from gateway.a-eberle.de (unknown [178.15.155.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "sg310.eberle.local", Issuer "A. Eberle GmbH & Co. KG WebAdmin CA" (not verified))
	(Authenticated sender: postmaster@a-eberle.de)
	by mail.a-eberle.de (Postfix) with ESMTPSA
	for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 08:57:33 +0200 (CEST)
Received: from svr-exch2019.eberle.local ([192.168.1.17]:16228 helo=webmail.a-eberle.de)
	by gateway.a-eberle.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <Stephan.Wurm@a-eberle.de>)
	id 1qB8pO-0003Je-2b
	for yocto@lists.yoctoproject.org;
	Mon, 19 Jun 2023 08:57:30 +0200
Received: from localhost (10.10.30.11) by Svr-Exch2019.eberle.local
 (192.168.1.17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 19 Jun
 2023 08:57:30 +0200
From: Stephan Wurm <stephan.wurm@a-eberle.de>
To: <yocto@lists.yoctoproject.org>
CC: Stephan Wurm <stephan.wurm@a-eberle.de>
Subject: [meta-security][PATCH] dm-verity-image-initramfs: Allow compressed image types
Date: Mon, 19 Jun 2023 08:57:28 +0200
Message-ID: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.10.30.11]
X-ClientProxiedBy: Svr-Exch2019.eberle.local (192.168.1.17) To
 Svr-Exch2019.eberle.local (192.168.1.17)
X-EsetResult: clean, is OK
X-EsetId: 37303A298E357D546C7567
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 06:57:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60337

Using <DM_VERITY_IMAGE_TYPE> in the depends variable does not work for
compressed image types like squashfs-zst, as the resulting task
dependency still contains the incompatible dash. Replacing the dash by
an underscore resolves this issue.

Signed-off-by: Stephan Wurm <stephan.wurm@a-eberle.de>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-c=
ore/images/dm-verity-image-initramfs.bb
index 187aeae..fc12ba0 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -19,7 +19,13 @@ IMAGE_FEATURES =3D ""
 IMAGE_LINGUAS =3D ""
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TY=
PE}"
+python __anonymous() {
+    verity_image =3D d.getVar('DM_VERITY_IMAGE')
+    verity_type =3D d.getVar('DM_VERITY_IMAGE_TYPE')
+
+    dep =3D ' %s:do_image_%s' % (verity_image, verity_type.replace('-', =
'_'))
+    d.appendVarFlag('do_image', 'depends', dep)
+}
=20
 # Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
 do_image[nostamp] =3D "1"
--=20
2.34.1


