Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D57CC7EE25
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:13:27 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.6861.1686139999163380331
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:13:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=iySlDbSm;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id B05B340266
	for <yocto@lists.yoctoproject.org>; Wed,  7 Jun 2023 14:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1686139996;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/eQbKLXU/l+fE9nJIGIATmF4NTADH11dJHk9zUzUeic=;
	b=iySlDbSmIjdS5ovdf6ExMPjkdtf5pvq9ZwN8qrvxiithgGQSqUwxhr30JjUfbacbjYU7rW
	pqa5Vsz5+4fHCgHQ1WAiz6X4zu4MU5Xp+LeW7xjLE+4Yfo+FSRHTNP5STcHq9BuBhq19LK
	h3gTiqLUftxuSPME9VGrMG/gwCP0Bd4=
Date: Wed, 7 Jun 2023 14:13:15 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Approach for generating two WIC files at once
Message-ID: <ZIB0W0oQNaSQ7oxi@aglaia.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:13:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60203


Can the build system be extended to generate two WIC files for on run,
is that possible?

I need the same rootfs once with a boot partition

part /boot
part /

and one image only with rootfs

part /

so I can write sdcards with same rootfs for older systems expecting root
on mmcblk0p1 (BBB debian based) and newer ones expecting it on mmcblk0p2
(BBB yocto based).

Is that possible, how could one approach such a config?

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


