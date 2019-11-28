Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.50])
 by mx.groups.io with SMTP id smtpd.web09.4237.1574929916838305273
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 00:31:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=fBvN0ASJ;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.50, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574929914;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=83i7By/AuebUGCSPMHOUQYgjfBogdU3skRPWKjlEAxI=;
	b=fBvN0ASJv6tMBVsJJ0SlOd/qXzfS4NrMi19Ud4h0buo+p6ZujMtuuB225xNxa6apDx
	whqtresN6vImlgnn9KmclDxFXWD2WFscPc5hxgE10QWMF1Qd3rVXMi2vxItzkb7mF4cp
	X6j3RgM7SUc52pMq35wmOgfmRwoAu36jtkxALeoQHaGtXSoU8M1glSSrHNa15AwVXvS3
	WdGrE71SX/5iJ2QX9XTjXZUU0KTJGjZkOcOY7e/+6x6tINE8F6xvjvKa790PJnotR9n6
	+PkT15Ukbs+hwi3BHvmmaSTYJKu7jS2N0Xwlv7qCm95CxDcWI3lyR7jpx5vB8UJPTXAV
	uxJQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vAS8VsBG3
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 09:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574929913; x=1575534713;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=83
	i7By/AuebUGCSPMHOUQYgjfBogdU3skRPWKjlEAxI=; b=dZDT5T+iNbqmRsw4sl
	SJRtzZpspjF2BUlBvyXFY+Zsr7obRBZ7WGp6LDGIEVYefJM+P+ZIP8TuE6YQtNjB
	fmdCSGcsHFoPhELwibzdztD8tHbCGqUlRhmRB2aJe6tl2RQXmjWQqLzz3ifpIEKm
	PW6Y2adio2skJhHNdpfrQVRx8=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222392.msg; 
	Thu, 28 Nov 2019 09:31:53 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Thu, 28 Nov 2019 09:31:53 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Thu, 28 Nov 2019 09:31:53 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 09:31:52 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Aj Cit <aj.ci.01.239@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
Message-ID: <20191128083152.nkenaani37jqc667@jholzmayr.localdomain>
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Nov 28, 2019 at 12:29:14PM +0530, Aj Cit wrote:
> Hello,
> 
> I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s). I am
> getting some error when I execute the bitmake command.

Please name the layers and their versions in use, the MACHINE setting
that you are using, the bitbake command you are issuing and the error
message. The latter please verbatim, not only the two most prominent
words. Then somebody can have a look.

Greetz

> 
> I'd appreciate if you could guide me with next steps. Any Guide or url will
> be helpful.
> 
> Thanks
> Ajith

> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47442): https://lists.yoctoproject.org/g/yocto/message/47442
> Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3618269
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [holzmayr@rsi-elektrotechnik.de]
> -=-=-=-=-=-=-=-=-=-=-=-


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

