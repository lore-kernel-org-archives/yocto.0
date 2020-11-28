Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web08.29594.1606544805104467910
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 22:26:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hTqbYbIv;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id y78so3583008vsy.6;
        Fri, 27 Nov 2020 22:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5jQWbwpxrvzYyCL05edk0sIzpoYWzJ7ar77Auu3b0ws=;
        b=hTqbYbIv1ehSVL5uT5GL4evofslddi7I7MnpnGqJ7C9kOATKlroMeHpDLiZX5e1hgG
         evMYKr2p6NZt2mv9Gp8S1BRGAff6UzftuGhwjWqzhARs5ZA0znGfVxzcCj+rh0iBJE3u
         hsgCKb/+VT7iB2Kv0nyQj5r/S36hiTN7hpQiUMNHW91nprb7ZmVJoZFzP+lVVVRaZ2SA
         uauFU2rzJeZxHAH+a5Dv9YEn/tnKocgyy4G49WIWn0HdLhN7+sl2AptS7F4l0pOCrgrM
         QeCQCAB1DkbDbjyBIoqou/bMsT1G1goNQE87Ga3bdjWXK2iA5LKolwGBfD6zEOahWx7O
         pWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5jQWbwpxrvzYyCL05edk0sIzpoYWzJ7ar77Auu3b0ws=;
        b=cMIGiDxL+L+XsF6Zz+RoeWxNlxrl3LO1nA253inVH2ujsBIZUGAXTf4tn/fERF139u
         qCsaXPL/4efHypbv8UtCTdVRlvyrKrtuF5B1htXf/tldTiXL2ozktNZ2JJo0pSf66HR/
         lG5Tw3cpReosXhfD+ktfZot18uD3ED5A8wqdXwKlR3dd644O8a/BXsaeIVd5jXaaXEDy
         BKDXC/se3+u+uzAuM+it3KgE59EEmZUlFOATZpzp8HLlHw/xk6RHZ6U8qyQs8lV6sn6P
         8yku7snWlwa8VbX6FKMZnkN3j2mAE3ADAtXFzqYHHG+d7QTL70CrDkVkEsnQ41QQU4Ox
         CCDA==
X-Gm-Message-State: AOAM5308WNx9l2DVoGJcBgpScnUZj1h8Ss5UG/cfbKJoLuD36YWE0rov
	lTesb6OSzAPBQ7K3ynAt/6dafbY8gILZg7+XBks=
X-Google-Smtp-Source: ABdhPJyMqUkpY5HGv/8KSyOLQjxdUyHs/wcjaTxu1PPAeOeXXROWeyDaMSLP4l6jNXeCEnR7GBAx1hNyTpXMs+wKvHU=
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr9157681vsb.4.1606544804139;
 Fri, 27 Nov 2020 22:26:44 -0800 (PST)
MIME-Version: 1.0
References: <164B71905D05BC3E.30338@lists.yoctoproject.org>
In-Reply-To: <164B71905D05BC3E.30338@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sat, 28 Nov 2020 11:56:32 +0530
Message-ID: <CAJw=dJ8kgmHwze6_GhNpmHsDroq3C2szmcCWUj9Q-h3pwvM9rg@mail.gmail.com>
Subject: Re: [yocto] patch apply for .bb file
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, yocto+help@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005dd6f205b524dc24"

--0000000000005dd6f205b524dc24
Content-Type: text/plain; charset="UTF-8"

Hi ,
    If anyone know please help.

On Sat, Nov 28, 2020 at 12:12 AM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:

> Hi team ,
>        We are tring to apply to patch to default .bb file. means in
> gpsd_3.17.bb file we did some changes but after taking patch we are not
> able to apply it .
>
>     *  steps followd :-*
>         1) git status
>         2) git
> diff yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
> gpsd_3.17.bb >  0001_add_line_in_gpsd.patch
>         3) git
> checkout yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
> gpsd_3.17.bb
>
>            after these i applied gpsd patch
> in /yocto_build/meta-intel-leafhill/recipes-kernel/linux/linux-intel/leafhill.scc
>   file  but after appling getting following errors .
>
>       * ERRORS :-*
>       [INFO]: Context reduced git-am of
> .kernel-meta//patches//patches/0001_add_line_in_gpsd.patch with "git am"
> did not work, trying "apply".
> | error: yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
> gpsd_3.17.bb: does not exist in index
> | [ERROR]: Application of
> .kernel-meta//patches//patches/0001_add_line_in_gpsd.patch failed.
> |          Patch needs to be refreshed. Sample resolution script:
> |              .git/rebase-apply/resolve_rejects
> | ERROR: Could not apply patches for intel-corei7-64.
> | ERROR: Patch failures can be resolved in the linux source directory
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work-shared/intel-corei7-64/kernel-source)
>
>      * douts :-*
>         1) Can we apply a patch to default code means (files in meta  or
> files( .bb ) in meta-intel  folder, etc) ? because we are able to apply a
> patch for kernel code (driver file ) , but for .bb file patch appling we
> are facing issue .
>
>         2) how to apply a patch to  default .bb file in meta layers ?  can
> u please tell procedure .
>
>      thanks in advance .
>
>
> 
>
>

--0000000000005dd6f205b524dc24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 If anyone know please help.</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sat, Nov 28, 2020 at 12:12 AM NIKHIL PATIL via <a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a> &lt;nikhilvp29=3D<a href=3D"mailt=
o:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0We are tring to apply to=
 patch to default .bb file. means in <a href=3D"http://gpsd_3.17.bb" target=
=
=3D"_blank">gpsd_3.17.bb</a> file we did some changes but after taking pat=
ch we are not able to apply it .</div><div>=C2=A0</div><div>=C2=A0 =C2=A0 <=
b>=C2=A0 steps followd=C2=A0:-</b></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 1)=
 git status</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 2) git diff=C2=A0yocto_bu=
ild/meta-openembedded/meta-oe/recipes-navigation/gpsd/<a href=3D"http://gps=
d_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a> &gt;=C2=A0=C2=A00001_add_line=
_in_gpsd.patch</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 3) git checkout=C2=A0y=
octo_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/<a href=3D"htt=
p://gpsd_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a></div><div>=C2=A0 =C2=
=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0after these =
i applied gpsd patch in=C2=A0/yocto_build/meta-intel-leafhill/recipes-kerne=
l/linux/linux-intel/leafhill.scc=C2=A0 =C2=A0 file=C2=A0 but after appling=
=C2=A0getting following errors .</div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0 <b>=C2=A0ERRORS :-</b></div><div>=C2=A0 =C2=A0 =C2=A0 [INFO]: Conte=
xt reduced git-am of .kernel-meta//patches//patches/0001_add_line_in_gpsd.p=
atch with &quot;git am&quot; did not work, trying &quot;apply&quot;.</div>|=
 error: yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/<a hr=
ef=3D"http://gpsd_3.17.bb" target=3D"_blank">gpsd_3.17.bb</a>: does not exi=
st in index<br>| [ERROR]: Application of .kernel-meta//patches//patches/000=
1_add_line_in_gpsd.patch failed.<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pat=
ch needs to be refreshed. Sample resolution script:<br>| =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.git/rebase-apply/resolve_rejects<br>| ERRO=
R: Could not apply patches for intel-corei7-64.<br>| ERROR: Patch failures =
can be resolved in the linux source directory /data/nikhil/inti_dmsv/yocto_=
build/build/tmp/work-shared/intel-corei7-64/kernel-source)<br><div><br></di=
v><div>=C2=A0 =C2=A0 =C2=A0<b> douts :-</b></div><div>=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 1) Can we apply a patch to default code means (files in meta=C2=A0 =
or=C2=A0 files( .bb ) in meta-intel=C2=A0 folder, etc) ? because we are abl=
e to apply a patch for kernel code (driver file ) , but for .bb file patch =
appling we are facing issue .</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 2) how to apply a patch to=C2=A0 default .bb file in meta layers ?=
=C2=A0 can u please tell procedure .</div><div><br></div><div>=C2=A0 =C2=
=A0 =C2=A0thanks in advance .</div><div><b>=C2=A0 =C2=A0 =C2=A0=C2=A0</b><=
/div></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000005dd6f205b524dc24--
