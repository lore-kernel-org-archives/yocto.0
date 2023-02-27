Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DB90C64ED8
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 11:55:02 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.88268.1677498899406867043
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 03:55:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=ci6f69wv;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=uXJ+9agc5gl4T5QZF5Aw2y0Gnqlg7bblzU0WqqIMQqc=; b=ci6f69wvuOs7/YmE5jmgKGrHid
	CM9sL3bdE/VsWZVH/7ltFlUsp9kXQ1Lnhf7heOLiDpKIqqMtyAPyvKHM7HgCxg4U9y5M9X8XzvljN
	WGBiILkCt3NEOxYGcuxxq+0esczJhWNlWjwNAiZYWuXgwwBQD2Wqg66fn7tQF6F3XwfYkN38eqxz0
	SZOLwGZw4gF5XzfSGBsOA0geFA8EqxvTQrLAisAS7LHu18m3Nny6+wtS0RbRRc27SCpl38kg0yl/2
	pN7PrpAtTH4aQCTsf6zZenEWdfwUYuiTsVBdCw2K0VlFnuPFiPMA6pF7PArHR23heG93n/5dFyleB
	luTwhNwQ==;
Received: from 84-253-254-23.bb.dnainternet.fi ([84.253.254.23] helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1pWc5m-003sDw-J1; Mon, 27 Feb 2023 13:54:54 +0200
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] Setup no IP address for eth0 - systemd
From: Anders Montonen <Anders.Montonen@iki.fi>
In-Reply-To: <Y/yDMBt1f8l8GSDF@Hephaistos.inside-m2m.de>
Date: Mon, 27 Feb 2023 13:54:53 +0200
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F93A50B5-6585-4E17-BF5F-CF27620AA29F@iki.fi>
References: <Y/yDMBt1f8l8GSDF@Hephaistos.inside-m2m.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 84.253.254.23
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 11:55:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59306

Hi,

> On 27 Feb 2023, at 12:17, Konstantin Kletschke =
<konstantin.kletschke@inside-m2m.de> wrote:
>=20
>=20
> Dear yocto, community,
>=20
> I have a yocto build running on a Beaglebone Black with systemd =
enabled.
> No /etc/init.d, no /etc/network/interfaces.
>=20
> How do I set up no IP Address at all for eth0?
> The system always does an udhcpc request and uses that.

Check if you also have Networkmanager in your image.

-a=

