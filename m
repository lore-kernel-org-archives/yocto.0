Return-Path: <perceval.arenou@bilberry.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D363C433F5
	for <webhook@archiver.kernel.org>; Sun, 27 Feb 2022 14:38:19 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.9295.1645972697118678891
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 06:38:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bilberry.io header.s=google header.b=AgtL+UAg;
 spf=pass (domain: bilberry.io, ip: 209.85.221.49,
 mailfrom: perceval.arenou@bilberry.io)
Received: by mail-wr1-f49.google.com with SMTP id r10so11667310wrp.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 06:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bilberry.io; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=UH+dvUf0h2UYqg0/+CVuyMaYeT+mpPOQ/FeVRVrM3K4=;
        b=AgtL+UAgHSJuRYXEf+UsAbIpey4GqJqFqh0IEmaYkdxC730iRtrbVgMnLfxxwUJeSF
         IqXOjU1DpFktwnKGiX0Gj1kCo6WKhv1qpTavDBZkiqY5VlG16Wle6FmiETDTnO7AWDnh
         x666CMR6n+MBF5aqyfjmFEOzSRVYjFYurylR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UH+dvUf0h2UYqg0/+CVuyMaYeT+mpPOQ/FeVRVrM3K4=;
        b=yBUFVW48vruVy5cGdSqlcwx0JjA4jtkk+f/PMJpQmyapdu6yRMQwnMPLSiLRrGaBAk
         QgwVkYQGEuSh7w2mezdd1gHT4z+vr2zZZ59jYuE5CAALjD9ob/SxSJE+ZH2szqsoepcV
         E6LwCLd0sI2zCtHqmUdoRoBAJveLQAmC3y5Q3pByBC1goS+Je6uRPgNLM9sCHuYrO2e3
         BAnRZbLMn8vDjff8BNKGTrUrekeOKarBOIDRs3vXZddCF/dhEKmOtB+vs2zL5S5FAldt
         WXqcEjegCZms84I6+ZvCPaE4qIPHiA09XZEjiVyrNPQQUBF2owcfyBZkXOFdrt9UA184
         uvPQ==
X-Gm-Message-State: AOAM5320GDXCY2F3ZFI0W0NCq2j49ZTrdnVZGxr55y6TQQbx6AhgQZEc
	scVqwpXbIKPbVCZCa1MfRAKIemiTlODrs5URpnIPr1FhOGGgdw==
X-Google-Smtp-Source: 
 ABdhPJwJKV1Kp251FK78yyoJLhovUXPv66XHXW022QGvEwi8FuAE1MIuhYJJIcNcZT+TdQufpQqUDiCm2qM4MpVrro4=
X-Received: by 2002:a5d:6052:0:b0:1ed:9fcc:3055 with SMTP id
 j18-20020a5d6052000000b001ed9fcc3055mr13520373wrt.438.1645972695195; Sun, 27
 Feb 2022 06:38:15 -0800 (PST)
MIME-Version: 1.0
From: Perceval Arenou <perceval.arenou@bilberry.io>
Date: Sun, 27 Feb 2022 15:38:04 +0100
Message-ID: 
 <CANU8g8dNLaDXZ0WRnd-WuSXuL4Q-uL1KpTRW3wcYM5SLEZp++Q@mail.gmail.com>
Subject: Correspondance between Qt5 components and meta-qt5 recipes
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ceb01f05d900e113"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Feb 2022 14:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56299

--000000000000ceb01f05d900e113
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I don't know if it is the right place or if my question belong more in the
- openembedded-architecture mailing list.

I'm trying to build an image with my Qt5 based application. I know which
Qt5 component I need to build and to run my application but I'm struggeling
to understand what are the corresponding recipes to put in DEPENDS and
RDEPENDS according to the components I use.

For example: if I want to build a graphical application with image display
support I would need (if I understand correctly):
for svg support: qtsvg in RDEPENDS
but for gif support: qtbase in DEPENDS with  PACKAGECONFIG_append = "gif"
in a qtbase_%.bbappend
It is a little bit confusing for me.

My question is:
Is there any documentation or table mapping Qt5 components or libraries and
the corresponding recipe in the meta-Qt5 layer (with the correct
PACKAGEGROUP to set if needed)?

Thank you very much,
Have a great day,

-- 
*Perceval ARENOU*
Embedded Software Engineer

--000000000000ceb01f05d900e113
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I don&#39;t know if it =
is the right place or if my question belong more in the=C2=A0<li style=3D"c=
olor:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;box-sizing:border-box;display:inline-block">openembedded-architec=
ture mailing list.</li><span style=3D"background-color:rgb(245,245,245);col=
or:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,san=
s-serif">=C2=A0</span></div><div><font color=3D"#333333" face=3D"Helvetica =
Neue, Helvetica, Arial, sans-serif"><br></font></div><div><font color=3D"#3=
33333" face=3D"Helvetica Neue, Helvetica, Arial, sans-serif">I&#39;m trying=
 to build an image with my Qt5 based application. I know which Qt5 componen=
t I need to build and to run my application but I&#39;m struggeling to unde=
rstand what are the corresponding recipes to put in DEPENDS and RDEPENDS ac=
cording to the components I use.</font></div><div><span style=3D"color:rgb(=
51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
"><br></span></div><div><span style=3D"color:rgb(51,51,51);font-family:&quo=
t;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">For example: if I want t=
o build a graphical application with image display support I would need (if=
 I understand correctly):</span><br></div><div><font color=3D"#333333" face=
=3D"Helvetica Neue, Helvetica, Arial, sans-serif">for svg support: qtsvg in=
 RDEPENDS=C2=A0</font></div><div><font color=3D"#333333" face=3D"Helvetica =
Neue, Helvetica, Arial, sans-serif">but for gif support: qtbase in=C2=A0</f=
ont><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quo=
t;,Helvetica,Arial,sans-serif">DEPENDS</span><span style=3D"color:rgb(51,51=
,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=C2=
=A0with=C2=A0 PACKAGECONFIG_append=C2=A0</span><span style=3D"color:rgb(51,=
51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=
=3D &quot;gif&quot; in a qtbase_%.bbappend</span></div><div><span style=3D"=
color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif">It is a little bit confusing for me.=C2=A0</span><br style=3D"c=
olor:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif"></div><div><span style=3D"color:rgb(51,51,51);font-family:&quot;=
Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></span></div><div><spa=
n style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helve=
tica,Arial,sans-serif">My question is:</span></div><div><font color=3D"#333=
333" face=3D"Helvetica Neue, Helvetica, Arial, sans-serif">Is there any doc=
umentation or table mapping Qt5 components or libraries and the correspondi=
ng recipe=C2=A0</font><span style=3D"color:rgb(51,51,51);font-family:&quot;=
Helvetica Neue&quot;,Helvetica,Arial,sans-serif">in the meta-Qt5 layer=C2=
=A0</span><span style=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Ne=
ue&quot;,Helvetica,Arial,sans-serif">(with the correct PACKAGEGROUP to set =
if needed)?</span></div><div><br></div><div><font color=3D"#333333" face=3D=
"Helvetica Neue, Helvetica, Arial, sans-serif">Thank you very much,</font><=
/div><div><font color=3D"#333333" face=3D"Helvetica Neue, Helvetica, Arial,=
 sans-serif">Have a great day,</font></div><div><font color=3D"#333333" fac=
e=3D"Helvetica Neue, Helvetica, Arial, sans-serif"><br></font>-- <br><div d=
ir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><span s=
tyle=3D"background-color:rgb(255,255,255)"><b><font face=3D"arial, sans-ser=
if" color=3D"#741b47">Perceval ARENOU</font></b></span></div><div><span sty=
le=3D"background-color:rgb(255,255,255)"><font face=3D"arial, sans-serif" c=
olor=3D"#666666">Embedded Software Engineer</font></span></div><div style=
=3D"color:rgb(80,0,80)"><br></div></div></div></div></div>

--000000000000ceb01f05d900e113--

