Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.17952.1598532076427850053
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 05:41:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IJDAigm6;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id e5so4365237qth.5
        for <yocto@lists.yoctoproject.org>; Thu, 27 Aug 2020 05:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WIlJzt+B9mB3KDZzSqkyD3ue10jthyk5dTNDY93auH8=;
        b=IJDAigm6u4PpWZvU8pvuRHWwvwz2ybVE4UHJ4rQy3r1KxbCWKhn96Q/m5VZ5XtH5di
         5JanMpuONVqbSvUmXRu1YGYhxIKKZ2sYKLMdKHaCGttM/3z8p5RLrmH8sDxBpFe13A2z
         XdJIt6bAggrSUmrQKpak8vJvoLkSGXsYoxgiXLuXfP26G29e1MRwh2DH888Rqe11kC8E
         uI1rzmezFaIHjxiSlywfvPf6dI/1EXZdUZrXgbTK7Z3lV+2kfWAFXQDUlT/SrT4KMuBM
         voK549Uh/v0Q22PinHg9l222kLweqEMiVwTAO3ehGgpGKzKg1sU2hQCSNs47YPF4Ya2m
         EeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WIlJzt+B9mB3KDZzSqkyD3ue10jthyk5dTNDY93auH8=;
        b=f73vmsQli+qlKrSPifpZXMVlyBoAFDA2OxfGKMyVdH/atd9RabfQ4JYGdpENdIfBRe
         1EmnzmUJZ0/GbA89zbmI3vBPLNr6nLpFlwujJZ3dHP6WH/NBuGC9afaNX8oeu/fDIfoZ
         BLUVTLE3vuYhRcSG6IClbgwkVDCdDbY7bR00EBHEdm0K59lr1zsOBefae5dWOo2Y+XNo
         7PaYykgAMLkNWG8V7Y+iNRCpv82rxLWVAnUb33wDzHbsdVxfrxltZaNMFnTaHGZ8A10A
         7ARYREX293N2jeRaxhtECu8SyXAiAxj43UES5VoyVz8iKjD9B7o3nH+wtK1bTTVJKRIj
         liAg==
X-Gm-Message-State: AOAM531CjWzuhYB5bnNsbUZIUA2qtxyTO0ITGSpiyhOP/C8V3MALdmtD
	Axq76y4pFH8u53gK5Ui/k6IbqReCMSj4bkpF4go=
X-Google-Smtp-Source: ABdhPJxdeFSkICe0wd6LTwPTf/Th46xF39flZ/u2nCM8GAaOuUpePgLpB7AyTI+/0FOSBR4VawL3G/ICCEfpEA+j+u4=
X-Received: by 2002:aed:20cb:: with SMTP id 69mr19164060qtb.106.1598532074386;
 Thu, 27 Aug 2020 05:41:14 -0700 (PDT)
MIME-Version: 1.0
References: <PR2PR08MB4651C91870E245E47710A7388B550@PR2PR08MB4651.eurprd08.prod.outlook.com>
In-Reply-To: <PR2PR08MB4651C91870E245E47710A7388B550@PR2PR08MB4651.eurprd08.prod.outlook.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Thu, 27 Aug 2020 14:41:01 +0200
Message-ID: <CAAdc0hyA81s+yrL5jriPNb57xZt76FKmWMp1HFhGWVNGjJiofw@mail.gmail.com>
Subject: Re: [yocto] devtool add <npmmodule> ignores "devDependencies" from package.json when generates npm-shrinkwrap.json file
To: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000074b92105addb4024"

--00000000000074b92105addb4024
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jose,

You have to use devtool with the --npm-dev option.

Best regards,
Jean-Marie

On Thu, Aug 27, 2020 at 12:47 PM Cardenas Jose Antonio (JCARDENA) <
joseantonio.cardenas@niko.eu> wrote:

> Hi all,
>
>
>
> Trying to create a recipe from scratch with =E2=80=9Cdevtool add=E2=80=
=9D tool, a
> npm-shrinkwrap.json file is created from reading of package.json from th=
e
> module that is going to be installed.
>
>
>
> The building goes fine but I can=E2=80=99t run the application in the ta=
rget
> because nodejs misses the modules placed in =E2=80=9CdevDependencies=E2=
=80=9D from
> package.json.
>
> I have tried to include NPM_INSTALL_DEV =3D "1" in the recipe but I get =
an
> error because the modules that appears in =E2=80=9CdevDependencies=E2=80=
=
=9D from
> package.json are not included in npm-shrinkwrap.json.
>
> There is any way to regenerate npm-shrinkwrap.json with devtool taking i=
n
> account devdependencies or a way to create npm-shrinkwrap.json with
> =E2=80=9Cdevtool add=E2=80=9D in a way that takes in account devDependen=
cies?
>
>
>
> Regards
>
> Jose
>=20
>

--00000000000074b92105addb4024
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jose,<div><br></div><div>You have to use devtool with t=
he --npm-dev option.</div><div><br></div><div>Best regards,</div><div>Jean-=
Marie</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Aug 27, 2020 at 12:47 PM Cardenas Jose Antonio (JCARDENA=
) &lt;<a href=3D"mailto:joseantonio.cardenas@niko.eu">joseantonio.cardenas@=
niko.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">





<div lang=3D"ES">
<div class=3D"gmail-m_-3381908830215761428WordSection1">
<p class=3D"MsoNormal">Hi all, <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Trying to create a recipe from=
 scratch with =E2=80=9Cdevtool add=E2=80=9D tool, a npm-shrinkwrap.json fil=
e is created from reading of package.json from the module that is going to =
be installed.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The building goes fine but I c=
an=E2=80=99t run the application in the target because nodejs misses the mo=
dules placed in =E2=80=9CdevDependencies=E2=80=9D from package.json.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have tried to include NPM_IN=
STALL_DEV =3D &quot;1&quot; in the recipe but I get an error because the mo=
dules that appears in =E2=80=9CdevDependencies=E2=80=9D from package.json a=
re not included in npm-shrinkwrap.json.
<br>
<br>
There is any way to regenerate npm-shrinkwrap.json with devtool taking in =
account devdependencies or a way to create npm-shrinkwrap.json with =E2=80=
=9Cdevtool add=E2=80=9D in a way that takes in account devDependencies?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards <u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jose<u></u><u></u></span></p>
</div>
</div>

<br>
</blockquote></div>

--00000000000074b92105addb4024--
