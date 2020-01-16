Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web11.9758.1579182024751774764
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 05:40:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O58XrvV4;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id b4so12660222vsa.12
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 05:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PXmEHJZMPEmZmzcYvpI5HMI6EkgoiOOMxk9oRDGw6V8=;
        b=O58XrvV4bDiPLK3vxg9yWRV+v+1wdyzu6GwWTlfw2tm12RVZ91Z9v2EWfd8x4Zs8Np
         8F/g/lFpiyZNqDJ2mehZ49b9QTw08yT4trJ3WRh0cF0ClTlEBKlOJo72xTrWJ4qCdLq0
         KqM6ePNwSsR0UXICkfqm40HXOvm2B9D1fG1c0iT/K7Eszt1FhL0Z/cOFdI7ZfhOlqxo2
         q3T1Ayqra/LXA90ev4IF5D7SnVvZqdwh1kZvXbywuFUS+DxiJUbMTnCN1rve9Ufcc73F
         m6n0ic7U+zYtVDB38lEhxedFaAYecQBWd/vjWtScuPnVkozmYD1y2DGjpGTJ+m2kLJQW
         L5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PXmEHJZMPEmZmzcYvpI5HMI6EkgoiOOMxk9oRDGw6V8=;
        b=jFy3i2ABG94r3WbjSoD55MW2/gEHdIjODFzWxzK+J80+QjBpt/BoBnMuNztOvsY8HM
         XOLSs5Db9RkYL4tVshM1sIhIPr0Ujrnf3/mrVEJURxojvddx0HOIfaAnG9tEWZNyAd+m
         zhs28yoyA/zdL1ClKwLMOnFhmqcGQ6Tulci6UBKA8F4Zg8XGpL7Yvr0CavVplpw8h1px
         HA7zl3GIBI/ibEXVhoCk0MC8rRCACIN0aanq0mY0ySf/ZfvM8yHz5YFGKH1X1izSpY8p
         psCy1Hv++d7gPHd3ys5Vxg954MJMSuMEyQ5iCMel1KQn16D+64WhX+zKvZ/QHtqt35w1
         xRpA==
X-Gm-Message-State: APjAAAVrKW8ISO8KR5xuDEkxutyAx9hAIIoc2Y98QTom6qDvDq4NjiHp
	JXVLPPEsUk9bKSIvxnl/0d8PgltFsBrBwSPZL/eLmw==
X-Google-Smtp-Source: APXvYqygMfV1CFaIIAAUdQ/4TvxywRMaHpE8hishJqX38z3/+xzfVU3H3l7Erd4JKl9B81jVsqcGw8ZxyxGMFJsvTV0=
X-Received: by 2002:a67:3187:: with SMTP id x129mr1537930vsx.23.1579182023854;
 Thu, 16 Jan 2020 05:40:23 -0800 (PST)
MIME-Version: 1.0
References: <Hb46.1579180220496162285.4Eb6@lists.yoctoproject.org>
In-Reply-To: <Hb46.1579180220496162285.4Eb6@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 16 Jan 2020 14:40:13 +0100
Message-ID: <CANNYZj92RnSZs4UvuKCjjhf6eJeX69YEVAMiFn4WPRyRqCin4Q@mail.gmail.com>
Subject: Re: [yocto] Trouble building mono (when building an image)
To: pelle.windestam@tagmaster.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000914e3c059c41f7db"

--000000000000914e3c059c41f7db
Content-Type: text/plain; charset="UTF-8"

Just a quick thing for you to try: can you delete /usr/bin/monodis from
your host and retry building? (remember to clean sstate for your package)

Alex

On Thu, 16 Jan 2020 at 14:10, <pelle.windestam@tagmaster.com> wrote:

> I'm trying to include mono in my image. I can successfully build the mono
> recipe by itself, but when I try to build my image it fails with the
> following error message:
> Error:
>  Problem: package test-sw-9.1.1b3-r0.aarch64 requires mono, but none of
> the providers can be installed
>   - conflicting requests
>   - nothing provides mono-gac needed by mono-5.12.0.226-r0.aarch64
>
> This is a bit confusing since:
> a) I can build mono by itself
> b) the mono recipe should provide the mono-gac package
>
> If I run 'bitbake -e mono | grep PACKAGES' I get the output:
> PACKAGES="mono-dbg mono-doc mono-staticdev mono-locale mono-libs mono-dev
> mono-config mono-binaries mono-libs-core  mono-libs-2.0 mono-libs-3.5
> mono-libs-4.0 mono-libs-4.5  mono-api-4.5.1 mono-api-4.5.2 mono-api-4.6
> mono-api-4.6.1 mono-api-4.6.2 mono-api-4.7  mono-libs-compat-2.0 mono-gac
> mono-configuration-crypto  mono-libs-monodoc mono-xbuild  mono-lldb  mono
> mono-profiler "
> PACKAGESPLITFUNCS="
> package_do_split_locales                 populate_packages"
> PACKAGES_DYNAMIC="^mono-locale-.*"
>
> So it would seem that bitbake agrees that mono provides mono-gac. The
> recipe for test-sw is a binary package, and depends on mono via:
> RDEPENDS_${PN} = " \
>   ...
>   mono \
> "
> I am quite new to Yocto, so it could be something very basic that I am
> missing. I can actually build the image on my regular development machine,
> but when setting up the build on a second machine I started getting this
> error. I have verified that the new machine is using the same revisions of
> all layers, and there is nothing funny in the local.conf on my dev-machine.
> Any tips on what could be wrong would be most welcome!
>
> I am using the Sumo release of Yocto.
>
> Thanks,
> Pelle
>
>
>
>
>
> 
>

--000000000000914e3c059c41f7db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just a quick thing for you to try: can you delete /us=
r/bin/monodis from your host and retry building? (remember to clean sstate =
for your package)</div><div><br></div><div>Alex<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 16 Jan 202=
0 at 14:10, &lt;<a href=3D"mailto:pelle.windestam@tagmaster.com">pelle.wind=
estam@tagmaster.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">I&#39;m trying to include mono in my image. I can succes=
sfully build the mono recipe by itself, but when I try to build my image it=
 fails with the following error message:<br>Error:<br>=C2=A0Problem: packag=
e test-sw-9.1.1b3-r0.aarch64 requires mono, but none of the providers can b=
e installed<br>=C2=A0 - conflicting requests<br>=C2=A0 - nothing provides m=
ono-gac needed by mono-5.12.0.226-r0.aarch64<br><br>This is a bit confusing=
 since:<br>a) I can build mono by itself<br>b) the mono recipe should provi=
de the mono-gac package<br><br>If I run &#39;bitbake -e mono | grep PACKAGE=
S&#39; I get the output:<br>PACKAGES=3D&quot;mono-dbg mono-doc mono-staticd=
ev mono-locale mono-libs mono-dev=C2=A0 mono-config mono-binaries mono-libs=
-core=C2=A0 mono-libs-2.0 mono-libs-3.5 mono-libs-4.0 mono-libs-4.5=C2=A0 m=
ono-api-4.5.1 mono-api-4.5.2 mono-api-4.6 mono-api-4.6.1 mono-api-4.6.2 mon=
o-api-4.7=C2=A0 mono-libs-compat-2.0 mono-gac mono-configuration-crypto=C2=
=A0 mono-libs-monodoc mono-xbuild=C2=A0 mono-lldb=C2=A0 mono=C2=A0 mono-pr=
ofiler &quot;<br>PACKAGESPLITFUNCS=3D&quot;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 package=
_do_split_locales=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 populate_packages&quot;<br>PACKAGE=
S_DYNAMIC=3D&quot;^mono-locale-.*&quot;<br><br>So it would seem that bitbak=
e agrees that mono provides mono-gac. The recipe for test-sw is a binary pa=
ckage, and depends on mono via:<br>RDEPENDS_${PN} =3D &quot; \<br>=C2=A0 ..=
.<br>=C2=A0 mono \<br>&quot;<br>I am quite new to Yocto, so it could be som=
ething very basic that I am missing. I can actually build the image on my r=
egular development machine, but when setting up the build on a second machi=
ne I started getting this error. I have verified that the new machine is us=
ing the same revisions of all layers, and there is nothing funny in the loc=
al.conf on my dev-machine. Any tips on what could be wrong would be most we=
lcome!<br><br>I am using the Sumo release of Yocto.<br><br>Thanks,<br>Pelle=
<br><br><br><br><br><br>
<br>
</blockquote></div>

--000000000000914e3c059c41f7db--
