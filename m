Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7400C4706C
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 09:34:43 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web11.9470.1705397680451557785
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 01:34:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MFvXxk0c;
 spf=pass (domain: gmail.com, ip: 209.85.222.49, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-7ce4512cc24so3096941241.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 01:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705397679; x=1706002479; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFULtkvCkMn3W/iY4lzcWHPxepL7j8n9lt26Pp1va4c=;
        b=MFvXxk0cpEJqSbSwTcZOlXVungaRigg1FbwPndpGFNfhcXdK8zt8cu+8IccXwwMbj7
         ShGZNm4KbAEApTbNy0sMuJEKLTjpSLqkV2gWGBOjfo8Ufu+kKGAB5kM9bgpAREn/Ovzq
         vZMW6iVl45xfCLGe7QGvYMHy/8PlQW39XGQ/f2b2sLLE3s76C3L1C/7ulr0FbfT6R6AZ
         qejILZ/WbmXMG00VRCkjM47tnUva7kJtJAFZYHFbOMpTF66teTBaA2dTyUhxUZU3Sk0D
         ln7J6NHMzHOI+yfuDDNJb8V43sIQpUP//blQlMVeAxuGDLSegHTdPAWXO5PjGaq0wpIN
         ml4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705397679; x=1706002479;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nFULtkvCkMn3W/iY4lzcWHPxepL7j8n9lt26Pp1va4c=;
        b=IturSGbYhQQDP6OiKHCiAgxSCSPVOnuxIJeedAqCjujT5gghPxGilj9SPuUcj9mNpG
         xh2RIjzl+60Juwmsjl+xs1V2PJRIp5/9sw1ODvgq6cDgp9oCKmI3WoefhwqU0mkEiGuu
         IyQrQZQp6ftpuojDv+wFIGR9KT8zkpkhgYGoeSprkYdQohJEzVbXZUsqGq0nXMrYflW6
         rYVdtoAoOEeH0VQ8BXAB0uR36tPFS8ns2RQIur0zfjiRgiA+AqJduGWrjsqsoblGj2fe
         Ph0Po3qRgIoIZGuHrk3rzzBaThVwsHqCP9wRQc6nfv8Zf5GdKxv2niI1S0cIRdR5DsiU
         IfxA==
X-Gm-Message-State: AOJu0YzPyovvjSmyZblxIkLMnJ13sHC34h46334XK3zxXChTidczGWgb
	+KGzVK8cwVQpz//snCfEh0S8t+b/SPeuYwiW/qVC+VBE/rrGKg==
X-Google-Smtp-Source: AGHT+IHfdWt/9YAR5BnQdF2PXwt/DIyiYfp2rGIjz6sI23/PMDtUUl0c+dwZNGbl2otEKfDttW7W5TZS2au3bLg6WDQ=
X-Received: by 2002:a67:b10b:0:b0:468:1c0b:3a91 with SMTP id
 w11-20020a67b10b000000b004681c0b3a91mr3633172vsl.41.1705397679168; Tue, 16
 Jan 2024 01:34:39 -0800 (PST)
MIME-Version: 1.0
References: <CADjezmYMjHMXRwA7UF+_RFQivJ84rHpm2HyfEak_Cfsv1G=ftA@mail.gmail.com>
In-Reply-To: <CADjezmYMjHMXRwA7UF+_RFQivJ84rHpm2HyfEak_Cfsv1G=ftA@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 16 Jan 2024 09:34:28 +0000
Message-ID: <CANPvuR=1KADuvR6Hym5YAW4sWOAdLzp7ww+S1d5yo0KaRsZTLQ@mail.gmail.com>
Subject: Re: [yocto] append recipe to multiconfig build from top-level local.conf
To: yocto@lists.yoctoproject.org, mattwood2000@gmail.com
Content-Type: multipart/alternative; boundary="000000000000de2517060f0cd67f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 09:34:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62167

--000000000000de2517060f0cd67f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Matt Wood <mattwood2000@gmail.com> escreveu (segunda, 15/01/2024 =C3=A0(s)
19:44):

> Hi,
>
> I was wondering if the IMAGE_INSTALL:append syntax could work in
> multiconfig environment from the top-level local.conf file?
>
> For example, I have a meta-layer that defines the muitconfig (main.conf
> and initramfs.conf).  From my build directory, I was hoping to append the
> IMAGE_INSTALL list only for the main configuration similar to how it can =
be
> done from local.conf in a standard build.  I wanted to avoid having to
> modify the meta-layer files.
>
> I tried the following from local.conf but neither worked:
>
> IMAGE_INSTALL:append:mc:main =3D " pkg"
> IMAGE_INSTALL:mc:main:append =3D " pkg"
>

To have multiconconig you need to have more than one machine configurations
so It should work with something like:

IMAGE_INSTALL:append:main =3D " pkg1"
IMAGE_INSTALL:append:initramfs =3D " pkg2"

Jose


>
> Is there syntax for this or would I have to put this in an image recipe o=
r
> the multiconfig .conf file?
>
> Thanks, Matt.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62161):
> https://lists.yoctoproject.org/g/yocto/message/62161
> Mute This Topic: https://lists.yoctoproject.org/mt/103747116/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000de2517060f0cd67f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Matt Wood &lt;<a href=3D"mailto:mattw=
ood2000@gmail.com">mattwood2000@gmail.com</a>&gt; escreveu (segunda, 15/01/=
2024 =C3=A0(s) 19:44):<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I was wondering i=
f the IMAGE_INSTALL:append syntax could work in multiconfig environment fro=
m the top-level local.conf file?</div><div><br></div><div>For example, I ha=
ve a meta-layer that defines the muitconfig (main.conf and initramfs.conf).=
=C2=A0 From my build directory, I was hoping to append the IMAGE_INSTALL li=
st only for the main configuration similar to how it can be done from local=
.conf in a standard build.=C2=A0 I wanted to avoid having to modify the met=
a-layer files.<br></div><div><br></div><div>I tried the following from loca=
l.conf but neither worked:</div><div><br></div><div>IMAGE_INSTALL:append:mc=
:main =3D &quot; pkg&quot;</div><div>IMAGE_INSTALL:mc:main:append =3D &quot=
; pkg&quot;<br></div></div></blockquote><div><br></div><div>To have multico=
nconig you need to have more than one machine configurations so It should w=
ork with something like:<br><br>IMAGE_INSTALL:append:main =3D &quot; pkg1&q=
uot;<br>IMAGE_INSTALL:append:initramfs =3D &quot; pkg2&quot;<br><br>Jose</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div></div><div><br></div><div>Is there syntax for this or woul=
d I have to put this in an image recipe or the multiconfig .conf file?</div=
><div><br></div><div>Thanks, Matt.<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62161): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62161" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62161</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103747116/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103747116/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000de2517060f0cd67f--

