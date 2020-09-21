Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
 by mx.groups.io with SMTP id smtpd.web11.41794.1600693969688920036
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 06:12:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pg3rePeX;
 spf=pass (domain: gmail.com, ip: 209.85.166.195, mailfrom: samuli.piippo@gmail.com)
Received: by mail-il1-f195.google.com with SMTP id l16so167762ilt.13
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 06:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lWODC9gUIsVzeD8l3pONggWNJ8ErGWTmxgZ3GWAiD3Q=;
        b=pg3rePeXAjGsKdhc3Z8ViCanpEXsmHKMTa04ubKe8Yhz1dIBQkZ9pn5Gd8mCWfzCdy
         IUjdMLSwPY3gnP9TiLKOwdlL/lq6gaA5hdMWcf2YXsZnBBTlk6Ook2o5EAh7x4ecYtQt
         fOM0S2nGx0BwFekoOSocWItFwMJXwG2IeR60wq5ytY1B3DX0r6+mwy20vd1j7EFhgPqr
         P9T+3x7oD7idjuf0n+lPJwLnmJ/6YA1H2H8RXIs68dHxX17q3p0j3NafDHuB3URwYi0e
         mKGjIR5CrOuc/MfcE28VTGbLNOHa4od7LThousPdcXx8hrrvjEh/B9yWPxudplGsS4UD
         bBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lWODC9gUIsVzeD8l3pONggWNJ8ErGWTmxgZ3GWAiD3Q=;
        b=sKNR+VLjwClE2lgqNNUrxYshJfBOuDvZ/s9XnDVyy8Xsjve6J5LaS2usPyoUBqN+34
         Mu7NEwlJpahVWzT4WJksZCrSyRQASBpR42MTJFP5GJT98hyiR7u+fjXqmAtjerOv8iuw
         oIY1Rovj+D2Mg4vK7Xst/0mSJ3DEU7HhGAIDegCLO+2FSwG/2/rELJyG1P8cKwaohlI5
         PGF/X72rckUcnmEV7qqL4Pq2WV0EpiRs3EBJT/j99NhK5hIYnZzU4t8jz6+Rko/mnQc4
         6lwsq3Hht8cpPUoxxRyoUvMLob50mqLehzEdeeEXwrMp6TxklgaSn/gDKMcNyOlG8LDL
         hmnQ==
X-Gm-Message-State: AOAM532Wnk6WwZserWaFhW/P3PUQ99UgEumGRfjfe2AH1PBV9ITa+xLq
	I6X6O/NxR8zErV0rZbF11zpDBIvLPC+eDuKMd6I=
X-Google-Smtp-Source: ABdhPJyKl2wm2hijdsUpbUa+UJFb0rgD/dBUa3GZ5J6TnJsJeHH5s9yU/eNVcj3lKgNaP9310EzZicYKJigumIgJgyg=
X-Received: by 2002:a92:8957:: with SMTP id n84mr24924959ild.219.1600693968929;
 Mon, 21 Sep 2020 06:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200918122951.23340-1-samuli.piippo@qt.io> <CAJdd5GYfG-_fMFepyL4V1PFcdcvHsQbODaa1bTii-QTaJx6b0Q@mail.gmail.com>
In-Reply-To: <CAJdd5GYfG-_fMFepyL4V1PFcdcvHsQbODaa1bTii-QTaJx6b0Q@mail.gmail.com>
From: "Samuli Piippo" <samuli.piippo@gmail.com>
Date: Mon, 21 Sep 2020 16:12:37 +0300
Message-ID: <CABXoSoWyKbeUw67t6EYEiaEhpaaMD2r65BLzh5Bgymyi6_gHBA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] Override SDK_VENDOR
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: Samuli Piippo <samuli.piippo@qt.io>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006986cf05afd29b5b"

--0000000000006986cf05afd29b5b
Content-Type: text/plain; charset="UTF-8"

On Mon, 21 Sep 2020 at 15:53, Joshua Watt <JPEWhacker@gmail.com> wrote:

> On Fri, Sep 18, 2020 at 7:30 AM Samuli Piippo <samuli.piippo@qt.io> wrote:
> >
> > Set SDK_VENDOR to '-w64', which makes the host triplet match what GCC
> > expect to find when using mingw32-w64. This enables features that are
> > not functional in the classic mingw32, but have been implemented in the
> > mingw32-w64.
>
> Does this enable it for the i686 toolchain also? Does that make sense?
>

This enables it for both x86_64-mingw32 and i686-mingw32 targets and it
makes sense
since it's not about the target bitness but the mingw implementation. w64
has support
for both targets and provides improved support over the original mingw32.


> >
> > Disable 32bit libs from the runtime component when compiling for 64bit,
> > which were enabled as a side effect of the GCC config change.
> >
> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> > ---
> >  conf/machine-sdk/include/mingw32-common.inc                    | 3 +++
> >  .../mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb             | 2 ++
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/conf/machine-sdk/include/mingw32-common.inc
> b/conf/machine-sdk/include/mingw32-common.inc
> > index 9011ded..bc6c91e 100644
> > --- a/conf/machine-sdk/include/mingw32-common.inc
> > +++ b/conf/machine-sdk/include/mingw32-common.inc
> > @@ -1,4 +1,7 @@
> >  SDK_OS = "mingw32"
> > +SDK_VENDOR_mingw32 = "-w64"
> > +SDK_VENDOR_sdkmingw32 = "-w64"
> > +
> >  NATIVESDKLIBC = "libc-mingw"
> >
> >  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32
> = "nativesdk-mingw-w64-runtime"
> > diff --git a/recipes-devtools/mingw-w64/
> nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/
> nativesdk-mingw-w64-runtime_7.0.0.bb
> > index cf39c6a..9f79ffe 100644
> > --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> > +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> > @@ -19,6 +19,8 @@ PROVIDES += "virtual/nativesdk-libintl"
> >
> >  TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
> >
> > +EXTRA_OECONF_x86-64 = "--disable-lib32"
> > +
> >  do_configure() {
> >      oe_runconf
> >  }
> > --
> > 2.17.1
> >
>
> 
>
>

--0000000000006986cf05afd29b5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, 21 Sep 2020 at 15:53, Joshua Watt &lt;<a href=3D"mailto:=
JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Fri, Sep 18, 2020 at 7:30 AM S=
amuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io" target=3D"_blank">s=
amuli.piippo@qt.io</a>&gt; wrote:<br>
&gt;<br>
&gt; Set SDK_VENDOR to &#39;-w64&#39;, which makes the host triplet match =
what GCC<br>
&gt; expect to find when using mingw32-w64. This enables features that are=
<br>
&gt; not functional in the classic mingw32, but have been implemented in t=
he<br>
&gt; mingw32-w64.<br>
<br>
Does this enable it for the i686 toolchain also? Does that make sense?<br>=
</blockquote><div><br></div><div>This enables it for both x86_64-mingw32 an=
d i686-mingw32 targets and it makes sense</div><div>since it&#39;s not abou=
t the target bitness but the mingw implementation. w64 has support</div><di=
v>for both targets and provides improved support over the original mingw32.=
<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
&gt;<br>
&gt; Disable 32bit libs from the runtime component when compiling for 64bi=
t,<br>
&gt; which were enabled as a side effect of the GCC config change.<br>
&gt;<br>
&gt; Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.i=
o" target=3D"_blank">samuli.piippo@qt.io</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/machine-sdk/include/mingw32-common.inc=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt;=C2=A0 .../mingw-w64/<a href=3D"http://nativesdk-mingw-w64-runtime_7.0=
.0.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-mingw-w64-runtime_7.0=
.0.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
&gt;=C2=A0 2 files changed, 5 insertions(+)<br>
&gt;<br>
&gt; diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machi=
ne-sdk/include/mingw32-common.inc<br>
&gt; index 9011ded..bc6c91e 100644<br>
&gt; --- a/conf/machine-sdk/include/mingw32-common.inc<br>
&gt; +++ b/conf/machine-sdk/include/mingw32-common.inc<br>
&gt; @@ -1,4 +1,7 @@<br>
&gt;=C2=A0 SDK_OS =3D &quot;mingw32&quot;<br>
&gt; +SDK_VENDOR_mingw32 =3D &quot;-w64&quot;<br>
&gt; +SDK_VENDOR_sdkmingw32 =3D &quot;-w64&quot;<br>
&gt; +<br>
&gt;=C2=A0 NATIVESDKLIBC =3D &quot;libc-mingw&quot;<br>
&gt;<br>
&gt;=C2=A0 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_=
mingw32 =3D &quot;nativesdk-mingw-w64-runtime&quot;<br>
&gt; diff --git a/recipes-devtools/mingw-w64/<a href=3D"http://nativesdk-m=
ingw-w64-runtime_7.0.0.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-m=
ingw-w64-runtime_7.0.0.bb</a> b/recipes-devtools/mingw-w64/<a href=3D"http:=
//nativesdk-mingw-w64-runtime_7.0.0.bb" rel=3D"noreferrer" target=3D"_blank=
">nativesdk-mingw-w64-runtime_7.0.0.bb</a><br>
&gt; index cf39c6a..9f79ffe 100644<br>
&gt; --- a/recipes-devtools/mingw-w64/<a href=3D"http://nativesdk-mingw-w6=
4-runtime_7.0.0.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-mingw-w6=
4-runtime_7.0.0.bb</a><br>
&gt; +++ b/recipes-devtools/mingw-w64/<a href=3D"http://nativesdk-mingw-w6=
4-runtime_7.0.0.bb" rel=3D"noreferrer" target=3D"_blank">nativesdk-mingw-w6=
4-runtime_7.0.0.bb</a><br>
&gt; @@ -19,6 +19,8 @@ PROVIDES +=3D &quot;virtual/nativesdk-libintl&quot;=
<br>
&gt;<br>
&gt;=C2=A0 TOOLCHAIN_OPTIONS =3D &quot; --sysroot=3D${STAGING_DIR_TARGET}&=
quot;<br>
&gt;<br>
&gt; +EXTRA_OECONF_x86-64 =3D &quot;--disable-lib32&quot;<br>
&gt; +<br>
&gt;=C2=A0 do_configure() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 oe_runconf<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000006986cf05afd29b5b--
