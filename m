Return-Path: <hector.oron@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0A1C4C80044
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 06:39:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyg4 with SMTP id 4so4547244gyg.35
	for <yocto@yoctoproject.org>; Tue, 02 Nov 2010 04:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=B7SuCjyzfuJyPQXMTjqp9tCBQ8zRWACSoRxxrpzxrJk=;
	b=x0AgRKjtMBuShlHelfzO/vgo6yBpvfgT/JmSGdkDUUVu+x/msPsynLUVFHFD/QmGzA
	Bp86OEw+dHMm2hj69lQfiJTjGJhFdG5CpHmcygRdjdt+nZgnSzGy+OSYRhCadQh8l8LX
	iZX7joDJ67OUJiN5kGY3OEfy1WpVtNUYnTunM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=tmHufuYrc8W+6vzqs39rQGk5ltRUIRDuBOnKRiqLIyBNMbl75UtwptA+H31xj2Y9uq
	IXUBpP1radZXBUdfZ/3ATHO/sc/pQrssOuIIM8zAsbVw9VpeHqUbxUIJn3fs6D7A00BZ
	nyOinSgWhc7EbvOZb2OX3ghNU+hmYyCKQ7BJc=
MIME-Version: 1.0
Received: by 10.229.109.199 with SMTP id k7mr16275141qcp.239.1288697947424;
	Tue, 02 Nov 2010 04:39:07 -0700 (PDT)
Received: by 10.229.105.142 with HTTP; Tue, 2 Nov 2010 04:39:07 -0700 (PDT)
In-Reply-To: <1288697349.28481.1131.camel@rex>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
	<1288691504.28481.905.camel@rex>
	<AANLkTi=CmEr8AM952_2T0bYb0UWymJiU+Q0o4nELQ_Rq@mail.gmail.com>
	<1288697349.28481.1131.camel@rex>
Date: Tue, 2 Nov 2010 11:39:07 +0000
Message-ID: <AANLkTi=HhFALrXhirP5d_SS98KARKbEQh14FLFE5Pb7d@mail.gmail.com>
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
X-List-Received-Date: Tue, 02 Nov 2010 11:39:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

2010/11/2 Richard Purdie <rpurdie@linux.intel.com>:
> So to be clear, you set MACHINE=3D"balloon3"? You're therefore building
> with some layer or additional metadata? I'd suggest trying a supported
> machine like "atom-pc" first before trying to add your own.

Yes and yes. I'll attempt "atom-pc" later on, but that is not much of
interest for me. Thanks.

Best regards,
--=20
=C2=A0H=C3=A9ctor Or=C3=B3n

"Our Sun unleashes tremendous flares expelling hot gas into the Solar
System, which one day will disconnect us."

-- Day DVB-T stop working nicely
Video flare: http://antwrp.gsfc.nasa.gov/apod/ap100510.html

