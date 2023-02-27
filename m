Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15B75C64ED8
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 13:47:03 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.90258.1677505621294787505
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 05:47:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=OHVDCH09;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id E8D424002F;
	Mon, 27 Feb 2023 14:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1677505619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ggw2Ogr77nbM6GiIvI9ZpE0MbZJO43Te9kq1JKvQ5ZI=;
	b=OHVDCH099Unza0qhQGElJkbAUYQiB4Hy1V2w2PndPq02z/8nmY1VPQ9vAo62VyPDptKa/n
	V+0i65Rj7VhtHxBB+Yb42BJ/iBito4VkrxbYMHdIxjl8CQYUwC3uIqIn5hdVzvSwb2CkD8
	oisLAb6KlqVhcjIMLMDog19V4azkd7o=
Date: Mon, 27 Feb 2023 14:46:57 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Setup no IP address for eth0 - systemd
Message-ID: <Y/y0Ub9VVkMOl2zr@Hephaistos.inside-m2m.de>
References: <Y/yDMBt1f8l8GSDF@Hephaistos.inside-m2m.de>
 <F93A50B5-6585-4E17-BF5F-CF27620AA29F@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <F93A50B5-6585-4E17-BF5F-CF27620AA29F@iki.fi>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 13:47:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59309

On Mon, Feb 27, 2023 at 01:54:53PM +0200, Anders Montonen wrote:

> Check if you also have Networkmanager in your image.

My other, rather similair mail was answered with a solution which works
fine here in this use case, too:

Renaming the file having an additional prefix like "10-" works like a cha=
rme.
I suspect the number has to be lower than the 80 found in many files in
/lib/systemd/network...


Kind Regards
Konstantin



>=20
> -a

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


