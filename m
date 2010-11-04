Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BE4F4C81003
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 13:02:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk5 with SMTP id 5so1538126qyk.14
	for <yocto@yoctoproject.org>; Thu, 04 Nov 2010 11:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=7BLuH78pKfrh1NTismoxJuKdl63yBvyg0OKvuYBBs68=;
	b=Ps6Yf1JYtOiezH/01E7VD4hv3BQdmLEuUoQhDOJEH95WiXMbEJTWY4/PelczCvqLB4
	V7FjT6euqzIdnhkCLkjGiarQV+xT/C/8omGSvnnwigP1bG+mHswH6QVxbG3jA4pyqHTK
	OOle9YUdUMXscsr0R8q8h5QeeJ6/9a9SoeBt0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=KBSQVeqvkWlvHQxtL6Kc2wVfxiOC0VtWzngvYwGY2i1ooXF/E0/10EWOO6AH7SyocB
	JlUfUP2kGeEX5dMrgW9tupsfc/KEX/B6LDbprAvby99wWWc20emTSZBC8CIyCt5P6cv9
	8Haz6XjobGokYJWzKPLG6YPm4HkCelxrDO2I0=
MIME-Version: 1.0
Received: by 10.224.174.71 with SMTP id s7mr48401qaz.361.1288893747483; Thu,
	04 Nov 2010 11:02:27 -0700 (PDT)
Received: by 10.229.228.147 with HTTP; Thu, 4 Nov 2010 11:02:27 -0700 (PDT)
In-Reply-To: <4CD2EB61.2090502@windriver.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
	<4CD1849F.6010303@windriver.com>
	<AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
	<4CD2EB61.2090502@windriver.com>
Date: Thu, 4 Nov 2010 19:02:27 +0100
Message-ID: <AANLkTimiWHMcwukn7j7aCx_KUHsp-yYdcb_G4omDQPpU@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
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
X-List-Received-Date: Thu, 04 Nov 2010 18:02:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Mark,

On Thu, Nov 4, 2010 at 6:20 PM, Mark Hatle <mark.hatle@windriver.com> wrote=
:
> On 11/4/10 8:53 AM, Leon Woestenberg wrote:
> Just an FYI.. the compiler flags for e500v1:
>
> -mcpu=3D8540 -mfloat-gprs=3Dsingle -mspe=3Dyes -mabi=3Dspe
>
> and for e500v2:
>
> -mcpu=3D8548 -mfloat-gprs=3Ddouble -mspe=3Dyes -mabi=3Dspe
>
> Neither of those would be compatible with the existing "ppc" packaging ar=
ch.
> =A0We will need to generate at least one new packaging arch type, likely =
2
> (one for each). =A0Maybe called ppc_spe or something similar?
>
In OpenEmbedded we use the core variant as the packaging name:

TARGET_CC_ARCH =3D "-mcpu=3D8548 -mspe=3Dyes -mabi=3Dspe -mhard-float
-mfloat-gprs=3Ddouble"
BASE_PACKAGE_ARCH =3D "ppce500v2"
FEED_ARCH =3D "ppce500v2"
PACKAGE_EXTRA_ARCHS +=3D "ppce500v2"

Does that make sense?

Regards,
--=20
Leon 'likewise' Woestenberg

