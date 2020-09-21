Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web12.41736.1600694106065131560
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 06:15:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtkjwA1a;
 spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id w5so12710650wrp.8
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 06:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LTTkLCf+pAW1CPfakY8oUls/4vxCBdvQkSxWU8xraTo=;
        b=HtkjwA1aWOcJnoQ4GGrplHH7atWA9AaOt/Mk/feCGS72mcvRryIi/4yqcZdvrq8uxn
         ZgqCi+l8fMsATxeRl59EK3spuYxO8/N6AC7046CJ24izxCf4dJAZuRrzVLHhD1CctQP4
         epKtYfKxFu4zr9RjVgmABUodJHbRp1uHe+bt6H7Ojz4kUp4Qcs6olqHOXZ690eGWxBI2
         uGEqIINuv6RDbfU15/bhDvphUxIO5NWFKWb5318rvCENlimJ9zlTh6ezYZ+EuQo2l6lG
         t6xKIynNY0FdsfHZzXd/axoaMsIzgyYIltg8ZFlkD3ThUPeLDD9KxtCciCjP7Lz7kPG/
         VTuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LTTkLCf+pAW1CPfakY8oUls/4vxCBdvQkSxWU8xraTo=;
        b=NLzFqGQuWwvgJqWhF/7zR1CNZffuziu+qMVqBI4wXFdyENpUzeB/9UsSMOP2Hgz5rV
         E2KkroYsAAJAP+LXsYeOb2v27mqnrMXC9XxxlPoTxgymnU00wfGno6GmIdfyX3GXqQO6
         cimARvnWj8uEdL5xulHMjrfqmsnbFra2DsJtPZY7cfKIGXmfHZCnYPFL7+ANgzjOa9jx
         MtxB3njjWMoCdWMQrzchdipIPzyeez5dxrqsIYeL8WJW6sBn1xNN9Z5Q+XLfPsGo0baZ
         f/lKwhGaHqCw+0pavRp9Z7A93o+YfS7wC4XFypT3yzyov6zO3rfykka++Ynd8JiPI4eI
         7Seg==
X-Gm-Message-State: AOAM5301ujy+o6a4ZGdrKizFVP6yDQyOtv/j6heq4g11g7DKLuUllIuI
	hmLFGAPrL+OY7OQymUAcwFw0IyRHECKpe3NWBrc=
X-Google-Smtp-Source: ABdhPJwFwhF2EJm7gZkyRppj2rtsen7IBXCTCBoz2Mh7gN62J3txcXMWhstJZ9I97FvOVK5W/amwug6JwYfe72BGIcA=
X-Received: by 2002:a5d:568d:: with SMTP id f13mr51387384wrv.303.1600694104504;
 Mon, 21 Sep 2020 06:15:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200918122951.23340-1-samuli.piippo@qt.io> <CAJdd5GYfG-_fMFepyL4V1PFcdcvHsQbODaa1bTii-QTaJx6b0Q@mail.gmail.com>
 <CABXoSoWyKbeUw67t6EYEiaEhpaaMD2r65BLzh5Bgymyi6_gHBA@mail.gmail.com>
In-Reply-To: <CABXoSoWyKbeUw67t6EYEiaEhpaaMD2r65BLzh5Bgymyi6_gHBA@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Mon, 21 Sep 2020 08:14:55 -0500
Message-ID: <CAJdd5GYoKM8ij=Q5Ro6_KD5TK1U3AmoR=Nv4JCEZJUvH4RjOsw@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] Override SDK_VENDOR
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: Samuli Piippo <samuli.piippo@qt.io>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007e3aeb05afd2a3c4"

--0000000000007e3aeb05afd2a3c4
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 21, 2020, 8:12 AM Samuli Piippo <samuli.piippo@gmail.com> wrote:

>
> On Mon, 21 Sep 2020 at 15:53, Joshua Watt <JPEWhacker@gmail.com> wrote:
>
>> On Fri, Sep 18, 2020 at 7:30 AM Samuli Piippo <samuli.piippo@qt.io>
>> wrote:
>> >
>> > Set SDK_VENDOR to '-w64', which makes the host triplet match what GCC
>> > expect to find when using mingw32-w64. This enables features that are
>> > not functional in the classic mingw32, but have been implemented in the
>> > mingw32-w64.
>>
>> Does this enable it for the i686 toolchain also? Does that make sense?
>>
>
> This enables it for both x86_64-mingw32 and i686-mingw32 targets and it
> makes sense
> since it's not about the target bitness but the mingw implementation. w64
> has support
> for both targets and provides improved support over the original mingw32.
>

Thanks. I figured that was the case. This is testing on the AB.


>
>> >
>> > Disable 32bit libs from the runtime component when compiling for 64bit,
>> > which were enabled as a side effect of the GCC config change.
>> >
>> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
>> > ---
>> >  conf/machine-sdk/include/mingw32-common.inc                    | 3 +++
>> >  .../mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb             | 2 ++
>> >  2 files changed, 5 insertions(+)
>> >
>> > diff --git a/conf/machine-sdk/include/mingw32-common.inc
>> b/conf/machine-sdk/include/mingw32-common.inc
>> > index 9011ded..bc6c91e 100644
>> > --- a/conf/machine-sdk/include/mingw32-common.inc
>> > +++ b/conf/machine-sdk/include/mingw32-common.inc
>> > @@ -1,4 +1,7 @@
>> >  SDK_OS = "mingw32"
>> > +SDK_VENDOR_mingw32 = "-w64"
>> > +SDK_VENDOR_sdkmingw32 = "-w64"
>> > +
>> >  NATIVESDKLIBC = "libc-mingw"
>> >
>> >  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32
>> = "nativesdk-mingw-w64-runtime"
>> > diff --git a/recipes-devtools/mingw-w64/
>> nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/
>> nativesdk-mingw-w64-runtime_7.0.0.bb
>> > index cf39c6a..9f79ffe 100644
>> > --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
>> > +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
>> > @@ -19,6 +19,8 @@ PROVIDES += "virtual/nativesdk-libintl"
>> >
>> >  TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
>> >
>> > +EXTRA_OECONF_x86-64 = "--disable-lib32"
>> > +
>> >  do_configure() {
>> >      oe_runconf
>> >  }
>> > --
>> > 2.17.1
>> >
>>
>> 
>>
>>

--0000000000007e3aeb05afd2a3c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Sep 21, 2020, 8:12 AM Samuli Piippo &lt;<a hre=
f=3D"mailto:samuli.piippo@gmail.com">samuli.piippo@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 21 Sep 2020 at =
15:53, Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">JPEWhacker@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Fri, Sep 18, 2020 at 7:30 A=
M Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io" target=3D"_blank=
" rel=3D"noreferrer">samuli.piippo@qt.io</a>&gt; wrote:<br>
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
<br></div></div></div></blockquote></div></div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Thanks. I figured that was the case. This is testing on t=
he AB.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_quote"><div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
&gt;<br>
&gt; Disable 32bit libs from the runtime component when compiling for 64bi=
t,<br>
&gt; which were enabled as a side effect of the GCC config change.<br>
&gt;<br>
&gt; Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.i=
o" target=3D"_blank" rel=3D"noreferrer">samuli.piippo@qt.io</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/machine-sdk/include/mingw32-common.inc=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt;=C2=A0 .../mingw-w64/<a href=3D"http://nativesdk-mingw-w64-runtime_7.0=
.0.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">nativesdk-mingw-w64-=
runtime_7.0.0.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<=
br>
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
ingw-w64-runtime_7.0.0.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">=
nativesdk-mingw-w64-runtime_7.0.0.bb</a> b/recipes-devtools/mingw-w64/<a hr=
ef=3D"http://nativesdk-mingw-w64-runtime_7.0.0.bb" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">nativesdk-mingw-w64-runtime_7.0.0.bb</a><br>
&gt; index cf39c6a..9f79ffe 100644<br>
&gt; --- a/recipes-devtools/mingw-w64/<a href=3D"http://nativesdk-mingw-w6=
4-runtime_7.0.0.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">natives=
dk-mingw-w64-runtime_7.0.0.bb</a><br>
&gt; +++ b/recipes-devtools/mingw-w64/<a href=3D"http://nativesdk-mingw-w6=
4-runtime_7.0.0.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">natives=
dk-mingw-w64-runtime_7.0.0.bb</a><br>
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
</blockquote></div></div></div>

--0000000000007e3aeb05afd2a3c4--
