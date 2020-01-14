Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [85.215.255.81])
 by mx.groups.io with SMTP id smtpd.web12.12474.1579013260263229979
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 06:47:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=oAIwwOrm;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.81, mailfrom: prvs=128221a452=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1579013258;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Vx7U2ROOhaFsYFsW7DO39HuLfbWN9ctejxtadaWyK8M=;
	b=oAIwwOrmccSapWg/nHGOad5LG+GOb4PzHBz3fh288cGRPZzh1HumXE+HvyrcLILRoO
	PKvzQPSgvpbQEW1RhO/g9udzvWEL6G87VSbiQsGIYJq++ta5Z+ZOA3bN1Xn3ky9SyCKD
	40EROn4BRpMvpCvWu1oRpnuPw+pTC8Rs+Mfsxrqv+jfdeuzwtYCT3wzIlX8tdzqGVBCO
	6w0HprH3OGFL8QDlvh1Xy2YapyLADIhSQ4hj3igMklRr+pMJxq6EEfHD/i3Hvx8YaNsA
	q+zbV+vBfXH/Y02qF+bk6ulWVBktnKV0mb6e8Y42X9DkJS75AvWWa2lWOHbPLHCGNYg5
	WYVw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.4 AUTH)
	with ESMTPSA id R00cfaw0EElaLDt
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Tue, 14 Jan 2020 15:47:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1579013256; x=1579618056;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=Vx
	7U2ROOhaFsYFsW7DO39HuLfbWN9ctejxtadaWyK8M=; b=sVF9XlNR3ZQqH9wpCe
	qqG2kEBQ/5S35sFOk7eRTF69wF0Us9fWBXnhCDhFpEabjMqny4gWufb0dO5xak3o
	glHrqw6iyNuJ5Fazv7kaj0USWJSQP0gaCXS1mgew7U7RmK/lsl9yHw4NxnVBShS8
	OuePaziWwbWbZJ7sGltYOTMBY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000233705.msg; 
	Tue, 14 Jan 2020 15:47:35 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Tue, 14 Jan 2020 15:47:35 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Tue, 14 Jan 2020 15:47:35 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=128221a452=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Tue, 14 Jan 2020 15:47:33 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] building both musl and glibc based images for same machine
Message-ID: <20200114144733.y3oxivkxq7qzvvda@jholzmayr.localdomain>
References: <f0c7df31-e1b6-0b62-eb93-04f009fef5a7@prevas.dk>
MIME-Version: 1.0
In-Reply-To: <f0c7df31-e1b6-0b62-eb93-04f009fef5a7@prevas.dk>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Tue, Jan 14, 2020 at 02:38:29PM +0000, Rasmus Villemoes wrote:
> Is there some way to build images based on both musl and glibc for the
> same machine?

No problem at all - be it either through seperate builds, or
multiconfig.

> Say, I need an initramfs to be as small as possible, and glibc is
> several MB, so I'd like to base that image (and obviously anything I
> include in that) on musl. However, the real root filesystem must for
> various reasons be based on glibc.

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

