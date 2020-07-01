Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.168])
 by mx.groups.io with SMTP id smtpd.web12.19300.1593604017502093105
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 04:46:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=rcen9ImD;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.168, mailfrom: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1593604015;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=UvVB5w9ydqBThAmn8EeWhW2S4l4oiL0gon6g69WTqYo=;
	b=rcen9ImDNPsfPm1XX44vS5xMcbY6QlaBHRs3m6kkuavEbN/pjnAo+drYHzlrPmx+vq
	WcVm52OuXGayvq51sa/ILc9+iiaNwouBHAjo9PBHewA1+GKwetA/2zp2mo0ZfKzOKkZ7
	IZe+xh1/VPOKyR2ZUIcVOBMyBJaPIhKyOOMjAxBM+NDSbeUd9uQUByB+hg8ugBL69ySl
	2DVir4y+CDqZlo/zAN/V+L4CvH5YNM5kNuSbjCLWTaom0bTUmRRS0W71u+0Fn2i7ztDX
	xFwQ5lcF/BSxQa2UZh2FJT+ZWrClZIfDKXW4b6BjxcQwDFmXwOYMBE6VDy08uIv5MwUh
	mMeg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.10.5 AUTH)
	with ESMTPSA id t09fdew61BksQ3j
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Wed, 1 Jul 2020 13:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1593604014; x=1594208814;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=UvVB5w9yd
	qBThAmn8EeWhW2S4l4oiL0gon6g69WTqYo=; b=bpkH/Hm407mSiv+t07DyNsfBf
	/m2A4HjJS8XkSGVDIGsjTSH2UgCQ/4ei8TLSf7tR6wSwe+LoG/afBeDygy44d1IC
	e5wQYZyHwfxe2VRKyo7JQl+2yttxHUB7tkKlaEqOv/QU01Z9wDbi99kHfiCo2aLa
	BHIIRhBkBkeRR+FK6Q=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000286881.msg; 
	Wed, 01 Jul 2020 13:46:53 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 01 Jul 2020 13:46:53 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 01 Jul 2020 13:46:53 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
References: <5aRG.1593597049418588674.ppPw@lists.yoctoproject.org>
 <29203.1593601479222735866@lists.yoctoproject.org>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <a70b0972-6b09-4ebb-0171-79d012e724e9@rsi-elektrotechnik.de>
Date: Wed, 1 Jul 2020 13:46:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <29203.1593601479222735866@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 01.07.2020 um 13:04 schrieb ingemar0720@gmail.com:
> Hello Josef
> 
> Thanks for you reply!
>  From your link, it seems rrdtool recipe already give an alias as 
> `rrdtool-perl`, is it correct?

Exactly. If activated, then the rrdtool recipe already procides the 
rrdtool-perl package.

> 
> Then shall I add PACKAGECONFIG in .bbappend file for rrdtool? Or i shall 
> add in my own recipe?

The correct place to do this is your DISTRO conf file.

Greetz

-- 
_____________________________________________________________
R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
www.rsi-elektrotechnik.de

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

