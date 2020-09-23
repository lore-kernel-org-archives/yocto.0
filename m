Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
 by mx.groups.io with SMTP id smtpd.web10.4072.1600889128819260879
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 12:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X2mj4Wy/;
 spf=pass (domain: gmail.com, ip: 209.85.218.67, mailfrom: kergoth@gmail.com)
Received: by mail-ej1-f67.google.com with SMTP id r7so1137177ejs.11
        for <yocto@lists.yoctoproject.org>; Wed, 23 Sep 2020 12:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W2RPhBsrF/3cXViwUk4AyE/llCCIsMGz9D2Bt/f0bTI=;
        b=X2mj4Wy/SOJc1ZN3YChnusbPGj97pLKa7JlF5mR4/j0J/9AYMbyFomuQkAxnD9Uigx
         7wVWcPPw1UM9WWrfcThwYvE4uvEF1sqjtablYKw4TWdrXqlwcMDVwaJivxlAphwL8T7Q
         RifwWviR8Pq5D6nKTaa5BpvkVNJ6AqUWm0h5PDrefTeRKhmR0aN1l4uIEYJI/DnxD9WC
         fhEwfsgYgPtyRuAUqg6K64yN5OS8TaWuL3WPylIwLyUs5ecy8XruxIXlcDzQRsp233cZ
         T6mj1cs1rF9qQ2arYCkBXjgjHU9UTyhIiddFYmVwzj3hY8m9AOZvmkVV03L8QTFvs1HH
         jC4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W2RPhBsrF/3cXViwUk4AyE/llCCIsMGz9D2Bt/f0bTI=;
        b=lnaeUUSQya18Txh45X2aAW/fYeTenxktOzELIHHXQTTzzYpJnl/07dYMWOan/o/MyW
         azStGsHl5Qe62N0ovHZFqhubnzpzdBtH7BwrbmVegdmA3Hj8NgPU3k+R5d4T20aklg4r
         lE6vh6xf4ey1CU8OLAtVo7V7T3X1GC4n8o02v8KVor2RZr3F3kJ9Q46q0D7i9J5QwZHl
         /+j1RGTUi9PB/GWmC7pgdA+0WcTaRSqVKS2jxF4n7tgjEbmMUSiXwB9JPeb/bfJXq89j
         Bxa7jua2VnaMp6pSoOnaSuxWjIrzzPiQl23ncyv9oIOG3PH9EhQko+gzyonUUh6WlnDB
         DHDA==
X-Gm-Message-State: AOAM530dNeS/yNhHQ3+/+OMAA4T+xrR73ru6PbS7dF6TJSi1MrRFKRUi
	s6OVs++TZWFm4bcWCvrmDj6kEcUAxms0L+LkHvA=
X-Google-Smtp-Source: ABdhPJzqCRnxyz7k2iSsKw1oIs3ygTeJ9vyAyD5beZOXswBAoSoHrvC3XV/97CGTFyDvhMOvyeNiSf+5MAqAbwRVtr8=
X-Received: by 2002:a17:906:370a:: with SMTP id d10mr1198913ejc.393.1600889127177;
 Wed, 23 Sep 2020 12:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200918122951.23340-1-samuli.piippo@qt.io> <CAJdd5GYfG-_fMFepyL4V1PFcdcvHsQbODaa1bTii-QTaJx6b0Q@mail.gmail.com>
 <CABXoSoWyKbeUw67t6EYEiaEhpaaMD2r65BLzh5Bgymyi6_gHBA@mail.gmail.com> <CAJdd5GYoKM8ij=Q5Ro6_KD5TK1U3AmoR=Nv4JCEZJUvH4RjOsw@mail.gmail.com>
In-Reply-To: <CAJdd5GYoKM8ij=Q5Ro6_KD5TK1U3AmoR=Nv4JCEZJUvH4RjOsw@mail.gmail.com>
From: kergoth@gmail.com
Date: Wed, 23 Sep 2020 12:25:16 -0700
Message-ID: <CABcZANnX6-f1SmJw_Mz=KJMSADFUN-=mgQyh=oK09C6JraR90g@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] Override SDK_VENDOR
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: Samuli Piippo <samuli.piippo@gmail.com>, Samuli Piippo <samuli.piippo@qt.io>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c015ae05b0000b66"

--000000000000c015ae05b0000b66
Content-Type: text/plain; charset="UTF-8"

Assuming AB success, is this also suitable for stable branches like dunfell?

On Mon, Sep 21, 2020 at 6:21 AM Joshua Watt <JPEWhacker@gmail.com> wrote:

>
>
> On Mon, Sep 21, 2020, 8:12 AM Samuli Piippo <samuli.piippo@gmail.com>
> wrote:
>
>>
>> On Mon, 21 Sep 2020 at 15:53, Joshua Watt <JPEWhacker@gmail.com> wrote:
>>
>>> On Fri, Sep 18, 2020 at 7:30 AM Samuli Piippo <samuli.piippo@qt.io>
>>> wrote:
>>> >
>>> > Set SDK_VENDOR to '-w64', which makes the host triplet match what GCC
>>> > expect to find when using mingw32-w64. This enables features that are
>>> > not functional in the classic mingw32, but have been implemented in the
>>> > mingw32-w64.
>>>
>>> Does this enable it for the i686 toolchain also? Does that make sense?
>>>
>>
>> This enables it for both x86_64-mingw32 and i686-mingw32 targets and it
>> makes sense
>> since it's not about the target bitness but the mingw implementation. w64
>> has support
>> for both targets and provides improved support over the original mingw32.
>>
>
> Thanks. I figured that was the case. This is testing on the AB.
>
>
>>
>>> >
>>> > Disable 32bit libs from the runtime component when compiling for 64bit,
>>> > which were enabled as a side effect of the GCC config change.
>>> >
>>> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
>>> > ---
>>> >  conf/machine-sdk/include/mingw32-common.inc                    | 3 +++
>>> >  .../mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb             | 2 ++
>>> >  2 files changed, 5 insertions(+)
>>> >
>>> > diff --git a/conf/machine-sdk/include/mingw32-common.inc
>>> b/conf/machine-sdk/include/mingw32-common.inc
>>> > index 9011ded..bc6c91e 100644
>>> > --- a/conf/machine-sdk/include/mingw32-common.inc
>>> > +++ b/conf/machine-sdk/include/mingw32-common.inc
>>> > @@ -1,4 +1,7 @@
>>> >  SDK_OS = "mingw32"
>>> > +SDK_VENDOR_mingw32 = "-w64"
>>> > +SDK_VENDOR_sdkmingw32 = "-w64"
>>> > +
>>> >  NATIVESDKLIBC = "libc-mingw"
>>> >
>>> >
>>> PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 =
>>> "nativesdk-mingw-w64-runtime"
>>> > diff --git a/recipes-devtools/mingw-w64/
>>> nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/
>>> nativesdk-mingw-w64-runtime_7.0.0.bb
>>> > index cf39c6a..9f79ffe 100644
>>> > --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
>>> > +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
>>> > @@ -19,6 +19,8 @@ PROVIDES += "virtual/nativesdk-libintl"
>>> >
>>> >  TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
>>> >
>>> > +EXTRA_OECONF_x86-64 = "--disable-lib32"
>>> > +
>>> >  do_configure() {
>>> >      oe_runconf
>>> >  }
>>> > --
>>> > 2.17.1
>>> >
>>>
>>>
>>>
>>>
> 
>
>

-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--000000000000c015ae05b0000b66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Assuming AB success, is this also suitable for stable bran=
ches like dunfell?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Sep 21, 2020 at 6:21 AM Joshua Watt &lt;<a href=
=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><di=
v><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Sep 21, 2020, 8:12 AM Samuli Piippo &lt;<a href=3D"mailto:samuli.pi=
ippo@gmail.com" target=3D"_blank">samuli.piippo@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 21 Sep 2020 at 15:53, Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.c=
om" rel=3D"noreferrer" target=3D"_blank">JPEWhacker@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Sep 18=
, 2020 at 7:30 AM Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io" =
rel=3D"noreferrer" target=3D"_blank">samuli.piippo@qt.io</a>&gt; wrote:<br>
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
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_quote"><div></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
&gt;<br>
&gt; Disable 32bit libs from the runtime component when compiling for 64bi=
t,<br>
&gt; which were enabled as a side effect of the GCC config change.<br>
&gt;<br>
&gt; Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.i=
o" rel=3D"noreferrer" target=3D"_blank">samuli.piippo@qt.io</a>&gt;<br>
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
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Christop=
her Larson<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmbedded, =
OpenZaurus<br>Senior Software Engineer, Mentor Graphics</div></div></div></=
div>

--000000000000c015ae05b0000b66--
