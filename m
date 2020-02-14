Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web09.4367.1581674222647470550
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 01:57:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgRk6QJE;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id a33so3353846uad.11
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 01:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dWqRNoVhUtu7PcMsp1ajKSSOXoO96OTxTTYiN0pMSao=;
        b=OgRk6QJEDxk4CJNpCY+pxmRyM3jq0Ki8f90hlDtsCY296c/qApO/7DcjdipRfrLJYT
         uek25l5DQe6PzdfKZwZ22sqEO9uddcbDkPcGfA6dS2mrr3GfnC+5oyyKRJgs2oygrJQo
         WE82+BpzhrrZQ6jNI/JRbXvPapBheb/69CsG+xt0h38l8iQpXQ4QEvUBvY/7LGsRbuTA
         8DeV2C4WmbkDMt/Sai5Q2KRE0nnduYOBjvdJb/4lJ/sQGSE1aVN2WG/hGdPqVKwm1Ja+
         yGnPCAAmd9FJm8Ykk2ljJ7eADyDOuZKPws1XMKwwBREW1GRVFLKPlrqyM01uNMMeMhcp
         A58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dWqRNoVhUtu7PcMsp1ajKSSOXoO96OTxTTYiN0pMSao=;
        b=b5HEGaEKtkSn2HVAqhsvAPK2ukyfsCxnx/YIB2ZnuH7n412arqXSr9Ug8RtQSHYdpN
         hwm/WqEJa0SzA10ffuBySVR+02gJsbhl4P/mKv/uOhIEwaLAjjI5KkGqq+uY0UvNiLtc
         2Lse7K6tMEI+gxZ07tQPMJoBsvREebJCRcMDvl8KvSyfenTkBSF0/zapqGV3iEb6TOF6
         rPWxDbLV7MSHytCUop2iISKyKhehMPW6n5EzG45cSt3UcjpkNtBWeV116Ujenej637bO
         r377ArtSeZcoREm+Jk8/zuuuRHyD/CT5ya1QHoxF3gG57/4MzFXUsE0gPjV4HDkgqShO
         Z4eg==
X-Gm-Message-State: APjAAAVwWEaiEe+CcluCrieWSAuWryg3Poz98jZJcnapS0YUp0MZYxKW
	7kzUdfN4egzCQTMeY5mq2yfXs7tODWQAaDCzB38=
X-Google-Smtp-Source: APXvYqyIb8clyoRfomG7SkYk7zAoDY0NwCzoq3yaM8E8c7T0xDCSa8KxozaRaAdnZJXUscBU1w7ZSu7jMmoqlg8wyx8=
X-Received: by 2002:ab0:658d:: with SMTP id v13mr977250uam.71.1581674221734;
 Fri, 14 Feb 2020 01:57:01 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9myYbCLMAv-4xrQUVdOWLhfwn7HZNzj4s2S511Qq4rrQ@mail.gmail.com>
 <11386.1581673923440714232@lists.yoctoproject.org>
In-Reply-To: <11386.1581673923440714232@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 14 Feb 2020 10:56:50 +0100
Message-ID: <CANNYZj-WtCPOUTD5tsq3_3K2w6tAaB9FK4E_SEE2jwR-tMYfvQ@mail.gmail.com>
Subject: Re: [yocto] Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: Pieter Smith <smipi01@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000231011059e863ac8"

--000000000000231011059e863ac8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Try placing the sources into recipes-my-application/files/src, then SRC_URI
=3D "file://src/" should work.

Alex

On Fri, 14 Feb 2020 at 10:52, Pieter Smith <smipi01@gmail.com> wrote:

> Thanks Alex,
>
> I tried this, but still cannot get it set-up so that the sources are
> fetched. I have the following directory structure in my repo:
> =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
> =E2=94=9C=E2=94=80=E2=94=80 README
> =E2=94=9C=E2=94=80=E2=94=80 recipes-images
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 my-image
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 my-image.bb
> =E2=94=9C=E2=94=80=E2=94=80 recipes-my-application
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 my-application
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 my-application_1.0.bb
> =E2=94=94=E2=94=80=E2=94=80 src
>     =E2=94=9C=E2=94=80=E2=94=80 my-application.c
>     =E2=94=9C=E2=94=80=E2=94=80 secrets.c
>     =E2=94=94=E2=94=80=E2=94=80 secrets.h
>
> None of the following in my-application_1.0.bb succeeds in fetching the
> source:
>
> SRC_URI =3D "file://../src/*"
> SRC_URI =3D "file://../src/"
> SRC_URI =3D "file://src/*"
> SRC_URI =3D "file://src/"
>
> What am I missing?
>
>=20
>

--000000000000231011059e863ac8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Try placing the sources into recipes-my-application/f=
iles/src, then SRC_URI =3D &quot;file://src/&quot; should work.</div><div><=
br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 14 Feb 2020 at 10:52, Pieter Smith &=
lt;<a href=3D"mailto:smipi01@gmail.com">smipi01@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Thanks Alex,<br=
><br>I tried this, but still cannot get it set-up so that the sources are f=
etched. I have the following directory structure in my repo:</p>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=9C=E2=94=80=E2=94=80 conf</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 layer.conf</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=9C=E2=94=80=E2=94=80 README</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=9C=E2=94=80=E2=94=80 recipes-images</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-image</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 <a href=3D=
"http://my-image.bb" target=3D"_blank">my-image.bb</a></span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=9C=E2=94=80=E2=94=80 recipes-my-application</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-application</span></d=
iv>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 <a href=3D=
"http://my-application_1.0.bb" target=3D"_blank">my-application_1.0.bb</a><=
/span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=E2=94=94=E2=94=80=E2=94=80 src</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 my-application.c</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 secrets.c</span></div>
<div><span style=3D"font-family:courier_newregular,courier;font-size:8pt">=
=
=C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 secrets.h</span></div>
<div><br>None of the following in <a href=3D"http://my-application_1.0.bb"=
 target=3D"_blank">my-application_1.0.bb</a> succeeds in fetching the sourc=
e:<br><br>SRC_URI =3D &quot;file://../src/*&quot;<br>SRC_URI =3D &quot;file=
://../src/&quot;<br>SRC_URI =3D &quot;file://src/*&quot;<br>SRC_URI =3D &qu=
ot;file://src/&quot;<br><br>What am I missing?</div>
<div>=C2=A0</div>
<br>
</blockquote></div>

--000000000000231011059e863ac8--
