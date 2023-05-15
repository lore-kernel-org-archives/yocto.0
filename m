Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEF9FC77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 10:45:21 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
 by mx.groups.io with SMTP id smtpd.web11.85085.1684147519893043167
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 03:45:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: pengutronix.de, ip: 85.220.165.71, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1pyVhd-0001HW-4B; Mon, 15 May 2023 12:45:17 +0200
Message-ID: <a009a6815a0b936ba6aa474a094ea116c772ec53.camel@pengutronix.de>
Subject: Re: [yocto] OTA Updates
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Cc: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 15 May 2023 12:45:15 +0200
In-Reply-To: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
References: 
	<CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 10:45:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60024

Hi Hassan,

Am Donnerstag, dem 11.05.2023 um 20:03 +0530 schrieb MOHAMMED HASSAN:
> Hi all,
> So I am referring this page for OTA updates 
> https://wiki.yoctoproject.org/wiki/System_Update
> 
> However are these all paid or free services. Any more info about these services is welcomed. 
> Also are there any tutorials, YouTube videos on ota updates for yocto? I couldn’t find any though.

for RAUC (which is also noted on the page you referred) there is a quite comprehensive documentation
available at https://rauc.readthedocs.io/en/latest/.

The interesting details about integrating RAUC OTA updates into your Yocto/OE-based BSP using the
meta-rauc [1] layer can be found in https://rauc.readthedocs.io/en/latest/integration.html#yocto

From the community, there is also a set of example layers available collected in meta-rauc-
community:
https://github.com/rauc/meta-rauc-community/

I have once written a blog post for a quick-start using RAUC from within a QEMU test environment
(built with poky and meta-rauc-qemux86:
https://www.pengutronix.de/de/blog/2022-02-03-tutorial-evaluating-rauc-on-qemu-a-quick-setup-with-yocto.html

There are also talks from Leon available on how to use meta-rauc-community, e.g.
https://www.youtube.com/watch?v=Y6r-jSTudGA&ab_channel=YoctoProject

For a full list of RAUC-related talks, videos, etc. see https://rauc.io/pages/media.html

For questions and discussions there is a IRC/Matric chat as well as GitHub discussions and
professional support. The options are collected under https://rauc.io/pages/support.html .

Hope that helps. Good luck with finding the right OTA update solution for your needs 😉


Best regards

Enrico

[1] https://github.com/rauc/meta-rauc

> 
> Regards,
> Hassan
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59989): https://lists.yoctoproject.org/g/yocto/message/59989
> Mute This Topic: https://lists.yoctoproject.org/mt/98828664/3616721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ejo@pengutronix.de]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Embedded Linux Consulting & Support        | https://www.pengutronix.de/ |
Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  |
31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    |


