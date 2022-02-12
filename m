Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF0C433F5
	for <webhook@archiver.kernel.org>; Sat, 12 Feb 2022 08:56:55 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web08.7216.1644656213494678474
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Feb 2022 00:56:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@inside-m2m.de
 header.s=default header.b=h+uZ93TT;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244,
 mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.inside-m2m.de (Postfix) with ESMTP id 812BF403FA
	for <yocto@lists.yoctoproject.org>; Sat, 12 Feb 2022 09:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1644656210;
	bh=FJPloqs/Uk9KPNXPVaesTu6YfLurM1WFDqXbBej6JH8=;
	h=Date:From:To:Subject:From;
	b=h+uZ93TTvi3PXXA4a85fufCzdGxnKTEVtcEaxjfNN7uQkpN+H7qTfMB2RxScnYAUl
	 voIT2alYVD2f28YyBXZLs5K/1m763BREQEF0IUgEKKLjUGfXGJftUV6T6JaSBq1mU9
	 0yBoQhHdPBhGmBtj40M3ZmQIDSbKI3OZSf3Jjcuq/Nf5G4lbtYlKipdnZFnDfSyvyh
	 h++2pSww9a5bWZPYwWGCt6ROMbws83Fcw0yQrM/Y2jfm2cZJ02des9BotaYhrIHPPn
	 wivRWpVlZByU9XAF5HxOxKMng5lijvyhZrXL5RPMOPXz2g0b933pavz3o5mYeAcMQX
	 4njADJ2OZf3UQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
	by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caufd5Nz_-6O for <yocto@lists.yoctoproject.org>;
	Sat, 12 Feb 2022 09:56:50 +0100 (CET)
Received: from Hephaistos (unknown [94.31.102.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 1C30D403ED
	for <yocto@lists.yoctoproject.org>; Sat, 12 Feb 2022 09:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1644656210;
	bh=FJPloqs/Uk9KPNXPVaesTu6YfLurM1WFDqXbBej6JH8=;
	h=Date:From:To:Subject:From;
	b=h+uZ93TTvi3PXXA4a85fufCzdGxnKTEVtcEaxjfNN7uQkpN+H7qTfMB2RxScnYAUl
	 voIT2alYVD2f28YyBXZLs5K/1m763BREQEF0IUgEKKLjUGfXGJftUV6T6JaSBq1mU9
	 0yBoQhHdPBhGmBtj40M3ZmQIDSbKI3OZSf3Jjcuq/Nf5G4lbtYlKipdnZFnDfSyvyh
	 h++2pSww9a5bWZPYwWGCt6ROMbws83Fcw0yQrM/Y2jfm2cZJ02des9BotaYhrIHPPn
	 wivRWpVlZByU9XAF5HxOxKMng5lijvyhZrXL5RPMOPXz2g0b933pavz3o5mYeAcMQX
	 4njADJ2OZf3UQ==
Date: Sat, 12 Feb 2022 09:56:48 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Pass environment to kernel make
Message-ID: <Ygd2ULlBW06fNF9A@Hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Feb 2022 08:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56166

Dear yocto community
in order to enable the option to use device tree overlays in the kernel
device tree with my bootloader (barebox in this case) I need to pass an
additional environment variable to the kernel (linux-yocto in my case)
make command.

make dtbs DTC_FLAGS=3D-@

Well make dtbs is working, but DTC_FLAGS=3D-@ needs to be added.

Is there a best practice to do this, _append/_+=3D in machine or distro
config or local.conf? Change kernel compile make parameters?

Regards
Konsti

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

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


