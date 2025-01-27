Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06074C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:48:21 +0000 (UTC)
Received: from dormouse.ash.relay.mailchannels.net (dormouse.ash.relay.mailchannels.net [23.83.222.50])
 by mx.groups.io with SMTP id smtpd.web10.53208.1737989292025210204
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:48:12 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=AvZeUAjH;
 spf=pass (domain: rootcommit.com, ip: 23.83.222.50, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 1136C782A28;
	Mon, 27 Jan 2025 14:48:11 +0000 (UTC)
Received: from fr-int-smtpout4.hostinger.io (trex-9.trex.outbound.svc.cluster.local [100.117.34.192])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id DE19F781C6F;
	Mon, 27 Jan 2025 14:48:09 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1737989290; a=rsa-sha256;
	cv=none;
	b=mGjSczUNpyxKq/z83s+DO9yf2ElRWipPW2PxppU+uTWLi65bdmqVxbt/eGHQHiQhUiGcvs
	Zr0fRWbMi21D6+DfMMj2vBrlqHV/PZAnjk15BJT1hdyg5lMEf2VGjKj0tT936m0n7Ufe0J
	hq3gC1eQpHNykcmKQdaFAIXLrfEfnXfSmUX9UdP6VhlBgw18ZKD6sVSgukCYYq4Djs71JM
	KTpFiaeBrOS/2AGMPkEoZSgxOAUfOyKyAls+Gu4XqpjuXEC2HI8dzOz6A7MIV30xFwnjCI
	Rm6Smhnrv1QL4l6bY8Mq/NZc3D6urF8jhcihdOVyxO6KYe25xkN3mzg2elYuWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1737989290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5pa7yEc1WnHzc4yAcMdi/JVI0VyxE/GlK3wSUGNKjys=;
	b=AF5jxquo4R4LCmOE1PRGNfQ2lhQxP0BXdsJnjJBzShG9FDUfDEw+yn5TIBvETCcM7B08do
	4bXvGGOOedVWmYEWyvA+wmTCceJSUUayxAk/61HjSYklDfFmOEz3X+3QpOqrCsndVJljH8
	yiS39Zh2lDppKPMqzwkEazUu/QqB5f2JBqt27W/T52DKpDI83Zsg7CAEbHUjNcqjRhdDhX
	AxgbQ6S0RTYxQpfehaUW3DGIZhucbUkN3dNnVDNYGwRsFhhnrdK9ByTkMV4tXk4Id8o8cB
	LY9idtid7RD12mfqMRy9IhGLu/1q/NT7solqgGbh5rfiupZt+nYlJbYbu/Ramg==
ARC-Authentication-Results: i=1;
	rspamd-dd4dc9979-sx6tl;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Well-Made-Juvenile: 17da3bba74b7445c_1737989290710_718422041
X-MC-Loop-Signature: 1737989290709:3929773109
X-MC-Ingress-Time: 1737989290709
Received: from fr-int-smtpout4.hostinger.io (fr-int-smtpout4.hostinger.io
 [89.116.146.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.117.34.192 (trex/7.0.2);
	Mon, 27 Jan 2025 14:48:10 +0000
Message-ID: <7e0a1c17-1615-4fc1-937f-897a8329a8f6@rootcommit.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1737989288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5pa7yEc1WnHzc4yAcMdi/JVI0VyxE/GlK3wSUGNKjys=;
	b=AvZeUAjHv1i6D8Py31g3/AGFKiaiLM4JwXURWss0XtL7C+5gbZCWis/U6dbOrUhUwwRb9A
	aAr/ZuooljUxgrIJDr6I9ZCeLkmCQ6nIEgphvIMl+zAm2YDWbnUOxHk15PTfjjogQUnBL9
	2PxQmn7c+pxNCRIWC5+F/bEMegg5nNJAEcRghlYlFd6r9JBBt0RllXG7sAdsJRhpXbS6F9
	in5+23wG/nkAeufmOwU7Z2SHJ0PBZrVjEr+ptC8CXF7KYduDlDah77V9fGv7z6eBVK3RvV
	JaM0d4rC+yC9ZPnmteeSm4a6k+bgbx+Cck/+xmNWucdYpQ5dTNLEYXIeJ2SQeg==
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com, david.daniel@vrag.ch
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
 <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Mon, 27 Jan 2025 14:48:07 +0000 (UTC)
X-CM-Envelope: MS4xfIIUcGN88Jgpr+1UcmNpkM3axIxp9saxt+Id12sZdp5JqC7bRPaXEjYJWQkJRVUlTOH9Dpbbruby7Hwuppr3YmTLsBwB/9CHd0OjO+QIs9wEA+ZcErhN WEvmE2YxM7xWF2mrLxCNc3GQ6BYBb6hPv6LDi5BAsz1SVupXG/KEZBbOhe1fCdDmeuFHrZbpf9+8FxbyCNI0/QVpdL2hqqWd47BP2A+X1EDkNS7epHvTm+jY yVw2POEp8NEBq9VLJBUdJ+JVswLI3/w3WZaLY97ZzizXQfxUpMlmsAhSezngMHYTGpmRjF6P0h2XAkZvI9m2lQNtBFZy/9TqmKut+55hSF+AtTlGl01mqyuJ JchwWFGof+BfgG1z0dZLwD7Z3xRGH4AXQ2cmcga/2AYIXBmpRP4TdAjTbXtuvHI9uydZ35QXTqf+vCL7Ueannqbr6pZ4RA==
X-CM-Analysis: v=2.4 cv=BvTPwpX5 c=1 sm=1 tr=0 ts=67979ca7 a=5sFyb09FKKSKUZCskZwQtQ==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=iGHA9ds3AAAA:8 a=j1yhTYC8qQdP0btuIVEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:48:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64641

Hi Dave,

On 1/27/25 15:10, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> Depending on the order of unpacking, it is possible that your dts file=20
> overwritten by the actual kernel source.
>
> Try adding it as a patch?


I agree. As far as I have seen, it's more frequent to use a patch to add=20
files to the sources.

>
> On 27.01.25 12:12, David Daniel via lists.yoctoproject.org wrote:
>> Hi
>>
>> I am trying to figure out why the following snippet of a kernel
>> .bbappend file does not populate the custom device tree source file in
>> the proper location:
>>
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0 FILESEXTRAPATHS:prepend :=3D "${THISDIR}/file=
s:"
>> =C2=A0=C2=A0=C2=A0=C2=A0 SRC_URI +=3D "\
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://defconfig;name=3Dconfig \
>> file://cf200.dts;name=3Ddts;subdir=3Dgit/arch/${ARCH}/boot/dts/freesca=
le \
>> =C2=A0=C2=A0=C2=A0=C2=A0 "


I guess you're using "name=3D" for checksums, right?

Did you check that ARCH is defined here? You may try to hardcore its=20
value here.

Cheers
Michael.

--=20
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


