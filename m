Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web11.6668.1609336924050558596
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Dec 2020 06:02:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SkjThXBe;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: chandumail05@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id 9so18749766oiq.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Dec 2020 06:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AxGx3y5dwSSu9kM9nj93e7DKJhbFGcy1k4QdzfGLlNs=;
        b=SkjThXBe66QV8L4vdjIVuXAR663x+MWo+IzeGhmyMXHL+iEWGc9DjEgyN5fwJFwvam
         pM7W6tGTKm5wIxEQQbIcwXNegac8bJfUpoQSUGXBg8JTSf01cDfbOFl7Lj2bZ8D/Gp47
         72m3NuDnNOoHzzuidrma13/sBZvGTjunFavBHFXPaudYbgt+rCkNoPeuhfi6ZQ4QOdp/
         aUomyMD92kcK9LoECt0G3wwwfuOf+bYUR3aqnvidmcGQylCnmMqxwiyc06BfglQNrXq1
         GZpsu/IN6eMFpbzc/cmHHl7euwlmHH0keqOLf/l9TATBURQxxoOKnU4yryqLXg8InrFQ
         4uBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AxGx3y5dwSSu9kM9nj93e7DKJhbFGcy1k4QdzfGLlNs=;
        b=smCwW+nMonl/8gFm1Sqllh52M8+PwR72fRpcqY9xguynenNliNW4DEuOlcelqdgco7
         9GKzMgxON3ZCHEYvVQf/OIoQucapmpM59nrCkXL933O/0zbBbqoi303KhZtBwAEduOZv
         EjU613aDnMbG75vKCRWvSG82ICGZCALCzu7xcp3iYAH7SERhahnNQSl0DCT7mLwOtfOG
         /cEuk4oTCzdIHEWqK6IoCWb2wNdbCmGcP5Pa4yuzXMM43GFae8frMPuSh+dQFki9CRUc
         z9tZJViqWVNCHhVoTpD8LIVPy9YTvQ1DOdEL9yl7j9y2eHoB25O/TSYsh6uqcypcPQ8E
         XZ6g==
X-Gm-Message-State: AOAM532Hh0ZNuiVSdySdWQuwzDUp1L1O+Mmrl4QQpi+z+GRmJZ4yvMSD
	GpT95CvLqeth7iWoYDHGcDjMjERzfeE8AB61Oek=
X-Google-Smtp-Source: ABdhPJyReiJkj8122Amfxk5mQF8Ulmg4LtbEShe/Z3blehelN/poFFAZhiHP9Tn0oI6x0QsTwu/co65aFuPl43bEcEk=
X-Received: by 2002:aca:578d:: with SMTP id l135mr5247977oib.105.1609336923341;
 Wed, 30 Dec 2020 06:02:03 -0800 (PST)
MIME-Version: 1.0
References: <CACXHg=38c=RS-KAe-EqHbWZzLH_xDcqUBM2-gzM5+hx97qwsHg@mail.gmail.com>
 <AM9PR09MB473928C838830926A06D220BA8D80@AM9PR09MB4739.eurprd09.prod.outlook.com>
In-Reply-To: <AM9PR09MB473928C838830926A06D220BA8D80@AM9PR09MB4739.eurprd09.prod.outlook.com>
From: "chandra naik" <chandumail05@gmail.com>
Date: Wed, 30 Dec 2020 19:31:50 +0530
Message-ID: <CACXHg=3PvKGYhxJGBXpbhA=Asr9ccc4qE1qEq6s+mC8ckd-_Pw@mail.gmail.com>
Subject: Re: [yocto] Help regarding yocto receipe (bluez5)
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a3c6c405b7aef3bc"

--000000000000a3c6c405b7aef3bc
Content-Type: text/plain; charset="UTF-8"

Hi

can we get obexpush open source package for yocto build ? we are not able
to find . kernel version - 4.14 DISTRO_VERSION = "2.5.1"

On Tue, Dec 29, 2020 at 3:40 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> I would recommend that you go for a systemd drop-in file [1].
> That would be something like a small snippet placed to
> /etc/systemd/system/dbus-org.bluez.service/override.conf
>
> In that file place something like
> [Service]
> ExecStart=
> ExecStart=<new command line with your custom options>
>
> this way you don't need to alter the upstream recipe with weird sed
> hacks or similar.
>
> This drop-in file could be packaged by any recipe or bbappend.
>
> [1] https://coreos.com/os/docs/latest/using-systemd-drop-in-units.html
>
> On 29.12.20 07:48, chandra naik wrote:
> > Hi
> >
> > After board boot up , we are editing vi
> > /etc/systemd/system/dbus-org.bluez.service these file as
> > ExecStart=/usr/lib/bluetooth/bluetoothd -C (here we are adding -C means
> > bluetooth running in compact mode).
> >
> > but these is not good practice , so how we can change these service at
> > compiling time itself , any idea ? main agenda is Run bluetoothd daemon
> > in compatibility mode while building yocto image.
> >
> >
> > 
> >
>

--000000000000a3c6c405b7aef3bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div><span style=3D"color:rgb(32,33,36);f=
ont-family:Roboto,sans-serif;font-size:14px;white-space:pre-wrap;background=
-color:rgb(248,249,250)">can we get obexpush open source package for yocto =
build ? we are not able to find .
kernel version - 4.14
DISTRO_VERSION =3D &quot;2.5.1&quot;</span><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 29, 202=
0 at 3:40 PM Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">k=
weihmann@outlook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">I would recommend that you go for a systemd drop-in fil=
e [1].<br>
That would be something like a small snippet placed to <br>
/etc/systemd/system/dbus-org.bluez.service/override.conf<br>
<br>
In that file place something like<br>
[Service]<br>
ExecStart=3D<br>
ExecStart=3D&lt;new command line with your custom options&gt;<br>
<br>
this way you don&#39;t need to alter the upstream recipe with weird sed <b=
r>
hacks or similar.<br>
<br>
This drop-in file could be packaged by any recipe or bbappend.<br>
<br>
[1] <a href=3D"https://coreos.com/os/docs/latest/using-systemd-drop-in-uni=
ts.html" rel=3D"noreferrer" target=3D"_blank">https://coreos.com/os/docs/la=
test/using-systemd-drop-in-units.html</a><br>
<br>
On 29.12.20 07:48, chandra naik wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; After board boot up , we are editing vi <br>
&gt; /etc/systemd/system/dbus-org.bluez.service these file as <br>
&gt; ExecStart=3D/usr/lib/bluetooth/bluetoothd -C (here we are adding -C m=
eans <br>
&gt; bluetooth running in compact mode).<br>
&gt; <br>
&gt; but these is not good practice , so how we can change these service a=
t <br>
&gt; compiling time itself , any idea ? main agenda is Run bluetoothd daem=
on <br>
&gt; in compatibility mode while building yocto image.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--000000000000a3c6c405b7aef3bc--
