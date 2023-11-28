Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40C4DC4167B
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 06:10:04 +0000 (UTC)
Subject: Re: TI AM62x based EV charger platform with Pionix UI s/w Image build problem. #distro #poky #apt #bitbake
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Nov 2023 22:10:03 -0800
References: <CAM6O0Zjb=wciAJQsVr+pswqn=OYD1__9YynrqFaOdKTWuzs6xQ@mail.gmail.com>
In-Reply-To: <CAM6O0Zjb=wciAJQsVr+pswqn=OYD1__9YynrqFaOdKTWuzs6xQ@mail.gmail.com>
Message-ID: <13893.1701151803490754919@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="klY5hsTEPqSzonfwDwLd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 06:10:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61766

--klY5hsTEPqSzonfwDwLd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 10:06 PM, Federico Pellegrin wrote:

>=20
>=20
> Hi,
> nodejs is very, *very*, heavy to build due to it's complex C++ code. I
> would suggest you to limit the number of parallel builds supported: this
> may slow down other (lighter) builds but will avoid going out of memory
> for heavy ones such as node.
>=20
> This can be done by putting in your local configuration
> (build/conf/local.conf or replace "build" with your build directory)
> directives like:
>=20
> BB_NUMBER_THREADS =3D '4'
> PARALLEL_MAKE =3D '-j 4'
>=20
> (this limits to 4, you can play on this depending on number of cores and
> amount of RAM of course)
>=20
> hth,
> Federico
>=20
>=20
> Il giorno mar 28 nov 2023 alle ore 07:00 < sairajlp99@gmail.com > ha
> scritto:
>=20
>>=20
>>=20
>> Hi team,
>>=20
>>=20
>>=20
>>=20
>>=20
>> we are trying to build TI AM62x EVSE SDK referring to https://github.com=
/PionixPublic/ti-am62x-evse-sdk
>> ( https://github.com/PionixPublic/ti-am62x-evse-sdk ) we have tried
>> building in virtual machine and now we are trying to build in Linux =C2=
=A0host
>> pc with 500gb of storage and 16gb ram but still bitbake runs till 99
>> percentage =C2=A0=C2=A0and last module Nodejs takes forever to run syste=
m
>> experiences a freeze. Tried multiple times running the bitbake but still
>> problem remains same .
>>=20
>>=20
>>=20
>=20
>=20
>=20

I was able to build nodejs when I upgraded my RAM to 32GB. Upgrade your RAM=
.

Regards,
Hassan

--klY5hsTEPqSzonfwDwLd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 10:06 PM, Federico Pellegrin wrote:<br />
<blockquote>
<div dir=3D"ltr">
<div>&nbsp;</div>
<div>Hi,</div>
<div>nodejs is very, *very*, heavy to build due to it's complex C++ code. I=
 would suggest you to limit the number of parallel builds supported: this m=
ay slow down other (lighter) builds but will avoid going out of memory for =
heavy ones such as node.</div>
<div>&nbsp;</div>
<div>This can be done by putting in your local configuration (build/conf/lo=
cal.conf or replace "build" with your build directory) directives like:</di=
v>
<div>&nbsp;</div>
<div>BB_NUMBER_THREADS =3D '4'<br />PARALLEL_MAKE =3D '-j 4'</div>
<div>&nbsp;</div>
<div>(this limits to 4, you can play on this depending on number of cores a=
nd amount of RAM of course)</div>
<div>&nbsp;</div>
<div>hth,</div>
<div>Federico</div>
<div>&nbsp;</div>
</div>
<br />
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">Il giorno mar 28 nov 2023 alle ore 07=
:00 &lt;<a href=3D"mailto:sairajlp99@gmail.com">sairajlp99@gmail.com</a>&gt=
; ha scritto:</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid #cccccc; padding-left: 1ex;">
<p style=3D"margin: 0px;"><span lang=3D"EN-US" style=3D"font-size: 12pt;">H=
i team,</span></p>
<p style=3D"margin: 0px;"><span lang=3D"EN-US" style=3D"font-size: 12pt;">&=
nbsp;</span></p>
<span style=3D"font-size: 12pt; font-family: 'Aptos',sans-serif; color: bla=
ck;">we are trying to build TI AM62x EVSE SDK referring to <a href=3D"https=
://github.com/PionixPublic/ti-am62x-evse-sdk" target=3D"_blank" rel=3D"noop=
ener"><span style=3D"color: blue;">https://github.com/PionixPublic/ti-am62x=
-evse-sdk</span></a>&nbsp; we have tried building in virtual machine and no=
w we are trying to build in Linux &nbsp;host pc with 500gb of storage and 1=
6gb ram but still bitbake runs till 99 percentage &nbsp;&nbsp;and last modu=
le Nodejs takes forever to run system experiences a freeze. Tried multiple =
times running the bitbake but still problem remains same .</span> <br /><br=
 /><br /></blockquote>
</div>
</blockquote>
I was able to build nodejs when I upgraded my RAM to 32GB. Upgrade your RAM=
.<br /><br />Regards,<br />Hassan&nbsp;

--klY5hsTEPqSzonfwDwLd--

