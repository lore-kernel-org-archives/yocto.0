Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26DC8C00140
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 14:38:13 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web12.11668.1661351887195113754
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:38:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=rONj3s7y;
 spf=pass (domain: lightyear.one, ip: 209.85.208.52,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ed1-f52.google.com with SMTP id e21so17485994edc.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=+FVlXQuVRXKpxGrt+fCvBpD7U8vN5MUHt45/eWHnvXU=;
        b=rONj3s7yniRTZa1JPvXaDK6g4jMUIdZ25jqnMfhwOH0JgRwXv3QoMm8FfguhK/g6EO
         6+Qopk59kxuEWzj92Bo8wSgEH7mHQzsQoQQbPokivb4A2Ms227Hw3dD+k9u4JFUCi6aM
         gNfwOVfkIKXhBH2BwK5ZOAPhpZ2sA1n/YCXo6RrU6/6vNH2r7cfj+OO9H8c3mRwDq2tK
         T5xJZMYTYnw+oPz8u0SNLEsL0gEZP1Ypgs+ZF6/28RqfgszskiXltPta2+vq7dkxLHaI
         QqlTiffS7dPDBCJO7No4AdSkJVUhy5G9MxwYQy8C6q3SZdulx+t16zhX2yAKoldHO8wZ
         pi+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=+FVlXQuVRXKpxGrt+fCvBpD7U8vN5MUHt45/eWHnvXU=;
        b=serq0NHcrD2MGCHXMTEgdRRuAWheIInRKYRcfUobZDfhMNwcf30nN3WsJWO3FQApuN
         /FQT8lte5iXoiMtdMRS0BfeCR0KMGw8+bTJAum9hThgxRrblj5zS0TXU3sC4CntAp6b1
         lwd+gn9mt4T3Or9/qQ5Bnx0eRZSqnizvGjWXxG89lHEZpWNNo8/Lwr/ndgppqRtMqfvZ
         u7mXKBlJ5M+OQ4xrQ/jYYMmntc0iIrl7uBEoHcJYiaGYjp0MQ6krB5dwqWSpf9nOyvWJ
         wsdNelO6aZFuvI7rRSqkiEfVOIMFArCYaj6xORFqGEl3WQF/H7ofaLR2yEc42HAAYNhx
         da/g==
X-Gm-Message-State: ACgBeo2xo5j84hoI90QBUTSvQ/GoxPotnW2wyEQOVP9mFW+ffSZRgAyG
	O2Jp3AgBn3aDtNxgYgYAXzb0BTOJ9/AP62dP3cKwJOKt8wfzRzgFBc9h3LePCMyJHkm+dlrPnUZ
	8JNyTOFrqX3Y+NR4jYKsMKZI1r6akV2uQ4w==
X-Google-Smtp-Source: 
 AA6agR4XHwURoUSxAscZ0FeaDxv4MKj8wFARpyYHerMrRSn34f+jmbEit3uv+zDTYMlD6MFJNO/Du9GBnwyi2DPxLLA=
X-Received: by 2002:aa7:cb92:0:b0:443:98d6:20da with SMTP id
 r18-20020aa7cb92000000b0044398d620damr7849420edt.399.1661351885561; Wed, 24
 Aug 2022 07:38:05 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
 <d1306db241ff440fdf8d005f598b6c6acf5b63e8.camel@linuxfoundation.org>
In-Reply-To: 
 <d1306db241ff440fdf8d005f598b6c6acf5b63e8.camel@linuxfoundation.org>
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Wed, 24 Aug 2022 16:37:30 +0200
Message-ID: 
 <CAKO9uzoUwa11o0dhC1o2efqqa78MKSim-OP9J9MNzNyZPEaNTQ@mail.gmail.com>
Subject: Re: [yocto] Building for both target and host
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fcddfa05e6fda0f4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 14:38:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57893

--000000000000fcddfa05e6fda0f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Thanks, that seems like pretty much what I need!
However, currently the recipes in the dependency chain don't all contain
'native' counterparts.
Most actually wouldn't really need to for the executable to be built.
Is there a way to neatly work around this too?

Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>


On Wed, Aug 24, 2022 at 3:01 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2022-08-24 at 14:18 +0200, Maik Vermeulen wrote:
> > Hi,
> >
> > We have a recipe with a CMake project which works fine on target, but
> > ideally we would like to test functionality on our host systems
> > first.
> > How can we also have it generate executables for the host system?
> >
> > Do we need to make changes to the recipe, CMakeLists.txt, or both?
> > I read something about autotools, but it's completely new to me.
> >
> > Any hints on what the easiest approach would be would be greatly
> > appreciated!
>
> BBCLASSEXTEND =3D "native"
>
> would create a variant of the recipe X as X-native which would run on
> the build host. That may or may not be what you're looking for :)
>
> Cheers,
>
> Richard
>
>
>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--000000000000fcddfa05e6fda0f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Richard,<div><br></div><div>Thanks, that seems like pre=
tty much what I need!</div><div>However, currently the recipes in the depen=
dency chain don&#39;t all contain &#39;native&#39; counterparts.=C2=A0</div=
><div>Most actually wouldn&#39;t really need to for the executable to be bu=
ilt.=C2=A0</div><div>Is there a way to neatly work around this too?</div><d=
iv><br></div><div>Kind regards,<br clear=3D"all"><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans=
-serif;font-size:16px">Maik Vermeulen</span></div><br><div><span style=3D"c=
olor:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px">E=
mbedded Software Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https://www.=
lightyear.one/" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,224)"=
 target=3D"_blank">Lightyear</a></span></div><div><span style=3D"color:rgb(=
29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px"><a href=3D=
"tel:+31616827379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" target=3D=
"_blank">+31 6 16 82 73 79</a></span></div></div></div></div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Aug 24, 2022 at 3:01 PM Richard Purdie &lt;<a href=3D"mailto:richard.pu=
rdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, 2022-08=
-24 at 14:18 +0200, Maik Vermeulen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; We have a recipe with a CMake project which works fine on=C2=A0target,=
 but<br>
&gt; ideally we would like to test functionality on our host systems<br>
&gt; first.<br>
&gt; How can we also have it generate executables for the host system?<br>
&gt; <br>
&gt; Do we need to make changes to the recipe, CMakeLists.txt, or both?<br>
&gt; I read something about autotools, but it&#39;s completely new to me.<b=
r>
&gt; <br>
&gt; Any hints on what the easiest approach would be would be greatly<br>
&gt; appreciated!<br>
<br>
BBCLASSEXTEND =3D &quot;native&quot;<br>
<br>
would create a variant of the recipe X as X-native which would run on<br>
the build host. That may or may not be what you&#39;re looking for :)<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--000000000000fcddfa05e6fda0f4--

