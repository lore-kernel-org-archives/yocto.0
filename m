Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web12.18648.1618428068228423163
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 12:21:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CV6eyOoY;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id k73so17094861ybf.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 12:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rSUOgpzudjwgA/bOMAU3gkMQ3XYJ1aRHqzKbFzcPt+o=;
        b=CV6eyOoYdBNN297GpPvIfgMeMvW7PFNTA3I88ZEIsqBwjNApqAEvNKw8BJkqkJA1+r
         rA9pGESkgpFs4oASlEA+hQxC5pfxuEPokxzbUeXS59FAwZR5OHYLgcEBtyEuV2vazK0j
         kVWT0mQNEEzvIIggIpDDTP66oz7ScGOKqn+yRzM9zG21YVvol7NM+oqoWgict5A+rfaK
         kgEEwfL8/eviSA9Br8Umwn4qtGvyy2E59XrMUr1q4mZ/B93iC+qtZBLxuZLNFJ/RAHcQ
         elg9POvOgxirOljTH5Y6hEPe8XPEBykrNCnTH56vNiodQ2HiGmz3bhzfWot9l6O0FZxP
         Wp0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rSUOgpzudjwgA/bOMAU3gkMQ3XYJ1aRHqzKbFzcPt+o=;
        b=PM1Gj1f8/K5Asu6ZapI75xFytzApClTAw/Y195I3iC+CT2vOhBeeljamZkWNJuCyUh
         7I7eNLbHztNjfIcG+6b9WjElRsbPcbmuWdv7e2em9G0Oe/viZpfmxyaOF/ufnBoFwxs9
         JzeJ/Nb02VR8dPoWPxCHmZL2LE+azu+pc7/C1mptGHu2yVjVxmVqF3PMjUQNKtjp+xd0
         c+5+PMmeAOURKPjFdMf9FyA0hSQmOH4TpQ7qDi56aKkRlGGIjGzzJwffPj/m6qhmqJQ8
         IXuhbC8wpAUeIK13qGn2VFvr3cKuPcxL7yvK9muCicjVALJJB1ahMZG0AHNTvoHF5At9
         6vow==
X-Gm-Message-State: AOAM533RtWi3e9d/387v/0Bh4l2ft8AqlWJO75yYDHxify1fan3SZ31q
	NIQ8P9ztPW78ILzG6hG9OQRmMimUBbb9WKlMiJaY7eYlqqnFVg==
X-Google-Smtp-Source: ABdhPJyuT5eLRLknF506D9lVfZXhP4jQ23HEovOQRNz9IoXOY4QqUCK3ssckCjqUjFKJdEVTR4RJYOVFltGLhCmY5Go=
X-Received: by 2002:a25:d848:: with SMTP id p69mr40541228ybg.124.1618428067046;
 Wed, 14 Apr 2021 12:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <STZO.1618381881072205498.KBTw@lists.yoctoproject.org>
In-Reply-To: <STZO.1618381881072205498.KBTw@lists.yoctoproject.org>
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
Date: Wed, 14 Apr 2021 12:20:56 -0700
Message-ID: <CAKKtPp9D9fOBEmp6KMO0Mi5uwQ2iwK3fPUCZ8Hee7GurB5_QhA@mail.gmail.com>
Subject: Re: [yocto] Cannot execute nodejs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000007e97e05bff3a675"

--00000000000007e97e05bff3a675
Content-Type: text/plain; charset="UTF-8"

I was able to solve it by forcing recompiling nodejs with `bitbake -f -c
compile nodejs`

Not sure what happened there

--
Alessandro Tagliapietra



On Wed, Apr 14, 2021 at 11:51 AM Alessandro Tagliapietra <
tagliapietra.alessandro@gmail.com> wrote:

> Hi everyone,
>
> I've installed nodejs and node-red  by using meta-oe and meta-iot-cloud,
> with
>
> IMAGE_INSTALL_append = " nodejs node-red bash"
>
> it was initially working but then I've got some pseudo aborts that fixed
> automatically and then I saw that:
>  - /usr/bin/node doesn't have the +x flag
>  - the file is 1.1G big (however the image is 200MB)
>  - trying to run it says "cannot execute binary file: Exec format error"
>
> any idea why?
>
> Target is core-image-minimal with machine qemuarm.
> I've checked the source of the file with `oe-pkgdata-util find-path` it
> came from the nodejs recipe. I've also tried bitbake -c clean nodejs and
> nothing changed
> 
>
>

--00000000000007e97e05bff3a675
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was able to solve it by forcing recompiling nodejs with =
`bitbake -f -c compile nodejs`<div><br></div><div>Not sure what happened th=
ere<br><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">--<div>Alessandro Ta=
gliapietra</div><div><br></div></div></div></div><br></div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ap=
r 14, 2021 at 11:51 AM Alessandro Tagliapietra &lt;<a href=3D"mailto:taglia=
pietra.alessandro@gmail.com">tagliapietra.alessandro@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi everyone,<=
br><br>I&#39;ve installed nodejs and node-red=C2=A0 by using meta-oe and me=
ta-iot-cloud, with<br><br>IMAGE_INSTALL_append =3D &quot; nodejs node-red b=
ash&quot;<br><br>it was initially working but then I&#39;ve got some pseudo=
 aborts that fixed automatically and then I saw that:<br>=C2=A0- /usr/bin/n=
ode doesn&#39;t have the +x flag<br>=C2=A0- the file is 1.1G big (however t=
he image is 200MB)<br>=C2=A0- trying to run it says &quot;cannot execute bi=
nary file: Exec format error&quot;<br><br>any idea why?<br><br>Target is=C2=
=
=A0core-image-minimal with machine qemuarm.<br>I&#39;ve checked the source=
 of the file with `oe-pkgdata-util find-path` it came from the nodejs recip=
e. I&#39;ve also tried bitbake -c clean nodejs and nothing changed
<br>
<br>
<br>
</blockquote></div>

--00000000000007e97e05bff3a675--
