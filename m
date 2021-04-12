Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.31556.1618230075262219964
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 05:21:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dGnrjTn1;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id 66so6510327vsk.9
        for <yocto@lists.yoctoproject.org>; Mon, 12 Apr 2021 05:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U7nb9JnsgfLj6YavCiVGowR5k5zMl3xdJhUO0wJFIEI=;
        b=dGnrjTn1KvOn1zPo75DimleAgndd7m5B7QqW/b3otm1KsGGgEQmqjR+oMx4dxxT1BK
         Ttast+xgEn6C5RXQeNvsdjcoJRAE8O8WbGUWF82S3sFvuflIN5F0jTicP+e1uZUQrDSk
         +dWfcwixcvYyNx0MCKnE7yaPLCLxogPEi13+msp58VALELaea5726qSZPTXTbT/GI15Q
         3gRhRpjWmmXN3TImO5G/BexxvpSk+q9MWqnOqCLjw911FQZNQWzBflZrh8cqBFOlvX0l
         P2v2cT824Ti+2vGJom+vBBjFmpIM+q8F8DfcF/g80uplQuNMAdmTnlm6MSSJC3SuMJvW
         Gxzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U7nb9JnsgfLj6YavCiVGowR5k5zMl3xdJhUO0wJFIEI=;
        b=LMkUTDtQRDnvBYfzdo4tC2KHr71x5k1r9psJGlbztU59yy9TSNL+OQXtajFRKOqHLC
         +dw6buhHBbpnU14m9VSG34Dk7vlF8i5btw2ERJXW12J6mHaJ6p+oLDH/EE4/FgcZ2CLy
         YOsvRxYRGh/t61X3ur+uo5IawTDozHzgqwcdNiSrIVqGHUQripkq5gT2/uoPghgeNHhT
         eZH+54vAePrOyRrnYskx+IoneHehOG1PiipMe+QiWxhH+pV29U9gUgfx7rBbuLClQClY
         2l8zuweJCAh8HPvPoyOCMAcqEYpa3+StK0K3derm8TyuekTiCcIB6RinrQ4NHe8BeX44
         Tq6g==
X-Gm-Message-State: AOAM530YU5ERWJ9aaJZvY/bF5URaUJC3Og5Eyrh8dKUY7YPJzzNsQml0
	IDLY3NI3+F16UymfdFD6trYQM9QGK8rBO0cWmsg=
X-Google-Smtp-Source: ABdhPJzw2x435lhxvB+Flt5RvBUvOV/Zj+6qmfIxdkTlLar5DJnNpWQRq6zPLsZ5CGJO2M3bw6Na8+pwPysEhpapU/o=
X-Received: by 2002:a67:8c1:: with SMTP id 184mr19097627vsi.31.1618230074370;
 Mon, 12 Apr 2021 05:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <8f3535e5-42c0-baf7-ae8b-fca906f33d05@gmail.com> <7847.1618228053017471875@lists.yoctoproject.org>
In-Reply-To: <7847.1618228053017471875@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 12 Apr 2021 14:21:03 +0200
Message-ID: <CANNYZj9xvzTtg-zaZk+X9W0R9FL-O+g-6eFURFbaeJu0TUGbOA@mail.gmail.com>
Subject: Re: [yocto] #golang: go fetches dependencies in compile phase
To: Juergen Landwehr <juergen.landwehr@gmx.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf6ba105bfc58c4d"

--000000000000bf6ba105bfc58c4d
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 Apr 2021 at 13:47, Juergen Landwehr <juergen.landwehr@gmx.de>
wrote:

> But dependency management in go is not that arbitrary as it may seem.
> Dependencies and their version is stored in "go.mod". To ensure
> reproducable builds, hashes for each dependency and version are stored in
> "go.sum". Both files are in git and together with a local golang proxy,
> this should ensure reproducable builds, right?
>

Reproducibility means anyone can run a build at any point in the future
even if the upstream repositories are gone, so all inputs must be stored in
a local download cache, which is the other thing SRC_URI guarantees, in
addition to verifying integrity of the inputs.

Alex

--000000000000bf6ba105bfc58c4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 12 Apr 2021 at 13:47, Juergen Landwehr &lt;<a href=3D"mailto=
:juergen.landwehr@gmx.de">juergen.landwehr@gmx.de</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">But dependency management =
in go is not that arbitrary as it may seem. Dependencies and their version =
is stored in &quot;go.mod&quot;. To ensure reproducable builds, hashes for =
each dependency and version are stored in &quot;go.sum&quot;. Both files ar=
e in git and together with a local golang proxy, this should ensure reprodu=
cable builds, right?<br></blockquote><div><br></div><div>Reproducibility me=
ans anyone can run a build at any point in the future even if the upstream =
repositories are gone, so all inputs must be stored in a local download cac=
he, which is the other thing SRC_URI guarantees, in addition to verifying i=
ntegrity of the inputs.<br></div><div><br></div><div>Alex<br></div></div></=
div>

--000000000000bf6ba105bfc58c4d--
