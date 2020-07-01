Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.54])
 by mx.groups.io with SMTP id smtpd.web12.19924.1593606445137806283
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 05:27:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=jpP9c92x;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.54, mailfrom: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1593606442;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=u71/v2druZt+sdNQUyh9f676BZGQiapVlXTdipVLgqY=;
	b=jpP9c92xQbBRQ9AX+pze0msmkWvSG/1Ce2/gpoqFmB0aJTO7jWFvTpahvN5rgJ8aw/
	EQttgAEEdE6ivs2tKp2vXEUDBRWeb9Omq6BT7Jgmogeijk/KkTNjSia1RWzOp3ECEraP
	gHMfuBzAR/fQvUWi/Goe9GioaO7nBMtlt6ic4vlrUEWaipNsnBzH6klB+HOQqGKATPHD
	wzaGwdJrziGxxEBk8Tp1mUmlFMaCl7mM5GBs+rHhxCcg2cl8yCbnwUvaCMWMx4EtRb2f
	kKGb53qFBlpOAS4lVFHlDBch4J36JZ5Z0lA3bp4aUjoktsNa2b42aJJBDoShpk71IB2x
	MbDw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.10.5 AUTH)
	with ESMTPSA id t09fdew61CRMQHU
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Wed, 1 Jul 2020 14:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1593606441; x=1594211241;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=u71/v2dru
	Zt+sdNQUyh9f676BZGQiapVlXTdipVLgqY=; b=jASiFs6fZbfjX/lQBCiC4yoau
	G4Lxf4aCwCBNl0IWrqPr96Md+UJT0QNBgn5hB1h07bwviksce5xAJQeSyew9UuL1
	MUa1mzrFs1AmJ22AGDsc0vAfn++wAG+4A2emLynU+brka+plkOYApFhXyq1lW8zp
	o6cBRCU+9AR/XeKFgs=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000286906.msg; 
	Wed, 01 Jul 2020 14:27:20 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 01 Jul 2020 14:27:20 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 01 Jul 2020 14:27:20 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14517a8ec1=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install rrdtool-per package?
To: yocto@lists.yoctoproject.org
References: <a70b0972-6b09-4ebb-0171-79d012e724e9@rsi-elektrotechnik.de>
 <3093.1593605118041877301@lists.yoctoproject.org>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <f148084c-81a8-aa23-5581-735b30dd054b@rsi-elektrotechnik.de>
Date: Wed, 1 Jul 2020 14:27:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <3093.1593605118041877301@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 01.07.2020 um 14:05 schrieb ingemar0720@gmail.com:
> On Wed, Jul 1, 2020 at 04:46 AM, Josef Holzmayr wrote:
> 
>     The correct place to do this is your DISTRO conf file.
> 
> Is this the correct way to set up it?
> 
> PACKAGECONFIG_pn-rrdtool="rrdtool rrdtool-perl"

Please see

https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#var-PACKAGECONFIG

Section "configuration file"

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

