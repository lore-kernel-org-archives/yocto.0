Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web12.3375.1588418638531672370
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 04:23:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mLusCjLf;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id b5so7920414vsb.1
        for <yocto@lists.yoctoproject.org>; Sat, 02 May 2020 04:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kvkGXG7dMRj+gRjoAQ6gu2osnBlgB8MynVvKD+8F45Y=;
        b=mLusCjLfBxXHExHNgFTQQTwGUQvodNWF0sfw1qQfNc/c/vBaIRKhwBqG1MXlDS+eVg
         QkRW3DD6JnhJBjg+KLzzfpkHbY0uIjkwCnYUEG5PmF8X5Ni1RDBreHDhuzoAgmWc/gsw
         5zigHyR4UFhnIBNyoubMN6xBA6V7A2hmN8g4kVnvu/ECw0DRu4hhimRpYpLyHPw4yr8S
         cSOVptGCnS3956O5zhMFmceNRL1OIwVUQgPSJAN6ux7lSLKjKkyYbYZ2X1jgfNV1Eg+u
         JHrF8SVuCFO7iQY9hGimYYGRCiAkgJvm1UBolo4IfXq1TKOL7OxnQWF3Ckd31hIxhzA2
         OohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kvkGXG7dMRj+gRjoAQ6gu2osnBlgB8MynVvKD+8F45Y=;
        b=lv86x91osTLb+3i6AYnl927BdO4ZuqG2TkjlaAtqVDR9GpUOa3oUkFmIAaZj+hfbK6
         RO6ndem3jti4ODDuC/jTQgb/qOG66Ys6jLudzjZYXIscboehYw9oMFK4vjt7JFwZmBcY
         U1AfB4MFARfQLs/BBpp7snjZekaIVfJYOGta2RF0QyoTztNuLKpuRL5XU4m7Xy80nvhn
         pidDOptHV2ShvrcfM8Yleru8qVlkMNqt/MsApycER6j/jCsTA3EuwfQgIcF2zL8acogc
         Wu1sDOlvR5LmdGR9SCyxETuMBqfKNP6vPZ1AWuxacq/frvKVikEoYw8Uc3smulkoIOgw
         dDHQ==
X-Gm-Message-State: AGi0PuZwWHin7v7s/m64Zw8fvbkXRb7wKHRXpHcBHuGgiOwPPCTPOWrR
	+KP5MSg+SuAvqDSIFs+4SoUHtybi89WZxkfqRYgF9tKG
X-Google-Smtp-Source: APiQypKDzf/+aeAYQjqNHPWz4NDoc7NpfCzoLqKZ4FWHiYVVPrybF4cVbEw4vbfjOGJJCTijzm/P8O0zYBt1/9Vv5oY=
X-Received: by 2002:a67:8b46:: with SMTP id n67mr6123098vsd.35.1588418637500;
 Sat, 02 May 2020 04:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005020711040.7119@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005020711040.7119@localhost.localdomain>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 2 May 2020 13:23:46 +0200
Message-ID: <CANNYZj9fR8ZktLnUXVZinB8cY4F3KmQ3fwL6wC1yxmdXH3NvrQ@mail.gmail.com>
Subject: Re: [yocto] what is the current state of YP supported architectures?
To: yocto@lists.yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a4950d05a4a8886f"

--000000000000a4950d05a4a8886f
Content-Type: text/plain; charset="UTF-8"

There is a difference between supported target architectures, and supported
target machines; it's easier to talk about the latter.

Oe-core layer directly supports QEMU targets (which are *not* suitable for
any physical HW):
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine

Poky distro additionally supports beaglebone, edgerouter and 'generic' x86
(which basically works but is far inferior to meta-intel support):
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/conf/machine
The autobuilder checks that they build, but does not check that they work
on actual HW.

On the Yocto project Autobuilder additionally machines defined by
meta-intel are tested, again without booting on real HW:
https://git.yoctoproject.org/cgit.cgi/meta-intel/tree/conf/machine

Everything else is provided by 3rd party vendor or community layers, with
*wildly* varying levels of quality and support.

Alex


On Sat, 2 May 2020 at 13:14, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>
>   first, i realize PPC is still supported, despite the official
> dropping of reference target MPC8315-RDB. also aware of meta-riscv
> layer:
>
>   https://github.com/riscv
>
> despite not having a reference board.
>
>   is there somewhere to point people when they ask about the state of
> the world WRT supported architectures?
>
> rday
> 
>

--000000000000a4950d05a4a8886f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is a difference between supported target archit=
ectures, and supported target machines; it&#39;s easier to talk about the l=
atter.<br></div><div><br></div><div>Oe-core layer directly supports QEMU ta=
rgets (which are *not* suitable for any physical HW):</div><div><a href=3D"=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine">http=
://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine</a></div>=
<div><br></div><div>Poky distro additionally supports beaglebone, edgeroute=
r and &#39;generic&#39; x86 (which basically works but is far inferior to m=
eta-intel support):</div><div><a href=3D"http://git.yoctoproject.org/cgit/c=
git.cgi/poky/tree/meta-yocto-bsp/conf/machine">http://git.yoctoproject.org/=
cgit/cgit.cgi/poky/tree/meta-yocto-bsp/conf/machine</a></div><div>The autob=
uilder checks that they build, but does not check that they work on actual =
HW.<br></div><div><br></div><div>On the Yocto project Autobuilder additiona=
lly machines defined by meta-intel are tested, again without booting on rea=
l HW:</div><div><a href=3D"https://git.yoctoproject.org/cgit.cgi/meta-intel=
/tree/conf/machine">https://git.yoctoproject.org/cgit.cgi/meta-intel/tree/c=
onf/machine</a></div><div><br></div><div>Everything else is provided by 3rd=
 party vendor or community layers, with *wildly* varying levels of quality =
and support.</div><div><br></div><div>Alex<br></div><div><br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 2 May =
2020 at 13:14, Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca=
">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><br>
=C2=A0 first, i realize PPC is still supported, despite the official<br>
dropping of reference target MPC8315-RDB. also aware of meta-riscv<br>
layer:<br>
<br>
=C2=A0 <a href=3D"https://github.com/riscv" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/riscv</a><br>
<br>
despite not having a reference board.<br>
<br>
=C2=A0 is there somewhere to point people when they ask about the state of=
<br>
the world WRT supported architectures?<br>
<br>
rday<br>
<br>
</blockquote></div></div>

--000000000000a4950d05a4a8886f--
