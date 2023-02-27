Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14264C64ED8
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 10:13:42 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.86917.1677492813403826102
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 02:13:34 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=aKCMjobj;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 5CBD04020E
	for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 11:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1677492808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Z8UfYN04ZZRZ1+ak1Dzi00HzwcbHPz/t5uA2QC2926Q=;
	b=aKCMjobjFXNrHLVA3OoG3bVa3HtO+5OQ6ZFZ3HYRsaBLor/CUzxlhpOcOIBBXAOZcaVSpg
	nqZm1u1F4qQ5YG40zU2CUS5Mn0yBCTn3OIymmf8Vm4PiF1CRDcFrfO2TO6mPauY+dYTlzR
	ggrzinKLSh1jDedvlUluEpOjMu5/T+c=
Date: Mon, 27 Feb 2023 11:13:27 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Setup a static IP address - systemd
Message-ID: <Y/yCR/KJI6NNyimz@Hephaistos.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 10:13:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59303

Dear yocto, community,

I have a yocto build running on a Beaglebone Black with systemd enabled.
No /etc/init.d, no /etc/network/interfaces.

How do I set up a static IP Address for eth0?
The system always does an udhcpc request and uses that.

I have=20
systemd-networkd.service loaded active running=20
and tryed the following file in /etc/systemd/network:

# cat eth0.network
[Match]
Name=3Deth0

[Network]
Address=3D10.2.3.4/24
Gateway=3D10.2.3.1
DNS=3D1.1.1.1


Kind Regards
Konstantin


--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover


