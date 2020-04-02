Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
 by mx.groups.io with SMTP id smtpd.web10.2880.1585820625288284052
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 02:43:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=QyLD46Zq;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.51, mailfrom: prvs=13610dc484=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1585820623;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=+sJ6B7CfTrzuzAJCCYnvBByJbNocXuxEf65g9BhwCAw=;
	b=QyLD46Zq9aYTGwkBDNmYjNmMFnv1Ie5lqyleBDCG2SlUuVAu43ldfqidgpJynorRx7
	Qt8BUHaEY5Dg76QPEpITDlKuxmQRfnnIh90wviE0qqVboXECqD3hwa6mRawd6NAm7qym
	SWNDQDwdvBWAUEiAurtxOk+aAZ5RsCqm9yOJQuiwec4weDP2G+71udI14iVfQsZNrKse
	n3Ufgl2gfVb6cEIQr5T1yLHOQcA7Sb3QKOffte493qijOKYVFZymmttB32pu75VftF84
	CfuiAusC7tkJ3beBlsXZZUg3UlmxY2kCwXUrep5tJOaDc3AeV12jR/o+gxmLFgUiEJ7Q
	Ad1g==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.2.1 AUTH)
	with ESMTPSA id e03460w329hhOoC
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 2 Apr 2020 11:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1585820623; x=1586425423;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=+sJ6B7CfTrzuzAJCCYnvBByJbNocXuxEf65g9BhwCAw=; b=I
	eNCkiFB0GRPYLEtKkQnyzH20ks5sDUqGGlXN/6HqZALSLQOnjcgozHKWAqUTamt8
	Lb1elOtcp3RqjMQ7At2qz0MjPRcQM0aFVjxotN1NjgNZhdwYmPAM+KaSkrPGbLHk
	9eLkJaz6Yown30c5Ed/Zw5Pd/R05ualuyABuxfmBCo=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000259283.msg; 
	Thu, 02 Apr 2020 11:43:41 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Thu, 02 Apr 2020 11:43:41 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Thu, 02 Apr 2020 11:43:41 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=13610dc484=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 2 Apr 2020 09:43:11 +0000
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] apt-get destroying itself when trying to install package #apt #yocto
Message-ID: <20200402094311.ebog6fn7djuwlfpx@jh-mailer>
References: <20200402091802.2obao5jf5ncgrxvu@jh-mailer>
 <18536.1585819904613880645@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <18536.1585819904613880645@lists.yoctoproject.org>
User-Agent: NeoMutt/20171215
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Thu, Apr 02, 2020 at 02:31:44AM -0700, stefan.wenninger@evopro-ag.de wrote:
> So basically our problem is trying to install .deb packages meant for debian-apt with yocto-apt?
> I take it we can only install the .deb packages built by bitbake (deploy/deb/*)?

Exactly.

> Would it be possible to install the debian-apt on our system (outside of yocto) and then use the debian.org packages?

Nope. Whats the reason of using Yocto anyways if you are then jumping
through all kinds of hoops to just make it behave like a Debian? If you
want a Debian, you should probably be using a Debian :)

Having said that, there are buliding tools for ingesting the debian
repositories and spitting out an image, like Linutronix' ELBE or the
ISAR project. Maybe thats what fits your needs?

Greetz

> 
> Thanks for pointing us towards that package management whitepaper, I am sure it will help us properly setup packet management of our yocto-built .deb packages.
> 
> Stefan

> 


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

