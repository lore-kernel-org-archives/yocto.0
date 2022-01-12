Return-Path: <jp@lebel.pro>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EA6C433EF
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 13:37:35 +0000 (UTC)
Received: from ds.tools (ds.tools [158.69.194.164])
 by mx.groups.io with SMTP id smtpd.web12.23390.1641994649114781775
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 05:37:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lebel.pro header.s=dkim header.b=a9FVJAq6;
 spf=pass (domain: lebel.pro, ip: 158.69.194.164, mailfrom: jp@lebel.pro)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id CE6C21271
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 08:37:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lebel.pro; s=dkim;
	t=1641994647; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=meM2ZIREzZDeeuIMARgmCWDnqpAqT8oYOERNZBMZBYE=;
	b=a9FVJAq6VCwztKpHXzMbjBA1Q0poQ6P9quLseVvOjOu/IYAEAB5fPmhmFDOquuPKU0dAwO
	Rj75EUK8Od6kyS9aS5pjl6IoyjxEd7AuQtdTogcMfvpIPVs80gPM04KmLYa9/jZp9nmJsT
	3kPBNLmuM9bm7GW5VMZBAK2o/c4Uc2UpItpp/nANT8gUmP2kvTOHvWkLHRz5bo+yICWN8E
	B1EZ/FGOuRFyVm66TwU330YuLUxuUVmv8Obp4gm6xNploR68iA9gQRrrwOZtHmovdo3iuK
	5dqcI22PDuSEZQzTMOvgZrQ1WmTe2TGLM7CAyQoLaQ0IGuiVOfV45xIh7McEPg==
Received: by mail-qk1-f182.google.com with SMTP id 193so1757695qkh.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 05:37:26 -0800 (PST)
X-Gm-Message-State: AOAM532B2rwAMXGdZUy2V+tBSSKnRMVEAj7jZM/+LrSmy5DAWw2mz4k5
	qF8YFdWk3li9SacoY4vR5cqE4TQ5K8xE+Sna/BY=
X-Google-Smtp-Source: 
 ABdhPJxI3cjj9mot4LSuEetTMEdd/dI8+Tt8mtZCkn1MQkazKFrPSxZgKEuh2yDPXx/ch5BXxgQvvsQrA/DYHuwYubc=
X-Received: by 2002:a05:620a:cc7:: with SMTP id
 b7mr6444676qkj.176.1641994646096;
 Wed, 12 Jan 2022 05:37:26 -0800 (PST)
MIME-Version: 1.0
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Jean-Philippe Lebel <jp@lebel.pro>
Date: Wed, 12 Jan 2022 08:37:15 -0500
X-Gmail-Original-Message-ID: 
 <CAJiLS+TJ4vPHxtd6vns8MUFt22Ub433p=aYjPOe+0rXw0wnyHg@mail.gmail.com>
Message-ID: 
 <CAJiLS+TJ4vPHxtd6vns8MUFt22Ub433p=aYjPOe+0rXw0wnyHg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009a979305d562abf9"
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 13:37:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55814

--0000000000009a979305d562abf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Matthias for your input.

I have the same problem using the raspberrypi4-64 target. On my end, the
mere fact of enabling RPI_USE_U_BOOT yields a non-bootable image.

The image I generated/burned can be found here:
https://www.dropbox.com/s/6glmmgtx0pcd06t/core-image-base-raspberrypi4-64-2=
0220112004201.rootfs.wic.bz2?dl=3D0

Thanks a lot.

-------------
Jean-Philippe Lebel, ing. MBA
jp@lebel.pro
http://www.lebel.pro
cell: 418-931-3800

*AVIS IMPORTANT:* Ce courriel est strictement r=C3=A9serv=C3=A9 =C3=A0 l'us=
age de la (des)
personne(s) =C3=A0 qui il est adress=C3=A9 et peut contenir de l'informatio=
n
privil=C3=A9gi=C3=A9e et confidentielle. Toute divulgation, distribution, c=
opie, ou
autre utilisation de ce courriel par une autre personne est strictement
prohib=C3=A9e. Si vous avez re=C3=A7u ce courriel par erreur, veuillez s'il=
 vous
pla=C3=AEt communiquer imm=C3=A9diatement avec l'exp=C3=A9diteur et d=C3=A9=
truire le courriel
sans en faire de copie sous quelque forme.

*WARNING:* This e-mail contains confidential information intended only for
the person(s) named above. If you are not the intended recipient you are
hereby notified that any disclosure, copying, distribution, or any other
use of this e-mail is strictly prohibited. If you have received this e-mail
by mistake, please notify us immediately and destroy this e-mail without
making any copy of any kind.


On Wed, Jan 12, 2022 at 3:59 AM Matthias Klein <matthias.klein@optimeas.de>
wrote:

> Hello Jean-Philippe,
>
>
>
> >I'm trying to create a simple image that uses the RPI_USE_U_BOOT option
> but the pi hangs with the rainbow image. I'm able to generate bootable
> images when not using the RPI_USE_U_BOOT option (but I need to use
> swupdate).
>
> >I have the same problem with using the Hardknott branch, leading me to
> think the problem is not the layer but the way I use it.
>
> For me the combination of raspberrypi4-64 machine, U-Boot and RAUC
> (instead of swupdate) works.
>
> I think the raspberrypi4 should also work (but haven't tested it).
>
>
>
> I built and tested my (Poky master branch based) image this morning:
> https://github.com/matthiasklein/meta-yocto-coffee-rpi
>
>
>
> I don't use HDMI output though, but a serial console (ENABLE_UART =3D "1"=
).
>
>
>
> Best regards,
>
> Matthias
>
>
>

--0000000000009a979305d562abf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Matthias for your input.<div><br></div><div>I have =
the same problem using the raspberrypi4-64 target. On my end, the mere fact=
 of enabling RPI_USE_U_BOOT yields a non-bootable image.</div><div><br></di=
v><div>The image I generated/burned can be found here:</div><div><a href=3D=
"https://www.dropbox.com/s/6glmmgtx0pcd06t/core-image-base-raspberrypi4-64-=
20220112004201.rootfs.wic.bz2?dl=3D0" target=3D"_blank">https://www.dropbox=
.com/s/6glmmgtx0pcd06t/core-image-base-raspberrypi4-64-20220112004201.rootf=
s.wic.bz2?dl=3D0</a><br></div><div><br></div><div>Thanks a lot.</div><div><=
br clear=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><div>-------------<br></div>Jean-Philippe Lebel, ing. MBA<b=
r><a href=3D"mailto:jp@lebel.pro" target=3D"_blank">jp@lebel.pro</a><br><a =
href=3D"http://www.lebel.pro" target=3D"_blank">http://www.lebel.pro</a><br=
>cell: 418-931-3800<div style=3D"color:rgb(80,0,80)"><br></div><div style=
=3D"color:rgb(80,0,80)"><b style=3D"color:rgb(0,0,0);font-family:Calibri,sa=
ns-serif;font-size:16px"><span lang=3D"FR-CA" style=3D"font-size:7pt;font-f=
amily:Arial,sans-serif">AVIS IMPORTANT:</span></b><span lang=3D"FR-CA" styl=
e=3D"color:rgb(0,0,0);font-size:7pt;font-family:Arial,sans-serif">=C2=A0Ce =
courriel est strictement r=C3=A9serv=C3=A9 =C3=A0 l&#39;usage de la (des) p=
ersonne(s) =C3=A0 qui il est adress=C3=A9 et peut contenir de l&#39;informa=
tion privil=C3=A9gi=C3=A9e et confidentielle. Toute divulgation, distributi=
on, copie, ou autre utilisation de ce courriel par une autre personne est s=
trictement prohib=C3=A9e. Si vous avez re=C3=A7u ce courriel par erreur, ve=
uillez s&#39;il vous pla=C3=AEt communiquer imm=C3=A9diatement avec l&#39;e=
xp=C3=A9diteur et d=C3=A9truire le courriel sans en faire de copie sous que=
lque forme.<br><br></span><b style=3D"color:rgb(0,0,0);font-family:Calibri,=
sans-serif;font-size:16px"><span lang=3D"EN-US" style=3D"font-size:7pt;font=
-family:Arial,sans-serif">WARNING:</span></b><span lang=3D"EN-US" style=3D"=
color:rgb(0,0,0);font-size:7pt;font-family:Arial,sans-serif">=C2=A0This e-m=
ail contains confidential information intended only for the person(s) named=
 above. If you are not the intended recipient you are hereby notified that =
any disclosure, copying, distribution, or any other use of this e-mail is s=
trictly prohibited. If you have received this e-mail by mistake, please not=
ify us immediately and destroy this e-mail without making any copy of any k=
ind.</span></div></div></div></div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 12, 2022 at 3:59 A=
M Matthias Klein &lt;<a href=3D"mailto:matthias.klein@optimeas.de" target=
=3D"_blank">matthias.klein@optimeas.de</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div>
<p class=3D"MsoNormal"><span>Hello </span>Jean-Philippe,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">&gt;I&#39;m trying to create a simple image that use=
s the=C2=A0RPI_USE_U_BOOT option but the pi hangs with the rainbow image. I=
&#39;m able to generate bootable images when not using the RPI_USE_U_BOOT o=
ption (but I need to use swupdate).<u></u><u></u></p>
<p class=3D"MsoNormal">&gt;I have the same problem with using the Hardknott=
 branch, leading me to think the problem is not the layer but the way I use=
 it.<br>
<br>
For me the combination of raspberrypi4-64 machine, U-Boot and RAUC (instead=
 of swupdate) works.<u></u><u></u></p>
<p class=3D"MsoNormal">I think the raspberrypi4 should also work (but haven=
&#39;t tested it).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I built and tested my (Poky master branch based) ima=
ge this morning:
<a href=3D"https://github.com/matthiasklein/meta-yocto-coffee-rpi" target=
=3D"_blank">https://github.com/matthiasklein/meta-yocto-coffee-rpi</a><u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I don&#39;t use HDMI output though, but a serial con=
sole (ENABLE_UART =3D &quot;1&quot;).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Matthias<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

</blockquote></div>

--0000000000009a979305d562abf9--

