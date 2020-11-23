Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web09.41806.1606162876607419304
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 12:21:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=XhSCD7Ld;
 spf=pass (domain: assonance.org, ip: 209.85.210.50, mailfrom: aaron@assonance.org)
Received: by mail-ot1-f50.google.com with SMTP id n11so17167032ota.2
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 12:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y3CRy5c5x4I1B6HDFkPOjC4d805qdEJjiRr3sACBY5U=;
        b=XhSCD7LdFe+AiWWRVKJUZCt9n1XcXHDdJeOoqoM+kWloZ7G4ZZfR5te+IkJgiWxFLC
         7/xfMqu9/S0jHoi2KNcqYeWI1LP4dRASFFP32z15hPBCWdw6hGYckqhfeOVBaS5yn0/h
         6GxcbZ4/98a+tHKTkek6/IVQxSfaO+6Aqcvde2liTYKEyKM17nw2wGXW/O3a1KXDB+XR
         1pa1lWJOkbLY7sbg8+/XdTQIxe4pSyIV0zabFWYrMbOPXI2FfNFx4n5OWcORqIkWHMdy
         8OKbMQ5lVjz3hvgj+28ocmy6zan6IH/2F5E8hr+PLLAL/XqCkB1hDPg8lPkDWFDQqjQf
         SQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y3CRy5c5x4I1B6HDFkPOjC4d805qdEJjiRr3sACBY5U=;
        b=Ozz7Bk+o9xANYmGjQUu7ZXDpt0rMarxS1GZgJEQAOJXLnN+cqS/lVsn/9KbsVFROFA
         UdYuxchDLi9/UJN9b+e8WesqLxuzVgbZOY7P7HFHUeVL6J8Oq+8wsvhp3O94DDABMBuL
         XCmwmoDzBIMKiyOQE0fyxbQW+uCJQyLZDrRtTyxqa51iUl/jMQfvymf133oqIhcbr2LR
         QKWvzoyWjvOWfVAWptruCVCgHCYSokDCLqv6bQyAFBzGl8XKrOQEVIre9+NBdkjSNQ7s
         1nzaKKjqBRv/NWHWzeNi3K2hdMyyf/E+gNmx1r0sO6KbWrM3M730L3vk8RNRCosLSdLW
         zuuw==
X-Gm-Message-State: AOAM532nRhjiaqbjeek5Lz+WHUE4ysgD275XUxBNV+ZN4EfUYNKwJj1t
	dJ6Hvv007Fjs3X4MMF73jACDwGrtrF/ZbBDfNQ5jZQ==
X-Google-Smtp-Source: ABdhPJxqDwDiDCk5InPY1C/hYrYq9q0BjFt3b+PFhhcIuXnXzrwsBg5VjXCqbI+PScZAauQ3SX4uX8fi5Cybgk2AMcA=
X-Received: by 2002:a05:6830:13ce:: with SMTP id e14mr882661otq.35.1606162875692;
 Mon, 23 Nov 2020 12:21:15 -0800 (PST)
MIME-Version: 1.0
References: <CA+FhBv_OObLJ9BhtJSw0_nzSUimc0AcSybQ7_FEm+SEzASJSRg@mail.gmail.com>
In-Reply-To: <CA+FhBv_OObLJ9BhtJSw0_nzSUimc0AcSybQ7_FEm+SEzASJSRg@mail.gmail.com>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Mon, 23 Nov 2020 12:21:04 -0800
Message-ID: <CAFSZm+j2kN9x4G+oR08fUWwfX7a6UWidPZpbnstp9V0_=acRKw@mail.gmail.com>
Subject: Re: [yocto] Disable systemd-timesyncd.service in image
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a851c905b4cbef17"

--000000000000a851c905b4cbef17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think you need to set SYSTEMD_AUTO_ENABLE =3D =E2=80=9Cdisable=E2=80=9D (=
actually any value
other than =E2=80=9Cenable=E2=80=9D) in your bbappend.

(It looks like SYSTEMD_AUTO_ENABLE_${PN} is intended to work too, but I
can=E2=80=99t verify it at the moment and reading over systemd.bbclass I=
=E2=80=99m not sure
if it works or not)

=E2=80=94Aaron

On Mon, Nov 23, 2020 at 11:51 AM Damien LEFEVRE <lefevre.da@gmail.com>
wrote:

> Hi,
>
> I would like to have systemd-timesyncd.service as part of an image but
> have it disabled by default.
>
> Right now it is enabled by default which causes some issues.
>
> I've tried systemd_%.bbappend
>
> do_install_append() {
>     rm "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
>     rm
> "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
> }
>
> but those symlinks are not part of the package.
>
> I've tried this to remove the link during the package deployment during
> do_rootfs
> pkg_postinst_${PN}_append() {
>     #!/bin/sh -e
>     rm "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
>     rm
> "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
> }
>
> But at this stage the links still don't exist.
>
> Which package is actually responsible for enabling the default services =
/
> creating the symlinks? How can we turn some of them off while keeping th=
em
> in the image?
>
> Thanks,
> -Damien
>
>=20
>
>

--000000000000a851c905b4cbef17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think you need to set SYSTEMD_AUTO_ENABLE =3D =E2=80=9C=
disable=E2=80=9D (actually any value other than =E2=80=9Cenable=E2=80=9D) i=
n your bbappend.</div><div dir=3D"auto"><br></div><div dir=3D"auto">(It loo=
ks like=C2=A0<span style=3D"color:rgb(0,0,0)">SYSTEMD_AUTO_ENABLE_${PN} is =
intended to work too, but I can=E2=80=99t verify it at the moment and readi=
ng over systemd.bbclass I=E2=80=99m not sure if it works or not)</span></di=
v><div dir=3D"auto"><span style=3D"color:rgb(0,0,0)"><br></span></div><div =
style=3D"background-color:rgba(0,0,0,0)!important;border-color:rgb(255,255,=
255)!important;color:rgb(255,255,255)!important" dir=3D"auto"><font style=
=3D"color:rgb(0,0,0)">=E2=80=94Aaron</font></div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 23, 2020 at 11=
:51 AM Damien LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.d=
a@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hi,<=
div><br></div><div>I would like to have=C2=A0systemd-timesyncd.service as p=
art of an image but have it disabled by default.</div><div><br></div><div>R=
ight now it is enabled by default which causes=C2=A0some issues.</div><div>=
<br></div><div>I&#39;ve tried systemd_%.bbappend</div><div><br></div><div>d=
o_install_append() {=C2=A0</div><div>=C2=A0 =C2=A0 rm &quot;$D/etc/systemd/=
system/dbus-org.freedesktop.timesync1.service&quot;<br></div><div>=C2=A0 =
=C2=A0 rm &quot;$D/etc/systemd/system/sysinit.target.wants/systemd-timesyn=
cd.service&quot;</div><div>}</div><div><br></div><div>but those symlinks ar=
e not part of the package.</div><div><br></div><div>I&#39;ve tried this to =
remove the link during the package deployment during do_rootfs</div><div>pk=
g_postinst_${PN}_append() {<br>=C2=A0 =C2=A0 #!/bin/sh -e<br>=C2=A0=C2=A0 =
=C2=A0rm &quot;$D/etc/systemd/system/dbus-org.freedesktop.timesync1.servic=
e&quot;<br>=C2=A0 =C2=A0 rm &quot;$D/etc/systemd/system/sysinit.target.want=
s/systemd-timesyncd.service&quot;<br>}<br></div><div><br></div><div>But at =
this stage the links still don&#39;t exist.</div><div><br></div><div>Which =
package is actually responsible for enabling the default services / creatin=
g the symlinks? How can we turn some of them off while keeping them in the =
image?</div><div><br></div><div>Thanks,</div><div>-Damien</div></div>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000a851c905b4cbef17--
