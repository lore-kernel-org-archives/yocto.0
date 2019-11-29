Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.54])
 by mx.groups.io with SMTP id smtpd.web11.7656.1575031639672118582
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 04:47:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=LuNkpyZS;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.54, mailfrom: prvs=12362a4076=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575031637;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=GlLdVETb0o+MncpYIiZu3fjg6U5rBz/CymdQDI+uNO4=;
	b=LuNkpyZSP8vkdB+XCf9Qlp3Ztj84n29lH0GNFoJhTFDbBht4faBaort07L3y1IpVpX
	a7D27KwFzVzJgfKJfZgKZTdoygcYaIhkzegnXYQ51ovKHQUcy//yeJFkB8hfEMfME2Fp
	TL8DerOKGnK218hj2I5/t0HdYkKDFVnYNfpwtSmyJCZm4awygLlYRt7rwlxpkJHPi9RD
	Y6SxR8ymkNK5H+94RV1gtFMPsWlCgUldOmcn8wxlyZv+mfVSQ+z2n2wLesuQQElJdL7G
	oKSZdYkVgNJ3W5HctUTG0WDBAapLMNrP8iNjveGpCScc5oDzL5oF/yCwPEBjG1s3Ts4T
	mftQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vATClHGJy
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Fri, 29 Nov 2019 13:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1575031636; x=1575636436;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=Gl
	LdVETb0o+MncpYIiZu3fjg6U5rBz/CymdQDI+uNO4=; b=u14mVyijyTM7U2ss4d
	jSM+VUAmGhmE63sk0xAFNm4h/RRiSJrQv0/Ow5+rBf/NDUMKciS3fEgX4I4CqiSL
	dOVQzkxG4N1DlriAoncGIPJAjnQNsv+jyNW6XCjlatL4ZOpa5SUAI2kpd9+tgQvl
	oyss8r+qmAPMjVK4e8z3b5GKc=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222908.msg; 
	Fri, 29 Nov 2019 13:47:16 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Fri, 29 Nov 2019 13:47:16 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Fri, 29 Nov 2019 13:47:16 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12362a4076=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 29 Nov 2019 13:47:15 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: keyurthumar0402@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: Private: Re: [yocto] source.list for apt tool in yocto image for raspberry pi #yocto #raspberrypi #debian #apt
Message-ID: <20191129124715.gclnbn2p25cui3t7@jholzmayr.localdomain>
References: <20191129122306.qe2uj4mv3hskmpo6@jholzmayr.localdomain>
 <21067.1575030599633104032@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <21067.1575030599633104032@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Nov 29, 2019 at 04:29:59AM -0800, keyurthumar0402@gmail.com wrote:
> On Fri, Nov 29, 2019 at 04:23 AM, Josef Holzmayr wrote:
> 
> > 
> > use it like a debian, and think it should behave like a debian, then you
> 
> Hey thank you for the reply.
> 
> I don't want to use any runtime package manager. But some packages i am not able to add in image. Like *linux-gpib* driver for NI GPIB-USB-HS. How would i do that ?

You have to write recipes, then. Please see: https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

(And keep the threads on-list please.)

Greetz

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

