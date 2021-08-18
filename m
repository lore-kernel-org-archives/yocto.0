Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.54900.1629294682544187925
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 06:51:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@plunkware-com.20150623.gappssmtp.com header.s=20150623 header.b=IrRnDOHh;
 spf=pass (domain: plunkware.com, ip: 209.85.216.42, mailfrom: bill@plunkware.com)
Received: by mail-pj1-f42.google.com with SMTP id nt11so2668001pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 06:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plunkware-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KDemd3cg/R/VF6lUxuzPyvQwoMhXqh2gNfvTb3Gce5o=;
        b=IrRnDOHhDPI61o4beP8kP6XXsu4VlQiUl5aKjdCdY2ijOH591/zWMTjCcy1UDzRi1f
         JpzDr3plGjpFxTX2JQtbpCmSDLrWt5IZMJNa+ywUvrH1Wwj2mHDfnHa0sxmnxGa2UegV
         GtMKaRFVVM89x14hX8nxyIpmUH4Roy/08vkdqFWJAvghmviLjnA7a9rWv2WN/TG5XYf6
         0oVwrHiDDm1RBR529T4r6Uh+C0Uv0sFtzKT+Rq8SNxOeODZHesaoYv//uL2uZYzdoNfy
         BLpJ/76dV0d/fU4YaL76YZyC48iOKeYeKMx9Jv4CqbDT0WxwMkhvLdcOGySiURlCBvIx
         Dkcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KDemd3cg/R/VF6lUxuzPyvQwoMhXqh2gNfvTb3Gce5o=;
        b=R9s7XH1NH7u5toTlcyujE+DUlITNKV5ANWML2L5VYtVysfRJgQhLd4FZXow3VovSur
         W2UwPlCLbML5cic5kwhSxi0ULlH/oWnsNXLyOqxQZexqrXQhOMooYoA1+3rvaFL2jdsm
         lAK9ygSPnBLkX6oAV6StfB4bfs9Vt+b5/xlvv8eH40WMS84EL8qp7ZIaPhCwq8bWXfhB
         JRNSmsXyFdQBCPWss2F2tK89GoJXckKQK9e3iQoPdQKvv3Ffyi/G+Rt7QE1eK/5GVTIZ
         np6a7ODGuyOIUi1t8/qrMwWwf4o3DGocvvqE/rrpGJRLjialDC5Ri1f2v99gtQKdJST6
         N0dQ==
X-Gm-Message-State: AOAM53074mSO5tPQcBnrtTt3UX2b0sHp1O/nM3ktCfgPA/VYhwAt5yCv
	jnMj5uoXN3qDsBckMdU4fgiDtJ1tlptaYr8cyBdGHiaMVY7UQw==
X-Google-Smtp-Source: ABdhPJwKxP+jPs2u8jZY2CJH/0kzIbUdKFK7zNaDMMW7l9Yrv1OuZuRbDz21XvLqB/tTWkMmqY5I1g0EscJ6MhY/5Tc=
X-Received: by 2002:a17:902:ce83:b0:12d:97e1:e199 with SMTP id
 f3-20020a170902ce8300b0012d97e1e199mr7545406plg.16.1629294681682; Wed, 18 Aug
 2021 06:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CALLsHzjuD4=k2bZsO-MRS5HXqc+=bES9bSXyxj76mZ2VBF7PrQ@mail.gmail.com>
 <a1438bb8d61f36b3461029b028dd1f2e8b92bdeb.camel@delisys.ch>
In-Reply-To: <a1438bb8d61f36b3461029b028dd1f2e8b92bdeb.camel@delisys.ch>
From: "Bill Plunkett" <bill@plunkware.com>
Date: Wed, 18 Aug 2021 07:51:10 -0600
Message-ID: <CALLsHzgaobn8N-Guyo_HJRT6uKCX9OC0akTHd_A=3hnnuuEisw@mail.gmail.com>
Subject: Re: [yocto] best way to get feature of systemd v248 in yocto-hardknott (systemd v247)?
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bc904305c9d5ba30"

--000000000000bc904305c9d5ba30
Content-Type: text/plain; charset="UTF-8"

Thanks Nicolas.

I was able to get what I needed by backporting the relevant changes (DHCP
client LinkLocal address fallback) into the systemd v247 source.  It was a
little ugly, but is working now.

I was afraid to try the full systemd v249.

Bill

On Tue, Aug 17, 2021 at 1:27 AM Nicolas Jeker <n.jeker@delisys.ch> wrote:

> On Fri, 2021-08-13 at 15:31 -0600, Bill Plunkett wrote:
> > I'd like to use a systemd DHCP client feature that became available
> > in v248 in my yocto-hardknott system.  Is there any hope of using the
> > complete v249.1 recipe from the oe master branch?
> >
>
> To backport a newer version, I usually just take the trial and error
> route by copying the recipe to a custom layer and then, if necessary,
> resolving missing or outdated dependencies on the go. This works most
> of the time, but it could get a bit more complicated for systemd if
> something fundamentally changed.
>
> > Bill
>
>
>

--000000000000bc904305c9d5ba30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Nicolas.<div><br></div><div>I was able to get what =
I needed by backporting the relevant changes (DHCP client LinkLocal address=
 fallback) into the systemd v247 source.=C2=A0 It was a little ugly, but is=
 working now.</div><div><br></div><div>I was afraid to try the full systemd=
 v249.</div><div><br></div><div>Bill</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 17, 2021 at 1:27 AM N=
icolas Jeker &lt;<a href=3D"mailto:n.jeker@delisys.ch">n.jeker@delisys.ch</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Fri, 2021-08-13 at 15:31 -0600, Bill Plunkett wrote:<br>
&gt; I&#39;d like to use a systemd DHCP client feature that became availabl=
e<br>
&gt; in v248 in my yocto-hardknott system.=C2=A0 Is there any hope of using=
 the<br>
&gt; complete v249.1 recipe from the oe master branch?<br>
&gt; <br>
<br>
To backport a newer version, I usually just take the trial and error<br>
route by copying the recipe to a custom layer and then, if necessary,<br>
resolving missing or outdated dependencies on the go. This works most<br>
of the time, but it could get a bit more complicated for systemd if<br>
something fundamentally changed.<br>
<br>
&gt; Bill<br>
<br>
<br>
</blockquote></div>

--000000000000bc904305c9d5ba30--
