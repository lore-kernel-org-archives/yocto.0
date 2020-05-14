Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.8546.1589445835908813512
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 01:43:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sGYf++ER;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: lefevre.da@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id v4so2225377qte.3
        for <yocto@lists.yoctoproject.org>; Thu, 14 May 2020 01:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5eR/ihMX7MchOlTJe+730QuSGM1q8/23mHMkwJMC4XM=;
        b=sGYf++ERsdF+9jUoSgUcX8WtGc7tAMcgRSLEm91RDi/v+lM7zaYXiPaDosDaibxtXQ
         7FUiPXAT7QGD3pXV8drLiJMgB5Ra65W7st2L8Bjqi+0vWgoHbc+DVna0zkK+9ltV8etd
         KJGcLU1LqBSrTxCeDQAxOdaGV7fo7U5AvfGPq/D1wRs2eDwenmYc0Clr98Ba9rUTvKY1
         4E426Z4GDQ27xeWw4zDOVreZ3RG9bq4NOSMJge83joRUKgXmMlvMNsfocVbAfG1wVpkU
         oFUc2t6hZ2SS9RMP4crVqwVogNaIKB2Rp+6T7M5zsdQvFqoMHl7qfedW365SkjfLThF2
         hPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5eR/ihMX7MchOlTJe+730QuSGM1q8/23mHMkwJMC4XM=;
        b=EV5p0NqZjhBJck+QuCaP6QJLNRMh8E+BoOdErSFuhzq8v6T+Ft7+rrULpCf+dX6Git
         RstpgkC+7EABUJvOmgwQw687T6wrcBm336L6oc7PAi9cYQLptByBXPgGapFGQya92YdZ
         eI/xYoja8GYC/4nnLcZDVoCroZPe97BpcF/zs9hgeYrIGoUHH92DqRoukamOGv4/HeoU
         51XPRHU6MUgrW1bea2mrjJdNWFU8XJ3kryJEMjsNOcRJCTb5w3LL0mFNk28lZJoaxHk7
         U4NGr6GWtHPLAEqrdwV2Cxm+yDfXBbj8UdtO0sPIkMxlzM3cCo8beWeRz1eZoNX10Vuv
         xsUA==
X-Gm-Message-State: AOAM530QXaxbEsDF1QGoq9NYO5RkuHULjZesXI1Xo7B36lrM1EUNLOhd
	sw3l7SIbsvwM4tpbgVYWC+S5xwCX5fk5emNrsQnp4+c=
X-Google-Smtp-Source: ABdhPJwqkwUiRJA1qRoL8X2LkGA/LMpW2fdcKgSvnk6WkMisAo9tZSkFWbw8UKLxopUWRk/3NQ/zrHeMrpDR80zPHno=
X-Received: by 2002:ac8:2dbc:: with SMTP id p57mr3222430qta.280.1589445834804;
 Thu, 14 May 2020 01:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
 <20200514082033.5uukrrsvpp77upxv@qschulz>
In-Reply-To: <20200514082033.5uukrrsvpp77upxv@qschulz>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Thu, 14 May 2020 11:43:43 +0300
Message-ID: <CA+FhBv_i-EFUqsC8HQpfHJi2eBb4Qy9o1LG1bJpodHw1epOTqw@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005f93e705a597b204"

--0000000000005f93e705a597b204
Content-Type: text/plain; charset="UTF-8"

OK thanks guys, that's what I though.

I did hack 1 since I could, but good to know the hack 2. in case this ever
happens for packages I'm not in control of.

Cheers,
-Damien

On Thu, May 14, 2020 at 11:20 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Damienm
>
> On Thu, May 14, 2020 at 11:05:56AM +0300, Damien LEFEVRE wrote:
> > Hi,
> >
> > Should it be possible to set PREFERRED_VERSION in the image definition
> > files?
> >
>
> Conceptually, no. An image recipe is a recipe. Global data is global and
> local data is local. A recipe (image or package) set local data only.
>
> > I have 2 image files:
> > - image1.bb
> > - image2.bb : PREFERRED_VERSION_package_1.0.0
> >
> > I have a package with 2 versions:
> > - package_1.0.0.bb
> > - package_1.1.0.bb
> >
>
> Correct way is different distro or machine. Obviously the build impact
> is high for such as small difference in images.
>
> Two possible hacks to me:
> 1. package10_1.0.0.bb and package11_1.1.0.bb but then you need to manage
> the dependencies inside recipes (those (r)depending on package10 or
> package11). If it's a "final" package which isn't a dependency of
> anything else except the image, that's actually not too bad. Then in the
> image you add package10 or package11.
>
> 2. Have an intermediate recipe which RDEPENDS_${PN} += "package
> (=1.1.0)" and the other on "package (=1.0.0)" and install this
> intermediate recipe in the appropriate image.
>
> There are shortcomings in both hacks (otherwise they wouldn't be called
> that way :) ).
>
> Quentin
>

--0000000000005f93e705a597b204
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK thanks guys, that&#39;s what I though.<div><br></div><d=
iv>I did hack 1 since I could, but good to know the hack 2. in case this ev=
er happens=C2=A0for packages I&#39;m not in control of.</div><div><br></div=
><div>Cheers,</div><div>-Damien</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 11:20 AM Quent=
in Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin=
.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi Damienm<br>
<br>
On Thu, May 14, 2020 at 11:05:56AM +0300, Damien LEFEVRE wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; Should it be possible to set PREFERRED_VERSION in the image definition=
<br>
&gt; files?<br>
&gt; <br>
<br>
Conceptually, no. An image recipe is a recipe. Global data is global and<br=
>
local data is local. A recipe (image or package) set local data only.<br>
<br>
&gt; I have 2 image files:<br>
&gt; - <a href=3D"http://image1.bb" rel=3D"noreferrer" target=3D"_blank">im=
age1.bb</a><br>
&gt; - <a href=3D"http://image2.bb" rel=3D"noreferrer" target=3D"_blank">im=
age2.bb</a> : PREFERRED_VERSION_package_1.0.0<br>
&gt; <br>
&gt; I have a package with 2 versions:<br>
&gt; - <a href=3D"http://package_1.0.0.bb" rel=3D"noreferrer" target=3D"_bl=
ank">package_1.0.0.bb</a><br>
&gt; - <a href=3D"http://package_1.1.0.bb" rel=3D"noreferrer" target=3D"_bl=
ank">package_1.1.0.bb</a><br>
&gt; <br>
<br>
Correct way is different distro or machine. Obviously the build impact<br>
is high for such as small difference in images.<br>
<br>
Two possible hacks to me:<br>
1. <a href=3D"http://package10_1.0.0.bb" rel=3D"noreferrer" target=3D"_blan=
k">package10_1.0.0.bb</a> and <a href=3D"http://package11_1.1.0.bb" rel=3D"=
noreferrer" target=3D"_blank">package11_1.1.0.bb</a> but then you need to m=
anage<br>
the dependencies inside recipes (those (r)depending on package10 or<br>
package11). If it&#39;s a &quot;final&quot; package which isn&#39;t a depen=
dency of<br>
anything else except the image, that&#39;s actually not too bad. Then in th=
e<br>
image you add package10 or package11.<br>
<br>
2. Have an intermediate recipe which RDEPENDS_${PN} +=3D &quot;package<br>
(=3D1.1.0)&quot; and the other on &quot;package (=3D1.0.0)&quot; and instal=
l this<br>
intermediate recipe in the appropriate image.<br>
<br>
There are shortcomings in both hacks (otherwise they wouldn&#39;t be called=
<br>
that way :) ).<br>
<br>
Quentin<br>
</blockquote></div>

--0000000000005f93e705a597b204--
