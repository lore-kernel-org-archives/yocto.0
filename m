Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.3874.1619370185853436152
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Apr 2021 10:03:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OwxXCP6h;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: sateesh0457@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id g5so74128196ejx.0
        for <yocto@lists.yoctoproject.org>; Sun, 25 Apr 2021 10:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pu//chpm/wxBIGAGxDAJssCp8weTQXZ4ovWGUcOdj98=;
        b=OwxXCP6hqdcqUtEFYPdhZgKAgny5UciFKA0MvlDwR58CAMNefFeReS8iA6lFH/R0Fe
         odNjwxBdDiZ+0WIOQgYE2vNN2IyUHeARN01R+dKmLQsQMQj3GKG0Tm6Z3a19wWVPzfu1
         X66GJpa78Yv1TKi5j7gkubSkkBbkcrP82UBvX1HnA2qq5TT88V27ejOOEtV+vNDI/huo
         yExOOIYjMQluUp7nnspPc/Cb5ZKndpUOe+MiHL4nkLp7FxEmxwQ7WQCO4BKw2zxjDyAI
         NtKJjotuHSNtJboSGnPqEpsjjDc+Iqw+EvOc9ei2kk6xe093jRlpbF36aE9THN9blOBd
         CTCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pu//chpm/wxBIGAGxDAJssCp8weTQXZ4ovWGUcOdj98=;
        b=YSDOn0R1cXzP2/+uzYKccBhlakaedDNgb7yPBByPcBFfTgu50phjYoXyZqeKyHg7l0
         v+JXu9bS1DNrNzQggtXw9i5QgOForuiDV89AiGAK2A6wHZyHHex9a6ZxU7gjn1GcyaFW
         KyODFEJZYuM9D6InR7CkRyF1782KFZLvKx5hS6adwwah4M+cSiZiKCkvnQ40QWXkKvOz
         /PMfv0hQm3DymERFu7nbPT1tX4qQUOXOudOLFUwNLfOi4erPrWoQUM+bUYZDMEZK9FpP
         V3mp4956a9DkQaSiJNf9uT15i/SAmI2UG3FnpNRI3l1zRkzGreVV1GLoLNhEFuD6Lvyd
         FjIA==
X-Gm-Message-State: AOAM532CUjvv51++YcRKt2bG37Z1aUoqiCDWbCYYZUgGktN9PvemZcDd
	0C1o90hrJTVX6K/ilK94OW9uNiOejAxoKAltvXM=
X-Google-Smtp-Source: ABdhPJwT8wbNotc2kdwmGAwRKe35Plh+DaOsC4jxbeZuOuIFTA4piS2K9O4D+BsYAPFZgZqjfKPxB0ePR3WS7IIWkJA=
X-Received: by 2002:a17:906:7806:: with SMTP id u6mr13684577ejm.130.1619370184346;
 Sun, 25 Apr 2021 10:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <sVB3.1619368230886684119.k1sU@lists.yoctoproject.org>
In-Reply-To: <sVB3.1619368230886684119.k1sU@lists.yoctoproject.org>
From: "sateesh m" <sateesh0457@gmail.com>
Date: Sun, 25 Apr 2021 22:32:53 +0530
Message-ID: <CACsETSsRF1pfNx5oHtZ0Jbs_bL5wYBF8FJwdq11A050wyQ2y4Q@mail.gmail.com>
Subject: Re: [yocto] core-image-sato -staticdev issue
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000099107b05c0cf0010"

--00000000000099107b05c0cf0010
Content-Type: text/plain; charset="UTF-8"

Hi Guys,

I am facing one more issue No eligible RPROVIDERs exist for
'core-image-sato'

Thanks & Regards,
Sateesh


On Sun, Apr 25, 2021 at 10:00 PM sateesh m via lists.yoctoproject.org
<sateesh0457=gmail.com@lists.yoctoproject.org> wrote:

> Hi Guys,
>
>                 I am newly facing this when I want to build
> core-image-sato image. how can I fix this issue can anybody know please
> suggest me.
>
> local.conf I enabled EXTRA_IMAGE_FEATURES +=  "staticdev-pkgs"  but same
> issue I am facing.
>
> Loading cache: 100% |
>
>
> Loaded 0 entries from dependency cache.
> Parsing recipes: 100%
> |#######################################################################################################################################|
> Time: 0:00:17
> Parsing of 3450 .bb files complete (0 cached, 3450 parsed). 5058 targets,
> 469 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES '-staticdev'
> (sources/openembedded-core/meta/recipes-sato/images/core-image-sato.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target '-staticdev' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['-staticdev']
> ERROR: Required build target 'core-image-sato' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-sato',
> '-staticdev']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> --
> Regards,
> Sateesh
> 
>
>

--00000000000099107b05c0cf0010
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>I am facing one more issue No =
eligible RPROVIDERs exist for &#39;core-image-sato&#39;<br></div><div><br><=
/div><div>Thanks &amp;=C2=A0Regards,</div><div>Sateesh</div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Sun, Apr 25, 2021 at 10:00 PM sateesh m via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;sateesh0457=3D<a href=3D"mailt=
o:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Guys=
,<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I am newly=
 facing this when I want to build core-image-sato image. how can I fix this=
 issue can anybody know please suggest me.<br><br>local.conf I enabled EXTR=
A_IMAGE_FEATURES +=3D=C2=A0 &quot;staticdev-pkgs&quot;=C2=A0 but same issue=
 I am facing.<br><br>
<div>Loading cache: 100% |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>Loaded 0 entries from dependency cache.</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
##############| Time: 0:00:17</div>
<div>Parsing of 3450 .bb files complete (0 cached, 3450 parsed). 5058 targ=
ets, 469 skipped, 0 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>ERROR: Nothing RPROVIDES &#39;-staticdev&#39; (sources/openembedded-c=
ore/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" target=
=3D"_blank">core-image-sato.bb</a> RDEPENDS on or otherwise requires it)</=
div>
<div>NOTE: Runtime target &#39;-staticdev&#39; is unbuildable, removing...=
</div>
<div>Missing or unbuildable dependency chain was: [&#39;-staticdev&#39;]</=
div>
<div>ERROR: Required build target &#39;core-image-sato&#39; has no buildab=
le providers.</div>
<div>Missing or unbuildable dependency chain was: [&#39;core-image-sato&#3=
9;, &#39;-staticdev&#39;]</div>
<div>=C2=A0</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.</div>
<div>=C2=A0</div>
-- <br>Regards,<br>Sateesh
<br>
<br>
<br>
</blockquote></div>
<br>-- <br>Regards,<br />Sateesh

--00000000000099107b05c0cf0010--
