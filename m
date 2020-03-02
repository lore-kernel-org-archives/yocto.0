Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web12.1051.1583192348846560341
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 15:39:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ek/95NBB;
 spf=pass (domain: gmail.com, ip: 209.85.221.65, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f65.google.com with SMTP id z11so2007797wro.9
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 15:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yDQ9y9UyFEslPrkiB3EoJTRXWI4GZJXnM4rh73BbCLs=;
        b=ek/95NBBGnZJbqRSfyD5L0kEpGbhfR7Hz/8NPY95xOV7AXeAbxC8gFGQefrezd11pE
         LhkZe6/bHQnS/9Ouk4nsghB5HbeuVsoJa/SbcCp4QII3HH4g7anRRp0boe1MrrlJShfD
         etb5lpq/7AzUCQDtfy6C5PN1Tli4DGQyxARiMP24/ltqeFPgPwDOiMHPF0EEzhHFEkzH
         kHGbEOJtY84UyRzeWU6h6Sqp/Rkkmk5bRwIUXhhmhVv+LY9/ApcndHQWG+y6pp76+Qhw
         Qqzx7cNZS0J2nxdN72XRFKsdbddZENeM0otVP+G84TFufq2khwB+OHPt9Q75+QPJM+V4
         eCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yDQ9y9UyFEslPrkiB3EoJTRXWI4GZJXnM4rh73BbCLs=;
        b=q22ZvJ/r1sCaq/xUgit1XAIIzGkKjRDAKRjKpYybGlaWH+k/Izn7tG0Ud4zL8lpGDM
         hAPdA5TgQEUN8wR0QgC9UKF5rrgF4enpPjLaHQ+k4+b64GotBgjyan3NR6ERmoo1V0xe
         Gg5lLh/gbzQKqy/GcdvxgwYuefoPF3/s3qRTdvRsB1tZV2KogibRQNWd/KCC/x+AGE4I
         RjyWRxJ4LZuW8IQpJE5AXTs5qr8nqxf6r+ir+vGFC/Mq/QhYTgKscMHw9m5Tk85/kxg0
         0WiZrUpN+VA5YNN4U6L0DPjycrmHo+dSjIff9h6YcTrfdZ0gmNuLQA3ylvbLUTKlNOU5
         tDuQ==
X-Gm-Message-State: ANhLgQ1PFuICeMThg4c9vGrHhhR16iZzMgixkt/X+MiaIAjSIR+Tglkh
	U2wdWQ8o5askEjTouVcTw75M83TmOV4qSQ7WYOM=
X-Google-Smtp-Source: ADFU+vvd26QngiXXx5VLUNYst87rdjTban/n12rZIqo7PUHpNskujD7nCtJ/bDkVEiKfnTEa+AzYJ9slqxlCeLr9n+E=
X-Received: by 2002:adf:b1d4:: with SMTP id r20mr1728220wra.303.1583192347400;
 Mon, 02 Mar 2020 15:39:07 -0800 (PST)
MIME-Version: 1.0
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
 <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com> <35f9783b-70f8-ef58-c113-e1b2fe20e038@kernel.crashing.org>
 <20200302223038.GE1578@denix.org> <b1faecfd-b210-abbd-ff76-352495aa0e62@gmail.com>
In-Reply-To: <b1faecfd-b210-abbd-ff76-352495aa0e62@gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Mon, 2 Mar 2020 17:38:54 -0600
Message-ID: <CAJdd5GYQA4+6RpnzM6bpZ8KU8_rR6UhjvBD+P1T4o4MKFD5nfA@mail.gmail.com>
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: Khem Raj <raj.khem@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, Mark Hatle <mark.hatle@kernel.crashing.org>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007a5d31059fe7b1ac"

--0000000000007a5d31059fe7b1ac
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 2, 2020, 5:03 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 3/2/20 2:30 PM, Denys Dmytriyenko wrote:
> > On Mon, Mar 02, 2020 at 04:27:05PM -0600, Mark Hatle wrote:
> >>
> >>
> >> On 3/2/20 12:42 PM, Khem Raj wrote:
> >>>
> >>>
> >>> On 3/2/20 9:39 AM, Mark Hatle wrote:
> >>>> In gcc 8, the behavior of GCC changed and expansion of wild cards to
> calls
> >>>> of gcc were disabled by default.  This behavior may be required by
> some
> >>>> (poorly written) makefiles.
> >>>>
> >>>> This will allow someone to do:
> >>>>
> >>>> gcc *.c -o myoutput
> >>>>
> >>>> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
> >>>> ---
> >>>>    recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
> >>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >>>> index 9c0d828..e0463c6 100644
> >>>> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >>>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> >>>> @@ -1,5 +1,5 @@
> >>>>    INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
> >>>> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
> >>>> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls
> --enable-mingw-wildcard"
> >>>
> >>> this change is fine. is this the only place we need it ?
> >>
> >> Yes, it doesn't do anything if the generated toolchain isn't mingw..
> and AFAIK,
> >
> > Where does this bbappend go? Should this patch be designated to mingw
> layer?
> >
>
> its using an override, so it wont be effective elsewhere, perhaps
> oe-core is better place for it.
>

Heh, I already applied it to master-next in meta-mingw :)


> >
> >> we're only build cross-canadian there.
> >>
> >> (binutils and others don't appear to have this option, unless I just
> missed it.)
> >>
> >> --Mark
> >>
> >>>>    LDFLAGS_append_sdkmingw32 = " -Wl,-static"
> >>>>    EXEEXT_sdkmingw32 = ".exe"
> >>>>    ELFUTILS_sdkmingw32 = ""
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >>>>
> >
> >>
> >
> 
>

--0000000000007a5d31059fe7b1ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Mar 2, 2020, 5:03 PM Khem Raj &lt;<a href=3D"m=
ailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><br>
<br>
On 3/2/20 2:30 PM, Denys Dmytriyenko wrote:<br>
&gt; On Mon, Mar 02, 2020 at 04:27:05PM -0600, Mark Hatle wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 3/2/20 12:42 PM, Khem Raj wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 3/2/20 9:39 AM, Mark Hatle wrote:<br>
&gt;&gt;&gt;&gt; In gcc 8, the behavior of GCC changed and expansion of wi=
ld cards to calls<br>
&gt;&gt;&gt;&gt; of gcc were disabled by default.=C2=A0 This behavior may =
be required by some<br>
&gt;&gt;&gt;&gt; (poorly written) makefiles.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; This will allow someone to do:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; gcc *.c -o myoutput<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Signed-off-by: Mark Hatle &lt;<a href=3D"mailto:mark.hatl=
e@kernel.crashing.org" target=3D"_blank" rel=3D"noreferrer">mark.hatle@kern=
el.crashing.org</a>&gt;<br>
&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 recipes-devtools/gcc/gcc-cross-canadian_%.bb=
append | 2 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 1 file changed, 1 insertion(+), 1 deletion(-=
)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bb=
append b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend<br>
&gt;&gt;&gt;&gt; index 9c0d828..e0463c6 100644<br>
&gt;&gt;&gt;&gt; --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend<=
br>
&gt;&gt;&gt;&gt; +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend<=
br>
&gt;&gt;&gt;&gt; @@ -1,5 +1,5 @@<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 INSANE_SKIP_${PN}_append_sdkmingw32 =3D &quo=
t; staticdev&quot;<br>
&gt;&gt;&gt;&gt; -EXTRA_OECONF_append_sdkmingw32 =3D &quot; --disable-nls&=
quot;<br>
&gt;&gt;&gt;&gt; +EXTRA_OECONF_append_sdkmingw32 =3D &quot; --disable-nls =
--enable-mingw-wildcard&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; this change is fine. is this the only place we need it ?<br>
&gt;&gt;<br>
&gt;&gt; Yes, it doesn&#39;t do anything if the generated toolchain isn&#3=
9;t mingw.. and AFAIK,<br>
&gt; <br>
&gt; Where does this bbappend go? Should this patch be designated to mingw=
 layer?<br>
&gt; <br>
<br>
its using an override, so it wont be effective elsewhere, perhaps <br>
oe-core is better place for it.<br></blockquote></div></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Heh, I already applied it to master-next in=
 meta-mingw :)</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; <br>
&gt;&gt; we&#39;re only build cross-canadian there.<br>
&gt;&gt;<br>
&gt;&gt; (binutils and others don&#39;t appear to have this option, unless=
 I just missed it.)<br>
&gt;&gt;<br>
&gt;&gt; --Mark<br>
&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 LDFLAGS_append_sdkmingw32 =3D &quot; -Wl,-st=
atic&quot;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 EXEEXT_sdkmingw32 =3D &quot;.exe&quot;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 ELFUTILS_sdkmingw32 =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt; <br>
&gt;&gt; <br>
&gt; <br>
<br>
</blockquote></div></div></div>

--0000000000007a5d31059fe7b1ac--
