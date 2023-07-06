Return-Path: <ml@calgera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC4EEB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 18:29:21 +0000 (UTC)
Received: from t4v1.calgera.eu (t4v1.calgera.eu [80.208.226.141])
 by mx.groups.io with SMTP id smtpd.web10.32303.1688668160196894515
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 11:29:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@calgera.com header.s=mail header.b=fsNAjaNZ;
 spf=pass (domain: calgera.com, ip: 80.208.226.141, mailfrom: renato@calgera.com)
Received: (nullmailer pid 3050027 invoked by uid 1000);
	Thu, 06 Jul 2023 18:29:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=calgera.com; s=mail;
	t=1688668157; bh=fG03A0NZYjGGigB+wXlRK7IfO2G7Jxgtf0wC1s5XDaE=;
	h=From:To:Cc:Subject:Date:From;
	b=fsNAjaNZP74vUSHnYPJL5XgMA+d9x3Nak3M3kkKYSOys3ToELWg4NZcKXcpmh6D/w
	 FNULGzuPgjit+hFlCke/jKIxo5wCK47yLEO5wCHKSQOKI7EWj1+ZWWM5pNTO81POcr
	 SydkQJ2gRI6jFEu/B2AOvU97k0zUxiNaswTDXu9oWw9xmZjhba1MBkxoqsmi+ub0rJ
	 Sz9AoteiTX1XF5HRSrsHQ7UKoO+cL33xg755AyEVAY41b2MJamn63fB0wvvhlCtAEH
	 kSPAsJr9Z63ArsTpXM4hqv/kvJrmypOQ88vzMUVpKXch7OUpcEXWGSxNdsAMjm8eIx
	 r1oB8p+fR+xFg==
From: Renato Caldas <ml@calgera.com>
To: yocto@lists.yoctoproject.org
Cc: Renato Caldas <renato@calgera.com>
Subject: [meta-selinux][PATCH] selinux-image.bbclass: use bbwarn for warning instead of echo
Date: Thu,  6 Jul 2023 19:29:04 +0100
Message-ID: <20230706182904.3050012-1-ml@calgera.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 18:29:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60535

From: Renato Caldas <renato@calgera.com>

This prevents the offline selinux relabeling from failing silently.

Signed-off-by: Renato Caldas <renato@calgera.com>
---
 classes/selinux-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclas=
s
index 23645b7..51cfb57 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -2,7 +2,7 @@ selinux_set_labels () {
     POL_TYPE=3D$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=3D[[:space:]]*\([=
0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
     if ! setfiles -m -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/se=
linux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
     then
-        echo WARNING: Unable to set filesystem context, setfiles / resto=
recon must be run on the live image.
+        bbwarn "Unable to set filesystem context, setfiles / restorecon =
must be run on the live image."
         touch ${IMAGE_ROOTFS}/.autorelabel
         exit 0
     fi
--=20
2.41.0


