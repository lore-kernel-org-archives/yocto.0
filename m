Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.488.1603812935150069948
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 08:35:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C+Oj78LR;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: vincent.prince.fr@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id i1so2452511wro.1
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 08:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c6P3jXDUoKMiL2Qz01ji16TACHYIBHUfil8avFOangU=;
        b=C+Oj78LR2P7sVBtmgMfF1QcI8n2acTTR08+PbBehargX4A42SycBxFR+9xegAPMw7U
         A0jlU1xA/GCKjTwKEAYuYnVQPNdoqsRKiIKHEzwg3+mpWTeRPzc4+yGcvXkuzpo7fTn+
         TPvQpGZqvZNCjV1fjTDct9dqJg+KtNju19NiyE5qYBxvB6On+HO/5rRIGIjxelqEkKJT
         Cwow+dWyrxGsll9w5Nwjv9YFt7P9nBxwMrN1Wh9788WD1PGrGbzG4ikHUzHEoqJz3M5B
         mcXuIggRRjS+P77K+hNlTsYf3iQzZo/7KE4wp9DK/uQia9tsNfeF+xLP0/08CPM/9Qr7
         8VxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c6P3jXDUoKMiL2Qz01ji16TACHYIBHUfil8avFOangU=;
        b=LHHSKUcy5zcd5xoUkoP+mT1+5fbM4gKIWWtBERnoFQvIKgDYhHG/l0Ty726Z8nnBSz
         DWNwWjQt/msI+eB6YD6dEzGbk3hG5WpKKZGfG2a3vyc+7LCcqW6dn4ewFbCyD/8aZTjW
         DH031imhQK05nW6AAbIvrDBo5c7O4Z9DjYY0qUJX0wrvlreBSwQJMaw0SCvRLms0PjVH
         aHHj7CRgKfAV28hJCGk2SZANWR6mJCPe7kFjovGenuXJMKvnjhM9ycSqEsGW7yXWmcFb
         0vXbgY9W9CBpkqlSk0OBYwBXQ6tZom4WpLbgMsjVIv8mZugfwgQsXv5BUHai8BsyAn9A
         oN8Q==
X-Gm-Message-State: AOAM530c2BBmrigUaAd8DPwEuTZBcJBYhwJJI9y8AjvsXwuULekC3uRk
	st7glGazvisi5V1X1czn05oWrzzozYfRMiHTyx8=
X-Google-Smtp-Source: ABdhPJzr+tKyQ+3/3zc+ThDwLRuhqpSE/0eKR4hfwZdBP95S54CQh9BhLPlO9bmzXV9m1PT2YeupTh1X+rQIsoXmeKE=
X-Received: by 2002:a05:6000:1d1:: with SMTP id t17mr3760203wrx.164.1603812933734;
 Tue, 27 Oct 2020 08:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
 <f5d78cec-328e-1917-bb63-bcd7672c1f44@gmail.com>
In-Reply-To: <f5d78cec-328e-1917-bb63-bcd7672c1f44@gmail.com>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Tue, 27 Oct 2020 16:35:21 +0100
Message-ID: <CAB2nKc9+9wJ0gdLGpOqUSjwVukfL_NgkUBtTPsdqEPD5nHMXkg@mail.gmail.com>
Subject: Re: [yocto] Systemd, overlayfs, and machine-id problem
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003396eb05b2a8cc6a"

--0000000000003396eb05b2a8cc6a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

In my project, I ended up by overlaying not the entire /etc but only
subparts I needed to modify.
(/etc/machine-id is maybe already a bind mount from /run/machine-id)
Hope it helps,

Best regards,
Vincent

Le mar. 27 oct. 2020 =C3=A0 16:24, Khem Raj <raj.khem@gmail.com> a =C3=A9c=
rit :

>
>
> On 10/27/20 2:23 AM, Morten Bruun wrote:
> > Hi,
> >
> > In our current Yocto project we are using an overlayfs on top of /etc
> >
> > This seems to trigger the systemd-machine-id-setup service which fails
> > with the error below:
> >
> > systemd-machine-id-setup[204]: Failed to unmount transient
> > /etc/machine-id file: Invalid argument.
> >
> > The failed service then triggers an error in the test_systemd_failed
> > test in the systemd testimage suite.
> >
> > As far as I understand the machine-id setup is triggered because
> > path_is_mount_point() can report false positives when using overlayfs.
> >
> > Is there a way to fix this?
>
> maybe pregeenerate machine ID sometimes you can seed it from CPU Id or
> soc ID from eeprom.
>
> >
> > Kind regards,
> > Morten
> >
> >
> >
> >
> >
>
>=20
>
>

--0000000000003396eb05b2a8cc6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>In my project, I en=
ded up by overlaying not the entire /etc but only subparts I needed to modi=
fy.</div><div>(/etc/machine-id is maybe already a bind mount from /run/mach=
ine-id)<br></div><div>Hope it helps,</div><div><br></div><div>Best regards,=
</div><div>Vincent<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 27 oct. 2020 =C3=A0=C2=A016:24,=
 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&=
gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><br>
<br>
On 10/27/20 2:23 AM, Morten Bruun wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; In our current Yocto project we are using an overlayfs on top of /etc=
<br>
&gt; <br>
&gt; This seems to trigger the systemd-machine-id-setup service which fail=
s <br>
&gt; with the error below:<br>
&gt; <br>
&gt; systemd-machine-id-setup[204]: Failed to unmount transient <br>
&gt; /etc/machine-id file: Invalid argument.<br>
&gt; <br>
&gt; The failed service then triggers an error in the test_systemd_failed =
<br>
&gt; test in the systemd testimage suite.<br>
&gt; <br>
&gt; As far as I understand the machine-id setup is triggered because <br>
&gt; path_is_mount_point() can report false positives when using overlayfs=
.<br>
&gt; <br>
&gt; Is there a way to fix this?<br>
<br>
maybe pregeenerate machine ID sometimes you can seed it from CPU Id or <br=
>
soc ID from eeprom.<br>
<br>
&gt; <br>
&gt; Kind regards,<br>
&gt; Morten<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
<br>
</blockquote></div>

--0000000000003396eb05b2a8cc6a--
