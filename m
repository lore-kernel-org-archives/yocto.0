Return-Path: <jp@lebel.pro>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACC7C433EF
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 20:37:34 +0000 (UTC)
Received: from ds.tools (ds.tools [158.69.194.164])
 by mx.groups.io with SMTP id smtpd.web11.3198.1642019853326991832
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 12:37:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lebel.pro header.s=dkim header.b=GkJ2BR8X;
 spf=pass (domain: lebel.pro, ip: 158.69.194.164, mailfrom: jp@lebel.pro)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1269D3027
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 15:37:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lebel.pro; s=dkim;
	t=1642019852;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	 references; bh=WfnATKqeqZroJKYqwwoNH3e5VOZkjUET+qSoPqZhhGE=;
	b=GkJ2BR8XQLfBFcsO+wiRApDXz6HSc0z4LqaA6LK5uOHocFrrnUF2GYry5t2RAem2W6PiIm
	+XFAJzEhcfTwWVlJtXQ+USiF1BX/TEtQSYeS0XIsu5e2/TQ3VmY1lFGk1RbHNW48pUFhjI
	DfvHWLIHTy04tvP9UgbatV1R5Moa02FF0oQotMUt8ODMkDtl7eaKkp9zxcXC17zf2Pejr2
	rEAWIzVTdcOYRZRk2iEP14DVfR6RvuXUFeN3KDExOsop9OexUj4FbJtmV/jAfI5VdDjxa/
	+qdsJa0NnXWj75T/sHBxkqm/fF2uKZ+Il0zSKV6L93o6g5KN127vPSZOX6nhwA==
Received: by mail-qt1-f172.google.com with SMTP id g21so4334515qtk.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 12:37:31 -0800 (PST)
X-Gm-Message-State: AOAM533hKbmXJ2BsNP5nknkca8Mgwsr9SeWHDIoufzyDhxRj+rHnGyhY
	G3IM6J7BBTqZbw1TRAgKJIf/XT8eeWop1OCsh2A=
X-Google-Smtp-Source: 
 ABdhPJzLXT0Qj0mRccr/saYskhxPSlFeuusKuRUixpWwBPKGZkbjsrmjDEQfFQGL6iZ9QfHOYOzUeh+vG1Bd+PyMvgU=
X-Received: by 2002:a05:622a:1714:: with SMTP id
 h20mr1170661qtk.232.1642019851181;
 Wed, 12 Jan 2022 12:37:31 -0800 (PST)
MIME-Version: 1.0
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Jean-Philippe Lebel <jp@lebel.pro>
Date: Wed, 12 Jan 2022 15:37:20 -0500
X-Gmail-Original-Message-ID: 
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
Message-ID: 
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f1a5c605d56889db"
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 20:37:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55819

--000000000000f1a5c605d56889db
Content-Type: text/plain; charset="UTF-8"

For a reason I can't quite understand, everything stated working when I
added

ENABLE_UART = "1"

Does anyone understand the relation between ENABLE_UART = "1"  and
RPI_USE_U_BOOT = "1" ?

Thanks

-------------
Jean-Philippe



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
> I don't use HDMI output though, but a serial console (ENABLE_UART = "1").
>
>
>
> Best regards,
>
> Matthias
>
>
>

--000000000000f1a5c605d56889db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For a reason I can&#39;t quite understand, everything stat=
ed working when I added<div><br></div><div>ENABLE_UART =3D &quot;1&quot;</d=
iv><div><br></div><div>Does anyone understand the relation between ENABLE_U=
ART =3D &quot;1&quot;=C2=A0 and RPI_USE_U_BOOT =3D &quot;1&quot; ?</div><di=
v><br></div><div>Thanks</div><div><br clear=3D"all"><div><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div>-------------<br></div>Jean-Philippe=C2=A0<div style=3D"color:rgb(80=
,0,80)"><br></div></div></div></div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 12, 2022 at 3:59 =
AM Matthias Klein &lt;<a href=3D"mailto:matthias.klein@optimeas.de">matthia=
s.klein@optimeas.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">





<div lang=3D"DE" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-8471047621027351015WordSection1">
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

--000000000000f1a5c605d56889db--

