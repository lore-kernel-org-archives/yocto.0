Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web08.1833.1620761137496543537
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 12:25:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjkhHOg0;
 spf=pass (domain: gmail.com, ip: 209.85.219.182, mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f182.google.com with SMTP id l7so27757182ybf.8
        for <yocto@lists.yoctoproject.org>; Tue, 11 May 2021 12:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UmcGZE/kiBeF5fjgFOiXAeWM166+iXAS5oHMSoGXjkM=;
        b=GjkhHOg0y8feCitZxLZ4tfWxQsJmmKzUS2raw8j2Y54hpLd+bWgNgTZdLtE5lslHjo
         EKoO8Tlblj9gOc1SZyb042uvPrOUlTRX4ypfJnRUQiEPx0133VOH01Pai9htplWsycGe
         xpY2qdqpUMd636qGhShBEPtYEKOPA7i4vlrabfBUZvqoTskOq/KPDpWy//lkBRQMwxCy
         26Em6QaDwUAionWf2Lpt4tSr3hyXiQwziSJqJ2Hf36CmnvL1UUk3q3BSA/QjXRC8BPAT
         VGHvPpV3fesftlkcia1txvOCd1RST8fkmRvlHbXAm7OJ6QG5LbxeDn5YNrDNcxLoPx1v
         do1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UmcGZE/kiBeF5fjgFOiXAeWM166+iXAS5oHMSoGXjkM=;
        b=itYms0lmpwljWlUEFjID8vTxUGcoCGY51iADKR1WCNBacZqasWYLSXm1zgDV72tCNJ
         YA3Uwszt+L6Ruk9aG+EoOcUyH0pyQoMbveSfPvktpXv2stIhTI8wQWR2Zej7aeIBKTND
         1AHJQ5nLZAh4h3IqMprrTeqvCHBP5mCgv4kX7WX4ISYgIsOvYFotGRpAAsULVqEtUDjQ
         2jYlQmT0BQshFnubwG6ktMfRtAjph2L4Twz8KpQWaMm4khjXjLi/eUWqOIonXRIywDX7
         kRUurHAiO5VU7ZQOSN3ihnqnM2QA4n+NlFlefA9d9vSno4hpD6IcMH9IrfElrxLvoG0S
         6OvQ==
X-Gm-Message-State: AOAM532XcQQiMVRHaQseFuL3XDxLtrl5JvOptuofiuICpjXsFEglLrFD
	0/prwMVjA/0mXe4fsna0eJqJVk3E7GmUBD5350G/GkR536E=
X-Google-Smtp-Source: ABdhPJyjoX5t5IKe9kQf7qAWAIZZuKbmclsJIeNTrgbMOhWDFxeg91AxUzyFF6fXuHisaloX+CCUUtG8OdX+hRDNJUM=
X-Received: by 2002:a25:9a01:: with SMTP id x1mr41811394ybn.269.1620761136585;
 Tue, 11 May 2021 12:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <AUF9.1619479753480261275.rjGo@lists.yoctoproject.org> <003b4d91f0f044ffdc2a88c8cee34099878a8a05.camel@delisys.ch>
In-Reply-To: <003b4d91f0f044ffdc2a88c8cee34099878a8a05.camel@delisys.ch>
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
Date: Tue, 11 May 2021 12:25:25 -0700
Message-ID: <CAKKtPp-RGDcs3-tJ8SYyfL8qMySYhuOhyB8iUpaM6uUJ-wS0kA@mail.gmail.com>
Subject: Re: [yocto] Improving NPM recipe build speed
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cfdfee05c212db43"

--000000000000cfdfee05c212db43
Content-Type: text/plain; charset="UTF-8"

Hi Nicolas,

Thank you for the advice, that would work for files outside the npm
packages!

Hopefully there's a way to improve npm install speed too, I was hoping
there was a way to just run npm install instead of going through the yocto
npm process (which takes 30 mins vs < 1 min that npm takesi

--
Alessandro Tagliapietra


On Mon, May 10, 2021 at 2:18 AM Nicolas Jeker <n.jeker@delisys.ch> wrote:

> On Mon, 2021-04-26 at 16:29 -0700, Alessandro Tagliapietra wrote:
> > Hi everyone,
>
> Hi Alessandro,
>
> > I'm making an image that includes the node-red recipe from meta-iot-
> > cloud.
> > The whole process takes about 30+ minutes for that recipe alone (most
> > of the time spent in do_configure).
> > Now I want to override the recipe systemd service file and create a
> > nodered user. Every time I change my bbappend file I have to wait 30+
> > minutes to have the result even for a small systemd file change.
> >
> > Is it possible to speed up the process somehow?
> >
>
> I never worked with node-red in yocto, so I can't speak specifically
> for that, but I encountered similar situations before. Here is what I
> usually do when I need to change a file in a recipe that takes a really
> long time to compile or triggers a rebuild of a ton of other recipes.
>
> This only works for files that don't need to be compiled, like
> configuration files, systemd service files, udev rules etc. I usually
> replace the file in the rootfs directly on the device (or boot from NFS
> and edit the file in the NFS export). For example if I need to change a
> systemd service file, I change the file on my host, copy it with scp to
> the device and check if everything is working as expected. When I'm
> finished, I reintegrate my edits with a bbappend file and check again
> if it works.
>
> > Thanks in advance
>
>

--000000000000cfdfee05c212db43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nicolas,</div><div><br></div><div>Thank you for th=
e advice, that would work for files outside the npm packages!</div><div><br=
></div><div>Hopefully there&#39;s a way to improve npm install speed too, I=
 was hoping there was a way to just run npm install instead of going throug=
h the yocto npm process (which takes 30 mins vs &lt; 1 min that npm takesi<=
/div><div></div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">--<div>Ales=
sandro Tagliapietra</div></div></div></div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 10, 2021=
 at 2:18 AM Nicolas Jeker &lt;<a href=3D"mailto:n.jeker@delisys.ch">n.jeker=
@delisys.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Mon, 2021-04-26 at 16:29 -0700, Alessandro Tagliapietra wrote=
:<br>
&gt; Hi everyone,<br>
<br>
Hi Alessandro,<br>
<br>
&gt; I&#39;m making an image that includes the node-red recipe from meta-io=
t-<br>
&gt; cloud.<br>
&gt; The whole process takes about 30+ minutes for that recipe alone (most<=
br>
&gt; of the time spent in do_configure).<br>
&gt; Now I want to override the recipe systemd service file and create a<br=
>
&gt; nodered user. Every time I change my bbappend file I have to wait 30+<=
br>
&gt; minutes to have the result even for a small systemd file change.<br>
&gt; <br>
&gt; Is it possible to speed up the process somehow?<br>
&gt; <br>
<br>
I never worked with node-red in yocto, so I can&#39;t speak specifically<br=
>
for that, but I encountered similar situations before. Here is what I<br>
usually do when I need to change a file in a recipe that takes a really<br>
long time to compile or triggers a rebuild of a ton of other recipes.<br>
<br>
This only works for files that don&#39;t need to be compiled,=C2=A0like<br>
configuration files, systemd service files, udev rules etc. I usually<br>
replace the file in the rootfs directly on the device (or boot from NFS<br>
and edit the file in the NFS export). For example if I need to change a<br>
systemd service file, I change the file on my host, copy it with scp to<br>
the device and check if everything is working as expected. When I&#39;m<br>
finished, I reintegrate my edits with a bbappend file and check again<br>
if it works.<br>
<br>
&gt; Thanks in advance<br>
<br>
</blockquote></div>

--000000000000cfdfee05c212db43--
