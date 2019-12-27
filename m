Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
 by mx.groups.io with SMTP id smtpd.web12.3244.1577486081971008373
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 14:34:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q/GMQBR4;
 spf=pass (domain: gmail.com, ip: 209.85.221.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f174.google.com with SMTP id i78so7102795vke.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 14:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cjxz2ZWo+C5gkGZYCXtNBR0KhVB0WlMwhmL/12RXDnk=;
        b=Q/GMQBR4QOQ9BPxKjAK95ZXUldQ27+eMTcpcFBXBwiUZWg5+z1/tzpSVY5dedt+qhZ
         EvWldhy4G3/WrMArvpbLfXzjbdkjfA2sLvvq1Ar+sheK0GaLSTw4qtIFnID5YBKk1Uud
         wSB5JdbeksVmG/GCFKFkr0OGtP4ocEuaOgLRcd4Q4cIPI7ZPgl/e1QG0RGAcVDPpCvfo
         yHYuMX1WUZqQmcJ6RONK6olr3c6C4FTO5u2P5pA6lrkxfLKhxZ7imBgnCvoHKOuVFlEC
         iuolW129uCO7JWJKWM3uw4Aqb/dPx6Qj6wk8HLrVIiO7DS6ExU53xd80sLjQSX3t8I3o
         Id8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cjxz2ZWo+C5gkGZYCXtNBR0KhVB0WlMwhmL/12RXDnk=;
        b=khGH4pL2rGbWZ0JyiHVBEVdelDbWx4P4SeMCzlx2uzVCwGJsKBg5CyiwPk1ReqjONk
         YFDYvNAx6BlX5Is+eNmCsY6BV+uzs8zgLwnkTkCKCWjMzl0v9v2ekZuhHNg/eGHg+Osg
         S3tnekjbBegqgV0ND20L6psldAwX1DKOskoPVn1q8EHWWMNMg5rhp0X8DBbG/HBHfYEi
         D6s1TaAaSCupNTB6W3s+OJuThv8MOG85R0PieiHuD3+3+/SyiuSLjoZ4FByZpPzCgfZb
         nIbOVRFdd27oJGo8auWnj2Df/MdO2Qk2CzjSG/70CjtFelWnOR26hytIuNMXHUREP6cS
         6xqw==
X-Gm-Message-State: APjAAAUb86rVkthvEYBJxv1gTLC+w3hkm4fVguH1QXqL7bWOjAbpOi3B
	PvAXf+FQTQLwO+5xoEOrotUEFgV8bNcxjf8rC3w=
X-Google-Smtp-Source: APXvYqyDEthCh4pr7vg9L1TKYyIRw4bUqgk9Idf0kb+cRWlvG9K/jbBQBLmFl/WXHI+zrnYCFY0vDj2o1aKjifZzdwo=
X-Received: by 2002:a1f:7dcd:: with SMTP id y196mr31534124vkc.29.1577486081203;
 Fri, 27 Dec 2019 14:34:41 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain> <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
 <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com> <CAK4PFCXWTUd+Jv7i3uUYibjVeVf226wvXtDTCEzhnUwygPeSTA@mail.gmail.com>
In-Reply-To: <CAK4PFCXWTUd+Jv7i3uUYibjVeVf226wvXtDTCEzhnUwygPeSTA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 28 Dec 2019 01:34:32 +0300
Message-ID: <CANNYZj_cCm6ce9A+KAHvczHOOYMzotdwbeG2q7f9jhH=8iCU3Q@mail.gmail.com>
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008223f5059ab719a5"

--0000000000008223f5059ab719a5
Content-Type: text/plain; charset="UTF-8"

On Sat, 28 Dec 2019 at 01:25, Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> On 12/27/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> > To me it seems that the SDK is the wrong kind of delivery to begin with
> (as
> > it is basically a frozen target image configuration without the ability
> to
> > customize the entire system build; Yocto SDKs are meant for application
> > development). What you need is a hardware BSP meta-layer with ability to
> > integrate the layer into your private build configurations.
> >
> > If you can get the OEM to agree to this, we can discuss acceptance
> criteria
> > for such a layer.
> >
> > Alex
>
> I think that was their intention from the start.  they wanted to only
> give their customer the ability to produce user level apps, without
> modifying the system, but for our enterprise that is unrealistic.
>
> They do provide a meta-vendor layer, but the stuff in it points to
> private git repos and stuff like systemd startup scripts, so if it
> ends up not in the cache then the build will fail unless the build is
> done from within their corporate intranet.
>
> So no, they would definitely NOT meet any real acceptance criteria.
>

There are ways to adapt such a proprietary layer. If the intranet location
is set with a bitbake variable, then you can adjust the variable to point
to *your* intranet, and mirror all the needed pieces. But I can imagine
that you first need to discuss with your management what the problem is,
then explain to the OEM what you, the customer, expect from them, and
somehow codify it in a signed contract kind of thing.

Alex

--0000000000008223f5059ab719a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, 28 Dec 2019 at 01:25, Kent Dorfma=
n &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gmail.co=
m</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid">On 12=
/27/19, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br>
&gt; To me it seems that the SDK is the wrong kind of delivery to begin wit=
h (as<br>
&gt; it is basically a frozen target image configuration without the abilit=
y to<br>
&gt; customize the entire system build; Yocto SDKs are meant for applicatio=
n<br>
&gt; development). What you need is a hardware BSP meta-layer with ability =
to<br>
&gt; integrate the layer into your private build configurations.<br>
&gt;<br>
&gt; If you can get the OEM to agree to this, we can discuss acceptance cri=
teria<br>
&gt; for such a layer.<br>
&gt;<br>
&gt; Alex<br>
<br>
I think that was their intention from the start.=C2=A0 they wanted to only<=
br>
give their customer the ability to produce user level apps, without<br>
modifying the system, but for our enterprise that is unrealistic.<br>
<br>
They do provide a meta-vendor layer, but the stuff in it points to<br>
private git repos and stuff like systemd startup scripts, so if it<br>
ends up not in the cache then the build will fail unless the build is<br>
done from within their corporate intranet.<br>
<br>
So no, they would definitely NOT meet any real acceptance criteria.<br></bl=
ockquote><div><br></div><div>There are ways to adapt such a proprietary lay=
er. If the intranet location is set with a bitbake variable, then you can a=
djust the variable to point to *your* intranet, and mirror all the needed p=
ieces. But I can imagine that you first need to discuss with your managemen=
t what the problem is, then explain to the OEM what you, the customer, expe=
ct from them, and somehow codify it in a signed contract kind of thing.</di=
v><div><br></div><div>Alex=C2=A0</div></div></div>

--0000000000008223f5059ab719a5--
