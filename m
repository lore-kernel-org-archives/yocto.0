Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.10291.1629548851416641737
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Aug 2021 05:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rH2n/Y1q;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id z9so18158958wrh.10
        for <yocto@lists.yoctoproject.org>; Sat, 21 Aug 2021 05:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GWqIowaaBDj2Frj61vKhOUoE969Z90bH6KRMCnjylzU=;
        b=rH2n/Y1q/aIMa46b6nPOV81onoqBQLSbwAKMj00z01hOTQ8GoUT/pEd6rRf4H+i3oW
         P9b745qzLf0XanzFZNflfbemirjtuH7jXJv0Z36s70sAlW8U6lg0ljdqzR6C5+1Ai7jl
         61paJoRExiom2lgYUwWFOMEIGQEClBJ3ZRxPaAK6n6Kj43Yk/QYaMxoYZr//JLCyJlVz
         Jr3W4ybiA+SjUXFU+uhnE3b4dzUmzkwF+wDHpQCfd9fu9GA2nTmrCscFCepwZWgCSHFo
         AEzDU9Mq7WBZp7sWEPDEUlhCx0ekbVUnhSAAasgIciYCZ9QNwlQihiogzP6m8cAvHG9v
         5eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GWqIowaaBDj2Frj61vKhOUoE969Z90bH6KRMCnjylzU=;
        b=GLyR3yANlBfLG961qgpyKJIvCYyoQS8fjVHOUqfGwcgiPnFk3D+NYUSgkkYQPXl+iu
         3RiIh1Yclpn8RTPvI/Jjp5/n0krapIsHvfd/dwftRiIT05jBYVz8EmvowEtyKsGltXbD
         u0oPwHl9jYPG/SAf6Wo7Ctxd64FHWlnMgHDYqlvsvO0Nrc4veFCgdUEfXhVJgHKvgC8E
         7FDLTYn30Jva35KAbqJwPE28+D6ierPmJbXiFhrPomJ7xeIp+pv6kmaQyOfg44zuTUfx
         aOltV44FcByanmdanFT8nQyd/Mv8J3ZOSvj8/7uZL1ibR/MmSYaldjhim8MC5S450m8B
         HVeA==
X-Gm-Message-State: AOAM532gWz2CZy85DgTSqyMklOhS936EO2CrE27LMfV7uJL2lbeiBFeZ
	8yvlrr+VBvGAcngTxYIboI4tX4JJMyv2ewYFKrs=
X-Google-Smtp-Source: ABdhPJz0ZP1SP3px+HkXJmvgPzql73aw221hnNOMhXroF1uAIFXwFPSkDG2OA8JM9hbWMpG2+GGxleemI7u0vW2qlrM=
X-Received: by 2002:adf:fa82:: with SMTP id h2mr3607135wrr.129.1629548849753;
 Sat, 21 Aug 2021 05:27:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210820204620.11236-1-okaya@kernel.org> <8682398a247f9f67d2d957863e16460455e266f0.camel@linuxfoundation.org>
In-Reply-To: <8682398a247f9f67d2d957863e16460455e266f0.camel@linuxfoundation.org>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Sat, 21 Aug 2021 07:27:18 -0500
Message-ID: <CAJdd5GaWxXXYKRKs6i_eMNF3mM3x_CXTR0JnNOwi6L1ch7anvA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH] grpc: remove nl2 requirement since it is optional
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Sinan Kaya <okaya@kernel.org>, yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000055735305ca10e86b"

--00000000000055735305ca10e86b
Content-Type: text/plain; charset="UTF-8"

On Sat, Aug 21, 2021, 6:26 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2021-08-20 at 20:46 +0000, Sinan Kaya wrote:
> > Signed-off-by: Sinan Kaya <okaya@kernel.org>
> > ---
> >  .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend  | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git
> a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> > index a72496d..dc0ea42 100644
> > ---
> a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> > +++
> b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
> > @@ -1,2 +1,5 @@
> > +# doesn't build and not required
> > +DEPENDS:remove:mingw32 = "libnsl2"
> > +
> >  EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
> >  EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"
>
> Should we be making that a PACKAGECONFIG which mingw32 could change?
>

Yes, that's a good idea. Sinan, please make that change in meta-oe, then
change this patch to remove it from PACKAGECONFIG


> Cheers,
>
> Richard
>
>

--00000000000055735305ca10e86b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Aug 21, 2021, 6:26 AM Richard Purdie &lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfounda=
tion.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 202=
1-08-20 at 20:46 +0000, Sinan Kaya wrote:<br>
&gt; Signed-off-by: Sinan Kaya &lt;<a href=3D"mailto:okaya@kernel.org" targ=
et=3D"_blank" rel=3D"noreferrer">okaya@kernel.org</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend=C2=
=A0 | 3 +++<br>
&gt;=C2=A0 1 file changed, 3 insertions(+)<br>
&gt; <br>
&gt; diff --git a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/=
grpc_%.bbappend b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/=
grpc_%.bbappend<br>
&gt; index a72496d..dc0ea42 100644<br>
&gt; --- a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.=
bbappend<br>
&gt; +++ b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.=
bbappend<br>
&gt; @@ -1,2 +1,5 @@<br>
&gt; +# doesn&#39;t build and not required<br>
&gt; +DEPENDS:remove:mingw32 =3D &quot;libnsl2&quot;<br>
&gt; +<br>
&gt;=C2=A0 EXTRA_OECMAKE:remove:mingw32 =3D &quot;-DBUILD_SHARED_LIBS=3DON&=
quot;<br>
&gt;=C2=A0 EXTRA_OECMAKE:append:mingw32 =3D &quot; -DBUILD_SHARED_LIBS=3DOF=
F&quot;<br>
<br>
Should we be making that a PACKAGECONFIG which mingw32 could change?<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Yes, th=
at&#39;s a good idea. Sinan, please make that change in meta-oe, then chang=
e this patch to remove it from PACKAGECONFIG</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div></div>

--00000000000055735305ca10e86b--
