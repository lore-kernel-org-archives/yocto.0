Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.4256.1624944429080105626
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 22:27:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TX9AAZuI;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: frederic.martinsons@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id o6so10350785oic.9
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 22:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=annOJfqrHdvwGSraRlNZmNhlOQGorhB3H9+6Rqjh7DU=;
        b=TX9AAZuIz8K1fNXenZozXbsSkIIZsNhw0oz2LGMpyoYOLSSt1raVdot5a6Rfl3rTyE
         jFxODpt0jcAiL0PJZ3D5YjDw5K+D3Z67UmwjIGBe5f0P2bHWP5lcfKKe0SQkSabObuds
         U3HoqI8xry3B/UCSB51VAyNjQWUXidXuAMIQt7cfjEcewX8F1Qzs9Cqc2u1R8FeJE/t6
         JahzkSz2ISnvYmgYvohYeeM57vzG5Dr9lLPpkl3vjcDoRtlYqemlJF0QWRYpUmsFztBi
         uHIj/0oM7xEVCQfHMdmskGPyWMetAB5lZKkJhHncFB6pKpMved0qBkVGHnZQloTU0mjO
         mqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=annOJfqrHdvwGSraRlNZmNhlOQGorhB3H9+6Rqjh7DU=;
        b=ldldtBaE5olHltLs950/5krCyXPWUuK7N2cuYyRjB+G+z0YuxyCaGToylpQuLkK5t5
         TLK7m4ipk3phCiNoOmXASnEp+mD/I+wEOYfg/8DcNODMEaiV8aarQbrJy5xg8iJlkJfB
         TQqJMLyChfxvhj5Jy6V3obHLOhwi24Igj8/8OzfpQ6VC8qc6pIp8k6WBZiJiMng5rt+O
         Dgmj8spiUwniL48J/0+QQaVHycyFZDhhSJVAbINj1zUXAkDD4WzexWYAcZ6La3I3ubZ7
         A/SX1MO7pD6FEzKE5O9vPkZRkj3ve8FTPup9fl8hB67JfJ9Iw4cVFJV3X/rw/NfOVrJD
         Fudw==
X-Gm-Message-State: AOAM530Wi0Df2UQ3NzzUT9+ssFL8GFLtEosfTnAN6EKCvWjeZwQQjtVt
	5WsIswaJpvDQG6VhVv8rgjtP0RcgHTvcOuh3a4w=
X-Google-Smtp-Source: ABdhPJyaTOE/QBxYdSwSesHRkfzJ6STWqRPlKGj3aqagxQ+gifHThyp4sObKP/tDwT1K42K0NvuKWr9vIc0nFbZOX34=
X-Received: by 2002:a05:6808:bc1:: with SMTP id o1mr23852439oik.176.1624944428386;
 Mon, 28 Jun 2021 22:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
In-Reply-To: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
Date: Tue, 29 Jun 2021 07:26:57 +0200
Message-ID: <CA+cAkeoqEV_u0SKVX+QYLZdwmXthOg_kJsYRGUOVAXY+e=jZZA@mail.gmail.com>
Subject: Re: [yocto] Would COMPATIBLE_IMAGE make sense?
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006f144205c5e0db6f"

--0000000000006f144205c5e0db6f
Content-Type: text/plain; charset="UTF-8"

Hello, instead of creating a new variable (don't sure of its possible
usefulness), you can use BBMASK or review dependencies between your layer

PS: I did a similar answer on your stackoverflow question.

On Tue, 29 Jun 2021 at 01:29, Jonas Vautherin <jonas.vautherin@gmail.com>
wrote:

> I was thinking about my issue described here [1], and discovered the
> variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which "you can use
> to stop recipes from being built for machines (/hosts) with which the
> recipes are not compatible". And so I wondered if it would make sense to
> add COMPATIBLE_IMAGE, for a similar purpose.
>
> Let me explain my issue: I define different images in different layers
> (say `first-project-image` and `second-project-image`), and in each of
> those layers I create `.bbappends` to configure some packages. Typically
> `hostapd` is used by both images, but with a different config file.
>
> The thing is that when I run `bitbake first-project-image`, because
> `second-project-image` is part of my bblayers.conf, then the
> hostapd_%.bbappend from `second-project-image` is used and may have an
> impact on `first-project-image`, which I don't want. I really want this
> bbappend to only affect the image `second-project-image`.
>
> One way I can see to deal with that is to realize that
> `first-project-image` and `second-project-image` are two different
> projects, and build them from two different BUILDDIRs. The thing I don't
> like here is that all the packages are therefore downloaded and built
> twice, which seems like a loss of time and space.
>
> That's where I thought about COMPATIBLE_IMAGE. In the hostapd_%.bbappend
> of `first-project-image`, I would set "COMPATIBLE_IMAGE =
> 'first-project-image'", and similarly for "COMPATIBLE_IMAGE =
> 'second-project-image'". So that I could still share a BUILDDIR between
> different projects.
>
> How bad of an idea is that?
>
> Thanks in advance,
> Jonas
>
> [1]: https://stackoverflow.com/questions/68167244/image-specific-layers
>
> 
>
>

--0000000000006f144205c5e0db6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, instead of creating a new variable (don&#39;t sure =
of its possible usefulness), you can use BBMASK or review dependencies=C2=
=A0between your layer<div><br></div><div>PS: I did a similar answer on you=
r=C2=A0stackoverflow=C2=A0question.</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 29 Jun 2021 at 01:29, Jona=
s Vautherin &lt;<a href=3D"mailto:jonas.vautherin@gmail.com">jonas.vautheri=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>I was thinking about my issue described h=
ere [1], and discovered the variables called COMPATIBLE_MACHINE and COMPATI=
BLE_HOST, which &quot;you can use to stop recipes from being built
                    for machines (/hosts) with which the recipes are not c=
ompatible&quot;. And so I wondered if it would make sense to add COMPATIBLE=
_IMAGE, for a similar purpose.</div><div><br></div><div>Let me explain my i=
ssue: I define different images in different layers (say `first-project-ima=
ge` and `second-project-image`), and in each of those layers I create `.bba=
ppends` to configure some packages. Typically `hostapd` is used by both ima=
ges, but with a different config file.</div><div><br></div><div>The thing i=
s that when I run `bitbake first-project-image`, because `second-project-im=
age` is part of my bblayers.conf, then the hostapd_%.bbappend from `second-=
project-image` is used and may have an impact on `first-project-image`, whi=
ch I don&#39;t want. I really want this bbappend to only affect the image `=
second-project-image`.<br></div><div><br></div><div>One way I can see to de=
al with that is to realize that `first-project-image` and `second-project-i=
mage` are two different projects, and build them from two different BUILDDI=
Rs. The thing I don&#39;t like here is that all the packages are therefore =
downloaded and built twice, which seems like a loss of time and space.</div=
><div><br></div><div>That&#39;s where I thought about COMPATIBLE_IMAGE. In =
the hostapd_%.bbappend of `first-project-image`, I would set &quot;COMPATIB=
LE_IMAGE =3D &#39;first-project-image&#39;&quot;, and similarly for &quot;C=
OMPATIBLE_IMAGE =3D &#39;second-project-image&#39;&quot;. So that I could s=
till share a BUILDDIR between different projects.</div><div><br></div><div>=
How bad of an idea is that?</div><div><br></div><div>Thanks in advance,</di=
v><div>Jonas<br></div><div><br></div><div>[1]: <a href=3D"https://stackover=
flow.com/questions/68167244/image-specific-layers" target=3D"_blank">https:=
//stackoverflow.com/questions/68167244/image-specific-layers</a></div></div=
>
<br>
<br>
<br>
</blockquote></div>

--0000000000006f144205c5e0db6f--
