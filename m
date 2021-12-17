Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E943C433EF
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 09:55:56 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web09.4455.1639734953978841309
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 01:55:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@klausen.dk
 header.s=dkim header.b=3kECtM+R;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
From: Kristian Klausen <kristian@klausen.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1639734951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lAoT63D5GDpPWHQqvKrYwj+HQMD0b32foK19ly91jqQ=;
	b=3kECtM+RUN5QGn0wYzMf0K8A+gXble4j2Nwja8kq4dy8DhXKJgtvH7GMOArlSdVuiNVym9
	0M9YvvIWP/wLZj7+kYLqIzKzvjgkaxxwRkgJB8gf3z5rlhmOC40MwNPZmIi/I/xOtinh6v
	G8BDpUEpPhmML7LBq6eq1/Mm08JroJA=
To: yocto@lists.yoctoproject.org
Cc: Kristian Klausen <kristian@klausen.dk>
Subject: [meta-security][PATCH] dm-verity-img.bbclass: Fix wrong override
 syntax for CONVERSION_DEPENDS
Date: Fri, 17 Dec 2021 10:55:43 +0100
Message-Id: <20211217095543.202026-1-kristian@klausen.dk>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 09:55:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55605

CONVERSION_DEPENDS hasn't been converted to the new syntax.

Fixes: a23ceef ("dm-verity-img.bbclass: more overided fixups")

Signed-off-by: Kristian Klausen <kristian@klausen.dk>
---
This should also be backported to honister.

 classes/dm-verity-img.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclas=
s
index 0b6d053..93f667d 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -67,7 +67,7 @@ VERITY_TYPES =3D "ext2.verity ext3.verity ext4.verity b=
trfs.verity"
 IMAGE_TYPES +=3D "${VERITY_TYPES}"
 CONVERSIONTYPES +=3D "verity"
 CONVERSION_CMD:verity =3D "verity_setup ${type}"
-CONVERSION_DEPENDS:verity =3D "cryptsetup-native"
+CONVERSION_DEPENDS_verity =3D "cryptsetup-native"
=20
 python __anonymous() {
     verity_image =3D d.getVar('DM_VERITY_IMAGE')
--=20
2.34.1


