Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.627.1626153307824250761
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 22:15:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=luNwS7Zg;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: chuckwolber@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id p22so5540667pfh.8
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 22:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WcD38H+DlYuJyHDLBPAzE0Ep+/o+W81dHvb+cWK23Aw=;
        b=luNwS7Zgc0WAtIjXMIeZwFBruA6dC4gezAbUmovL2piFAV3UiQFAwSeHrsAgpgePM6
         XJqzj9wc2LHpyq3sRuxaqChqvI0ISi2vMC4YafgZahiiJKwIuX4q6wmzSj2ONmXBLqtQ
         /iNHbG2UVhkIOa5QjV5tiP2s3gWM288ptykEZUUER9CFVZLveKszlxhWRKMRQgkV0R0G
         7S0IOeqBFThRyNmr0oadbhRtyC9dQXH+sr+TLtADJ7QeJUqFVaFiibDBOXzUqKtr8XE0
         mLULd0hq8VIhHLrvL2d07H2Tfpx/FjX+c4ygMXmcBAgagEM7AmT1dBtAysyeX5oXSE4c
         +lRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WcD38H+DlYuJyHDLBPAzE0Ep+/o+W81dHvb+cWK23Aw=;
        b=NrcRuYBMebvdnaHxzXMk/5Qq2cxJ5Z2upGe5Dd8hBjTjPjmsGhJsqfUk7pLx7dYDC0
         eZ/9EAjeP6zxgN4rWHJ49AfdGjYYEkWsjrzO5tX2JT8cB72qL7VfDUZGh62tdFOvyavY
         Jk68j1G6Q+3SKCcTZoG7OBU07cGQSDJ6fAGoZ0BGP70wI+QwcOGXh0SiZKrb+Tvagp58
         /lAj7W9ER/EtNtV6jT54GaC8qTM//ahu3P9fa+YYO7YQA3p5DzIf3/yjXgNK0G8Nc3Ig
         mU2ajHs2GPGcrIKEpOLVaLc7449zLAUNUcYX2UQ11bfUzNyG9C4IeWe4A3PrkGNq5xah
         yzeQ==
X-Gm-Message-State: AOAM531eNqyYL6zo9al506hrCkJxiyrK5AOOHVcasTbr8eYj8Gc4LmWq
	haPDPl7c94+iVzZSkcMIt3la2SA2ISjy8cfXI0g=
X-Google-Smtp-Source: ABdhPJza40nj09fZ5cw2vnebQd5FIJy4/1OUyjszlWmgux9M9PfVr+GIN6Kcs1F64TIYxRYXVbKiiVSK3+MTPVDHuAE=
X-Received: by 2002:a05:6a00:2494:b029:31e:2c3f:4186 with SMTP id
 c20-20020a056a002494b029031e2c3f4186mr2810865pfv.25.1626153307174; Mon, 12
 Jul 2021 22:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAB=6tBSuPtobccea9_R9rXrgpZ_+dv966P-ihkVgDumK=-cVfA@mail.gmail.com>
 <24631.1626150960225542116@lists.yoctoproject.org>
In-Reply-To: <24631.1626150960225542116@lists.yoctoproject.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Mon, 12 Jul 2021 22:14:56 -0700
Message-ID: <CAB=6tBTpNz2wysvRd=7JLcBJ36jGSU00pkrOMGx3rwc-CYWJmw@mail.gmail.com>
Subject: Re: [yocto] #yocto Preferred development workflow
To: ivin.lim@aei.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000397a4705c6fa5292"

--000000000000397a4705c6fa5292
Content-Type: text/plain; charset="UTF-8"

We have many recipes appended to IMAGE_INSTALL in our image recipes and it
works just fine.

From your description, it sounds like you could go either way. I personally
prefer to keep my image recipes as clean as possible, so I push as much as
I can to individual recipes. This helps with debugging later on as your
project (inevitably) gets more complex.

Also... Experience has shown that the following form is a lot more readable:

IMAGE_INSTALL  = "recipe_1"
IMAGE_INSTALL += "recipe_2"
IMAGE_INSTALL += "recipe_3"
IMAGE_INSTALL += "recipe_4"
IMAGE_INSTALL += "recipe_5"

Than this:

IMAGE_INSTALL = "\
         recipe_1 \
         recipe_2 \
         recipe_3 \
         recipe_4 \
         recipe_5"

When your repository grows large, a recursive grep for recipe_2 will make a
lot more sense if "IMAGE_INSTALL += "recipe_2"" is returned instead of
"recipe_2 \". The latter form gives no clue as to how recipe_2 is being
referenced.


..Ch:W..

On Mon, Jul 12, 2021 at 9:36 PM ivin.lim via lists.yoctoproject.org
<ivin.lim=aei.com@lists.yoctoproject.org> wrote:

> sorry about that, right now the config files are placed in the files
> directory of the recipe which builds the module.
>
> Sample snippets of the recipe concerning this config file, I removed the
> rest of lines.
> *SRC_URI = " \*
> * file://config.json \*
> *    "*
>
> *do_install_append() {*
> * install -m 0644 ${WORKDIR}/config.json ${D}/etc/directory/*
>
>
>
> *}*If I were to have the config files placed on a separate recipe, would
> that mean making multiple of these recipes depending on the number of
> projects?
> I did thought also of adding it in the image recipe but probably this
> wouldn't look well if more things get added.
>
>
> Thanks
>
>
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000397a4705c6fa5292
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We have many recipes appended to IMAGE_INSTALL in our=
 image recipes and it works just fine.</div><div><br></div><div>From your d=
escription, it sounds like you could go either way. I personally prefer to =
keep my image recipes as clean as possible, so I push as much as I can to i=
ndividual recipes. This helps with debugging later on as your project (inev=
itably) gets more complex.</div><div><br></div><div>Also... Experience has =
shown that the following form is a lot more readable:</div><div><br></div><=
div>IMAGE_INSTALL=C2=A0 =3D &quot;recipe_1&quot;</div><div>IMAGE_INSTALL +=
=3D &quot;recipe_2&quot;</div><div>IMAGE_INSTALL +=3D &quot;recipe_3&quot;=
</div><div>IMAGE_INSTALL +=3D &quot;recipe_4&quot;</div><div>IMAGE_INSTALL =
+=3D &quot;recipe_5&quot;</div><div><br></div><div>Than this:</div><div><br=
></div><div>IMAGE_INSTALL =3D &quot;\</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0 recipe_1 \</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 recipe_2 \</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 recipe_3 \</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 recipe_4 \</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 recipe_5&quot;</div><div><br></div><div>When your repository gro=
ws large, a recursive grep for recipe_2 will make a lot more sense if &quot=
;IMAGE_INSTALL +=3D &quot;recipe_2&quot;&quot; is returned instead of &quot=
;recipe_2 \&quot;. The latter form gives no clue as to how recipe_2 is bein=
g referenced.</div><div> <br></div><div><br></div><div>..Ch:W..<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Jul 12, 2021 at 9:36 PM ivin.lim via <a href=3D"http://lists.yoctopro=
ject.org">lists.yoctoproject.org</a> &lt;ivin.lim=3D<a href=3D"mailto:aei.c=
om@lists.yoctoproject.org">aei.com@lists.yoctoproject.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">sorry about that, =
right now the config files are placed in the files directory of the recipe =
which builds the module.=C2=A0<br><br>Sample snippets of the recipe concern=
ing this config file, I removed the rest of lines.<br>
<div><em>SRC_URI =3D &quot; \</em></div>
<div><em><span style=3D"white-space:pre-wrap"> </span>file://config.json \=
</em></div>
<div><em>=C2=A0 =C2=A0 &quot;</em><br><br>
<div><em>do_install_append() {</em></div>
<div><em><span style=3D"white-space:pre-wrap"> </span>install -m 0644 ${WO=
RKDIR}/config.json ${D}/etc/directory/</em></div>
<div><em>}<br><br><br></em>If I were to have the config files placed on a =
separate recipe, would that mean making multiple of these recipes depending=
 on the number of projects?=C2=A0<br>I did thought also of adding it in the=
 image recipe but probably this wouldn&#39;t look well if more things get a=
dded.<br><br><br>Thanks<br><br></div>
</div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--000000000000397a4705c6fa5292--
