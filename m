Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web12.9077.1619338978014767677
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Apr 2021 01:22:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJwdd2kQ;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: dorindabassey@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id p15so8423858iln.3
        for <yocto@lists.yoctoproject.org>; Sun, 25 Apr 2021 01:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=14D+cOW7kRI87JOFROuzpXwgflzehL/TFhEYXKvh550=;
        b=vJwdd2kQ+HN5FC6n++Am9R8H7iOTz0jmA5iP018RU9Oa+vjgfkT7dkk+F3YE5NLH6/
         t3XSdE1tde71aPmfoehqLFwr85QGZruY5YVHlibfQQ2foJWHgL3PqjEkRaPysfgJ1L5w
         fSuadbfHFF3+PE26ViR94CPH6b3Mun9umcqzAg+tsGfim1fGtnzoCDKjkGT36XZc0Vqo
         1P/8bj8eHY53+QEn9SFtaC91h7LGdKhdfUu5WHgWzAyuEl6cVkASWzU5p97E9cDb7Tau
         mM/PYpQ9ZJZlqWvY2Ia/KLWlZmBX2QK8CVhVG4LPj1vc89pCT6hGI63qZLf9/aPDIxFl
         dFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=14D+cOW7kRI87JOFROuzpXwgflzehL/TFhEYXKvh550=;
        b=JV+kahE1pSU+kOpxCn24fgY0o212QEQJrDeoEZ465kt4XqeiZXz4132NbThnb1zUUy
         Oqo5uEaItmkL1LjmiSRb24geW8RSQWzmVhTULcOrdyLgtITiygUBFkEH4G0GnosdODNY
         FIbMRXwtg2dKtyO62Hmig0v2+3wJyPJE9fKsF0+VP3J2Dx7scY9LYdyLEivU/etVds5c
         PcG3pqJ28bK0aQH3ai4x/T7hcTi9EfEm6TmQOhIzA+sfBy8k1cSklTnSLjtUP87FURIy
         +1kNphZtZ8aUtuQ5FqtgYfgFMlSBwEqOD9lULPe17fN6m4MugMfm0D+ZALtdKF8Ta0nQ
         ks5w==
X-Gm-Message-State: AOAM533On++RffbCuG8sguf5bTptMWXiKWBbUHaF+GbexbwXLtwk5zM2
	0FMOE7gsujvE1M9JGeawRZgsZKtTIygOGNjncwo=
X-Google-Smtp-Source: ABdhPJx3jSso0Gbi+e213eBBsjEpTCun2EU8E1eXaXBB1/k6uu42o8UfguOeNNZpxllSsH6xlY7CCQOsdGirJE4pmLs=
X-Received: by 2002:a92:c548:: with SMTP id a8mr9106413ilj.137.1619338977373;
 Sun, 25 Apr 2021 01:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <jrxX.1619332227003979265.e90f@lists.yoctoproject.org>
In-Reply-To: <jrxX.1619332227003979265.e90f@lists.yoctoproject.org>
From: "Dorinda" <dorindabassey@gmail.com>
Date: Sun, 25 Apr 2021 09:22:14 +0100
Message-ID: <CAJSnhzsckVKL-56-ACaOc7bVyscPMW=rb1f3eaVfcidTQ2MHUg@mail.gmail.com>
Subject: Re: [yocto] core-image-sato -staticdev
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000847e6005c0c7bccc"

--000000000000847e6005c0c7bccc
Content-Type: text/plain; charset="UTF-8"

Hi Sateesh,

It seems you're trying to install static development packages. if that's
the case, then I think you should try adding "staticdev-pkgs" to the
EXTRA_IMAGE_FEATURES variable in the local.conf

Best Regards,
Dorinda.


On Sun, Apr 25, 2021, 07:30 sateesh m <sateesh0457@gmail.com> wrote:

> Hi Guys,
>
>                 I am newly facing this when I want to build
> core-image-sato image. how can I fix this issue can anybody know please
> suggest me.
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
>
>
>
> --
> Regards,
> Sateesh
> 
>
>

--000000000000847e6005c0c7bccc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Sateesh,<div dir=3D"auto"><br></div><div dir=3D"a=
uto">It seems you&#39;re trying to install static development packages. if =
that&#39;s the case, then I think you should try adding &quot;staticdev-pkg=
s&quot; to the EXTRA_IMAGE_FEATURES variable in the local.conf</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Best Regards,</div><div dir=3D"auto"=
>Dorinda.</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Sun, Apr 25, 2021, 07:30 sateesh m &lt;<a href=3D"mailto:sa=
teesh0457@gmail.com" target=3D"_blank" rel=3D"noreferrer">sateesh0457@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Guys,<br><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I am newly facing =
this when I want to build core-image-sato image. how can I fix this issue c=
an anybody know please suggest me.<br><br>
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
ore/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">core-image-sato.bb</a> RDEPENDS on =
or otherwise requires it)</div>
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
<br><br><br>-- <br>Regards,<br>Sateesh
<br>
<br>
<br>
</blockquote></div></div></div>

--000000000000847e6005c0c7bccc--
