Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.35457.1628854331879124044
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 04:32:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jqNRXnfx;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: ashutosh.naik@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id z128so18155781ybc.10
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 04:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rKZ3neOWpnpY7GxRdA3VVJN9Y66k+a+V4WJ3syKZXnA=;
        b=jqNRXnfxgfGIuh5fqF8FdidxrPGn0PZGsgJ2cDJKzZqMjFKbDtkPFxqqUfKIZawbEv
         3q1YNwT3+RNDWUVZxqgGGBAbq4oVy+/Q1FaQOIkOqDQVjZxs2iwdWnXGpPK83odnhHjB
         EH+Y675dEmabQfME8AbCZ+w6+fEv3ptemp1n32Rbgi7TNuszMQ09ZTChvqRDclu9gV9f
         ZqbmhN9KWIau/rZU6O6uIAeNqwd3Njk6tpJutm76WZg5ZYXepiA1ipFIht6S400iFVAs
         TACTO1HdYF2Q3ojjl95EqaY3z/YMhPIK45bFMwVmQxIz2K8GB4PJ1iErOvU2svZ62FvF
         zm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rKZ3neOWpnpY7GxRdA3VVJN9Y66k+a+V4WJ3syKZXnA=;
        b=nvTl1jd+soldtB20r1QBjo6Mq8jiwoRP0kXrQSQprtR3FWvmEyNWS4NVneVGwAUYl5
         Oiz1PBhMXfw2ZQ9YAPlm6A+oc7dA639JSx4KOq3aRG72b7mqAbebuWpi2Gmm8ZAmUVxT
         tg8Ss+LVadS2LMivEzFRbuEB/jACJBQwdcwyp0Zrphi+EP0CrdAJbaVbdk01+tEjDQXx
         TfnZyxREsVIk7nDme3ZlIGdVuWjngG32yHflnxCtk8bRYwrZ2za4pQnx9CUaLQV0zd1S
         g3M7LaSvDcBBg+g2nI/Oc8s3kpVc74P70p4FWGUZkmjpWzD1yA5cX5M0OOMExpgrNeLz
         v8SQ==
X-Gm-Message-State: AOAM532Quxv3lYfyoX7NYl5DLEG6/sRyh0cnb7u1rurV+rHdRh8d1cw9
	0KLXjxJExHVhY7keHah+6OLoKJOO+tr1XAHYPgY=
X-Google-Smtp-Source: ABdhPJwigzx2Xdfa2VcLXkQRKPvWeCUHv5w43GCuF8MKtG7kSveLlo0wF+DXXgXICBa7U8GF9LjFV6InoWVwqa0MWpI=
X-Received: by 2002:a05:6902:509:: with SMTP id x9mr2515068ybs.267.1628854331015;
 Fri, 13 Aug 2021 04:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org> <6a92b219-c311-7690-e2e8-e02be225e4ec@gmail.com>
In-Reply-To: <6a92b219-c311-7690-e2e8-e02be225e4ec@gmail.com>
From: "Ashutosh Naik" <ashutosh.naik@gmail.com>
Date: Fri, 13 Aug 2021 12:31:57 +0100
Message-ID: <CAAJeOA9U0mPaHOpwZSuDwqiHbHXYWf-zuteTZBD46ys-s+Vc3A@mail.gmail.com>
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ca849805c96f33d2"

--000000000000ca849805c96f33d2
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 13, 2021 at 2:16 AM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> whats your target architecture ? sometimes gdbserver port may not be
> available for a given arch.
>
>
> Hi Alexander and KhemRaj,

I am using the Yocto "thud" version which has long term support.

The architecture used is aarch64-oe-linux

The gdb directory or executables were not created in
tmp/work/.../gdb/deploy-*/ (the gdb WORKDIR), nor in tmp/deploy/...
(packages deploy dir), and neither in tmp/work/..../machine-image/
(image-specific package repo), although the compilation went through
successfully.

Could it be that the architecture "aarch64-oe-linux" is not supported for
gdbserver in Yocto "thud" ?

Regards
Ash

--000000000000ca849805c96f33d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 13, 2021 at 2:16 AM Khem =
Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br><br>
whats your target architecture ? sometimes gdbserver port may not be <br>
available for a given arch.<br>
<br><br></blockquote>Hi Alexander and KhemRaj,<br><br>I am using the Yocto =
&quot;thud&quot; version which has long term support.<br><br>The architectu=
re used is aarch64-oe-linux<br><br>The gdb directory or executables were no=
t created in tmp/work/.../gdb/deploy-*/ (the gdb WORKDIR), nor in tmp/deplo=
y/... (packages deploy dir), and neither in tmp/work/..../machine-image/ (i=
mage-specific package repo), although the compilation went through successf=
ully.<br><br>Could it be that the architecture &quot;aarch64-oe-linux&quot;=
 is not supported for gdbserver in Yocto &quot;thud&quot; ?<br><br>Regards<=
br>Ash<br><br><div>=C2=A0</div></div></div>

--000000000000ca849805c96f33d2--
