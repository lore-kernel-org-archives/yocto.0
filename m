Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web10.10026.1579524777133995365
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 04:53:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=M32EH1nK;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.163, mailfrom: prvs=12888ffd7b=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1579524775;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=/JJthhf3LZZVBW4a5o0lrV6k0We1bpoRIKQIHrq9KnU=;
	b=M32EH1nK7TdVsu4JJEllITFxrc8WmRfEt2jADPKj55wC2jiR97dmHcM2Fer9eYXMEq
	3xmPce4CWGITXU4w62t4YVEns1ZxVpUYCvig7feMmU7NpckjvT/abecg8KG1yBKFal7G
	e0GohLsQvKc7s0EFKHFD06DMYezticJYCq38ZqrFr0RxMnDTWTzfxaid0imIr/QsI6L8
	G4srOLI5QdJgnZV7juktaU+jffHVBVHM9e+1h26Och2i+GHCD8L1ta3nIGMh0Gy4hY4w
	XrMSZHwCa4koXdNKYgk+KV6fVZd0h93B0pGCSsZu7UnHNKHcA4qRw12FromBauDgQZUM
	LN/A==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.1.5 AUTH)
	with ESMTPSA id z03e61w0KCqr0a2
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Mon, 20 Jan 2020 13:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1579524773; x=1580129573;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=/J
	Jthhf3LZZVBW4a5o0lrV6k0We1bpoRIKQIHrq9KnU=; b=v/0lkDkU/4ZKwTWnub
	3qizhKjXDeVHs09Kb7tsneQ7VfyO+koIDX06Hgm8BA9BjoSGdcUcvx5/y0fYT8hJ
	mDNV5GP0wokq+LeUID3s+f23iCLnfU4dlmqomQPqVRr1YEqkg5HpolgIdZaN4PiV
	fkmqGelsdT4gxbhtLYeB5PAoA=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.3) with ESMTPSA id md50000235530.msg; 
	Mon, 20 Jan 2020 13:52:52 +0100
X-Spam-Processed: mail.rsi-elektrotechnik.de, Mon, 20 Jan 2020 13:52:52 +0100
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Mon, 20 Jan 2020 13:52:52 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12888ffd7b=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Mon, 20 Jan 2020 13:52:46 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Arthur Pinheiro <aperronepinheiro@luxoft.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Versioning a recipe based on other recipe
Message-ID: <20200120125246.mxiqgnyg6qirsgbc@jholzmayr.localdomain>
References: <vhDU.1579524046808607981.4EFQ@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <vhDU.1579524046808607981.4EFQ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Mon, Jan 20, 2020 at 04:40:46AM -0800, Arthur Pinheiro wrote:
> I have plugin where its version is based on the module that defines its interface. For my case, I develop a GStreamer plugin and I would like to version its packages based on gstreamer1.0 current (1.14.4) recipe version of my poky revision.
> 
> The problem is that if I also add the same version number directly in the recipe, either by naming my recipe gstreamer-my-plugin_1.14.4.bb or by setting PV inside the recipe, I will have to update this value every time that gstreamer1.0 version is bumped. Often times, a bump in gstreamer1.0's MINOR/PATCH number is not likely require an adaptation of my plugin to work with it, but I still would have to change my plugin's PV version just to keep in sync with gstreamer1.0 package naming.
> 
> Is there a Yocto way to make a recipe's version use another recipe's version as part of it? Perhaps using something like getVar('PV'), but I can't really tell how hacky would that look especially because I couldn't find any examples of this practice.

No, there is not. As always: "Recipe data is local, conf data is global."
(see: https://twitter.com/YoctoThe/status/1217166071519744000)

So, you either have to factor out things into an include file that both
recipes can pull in, define it somewhere in your DISTRO, things like
that.

But in a nutshell: "What happens in one recipe never affects what
happens in another."

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

