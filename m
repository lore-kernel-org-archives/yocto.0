Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.216])
 by mx.groups.io with SMTP id smtpd.web10.8273.1579101325554926097
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 07:15:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=EOfQIZyy;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.216, mailfrom: prvs=128382ec47=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1579101324;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Qzxs+eokxDpUFmpTrgIRWBRpmuH20OFNmzuVnQb/JTs=;
	b=EOfQIZyyvojZbd0LhMQUBBQ05kpQaUlq1NxohfzMsRnBdxdXa1/cf8sYvWOCQ+Yenr
	nHs3gxdr3oC2v5mcuSB2JzwSKS/Gn5ph5cue+JcSyrVYTvz+EVInV8MPi0kSJZGY8OBc
	KJzdSM33EvXtJ9ByMWwz7c6GMAy9TL/mFljbyzvI3XNQiXQTmni+zAh+Q7BMkGzOE32r
	q4+3qXcrgYKjbsRZBY47/0cK8sSyaZcnqV4J3nt5OWpMFyY0Abgd+dNwQgiEuh/yAUrO
	9pzavCyAnUpA33F9xNG0dKdiWvSN2Wy1zltxi4TiWzmdbYjNCoh2x1NmT/xsB/sYZZpk
	M4Ag==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.4 AUTH)
	with ESMTPSA id R00cfaw0FFFNPGB
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Wed, 15 Jan 2020 16:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1579101323; x=1579706123;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=Qz
	xs+eokxDpUFmpTrgIRWBRpmuH20OFNmzuVnQb/JTs=; b=er6TM4fY5zF3VOKkEM
	fh+6i9JcqMk0AVS/okxACRLcUIewT47vnQryGCidNtEo89ktRsFpzqyEaRpo/Rhw
	tsRs+cidryn+jxBp+KN2uf8mtlGilnGEhQiRcjVCCRdLRyMiTBczAW9VL914EfnA
	Lbrb92ABvm8wvZQAuQPYiW5EU=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000234175.msg; 
	Wed, 15 Jan 2020 16:15:23 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 15 Jan 2020 16:15:23 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 15 Jan 2020 16:15:23 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=128382ec47=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Wed, 15 Jan 2020 16:15:19 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: FooBar <snusbaum@graphicproducts.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #apt #yocto #sdk #toolchain
Message-ID: <20200115151519.2phgrmuvvslst6xf@jholzmayr.localdomain>
References: <CjSc.1579100648909174558.l6tV@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <CjSc.1579100648909174558.l6tV@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Wed, Jan 15, 2020 at 07:04:08AM -0800, FooBar wrote:
> Hi,
> 
> I’m having trouble adding apt to the cross-compile Qt SDK toolchain. I’m hoping someone can direct me to some resources or guide me on how to accomplish this task.

Whats the rationale behind it? I can see apt being useful on the target
under rare/obscure cirumstances, but in the SDK, what do you want to
archieve?

Greetz

> FooBar

PS: Hiding behind "FooBar" doesn't give a very good impression.

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

