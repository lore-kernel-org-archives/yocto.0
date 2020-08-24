Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com [209.85.217.65])
 by mx.groups.io with SMTP id smtpd.web12.195338.1598278421259787254
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 07:13:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdJ1TYLH;
 spf=pass (domain: gmail.com, ip: 209.85.217.65, mailfrom: mabnhdev@gmail.com)
Received: by mail-vs1-f65.google.com with SMTP id e14so4500708vsa.9
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 07:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I9mbSlVA0gRQrVF2KXF3LIaa+BLB4MlnAyfm9eSDKYI=;
        b=kdJ1TYLH0PpnytmfOhmtcE63VDEbLOrn9+lvk71pLqOIBlkIMqZMGANkVboZL+Qqcn
         aUcE9ZzAwxVUHTye3l9lTDxdBsuedOkAOSE77rKCAkQVEeywILiF3kJU5Bv2yhifsxIf
         LuvF2p/fcPWka5bbksc2k4LXNcaN8yc85tM9J6EMS+JBqCL8lGvha5wDieWLVTbD4zci
         AIlRZSjWtA8ae09YVPG3xLEprZvxcAu6giBaktwOt5yKkFU2FSLiEpvZbzm9quopapoE
         N07AEf8VyOfi60hgcI/vmnjcQ9C0zbeU7Ul0aJgzCJ9KA8/5KT2SR48SlbOEijtnIk6k
         WIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I9mbSlVA0gRQrVF2KXF3LIaa+BLB4MlnAyfm9eSDKYI=;
        b=BQ3xAbTxlU9Stw04qYPrIgTmkmEEpPUnfVpRKDmTfY7V2RRh2kfvB4AR37HBzW24r+
         MqRcbVbsSmSkG9PtWxUr214QgZ11ktFltVlE30xRdpapLN7y1ySpkqsobb1tg73sQ0My
         04yAguFWWpDupt87TXDWXtGEgnf5jFcOSzCdBCrDDg6mAjzOC46r5CCRsCrQxWMOYTHr
         Sqh+A6oOAHMV1na1zoB1EIU1dLugftecl6JxbZuCVbjqMy8vXM01szTiY3lv60VFGpdH
         fKFwgi4+A5LvLt/jgmMAoXRQyFLb3hChFZNYex6nzDqe0jjbzDTC/qNZpHJrJE1GyW/k
         D7uQ==
X-Gm-Message-State: AOAM533048udTNmaJOUN1Fw99rU1ceA4JtZ6W1nxP/M82mAgh/C/ICId
	CEpsL7j1XwzrAbAl8Ot7/2rEP5HibZmah8TPe/M=
X-Google-Smtp-Source: ABdhPJz8HxXIOx+wwZ00Jd5UM5xc92gHArB9sr2xoZYP28cJ3vuUwvIc7nKg9/4h1+quFbq33w3Ht9E1uhz77TcBJJE=
X-Received: by 2002:a05:6102:310c:: with SMTP id e12mr2705188vsh.85.1598278420361;
 Mon, 24 Aug 2020 07:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <BFF4.1597831628584042378.2lCW@lists.yoctoproject.org> <CAMKF1spzPrsr=Wcz0zcYiWuPhQgYA2dmxziq=dKg_q4ErKHa4g@mail.gmail.com>
In-Reply-To: <CAMKF1spzPrsr=Wcz0zcYiWuPhQgYA2dmxziq=dKg_q4ErKHa4g@mail.gmail.com>
From: "MikeB" <mabnhdev@gmail.com>
Date: Mon, 24 Aug 2020 10:13:29 -0400
Message-ID: <CAAuRgKDYqZ2aEVu8KhZmvX975QbXq-Sob1q8RfhCCkRxw1Gm2w@mail.gmail.com>
Subject: Re: [yocto] ABI Version for MIPS platform changed from 0 to 5
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007f756d05ada03191"

--0000000000007f756d05ada03191
Content-Type: text/plain; charset="UTF-8"

Your solution worked great!  Thank you for that as I don't think I would
have tracked that down soon.

I now have a follow on problem that I have not been able to solve yet -
mostly because my knowledge of the GNU toolchain is not very deep.

This problem only shows up in my Dunfell MIPS build - I also maintain
x86_64, AARCH64, and ARM platforms.

I use the SDK to build some proprietary apps.

I have a library libcommon.so that contains many functions used by the
proprietary apps.

I have an app that uses only a few of the functions in libcomon.so and none
of those functions have any further dependencies.

When I try to link the app using the Dunfell MIPS SDK, it looks like the
linker is including every function in libcommon.so into my app.  Many of
the unused functions have further dependencies on other libraries which I
do not link in because this app isn't using any of those functions.

I've tried everything I can think of to fix this link failure, but no luck.

I assume I'm missing some linker flag now required in Dunfell, but I don't
know which one.

Any thoughts on how to fix my linker failure?

Thanks, Mike


On Thu, Aug 20, 2020 at 8:04 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Aug 19, 2020 at 3:08 AM MikeB <mabnhdev@gmail.com> wrote:
> >
> > Reposting in the hopes of getting an answer - I'm stuck.
> >
> > I'm in the process of upgrading from Zeus to Dunfell.  For my MIPS
> platform, the library ABI version has changed from 0 to 5.  I have some
> backward compatibility issues that require generating at least some
> libraries with ABI version 0.  I've tried using -fabi_version=0 in my
> CCFLAGS, but that seems to be ignored.  Can someone tell me how to set the
> ABI version back to 0 in my image and SDK?
> >
> > I'm building for a custom MIPs platform running on a Cavium Octeon II in
> 32-bit mode.
> >
> > TUNE_FEATURES  = "o32 bigendian fpu-hard octeon2"
> >
> > A current Dunfell shared library ELF Header looks like this:
> >
> > ELF Header:
> >   Magic:   7f 45 4c 46 01 02 01 00 05 00 00 00 00 00 00 00
> >   Class:                             ELF32
> >   Data:                              2's complement, big endian
> >   Version:                           1 (current)
> >   OS/ABI:                            UNIX - System V
> >   ABI Version:                       5
> >   Type:                              DYN (Shared object file)
> >   Machine:                           MIPS R3000
> >   Version:                           0x1
> >   Entry point address:               0x1630
> >   Start of program headers:          52 (bytes into file)
> >   Start of section headers:          22488 (bytes into file)
> >   Flags:                             0x808d1107, noreorder, pic, cpic,
> 32bitmode, octeon2, o32, mips64r2
> >
> > The same library built with Zeus looks like this.
> >
> > ELF Header:
> >   Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00
> >   Class:                             ELF32
> >   Data:                              2's complement, big endian
> >   Version:                           1 (current)
> >   OS/ABI:                            UNIX - System V
> >   ABI Version:                       0
> >   Type:                              DYN (Shared object file)
> >   Machine:                           MIPS R3000
> >   Version:                           0x1
> >   Entry point address:               0x1500
> >   Start of program headers:          52 (bytes into file)
> >   Start of section headers:          22340 (bytes into file)
> >   Flags:                             0x808d1107, noreorder, pic, cpic,
> 32bitmode, octeon2, o32, mips64r2
> >
> > The ABI Version being the issue.
> >
>
> This is due to switching default hash style from sysv to gnu starting
> dunfell. You can switch back to sysv either via LDFLAGS
> or explicitly define
>
> LINKER_HASH_STYLE_mipsarch = "sysv"
>
> in your distro.
>

--0000000000007f756d05ada03191
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">Your solution worked great!=C2=A0 Thank you for =
that as I don&#39;t think I would have tracked that down soon.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-=
serif;font-size:small">I now have a follow on problem that I have not been =
able to solve yet - mostly because my knowledge of the GNU toolchain is not=
 very deep.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-family:tahoma,sans-serif;font-size:small">This problem only shows up i=
n my Dunfell MIPS build - I also maintain x86_64, AARCH64, and ARM platform=
s.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif=
;font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif;font-size:small">I use the SDK to build some proprieta=
ry=C2=A0apps.</div><div class=3D"gmail_default" style=3D"font-family:tahoma=
,sans-serif;font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-family:tahoma,sans-serif;font-size:small">I have a library libcomm=
on.so that contains many functions used by the proprietary apps.</div><div =
class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif;font-size:small">I have an app that uses only a few of the function=
s in libcomon.so and none of those functions have any further dependencies.=
</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-family=
:tahoma,sans-serif;font-size:small">When I try to link the app using the Du=
nfell MIPS SDK, it looks like the linker is including every function in lib=
common.so into my app.=C2=A0 Many of the unused=C2=A0functions have further=
 dependencies on other libraries which I do not link in because this app is=
n&#39;t using any of those functions.</div><div class=3D"gmail_default" sty=
le=3D"font-family:tahoma,sans-serif;font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small">=
I&#39;ve tried everything I can think of to fix this link failure, but no l=
uck.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-ser=
if;font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:tahoma,sans-serif;font-size:small">I assume I&#39;m missing some linke=
r flag now required in Dunfell, but I don&#39;t know which one.</div><div c=
lass=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:sma=
ll"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans=
-serif;font-size:small">Any thoughts on how to fix my linker failure?</div>=
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-si=
ze:small"><br></div><div class=3D"gmail_default" style=3D"font-family:tahom=
a,sans-serif;font-size:small">Thanks, Mike</div><div class=3D"gmail_default=
" style=3D"font-family:tahoma,sans-serif;font-size:small"><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Aug 20, 2020 at 8:04 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com"=
>raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Wed, Aug 19, 2020 at 3:08 AM MikeB &lt;<a href=3D"mai=
lto:mabnhdev@gmail.com" target=3D"_blank">mabnhdev@gmail.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; Reposting in the hopes of getting an answer - I&#39;m stuck.<br>
&gt;<br>
&gt; I&#39;m in the process of upgrading from Zeus to Dunfell.=C2=A0 For my=
 MIPS platform, the library ABI version has changed from 0 to 5.=C2=A0 I ha=
ve some backward compatibility issues that require generating at least some=
 libraries with ABI version 0.=C2=A0 I&#39;ve tried using -fabi_version=3D0=
 in my CCFLAGS, but that seems to be ignored.=C2=A0 Can someone tell me how=
 to set the ABI version back to 0 in my image and SDK?<br>
&gt;<br>
&gt; I&#39;m building for a custom MIPs platform running on a Cavium Octeon=
 II in 32-bit mode.<br>
&gt;<br>
&gt; TUNE_FEATURES=C2=A0 =3D &quot;o32 bigendian fpu-hard octeon2&quot;<br>
&gt;<br>
&gt; A current Dunfell shared library ELF Header looks like this:<br>
&gt;<br>
&gt; ELF Header:<br>
&gt;=C2=A0 =C2=A0Magic:=C2=A0 =C2=A07f 45 4c 46 01 02 01 00 05 00 00 00 00 =
00 00 00<br>
&gt;=C2=A0 =C2=A0Class:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF32<br>
&gt;=C2=A0 =C2=A0Data:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2&#39;s complement, bi=
g endian<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 (current)<br>
&gt;=C2=A0 =C2=A0OS/ABI:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UNIX - System V<br>
&gt;=C2=A0 =C2=A0ABI Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
&gt;=C2=A0 =C2=A0Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DYN (Shared object fil=
e)<br>
&gt;=C2=A0 =C2=A0Machine:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MIPS R3000<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x1<br>
&gt;=C2=A0 =C2=A0Entry point address:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x1630<br>
&gt;=C2=A0 =C2=A0Start of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 52 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Start of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 22488 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x808d1107, noreorder, =
pic, cpic, 32bitmode, octeon2, o32, mips64r2<br>
&gt;<br>
&gt; The same library built with Zeus looks like this.<br>
&gt;<br>
&gt; ELF Header:<br>
&gt;=C2=A0 =C2=A0Magic:=C2=A0 =C2=A07f 45 4c 46 01 02 01 00 00 00 00 00 00 =
00 00 00<br>
&gt;=C2=A0 =C2=A0Class:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF32<br>
&gt;=C2=A0 =C2=A0Data:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2&#39;s complement, bi=
g endian<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 (current)<br>
&gt;=C2=A0 =C2=A0OS/ABI:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UNIX - System V<br>
&gt;=C2=A0 =C2=A0ABI Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;=C2=A0 =C2=A0Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DYN (Shared object fil=
e)<br>
&gt;=C2=A0 =C2=A0Machine:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MIPS R3000<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x1<br>
&gt;=C2=A0 =C2=A0Entry point address:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x1500<br>
&gt;=C2=A0 =C2=A0Start of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 52 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Start of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 22340 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x808d1107, noreorder, =
pic, cpic, 32bitmode, octeon2, o32, mips64r2<br>
&gt;<br>
&gt; The ABI Version being the issue.<br>
&gt;<br>
<br>
This is due to switching default hash style from sysv to gnu starting<br>
dunfell. You can switch back to sysv either via LDFLAGS<br>
or explicitly define<br>
<br>
LINKER_HASH_STYLE_mipsarch =3D &quot;sysv&quot;<br>
<br>
in your distro.<br>
</blockquote></div>

--0000000000007f756d05ada03191--
