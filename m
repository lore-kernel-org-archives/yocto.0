Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09C4C76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:15:49 +0000 (UTC)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web10.59478.1680279339562218940
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:15:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=K98x//pv;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id d2so19576292vso.9
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279338; x=1682871338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ClCz8NOPXcv0yKbOaxASAZI54sfzpEUVs7TogmxqH+U=;
        b=K98x//pv5ea+SxVv9J6sCFeiljbNcLZQFXzZpZ0C/Zn8no8dZt93ULxWP+aZsviHE+
         hQ4iXzuG5caokayzw5QBrVDSZ87ydS1PVgUeLgvVucAX0tlP3mpQABk+mwK+z3rAo+PY
         5xov69xXeHRb0VV4qsrAr03MMzoTTcDRUEM5kAPe7s3u0SCZypz+0LgkdAQgFYNbZJzB
         kcB8Hcc8XcTuKNUkjvGK+JBA35izlD2TyiMysUPLD+XKuNK0QY48f5WPV6EciIzbHeBv
         eZo7krzLGod+fwYB0twwrHTJ0RPnhzPc6zjdCzGL9zv1DUFm7OmEuSCLQlZrJVizMXLa
         QSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279338; x=1682871338;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ClCz8NOPXcv0yKbOaxASAZI54sfzpEUVs7TogmxqH+U=;
        b=ef5vVERP4gL6R4roaseBsM0LBnJtIPF8YuRmDxR2oNiLsjk9DLvuJyPHRib9XOVHm6
         WKOnrwSAjm34CdTkS9eCKpCqqn7MlIj92fEq66Nj0MHYg/Am5pihhW9wLQgwIzBvGgeq
         D5wxRC6H2ge2gHIwfSRmJDYAvnE6z2GYgdZIg8HaF01vgHPuWKVHgOp4mIlb5Scz3fer
         7fjY4c11KiKHuNGYOJejZRZn8jW+oD3SMG8UwrvAHjhSpq0/9xJXKpCNrPhYpnKO9Xpz
         7artH2wWFka63yoLZSlLHNja5i3+RwGyAA00ox92FhgvzxgSKZ3ew9Z4pII2/bzoEoFz
         6Gmg==
X-Gm-Message-State: AAQBX9cOblP4n10Pho2Nau4EXHOIf5enDA6dh6A0qR8ntgTJczgboGhP
	/36ffX+4YslPnF385aOEsuBtVYvF2DDeShman7Q5lSqF4Ir3GA==
X-Google-Smtp-Source: AKy350aqcoX7KUheLuxVKVdnRD/Q5QwqWOf71B0CQYMwHSFMXTbl+ROBRA78QQxINR4wgCHKZ7ALlQC1iL5Q2hZcBMs=
X-Received: by 2002:a67:c802:0:b0:416:2ad3:35ba with SMTP id
 u2-20020a67c802000000b004162ad335bamr16342593vsk.1.1680279338548; Fri, 31 Mar
 2023 09:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
In-Reply-To: <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 31 Mar 2023 17:15:27 +0100
Message-ID: <CANPvuRm2Pwuq8WjFjzQL-cvQo1Ger=yAHHKn1Zhx+y_B1wWcog@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Jose Quaresma <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>
Content-Type: multipart/alternative; boundary="00000000000019020005f83485da"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:15:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59569

--00000000000019020005f83485da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I don't have any account/keys that allow me to push directly
git.yoctoproject.org
maybe I need to setup my keys somewhere like with poky-contrib [1]

I will send all the patches to the yocto mailing list as recommended.

[1] https://wiki.yoctoproject.org/wiki/Poky_Contributions

Jose

Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta,
30/03/2023 =C3=A0(s) 11:08:

> I think I pushed the work directly to the respecitve branches in
> meta-lts-mixins. I'd suggest you send the patches here, and we'll sort
> out the technicalities (I can publish the branch on
> git.yoctoproject.org, or maybe you'll be able to push directly as
> well, provided you also send the patches here). There's no autobuilder
> testing; for mixin items the contributors are trusted :)
>
> Alex
>
>
> On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com>
> wrote:
> >
> > Hi,
> >
> > The golang version in kirkstone is the 1.17 and because of this is not
> possible to use some recent version of other projects like docker that
> requires a more recent version of the language.
> >
> > I have a kirkstone branch [1] available at Foundries.io with the golang
> backported from the oe-core master that I liked to submit to the
> meta-lts-mixins [2].
> > Alex is the maintainer of the dunfell golang backport and this kirkston=
e
> branch is based on that version.
> >
> > Would that be interesting for the project? How should I proceed?
> >
> > [1] https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> > [2] https://git.yoctoproject.org/meta-lts-mixins
> >
> > Jose
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000019020005f83485da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alex,<br><br>I don&#39;t=C2=A0have any account/key=
s=C2=A0that allow me to push directly=C2=A0<a href=3D"http://git.yoctoproje=
ct.org/" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org</a></div=
><div>maybe I need to setup my keys somewhere like with poky-contrib [1]<br=
><br>I will send all the patches to the yocto mailing list as recommended.<=
br><br>[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Poky_Contributions=
">https://wiki.yoctoproject.org/wiki/Poky_Contributions</a><br><br>Jose</di=
v><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex=
.kanavin@gmail.com</a>&gt; escreveu no dia quinta, 30/03/2023 =C3=A0(s) 11:=
08:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I think I pu=
shed the work directly to the respecitve branches in<br>
meta-lts-mixins. I&#39;d suggest you send the patches here, and we&#39;ll s=
ort<br>
out the technicalities (I can publish the branch on<br>
<a href=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank=
">git.yoctoproject.org</a>, or maybe you&#39;ll be able to push directly as=
<br>
well, provided you also send the patches here). There&#39;s no autobuilder<=
br>
testing; for mixin items the contributors are trusted :)<br>
<br>
Alex<br>
<br>
<br>
On Thu, 30 Mar 2023 at 11:20, Jose Quaresma &lt;<a href=3D"mailto:quaresma.=
jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; The golang version in kirkstone is the 1.17 and because of this is not=
 possible to use some recent version of other projects like docker that req=
uires a more recent version of the language.<br>
&gt;<br>
&gt; I have a kirkstone branch [1] available at Foundries.io with the golan=
g backported from the oe-core master that I liked to submit to the meta-lts=
-mixins [2].<br>
&gt; Alex is the maintainer of the dunfell golang backport and this kirksto=
ne branch is based on that version.<br>
&gt;<br>
&gt; Would that be interesting for the project? How should I proceed?<br>
&gt;<br>
&gt; [1] <a href=3D"https://github.com/foundriesio/meta-lts-mixins/tree/kir=
kstone/go" rel=3D"noreferrer" target=3D"_blank">https://github.com/foundrie=
sio/meta-lts-mixins/tree/kirkstone/go</a><br>
&gt; [2] <a href=3D"https://git.yoctoproject.org/meta-lts-mixins" rel=3D"no=
referrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts-mixins</a=
><br>
&gt;<br>
&gt; Jose<br>
&gt;<br>
&gt; --<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Jos=C3=A9 Quaresma<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000019020005f83485da--

