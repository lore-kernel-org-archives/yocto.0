Return-Path: <hector.oron@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 249154C80A74
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 05:08:05 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws5 with SMTP id 5so5382449vws.35
	for <yocto@yoctoproject.org>; Tue, 02 Nov 2010 03:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=SFIZ6MymQACroUg7VnlCxSdQpKaemq0wiURu0cTytqo=;
	b=mOyuRTmaZQYncPAJJCPsxlQmdCd9zewLRBgXPe0mHn4LPEGdcljsNHxoX348J97AFQ
	cFFhiJLLFqgvEGum1OyUs9N25lEBk8z/dlTvthyieg8krnR5EhntqikW9CWnyUcRmC7Q
	oIQrCz7b6UjoAHq/S87oN1/I4KKeMfLbJfBtE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=cT8D6kYIzhJ5HGKb6ShO24vlmbD42nYtlKSpuzeBOb3/aB3D44JK/ZQaQjOtbfxm5K
	mJEjqB+gUwLKWEIBrs7rY0OMcDcXLGBOX1UelBCKrOLD5LdAgnSasxBDko89C1EtluqO
	SrKLVOK4fYzOJZyBoUOYc4EFy2j5wRpADEakI=
MIME-Version: 1.0
Received: by 10.224.104.3 with SMTP id m3mr9026844qao.157.1288692483764; Tue,
	02 Nov 2010 03:08:03 -0700 (PDT)
Received: by 10.229.105.142 with HTTP; Tue, 2 Nov 2010 03:08:03 -0700 (PDT)
In-Reply-To: <1288691504.28481.905.camel@rex>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
	<1288691504.28481.905.camel@rex>
Date: Tue, 2 Nov 2010 10:08:03 +0000
Message-ID: <AANLkTi=CmEr8AM952_2T0bYb0UWymJiU+Q0o4nELQ_Rq@mail.gmail.com>
From: Hector Oron <hector.oron@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 10:08:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

2010/11/2 Richard Purdie <rpurdie@linux.intel.com>:

> Which MACHINE is that set for? Its unusual for the system to be using
> linux-dummy.

It is a balloon3 [1]. I think you have not official support for it. I
also got an Intel Embedded Devkit 1-N450 (Black Sand) which I could
attempt to build for it.

[1] http://balloonboard.org/

Best regards,
--=20
=C2=A0H=C3=A9ctor Or=C3=B3n

"Our Sun unleashes tremendous flares expelling hot gas into the Solar
System, which one day will disconnect us."

-- Day DVB-T stop working nicely
Video flare: http://antwrp.gsfc.nasa.gov/apod/ap100510.html

