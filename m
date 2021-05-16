Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5606.1621170455773394985
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 06:07:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=UmYbFirS;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CB52D38C0579
	for <yocto@yoctoproject.org>; Sun, 16 May 2021 13:07:34 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so2058446wmq.0
        for <yocto@yoctoproject.org>; Sun, 16 May 2021 06:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=qlO4XdNWUzcl/JQM1JGc5OK7hAE401+eY/+AsvC/bF8=;
        b=UmYbFirSKmN+zjl5zkCOzd6FXBVbnN9atuLO3rcdRbL7bJB2cr4AbdMo5R/0pTzSCT
         MLFv4K+x2AJiXCJMztzkQ3Toyl2TjFX0JoEQG0ra4ED0Sl/bXxms7uKOlRg6ZNrI6YjQ
         hmWzw0jeWDYnd1MktjY9v6IC7iCB401o4PwjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=qlO4XdNWUzcl/JQM1JGc5OK7hAE401+eY/+AsvC/bF8=;
        b=Zrwkp9r9EiWtFCmNM93sRXV/Cez8OpMlRx3XDvrTQR1qCcvd67DqawBHS5uxmZQXM8
         VKPtJTpzG7JzTARzHjbgaCgK6dJdeuGt4Ho+++w83yL86EtClmpHKqnt2z4yTRM5K8BY
         6gWu3+Mc9Mo9dcYohESGaOQgu6L58akOOLrSuDCN/9nobko3dyYD18oDXwt5wBb5Hmoj
         ZjU9ozRAMeRm/6yEY7hysG8DpQzfc4kJc/xYwEiMthae/zXgMt1B8aYV1X/tE8RosPTB
         GVKUHH/QUoDc773Sw/5L9KdI7kGiMSW0QRF8EIzBzk+WRveiAwCKF0/UU30tWcqOtD+9
         G0NA==
X-Gm-Message-State: AOAM531VsoGbYGUaOd1hW2KEZbtpyg9irLUWlqpqxoZC+DDg9KlZXviX
	29mGD+j3w/nhwtI15LiR00+Z6Q==
X-Google-Smtp-Source: ABdhPJwQT/DbKidyDzqTBVRtasFXfKyZEF39jTk//BJ0iuXTJr74CpQAW75pkSYDXzseb24X5j5I9w==
X-Received: by 2002:a7b:c30f:: with SMTP id k15mr18697559wmj.128.1621170453386;
        Sun, 16 May 2021 06:07:33 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:22d7:8af4:80b5:c062? ([2001:8b0:aba:5f3c:22d7:8af4:80b5:c062])
        by smtp.gmail.com with ESMTPSA id e38sm16386714wmp.21.2021.05.16.06.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 06:07:33 -0700 (PDT)
Message-ID: <799da4c98526a5830bd42e14556ccbfa192e9946.camel@linuxfoundation.org>
Subject: Re: [yocto] meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Brian Hutchinson <b.hutchman@gmail.com>, yocto@yoctoproject.org
Date: Sun, 16 May 2021 14:07:31 +0100
In-Reply-To: <CAFZh4h-8ApWCC1qr_M0biAwe6W0iEON6PBSkV9qpVi59w4823g@mail.gmail.com>
References: 
	<CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
	 <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com>
	 <CAFZh4h-8ApWCC1qr_M0biAwe6W0iEON6PBSkV9qpVi59w4823g@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2021-05-15 at 22:15 -0400, Brian Hutchinson wrote:
>=20
>=20
> On Fri, May 14, 2021 at 12:35 AM Yi Zhao <yi.zhao@windriver.com> wrote:
> >=20
> > On 5/14/21 9:40 AM, Brian Hutchinson wrote:
> > =C2=A0
> > > Hi,
> > >=20
> > > Pretty new to selinux.=C2=A0 I've worked through a lot of issues to=
 get this far but am stumped at the moment
> > > so any pointers, clues are appreciated.
> > >=20
> > > I'm trying to add selinux to my custom image.=C2=A0 After running i=
nto problems, I decided it was best to
> > > start with building core-image-selinux for my NXP imx8mm-evk board =
as a reference for getting my custom
> > > image to work.
> > >=20
> > > I'm using fscl-community-bsp meta-freescale Dunfell release which i=
s building a 5.4.114 kernel.=20
> > >=20
> > > My first issues were getting kernel config options right (.config a=
ttached).=C2=A0 I kept booting my rootfs
> > > and sestatus would result in selinux not being enabled.
> > >=20
> > > After getting kernel config somewhat worked out, then I started get=
ting either boot loops or locked out.
> > >=20
> > > I'll stay focused on my core-image-selinux image as hopefully if I =
can get it working it will help me
> > > get my custom image working too.
> > >=20
> > > Here is my last iteration of my local.conf that results in me not b=
eing able to log in.=C2=A0 With core-
> > > image-selinux image, it freezes before it gets to login prompt.=C2=A0=
 On my custom image, I get log in prompt
> > > but when I try to log in a root I get audit messages and dropped ba=
ck to login prompt.
> > >=20
> > > local.conf for core-image-selinux:
> > >=20
> > > MACHINE ??=3D 'imx8mmevk'=20
> > > =C2=A0DISTRO ?=3D 'poky'=20
> > > =C2=A0PACKAGE_CLASSES ?=3D 'package_rpm'=20
> > > =C2=A0EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"=20
> > > =C2=A0DISTRO_FEATURES_remove =3D " sysvinit"=20
> > > =C2=A0DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"=20
> > > =C2=A0VIRTUAL-RUNTIME_init_manager =3D "systemd"=20
> > > =C2=A0DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""=20
> > > =C2=A0PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mls"=20
> >=20
> > You can try refpolicy-mcs or refpolicy-targeted. The mls policy doesn=
't work for systemed on dunfell.
> > =C2=A0
> > //Yi
> >=20
>=20
> =C2=A0Thank you very much for that!=C2=A0 I made that change to my core=
-image-selinux build and it worked!=C2=A0 When it
> booted I saw a systemd process take a while to finish, I assume that wa=
s the relable process.=C2=A0 And when I
> logged in as root, there is a significant delay before being logged in,=
 not sure what is going on there.
>=20
> When I made the same change to my imx8mm-evk core-image-base image with=
 selinux added, I saw the same
> systemd process run but it didn't take quite as long and it made the sy=
stem reboot.=C2=A0 Once it rebooted I did
> get a login prompt but it won't let me login as root.=C2=A0 So somethin=
g is still miss-configured and still at a
> loss as to what to look at next.

I know nothing about this but I was surprised you were using busybox=C2=A0=
login=C2=A0
utilities with selinux. I'm not sure if that is well tested or not...

Cheers,

Richard



