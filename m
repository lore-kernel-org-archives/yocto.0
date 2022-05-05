Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84111C433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 08:43:35 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.8636.1651740205737330340
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 01:43:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net
 header.s=default header.b=d/t+T28/;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 04FF4BD05D;
	Thu,  5 May 2022 08:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 04FF4BD05D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651740204;
	bh=m3mNwmI9wdL7brE7b0+dHs+AP1vMKubcNiPtIWgpFzM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=d/t+T28/RckSgjyz7xUxQXA2FYFKV0vks/giQTM0aYrzDOpEXoEZ1bpDySvLDFYoV
	 adj8AbAlF6oK4mpgIUANF0fE0b7uPoIzD0/YK6ml4Kmzk7i8xLLEhbl75ee+/H112y
	 YSkDvAKA17Rfk3gQ+bS2+Z+2pPXE/eJRB8p4LWScT7egJxCxgLsgnH71J3//rcRvEx
	 XB6d0AeeFBGp5m/q9TX1N2zROWe0TL/YIttghszKm386NaPm7+9RK89WEHyCEKLBnO
	 Fovq258GzOy3PKZN4sD1E+JPgBsRzTm+1CJOAK3rqyvcodCk4aKDzTtyySRJew+/54
	 1L5EIOsaSVxGQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m90jd5oWBHgD; Thu,  5 May 2022 08:43:20 +0000 (UTC)
Date: Thu, 05 May 2022 04:43:20 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 37530BD048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651740200;
	bh=m3mNwmI9wdL7brE7b0+dHs+AP1vMKubcNiPtIWgpFzM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UlgBEz1zV9x3OwJgSxJ/vQcTCyNMX0cAUhrbgpDs2buiF8AmTAKH23AtcYla1vvmV
	 Bql3e7zuibUjrsP05feGF6Kdjm/SOjiKUTa1EFGwcrHaL1cbokdDE+EWkX2naPXbnD
	 dkmdIEF0nE+ZY7+v4GbSqXrlVtqM+tnJ1kDsxdchnHc106P3ag4nsrQvUliNBO1fp9
	 1Qfwu/yzMurZBJxytphMdwPtWIEaszu0UAyHKjvrgGiynCWMlhojlOKwJM7ltWGsl9
	 Hx77xLPRoE5asGUAEefr1ZWhCa0NUU3jKjL8pBXMTy9OMvN4LIvKYONvz2CazKlFmn
	 A6XRfuA7ecrQg==
From: jchludzinski <jchludzinski@vivaldi.net>
To: michael.opdenacker@bootlin.com
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] OE Linux & board-support-package
In-Reply-To: <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
 <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
 <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
Message-ID: <0f4b601e521de98b00927cec77512354@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 08:43:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57001

OK, let's go with that.

I've watched the "Live Coding with Yocto Project #1: download and first=20
build" youtube video. Where is the BSP built in this procedure?



On 2022-05-05 03:16, Michael Opdenacker via lists.yoctoproject.org=20
wrote:
> On 5/5/22 08:39, jchludzinski via lists.yoctoproject.org wrote:
>> A board-support-package (BSP) is software that provides a layer of
>> abstraction from the physical board specifics for the host embedded OS
>> (e.g., VXworks).
>>=20
>> I believe the device tree files (*.dts, *dtsi) in OE Linux provide the
>> same function. It allows to OE kernel code to be independent of device
>> specifics.
>=20
>=20
> The Device Tree files are just descriptions of the hardware. In a
> perfect world, you could indeed use the same mainline kernel to support
> all possible devices. However, that kernel would be unnecessarily big
> for your custom system. You most probably want to customize its
> configuration, and may also need custom kernel drivers and patches.=C2=A0
> There's also the need for a bootloader compiled for your platform.
>=20
> That's why we need BSPs :-)
>=20
> Cheers,
> Michael.
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57000):=20
> https://lists.yoctoproject.org/g/yocto/message/57000
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

