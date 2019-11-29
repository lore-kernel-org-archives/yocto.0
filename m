Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
 by mx.groups.io with SMTP id smtpd.web12.7439.1575030195114105672
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 04:23:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=W1c+gZIb;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.51, mailfrom: prvs=12362a4076=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575030193;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=KVy6xwJu6g8OLKURPY+z8QGFgdqjJnr5R6mCi8a2cj4=;
	b=W1c+gZIbaIAPvQA5xrRRMMFc+paEzyAnpqe0FulNyxUFLKiyGlGcQpCPV9IfEL5zKL
	RDHwbMRkC70CN1zOHVA8l5t2Nqer4/Qs5jkXcKYQjCHVmgVYEb0XIAvCSTQBtSGnhlyp
	6NXjDj29lWuTfAxF7VtkbPQ84B3DKIeo12kSqrlMpmAEnOMys1g7b0LFrCoKcMF7PfHz
	7fOA6IHILQCJwsJNJOOThPRyMJcXagYwMPSMLAwtlB/3TbjqPApwJ7lLz0wyMrfu4HzX
	TWuvzeAIvU/NZKrFrooHAFx63Qs9/0a/Z0PR+mUuz8fAqTuyF+YTX0+sl4heHQhYFp2B
	JEkw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vATCNCGC8
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Fri, 29 Nov 2019 13:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1575030192; x=1575634992;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=KV
	y6xwJu6g8OLKURPY+z8QGFgdqjJnr5R6mCi8a2cj4=; b=weOhRZ8BSsny6gR3IU
	l6VBTzJYR3WiR0fwm0fkscXKSJfrNigMP+WEQUVQZvuymwVXyFDlMFz7zadT8gFA
	KJNo8uzb/dJEno/mkZIOyOqS8Th5CUN8IZ5HT8vyz8D2cQo+vXx2dQqfaG6UZsS2
	PYx/7BkXkMCmEwE4OYrDtFvHk=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222896.msg; 
	Fri, 29 Nov 2019 13:23:10 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Fri, 29 Nov 2019 13:23:10 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Fri, 29 Nov 2019 13:23:10 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12362a4076=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 29 Nov 2019 13:23:06 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: keyurthumar0402@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] source.list for apt tool in yocto image for raspberry pi #yocto #raspberrypi #debian #apt
Message-ID: <20191129122306.qe2uj4mv3hskmpo6@jholzmayr.localdomain>
References: <rXML.1575028601834605624.P1zJ@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <rXML.1575028601834605624.P1zJ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Nov 29, 2019 at 03:56:41AM -0800, keyurthumar0402@gmail.com wrote:

There is a lot of things confused in here, it seems.

> I Have built yocto image for raspberry pi.

Ok. Congratulations!

> It is debian based and...

You mean, you set packege PACKAGE_CLASSES ?= "package_deb"?

> ...apt is already installed.

...which in the end is juut a binary.

> What should i write in source.list ? As I don' t have my personal repository please suggest some standard repository.

There is none. The standard practise is to build the image with all the
things you need, and not use runtime package management. If you want to
use it like a debian, and think it should behave like a debian, then you
probably should just run debian.

Yocto builds a custom distribution, therefore no "official" packages
exist.

Greetz.

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

