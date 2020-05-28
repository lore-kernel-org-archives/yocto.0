Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.52])
 by mx.groups.io with SMTP id smtpd.web10.7944.1590653241630656597
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 01:07:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=FXs/luou;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.52, mailfrom: prvs=14172d03e9=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1590653239;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=q83ILEx9607FXBnLoDpO+BPZvqWD678TqAFT+CVLLos=;
	b=FXs/luounmv6fBf23SqLNQWnh8OzvdrH6Dkmdoos9GOYW2xVkcT5M4r27m4IRG2Ck7
	i2N5gC9+2IxpdHQxAMb1t4Ye8YRqaow/Z5wouUf1/LbijtQVblAktzSoItMcD5cwIdoP
	sVbjRXG8Gayn8dFypRbfiYK4AwH7XiB9nEeooWLc//7dgkT4DdwNblWEHS9FCBjoJxlD
	DgZl0WtYExFk95jyn+1YEYG7BOCB9K9LcrcPbsvQbxi11SqjqceNbNezJGm2fiDSs8f2
	nGpH8hrgY1vB3AitUa8KcR45J/5eK3rAMNhtXrT4pXd+0qgXSQgtcKofkfTA9u8deik5
	mVIQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.9.0 AUTH)
	with ESMTPSA id j08dacw4S87I0Kl
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Thu, 28 May 2020 10:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1590653238; x=1591258038;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=q83ILEx96
	07FXBnLoDpO+BPZvqWD678TqAFT+CVLLos=; b=dQkOITFng98fvn4GQC4EbDzUV
	O9fBMEAoK5SzzHRjCtncJKFdh9/b4W58+lscIYNvau018Mi9Hu6dN8GxCbYSrWbb
	ShifX+Ps+88MxoO9Irh0S9B+CR0H7LdEA2v0OVpiI2JApxVdDVboMGIBsf7dgah3
	zTH+yY7bBqkO6xsEmY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000276446.msg; 
	Thu, 28 May 2020 10:07:18 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Thu, 28 May 2020 10:07:18 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Thu, 28 May 2020 10:07:18 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14172d03e9=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #apt #linux #yocto #raspberrypi., apt, gcc, sudo not present
To: yocto@lists.yoctoproject.org
References: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <fe62ae2d-871a-7508-0652-700e0412160f@rsi-elektrotechnik.de>
Date: Thu, 28 May 2020 10:07:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 27.05.2020 um 12:06 schrieb Siddhartha V:
> Hello,
> 
>    I built the image for Raspberrypi3B+ board. But when boot the board 
> gcc, apt, sudo were not there. Actually only the poweron and poweroff 
> and few basic commnds like, ls, mkdir, whoami were working. May I konw 
> what wrong I did while building please.

This sounds like you actually want an ubuntu. Why not just use it, then? 
Beating a yocto build into shape will always just leave you wanting and 
complaining, unless you are willing to get rid of your assumptions.

Hint:
The frist things you have to get out of your head are expecting apt, 
sudo and gcc on the board.

Reasoning:
- no apt, because the images are usually constructed at build time 
including all expected software. Runtime package management is actually 
rarely needed.
- no sudo, because you can just log in as whatever user you want to. And 
in the product case it has no use because usually people do not login, 
hence no need for its security means.
- no gcc, because all compilation is meant to happen at image building 
time, or at least on the development host.

Of course this is only a very generic, top-level explanation and use 
cases diffee. But If the mindset does not fit right from the beginning, 
then there only lies trouble ahead.

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

