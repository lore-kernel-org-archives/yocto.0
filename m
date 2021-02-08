Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.33712.1612782755721615829
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 03:12:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k5L2ouqA;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id g10so17606239eds.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Feb 2021 03:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k7BJGSPiO3QwhKMqhEDb33FjBdIgtjvQ2VnrEiqTB6M=;
        b=k5L2ouqAxAd6yuhQXRT0BIlfUcFxAltIlcmOO1rNhXPznphd0Auypo/LYJBekQuUIX
         WcdKw9jKu8wrE4+w8S5HYnhw9lbypqMhmC112XBQGyrL+XzGC2o2BqDXz4X1B5iGzyEW
         8mL66w5gHRVMxwKI6nADNW0Yixz7icEOwgeGxIRZSzz/yI0N2X+293WeWVrfGjmo8t3Q
         uDkuzwGyzcpce6L4d108mRi4DTncT2BN9oDeDrQCd4ng0/05QoETtaUTjdS5mv3Ae8Zm
         c/aipb7bi/wT6EKwKvRjeXOBlbKsxq+Rvjsa5/lRYdCui40XtOgdhm1n0PEMFWRAo4Rz
         GFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k7BJGSPiO3QwhKMqhEDb33FjBdIgtjvQ2VnrEiqTB6M=;
        b=Pg4hjYZzAZcDA95BAYvjvyechrJFxcO//TAGKdamqXAkxErjka+jlPRaOy5I+MjZOt
         6tr5bdjTei0Rw9+Df2S0t8N7kaKkmdnVeiV5iYyW9JjbOpuxVRZIGaWK/XUMnl5b+vD4
         BDKasIWiaNo7LZKFBKQ4D9cM7Z5FK4vuEB1G7BO4JOzCWw2CMPDR7L3ZLasA2YJXNgw+
         fVFDU1KXbVRjYipLNKmnytQ/AVBBzkNeipMXW+HoN/kfoTzwkCIvBMjaaGgPBD6lF4/z
         XbTBU6lBrQDipG9z5OvHybenfkBNxQbpNZIlFTKU4OvSJ/Rm0dTgqgX6Pv9U8zDgB11v
         A3tA==
X-Gm-Message-State: AOAM533cuWOkzkUaDdrZcBy1d9VNmmgGf6//SU2yuoMi9VkkgwHig6ra
	FwdM0z9JDV4tVojFPkyDzComGCBQZi5WimweHNg=
X-Google-Smtp-Source: ABdhPJzLcYX3PLoTD34LyQsezAlWhlsFHIw1HgT4tqTmgw/dTVlwpU9j0JYM3X7liW9ep4nhLimfNXPhoCpsnCx70zY=
X-Received: by 2002:a50:c94b:: with SMTP id p11mr16624907edh.388.1612782754190;
 Mon, 08 Feb 2021 03:12:34 -0800 (PST)
MIME-Version: 1.0
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it> <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
In-Reply-To: <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 8 Feb 2021 12:12:23 +0100
Message-ID: <CA+chaQe6jnWBMA=GXXdVMozBPbZowdbrC-VHYAOEupZGW4VrTQ@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Mauro Ziliani <mauro@faresoftware.it>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000029d70105bad13ff3"

--00000000000029d70105bad13ff3
Content-Type: text/plain; charset="UTF-8"

And the variable should be named PREFERRED_VERSION_recipe1 (it's not using
pn as an override).

On Mon, Feb 8, 2021 at 12:10 PM Josef Holzmayr <jester@theyoctojester.info>
wrote:

> Howdy!
>
> Am Mo., 8. Feb. 2021 um 11:52 Uhr schrieb Mauro Ziliani <
> mauro@faresoftware.it>:
> > In the image recipe I put
> >
> > image-recipe.bb
> >
> > IMAGE_INSTALL_append := " \
> >      recipe1 \
> > "
> >
> > PREFERRED_VERSION_pn-recipe1 := "0.9"
>
> As usual, recipe data is local, conf data is global. Setting things
> that should affect other recipes (like PREFERRED_VERSION) does not
> work inside a recipe - and an image recipe is still just a recipe.
> This needs to go into the DISTRO config, usually.
>
> Greetz
>
> 
>
>

--00000000000029d70105bad13ff3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">And the variable should be named PREFERRED_VERSION_recipe1=
 (it&#39;s not using pn as an override).</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 8, 2021 at 12:10 PM Jos=
ef Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jester@theyoc=
tojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Howdy!<br>
<br>
Am Mo., 8. Feb. 2021 um 11:52 Uhr schrieb Mauro Ziliani &lt;<a href=3D"mai=
lto:mauro@faresoftware.it" target=3D"_blank">mauro@faresoftware.it</a>&gt;:=
<br>
&gt; In the image recipe I put<br>
&gt;<br>
&gt; <a href=3D"http://image-recipe.bb" rel=3D"noreferrer" target=3D"_blan=
k">image-recipe.bb</a><br>
&gt;<br>
&gt; IMAGE_INSTALL_append :=3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 recipe1 \<br>
&gt; &quot;<br>
&gt;<br>
&gt; PREFERRED_VERSION_pn-recipe1 :=3D &quot;0.9&quot;<br>
<br>
As usual, recipe data is local, conf data is global. Setting things<br>
that should affect other recipes (like PREFERRED_VERSION) does not<br>
work inside a recipe - and an image recipe is still just a recipe.<br>
This needs to go into the DISTRO config, usually.<br>
<br>
Greetz<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000029d70105bad13ff3--
