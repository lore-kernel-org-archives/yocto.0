Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web12.5772.1613649635434279038
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 04:00:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rPqFUEiP;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id s10so125157qvl.9
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 04:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bj5Q4HG6sHbsqmaHFLKYCisVZME0wF0qbSP6KsNxnUM=;
        b=rPqFUEiPTpERmRK4666BqAye7tz4SOWb6gvZ4IfCt+YfkRjRoj5cSsutDDj6B49SUf
         PTJHSJPJrRGuLZK0/f5+/IAOX8q3r3aZa6LTeXphRnsz1OxCU0cdJ8EjRCeejvvwy2lS
         LE8ughWfDe3xB3IkfEjwJjjh4HspImrYzHD4tADj6RKbH/AcckRpiDbch5GOBfqOQHiW
         bJZ6hXCRVqZZE0Y2M655xbEdJD5Y8IqApuYiH54BgbWOl7dak2+mEo/MeaMtn2e14vtC
         2PAAKOlI90Mnyvd98Cm91qOpQlwj7B++/bSyH11MIRWRsQpDpYFRXoz0tSWl21rZGKli
         FkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bj5Q4HG6sHbsqmaHFLKYCisVZME0wF0qbSP6KsNxnUM=;
        b=Fvb8ydl7KC+zdToFt8dLLaDwBvVRp9RF8m19X+sDjeJeRaGuYo8/dCNHCHfzIFU68/
         FO8bGMqJvNnAH/P0c54selE0S32I/BkVFwLYThQowMn4hvFdGAWa3Oq+DRoam3BUkfwS
         9aX8UkPvHBCgSdUmjOctxtjmaajvClY3tSplWoRK+9NtfKgj4JiZi3aEa5jasjffyAff
         9dcvcFa/nlDf5+H/7LTVrsTwTTamiU7rGFPa1zJd85k0Y/YIQuWQ88AmKWQbvKiOOAew
         LkBxmzFeazR+749zeyWi+89RbZJpqYpPwxYFN0gPtScP//Ifx1eTqwkpfw30Amgege8Q
         L2yQ==
X-Gm-Message-State: AOAM530mdS5B4s+B11d10mO9q/Gu1N+gqU1ezQThwoeFNIi8rHyAVAfR
	pnmQXor7BsLKbGdxDAZZ+UMRigHVAdzsn3JpK2KBJvIpzbI=
X-Google-Smtp-Source: ABdhPJwwdiP0zj0DZmTs5tbcYipahtIRGiZjpV64AX7lSWG3xQywIDT/we0S7D0yzMLO3K216FYxt6c6Oj3NrQjHGQ4=
X-Received: by 2002:a0c:99d2:: with SMTP id y18mr3715762qve.8.1613649634599;
 Thu, 18 Feb 2021 04:00:34 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
 <YC5Ofa+DHBTIDBJ4@korppu>
In-Reply-To: <YC5Ofa+DHBTIDBJ4@korppu>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Thu, 18 Feb 2021 13:00:24 +0100
Message-ID: <CAEyb4nHiaXUNkRv2zGUiRCouKH8F2fVT=egZwcpcUBP19Lm=oA@mail.gmail.com>
Subject: Re: [yocto] Keep .bbappend for older Yocto version
To: Mikko.Rapeli@bmw.de
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000043257905bb9b15f9"

--00000000000043257905bb9b15f9
Content-Type: text/plain; charset="UTF-8"

It does help, yes!
Thanks a lot!

On Thu, 18 Feb 2021, 12:24 , <Mikko.Rapeli@bmw.de> wrote:

> Hi,
>
> On Wed, Feb 17, 2021 at 12:02:26AM +0100, Jonas Vautherin wrote:
> > Good evening,
> >
> > I am using Yocto Gatesgarth, and I was just updating a layer that was
> > written for Dunfell. In the `conf/layer.conf`, I can simply add
> > "gatesgarth" to `LAYERSERIES_COMPAT_pocketbeagle`, like so:
> >
> > ```
> > LAYERSERIES_COMPAT_pocketbeagle = "dunfell gatesgarth"
> > ```
> >
> > However, this does not seem to work for a `.bbappend`. Let me use this
> > particular layer as an example: it is a BSP that defines
> > `linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define
> > `linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell, I
> > would like it to use the former, and when building with Gatesgarth, I
> would
> > like it to use the latter.
> >
> > However, if I keep both `linux-yocto_4.19.bbappend`
> > and `linux-yocto_5.4.bbappend` and try to build with Gatesgarth, it fails
> > with:
> >
> > ```
> > ERROR: No recipes in default available for:
> >   /path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend
> > ```
> >
> > Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.
> >
> > Is there a way to keep both `*.bbappend` and have Yocto ignore the ones
> > that do not correspond to its version? Or would that be bad practice
> anyway?
>
> What I do in cases like this:
>
>  * check and decide if BSP layer can be update to be fully compatible with
> new yocto
>    version, by asking from maintainers of the BSP layer and HW vendors
>    (usual answer is 'not this year, maybe next' or 'if you pay?', if you
> are lucky
>     they will say 'just use the correct branch')
>
>  * check if simple patches can update BSP layer to be compatible with new
> yocto
>    version, if this involves Linux kernel, libdrm etc major version
> changes it
>    might not work
>
> Quite often, I keep using the BSP SW stack from old yocto release with
> only minimal
> changes. For this to work, I make the minimal modifications needed to
> support building
> with new yocto version like modify LAYERSERIES_COMPAT and adapt bbclasses,
> then copy
> the needed old recipes from previous yocto version over the the BSP layer
> to be
> maintained there by the BSP SW maintainers. What helps a lot, is that you
> have
> reviewed what SW components you need to use from BSP SW meta layer and you
> have
> BBMASK'ed away all recipes and bbappends which your product and its distro
> configuration does not need.
>
> Often BSP layers are full of examples, prototypes, or just plain weird
> changes
> to high level SW components like gstreamer, systemd, openssl or openssh
> which your
> product might not need (e.g. is prefectly fine with the poky version of
> the recipe).
> These BSP side changes make yocto updates much more difficult and
> versioned dependencies
> from BSP to poky are too complex and difficult to resolve easily. Thus look
> for minimizing the impact of the BSP SW stack, keep it unchanged apart
> from minimal
> bitbake and bbclass fixes, and update the rest.
>
> For security and other updates, the BSP SW stack needs to be handled
> separately.
>
> Hope this helps,
>
> -Mikko

--00000000000043257905bb9b15f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It does help, yes!<div dir=3D"auto">Thanks a lot!</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, 18 Feb 2021, 12:24 , &lt;<a href=3D"mailto:Mikko.Rapeli@bmw.de">Mikko=
.Rapeli@bmw.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<b=
r>
<br>
On Wed, Feb 17, 2021 at 12:02:26AM +0100, Jonas Vautherin wrote:<br>
&gt; Good evening,<br>
&gt; <br>
&gt; I am using Yocto Gatesgarth, and I was just updating a layer that was<=
br>
&gt; written for Dunfell. In the `conf/layer.conf`, I can simply add<br>
&gt; &quot;gatesgarth&quot; to `LAYERSERIES_COMPAT_pocketbeagle`, like so:<=
br>
&gt; <br>
&gt; ```<br>
&gt; LAYERSERIES_COMPAT_pocketbeagle =3D &quot;dunfell gatesgarth&quot;<br>
&gt; ```<br>
&gt; <br>
&gt; However, this does not seem to work for a `.bbappend`. Let me use this=
<br>
&gt; particular layer as an example: it is a BSP that defines<br>
&gt; `linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define<=
br>
&gt; `linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell,=
 I<br>
&gt; would like it to use the former, and when building with Gatesgarth, I =
would<br>
&gt; like it to use the latter.<br>
&gt; <br>
&gt; However, if I keep both `linux-yocto_4.19.bbappend`<br>
&gt; and `linux-yocto_5.4.bbappend` and try to build with Gatesgarth, it fa=
ils<br>
&gt; with:<br>
&gt; <br>
&gt; ```<br>
&gt; ERROR: No recipes in default available for:<br>
&gt;=C2=A0 =C2=A0/path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend<br=
>
&gt; ```<br>
&gt; <br>
&gt; Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.<br>
&gt; <br>
&gt; Is there a way to keep both `*.bbappend` and have Yocto ignore the one=
s<br>
&gt; that do not correspond to its version? Or would that be bad practice a=
nyway?<br>
<br>
What I do in cases like this:<br>
<br>
=C2=A0* check and decide if BSP layer can be update to be fully compatible =
with new yocto<br>
=C2=A0 =C2=A0version, by asking from maintainers of the BSP layer and HW ve=
ndors<br>
=C2=A0 =C2=A0(usual answer is &#39;not this year, maybe next&#39; or &#39;i=
f you pay?&#39;, if you are lucky<br>
=C2=A0 =C2=A0 they will say &#39;just use the correct branch&#39;)<br>
<br>
=C2=A0* check if simple patches can update BSP layer to be compatible with =
new yocto<br>
=C2=A0 =C2=A0version, if this involves Linux kernel, libdrm etc major versi=
on changes it<br>
=C2=A0 =C2=A0might not work<br>
<br>
Quite often, I keep using the BSP SW stack from old yocto release with only=
 minimal<br>
changes. For this to work, I make the minimal modifications needed to suppo=
rt building<br>
with new yocto version like modify LAYERSERIES_COMPAT and adapt bbclasses, =
then copy<br>
the needed old recipes from previous yocto version over the the BSP layer t=
o be<br>
maintained there by the BSP SW maintainers. What helps a lot, is that you h=
ave<br>
reviewed what SW components you need to use from BSP SW meta layer and you =
have<br>
BBMASK&#39;ed away all recipes and bbappends which your product and its dis=
tro<br>
configuration does not need.<br>
<br>
Often BSP layers are full of examples, prototypes, or just plain weird chan=
ges<br>
to high level SW components like gstreamer, systemd, openssl or openssh whi=
ch your<br>
product might not need (e.g. is prefectly fine with the poky version of the=
 recipe).<br>
These BSP side changes make yocto updates much more difficult and versioned=
 dependencies<br>
from BSP to poky are too complex and difficult to resolve easily. Thus look=
<br>
for minimizing the impact of the BSP SW stack, keep it unchanged apart from=
 minimal<br>
bitbake and bbclass fixes, and update the rest.<br>
<br>
For security and other updates, the BSP SW stack needs to be handled separa=
tely.<br>
<br>
Hope this helps,<br>
<br>
-Mikko</blockquote></div>

--00000000000043257905bb9b15f9--
