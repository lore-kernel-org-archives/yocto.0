Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.165])
 by mx.groups.io with SMTP id smtpd.web09.4379.1574931179188877993
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 00:53:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=M3OLkNOY;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.165, mailfrom: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574931177;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=pIsyE8kDOe7EuUm1q2XM0cIcvEh8LiT0zj/1C+kSIqg=;
	b=M3OLkNOYa1RdBiev0xyi3PZkFkKnO/aOzqMv+37vlCLle9wY4RXa1eSJxMTq3okm5H
	iabd0qgGk7jkcxxg3ZONQU2TKsTI2CAnnhQ3to9Bqun0S24VhFCSoR0CvbmZknS3cdIV
	pjcJ9hegRJR7lKPctJb5rPbxhrjz7i3Az30gXysVIHsEoi/5F4iEa9ev9FV51tpp6LWd
	TFn4ua86FLOwLm4dM1lVTeRGZg0b1YWYzYz7e8uUS6AFCdD+Zx97TcQ/Ahnp2M9b5/Wj
	Cc9Y04pncFaabYX+ZybIh6rCWnq9M6qhh46a5kgXzMcDa8yZBB9hKJugAUqTH355csxw
	molw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 45.0.2 AUTH)
	with ESMTPSA id h03537vAS8qvBMM
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 28 Nov 2019 09:52:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1574931176; x=1575535976;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=pI
	syE8kDOe7EuUm1q2XM0cIcvEh8LiT0zj/1C+kSIqg=; b=tA0I8Kx2qr8bsApPR9
	SioJ9Wn/AL3d6hDMkyoXBVmsn0TJsiKvPwXFMiqye33o8ThoJsw67OFL2aQPccJ5
	RBWUvs+eelYtcipsWgMAQp/PoSanm1otzdX1GseTAvTH67a2QCFCsCdKHInKjjHP
	x35Pea2+OHxEkBbyqvAGeDBqM=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000222406.msg; 
	Thu, 28 Nov 2019 09:52:56 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Thu, 28 Nov 2019 09:52:56 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Thu, 28 Nov 2019 09:52:56 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=123500ab67=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 28 Nov 2019 09:52:52 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Aj Cit <aj.ci.01.239@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
Message-ID: <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain>
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Nov 28, 2019 at 02:02:29PM +0530, Aj Cit wrote:
> I've followed the instruction from the yocto project:
> https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html

This can not be exactly true, as this guide certainly does not include
anything related to the imx8. So you are either still building for qemu
(as it defaults to), or using seomthing additional that you're not
mentioning.

> 
> 
> till the bitbake command. However, I'm getting the following error:
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
> 
>     Do not use Bitbake as root.

Here is your answer: do not run botbake as the root user :)

In a nutshell, I recommend watching at least the first couple of videos
here:
https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

Greetz
> 
> 
> On Thu, Nov 28, 2019 at 12:29 PM Aj Cit <aj.ci.01.239@gmail.com> wrote:
> 
> > Hello,
> >
> > I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s). I
> > am getting some error when I execute the bitmake command.
> >
> > I'd appreciate if you could guide me with next steps. Any Guide or url
> > will be helpful.
> >
> > Thanks
> > Ajith
> >

> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47444): https://lists.yoctoproject.org/g/yocto/message/47444
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

