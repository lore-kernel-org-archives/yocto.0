Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B638CEF142
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 09:36:10 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.5043.1728380162794245279
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 02:36:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=lwERpslI;
 spf=pass (domain: smile.fr, ip: 209.85.221.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37cea34cb57so3275701f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 02:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1728380161; x=1728984961; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QfWyA9wQKp00dcSsanC9p+vhsfs0nCW5I6JSw1T5XI8=;
        b=lwERpslI7F2efbCNVvWydhomps/iJtbCv3epS0o+vOBVWar04xb8SyEnElgBQ0i/Gi
         YgCSFc6DMZ+uxoOxynnm8MNzq8KbEe1llH1vq7rQBPfifO09Sh/GDxGVzL0u1ICVI6hI
         SaebMaKj2SD2qa7lC7moXhrgwAC3MboXf13no=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728380161; x=1728984961;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QfWyA9wQKp00dcSsanC9p+vhsfs0nCW5I6JSw1T5XI8=;
        b=lcEmsk8XHnL63bcEFWzyzHMEA8PkCXIddxgrsB7uS724PVjWtCtv/rHMKJWtGo590l
         s+OfDwG/+gzGK39LaEiONWZy935aO2PXWGDmZVa10CjuP17NhmJCp1bPcELsxLeZIGzP
         CBkfmoCiezhY824diYaCF4/EXk0MXFpANEWudpdzFs0XmWtaBuI3s6aIGEjltO+5Yn6d
         AFN6XPqhRrqtQv60jIZX0vgqPNp1H/tawvLqYcRQpATzdi/MQ19c/QY7TCn4HduEf5HI
         fezvSL5ZvqiY4qb5/NNxfu8R9Tut+4jhJzWKOhg0DcyJzlbzuSTgZsrNhiAnzrV5eyIQ
         RUOw==
X-Gm-Message-State: AOJu0YyjYgHBEUkniqeJqe8QjiFlICHycutm8UHgQr7NZrjfzko5/PqO
	cL/oNENINHOsugVsKFtiemornYYYjdK9EK4Ft5Fl8bhMKwo/qu6IauYvgW2LysHhtZDb+fUXlNM
	8qyhmHH9DcadMBJuiRc+JT+3pYqQpNdVW4LjSU01cvNspIH5auZw=
X-Google-Smtp-Source: AGHT+IFnOiC2yA797gklRjQ3AogvXa6MypcJtgXoOE8XUh0oHTVd7Ej4YP1yvn+qv4rfiVaVTWw+cM8S5gzfN8bxau0=
X-Received: by 2002:a5d:4e45:0:b0:374:c0c5:3c05 with SMTP id
 ffacd0b85a97d-37d0e7baf3fmr7724762f8f.42.1728380160601; Tue, 08 Oct 2024
 02:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <7N2H.1728375193670366331.GQIa@lists.yoctoproject.org>
In-Reply-To: <7N2H.1728375193670366331.GQIa@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 8 Oct 2024 11:35:34 +0200
Message-ID: <CAMSfU+6teJrU0C6w3dFXCA37mvVL0eSLCqXe1dwgnrEb67+CUQ@mail.gmail.com>
Subject: Re: [yocto] Does yocto recipe support fetching from SRC_URC as ipk pakage?
To: yocto@lists.yoctoproject.org, salahaldeen.altous@yahoo.com
Content-Type: multipart/alternative; boundary="0000000000008290550623f3dd5a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 09:36:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63964

--0000000000008290550623f3dd5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 8 oct. 2024 =C3=A0 11:27, salahaldeen.altous@yahoo.com via
lists.yoctoproject.org <salahaldeen.altous=3Dyahoo.com@lists.yoctoproject.o=
rg>
a =C3=A9crit :

> Hi All,
>
> I have one request from one custom to fetch the recipe from ipk package,
> is this recommended?
> Does any one tested fetching from ipk?
>
> the recipe looks like this
>
> SRC_URI =3D "http://your-server-url/path/to/package.ipk"
> # Fetches the IPK and unpacks it
> do_unpack[depends] +=3D "opkg-native:do_populate_sysroot"
> S =3D "${WORKDIR}"
>
> # Install the package using opkg
> do_install() {
>     opkg-cl -o ${D} install ${WORKDIR}/package.ipk
> }
>

This looks like the bin_package class:
https://git.yoctoproject.org/poky/plain/meta/classes-recipe/bin_package.bbc=
lass
https://docs.yoctoproject.org/ref-manual/classes.html#bin-package

Have you found/looked into it?


>
> Regards,
> Salahaldeen
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63962):
> https://lists.yoctoproject.org/g/yocto/message/63962
> Mute This Topic: https://lists.yoctoproject.org/mt/108885904/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000008290550623f3dd5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 8 oct. 2024 =C3=A0=C2=A0=
11:27, <a href=3D"mailto:salahaldeen.altous@yahoo.com">salahaldeen.altous@y=
ahoo.com</a> via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;salahaldeen.altous=3D<a href=3D"mailto:yahoo.com@lists.yocto=
project.org">yahoo.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi All,<br><=
br>I have one request from one custom to fetch the recipe from ipk package,=
 is this recommended?<br>Does any one tested fetching from ipk?<br><br>the =
recipe looks like this <br><br>
<div>SRC_URI =3D &quot;<a href=3D"http://your-server-url/path/to/package.ip=
k" target=3D"_blank">http://your-server-url/path/to/package.ipk</a>&quot;</=
div>
<div># Fetches the IPK and unpacks it<br>do_unpack[depends] +=3D &quot;opkg=
-native:do_populate_sysroot&quot;<br>S =3D &quot;${WORKDIR}&quot;</div>
<div><br># Install the package using opkg<br>do_install() {<br>=C2=A0 =C2=
=A0 opkg-cl -o ${D} install ${WORKDIR}/package.ipk<br>}<br></div></div></bl=
ockquote><div><br></div><div>This looks like the bin_package class:=C2=A0</=
div><div><a href=3D"https://git.yoctoproject.org/poky/plain/meta/classes-re=
cipe/bin_package.bbclass">https://git.yoctoproject.org/poky/plain/meta/clas=
ses-recipe/bin_package.bbclass</a></div><div><a href=3D"https://docs.yoctop=
roject.org/ref-manual/classes.html#bin-package">https://docs.yoctoproject.o=
rg/ref-manual/classes.html#bin-package</a></div><div><br></div><div>Have yo=
u found/looked into it?<br></div><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div><div><br>Regards,<br>Salahaldeen</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63962): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63962" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63962</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108885904/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108885904/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"R=
aleway, regular">Smile ECS - Tech expert<br></font></div></div></div></div>

--0000000000008290550623f3dd5a--

