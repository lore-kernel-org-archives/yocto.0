Received: from mail4.protonmail.ch (mail4.protonmail.ch [185.70.40.27])
 by mx.groups.io with SMTP id smtpd.web11.10007.1596561096956475503
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 10:11:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail header.b=rhfZ92vl;
 spf=pass (domain: protonmail.com, ip: 185.70.40.27, mailfrom: codusnocturnus@protonmail.com)
Date: Tue, 04 Aug 2020 17:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1596561094;
	bh=3g6AinCml2PcEbYkQECbNK40hKGaEYr0UDHpeGUjsD0=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:From;
	b=rhfZ92vlolThBLcaUjLgitp1ZPEVUUOIm2tTTXlWFu5LLP/siEjdZK2RPNxoe8BH7
	 +RV34bpQuUNA0Q+Rp2a5mZq9PbFxW379P0EscXyVRW0g7RJxk0hpL5Qay1PgD0W6np
	 bxoLEjirl1oycvmE4aYkRxUdcK/5gTIW/UAGKln8=
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: codusnocturnus@protonmail.com
Reply-To: codusnocturnus <codusnocturnus@protonmail.com>
Subject: Re: [yocto] cannot bring global environment var into a recipe
Message-ID: <tvYv-B3KBCgR71rYpS6hEJCn_otuk-6-0OX7xybJogUro16qkwziEqnYkGv6Y4dqFUsxwfe1AvDe5I3NPH3apcs28Fb4QCdEE0mAx-hid9s=@protonmail.com>
In-Reply-To: <1507914c-a0e8-c892-6ba9-1d28b48f82cd@comcast.net>
References: <1507914c-a0e8-c892-6ba9-1d28b48f82cd@comcast.net>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think what you need to do is add the environment variable to BB_ENV_WHITE=
LIST or BB_ENV_EXTRAWHITE:

https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-man=
ual.html#var-BB_ENV_WHITELIST

Thanks,

Sent with ProtonMail Secure Email.

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original M=
essage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Tuesday, August 4, 2020 9:54 AM, Rob Prowel <rprowel@comcast.net> wrote=
:

> I don't want to get into a discussion about why it is a good or bad
> idea, but I need to use a global shell variable as follows:
>
> using "sumo"...that's all I can use.
>
> $ export PM1_DEVEL_IMAGE=3D1
>
> or
>
> $ PM1_DEVEL_IMAGE=3D1 bitbake my-image
>
> and reference that global var in a kernel bbappend such as
>
> SRC_URI +=3D "${@ 'file://rootnfs.cfg' if d.getVar('PM1_DEVEL_IMAGE') el=
se
> ' '}"
>
> to include the required fragment that supports rootnfs.
>
> If I define the var right in the bbappend then it works as expected:
> undefined skips the SRC_URI append, and if defined then it adds my
> fragment. I need this to work for a var that is defined (or not) in the
> global work shell, not depend upon the definition being IN a recipe file=
.
>
> I tried using
>
> export PM1_DEVEL_IMAGE
>
> right in the bbappend, but then as far as the recipe is concerned it's
> defined and the conditional always succeeds.
>
> is d.getVar not the right function? What function behaves the same but
> uses real shell variables?
>
> Suggestions?
>
>=20


