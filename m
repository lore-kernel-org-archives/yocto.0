Return-Path: <embedded@vivavis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE6D2C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 17:30:19 +0000 (UTC)
Received: from mx-relay55-hz1.antispameurope.com
 (mx-relay55-hz1.antispameurope.com [94.100.132.228])
 by mx.groups.io with SMTP id smtpd.web10.617.1659547814689825743
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 10:30:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivavis.com header.s=hse1 header.b=ceNsfJ++;
 spf=pass (domain: vivavis.com, ip: 94.100.132.228,
 mailfrom: prvs=0207ddc4a5=embedded@vivavis.com)
Received: from unknown ([185.80.187.2]) by mx-relay55-hz1.antispameurope.com;
 Wed, 03 Aug 2022 19:30:12 +0200
Received: from grp-ex01.Vivavis.int (192.168.17.53) by grp-ex01.Vivavis.int
 (192.168.17.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Wed, 3 Aug 2022
 19:30:08 +0200
Received: from grp-ex01.Vivavis.int ([::1]) by grp-ex01.Vivavis.int ([::1])
 with mapi id 15.02.1118.009; Wed, 3 Aug 2022 19:30:08 +0200
From: "embedded (VIVAVIS AG)" <embedded@vivavis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: libnss-resolve not automatically installed
Thread-Topic: libnss-resolve not automatically installed
Thread-Index: AdinXld1wwtbm81QTxO1GYn0SZVuPg==
Date: Wed, 3 Aug 2022 17:30:08 +0000
Message-ID: <07e0007095824408bedb92b61019fd9d@vivavis.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.1]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 
 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay55-hz1.antispameurope.com with CF09476554D
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 676d90c8b1c35b7bf764a31791855fe6
X-cloud-security: scantime:1.643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=vivavis.com; h=from:to
	:subject:date:message-id:content-type:content-transfer-encoding
	:mime-version; s=hse1; bh=CJXR0Ur3uSUkTvf0SCpVAqxO31xGxdVQcKTw6w
	Bb+VA=; b=ceNsfJ++Q89SdjgnwI+dmdxKk64OAphtB4l+cjcLOnYMHXh7q0kRWp
	sP7xn7Sy6kqRreRzCjzMuE0NaL3gPZPyQZVTSDnCk65bkUDZUZE9dQGKO8bMJ5HA
	Wz7IF2hbQ2qhefUJHVyhlhGCG4JBT+Lh/uBbJBBkm4IqwUamZUOCYeaYbL4iPKql
	/2bSI7bn7xV3aYNgaavjYKtDGjnSN/Nxkcdw71GV5JKM+/2VsHjqTBhpt11pFDdG
	ZMnz887sWITxmQf8nVhr3dg+WIH/FEgbAMAgJxjMwwfb4J4ZwI5F96LxUvz1q8+8
	CGBelLG3WPH1NQRxXhdtfK/nTF4Vq46g==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 17:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57772

Hi,

I'm currently on branch dunfell and using systemd-resolved.

I want to have glibc's NSS resolver functions using systemd-resolved.
I've noticed that the plugin libnss-resolve.so.2 was not in my image
by default.

In systemd_244.5.bb, nss-resolve is in PACKAGECONFIG by default.
libnss-resolve is build and packaged, but not installed by default.

To install the missing library libnss-resolve.so.2, I've added
  IMAGE_INSTALL_append =3D " libnss-resolve"
to my image recipe, but I wonder, if this is the right place or necessary
at all.
=20
My assumption was that having nss-resolve in PACKAGECONFIG will
also install the related library, which is obviously not the case.

Furthermore, I had to write an append-file for base-files, such that
/etc/nsswitch.conf contains the following line
  hosts: resolve [!UNAVAIL=3Dreturn] files dns myhostname

Possibly, I've overlooked something essential.
I'd be very happy, if someone can shed some light on this issue.

Best regards,

Carsten Stelling

